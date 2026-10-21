.class public Lk0/di;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static z:I = 0x1


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

.field public k:I

.field public l:Z

.field public m:Ljava/lang/Runnable;

.field public n:J

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Z

.field public t:I

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Lo1/g0;

.field public final x:I

.field public y:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/di;->c:I

    const/16 v2, 0x12

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

    const/16 v2, 0x11

    aput-object v5, v3, v2

    iput-object v3, v0, Lk0/di;->d:[[I

    .line 4
    iput v1, v0, Lk0/di;->f:I

    new-array v3, v2, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_12

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    const/16 v20, 0xf

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v19

    iput-object v3, v0, Lk0/di;->g:[[I

    .line 6
    iput v1, v0, Lk0/di;->i:I

    const/16 v3, 0x15

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 7
    fill-array-data v5, :array_23

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_30

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_31

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_32

    const/16 v6, 0xf

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_33

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_34

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_35

    const/16 v5, 0x12

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_36

    const/16 v5, 0x13

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_37

    const/16 v4, 0x14

    aput-object v2, v3, v4

    iput-object v3, v0, Lk0/di;->j:[[I

    .line 8
    iput v1, v0, Lk0/di;->k:I

    .line 9
    iput-boolean v1, v0, Lk0/di;->l:Z

    .line 10
    new-instance v2, Lk0/di$a;

    invoke-direct {v2, v0}, Lk0/di$a;-><init>(Lk0/di;)V

    iput-object v2, v0, Lk0/di;->m:Ljava/lang/Runnable;

    const-wide/16 v2, -0x1

    .line 11
    iput-wide v2, v0, Lk0/di;->n:J

    const/4 v2, -0x1

    .line 12
    iput v2, v0, Lk0/di;->o:I

    .line 13
    new-instance v2, Lk0/di$b;

    invoke-direct {v2, v0}, Lk0/di$b;-><init>(Lk0/di;)V

    iput-object v2, v0, Lk0/di;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Lk0/di$c;

    invoke-direct {v2, v0}, Lk0/di$c;-><init>(Lk0/di;)V

    iput-object v2, v0, Lk0/di;->q:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lk0/di$d;

    invoke-direct {v2, v0}, Lk0/di$d;-><init>(Lk0/di;)V

    iput-object v2, v0, Lk0/di;->r:Ljava/lang/Runnable;

    .line 16
    iput-boolean v1, v0, Lk0/di;->s:Z

    .line 17
    iput v1, v0, Lk0/di;->t:I

    .line 18
    new-instance v1, Lk0/di$e;

    invoke-direct {v1, v0}, Lk0/di$e;-><init>(Lk0/di;)V

    iput-object v1, v0, Lk0/di;->u:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/di$f;

    invoke-direct {v1, v0}, Lk0/di$f;-><init>(Lk0/di;)V

    iput-object v1, v0, Lk0/di;->v:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/di;->w:Lo1/g0;

    const/16 v1, 0xf

    .line 21
    iput v1, v0, Lk0/di;->x:I

    .line 22
    new-instance v1, Lk0/di$g;

    invoke-direct {v1, v0}, Lk0/di$g;-><init>(Lk0/di;)V

    iput-object v1, v0, Lk0/di;->y:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x6
    .end array-data

    :array_9
    .array-data 4
        0xa
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x5
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x22
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x20
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x21
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x3
        0x22
    .end array-data

    :array_15
    .array-data 4
        0x4
        0x23
    .end array-data

    :array_16
    .array-data 4
        0x5
        0x20
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x21
    .end array-data

    :array_18
    .array-data 4
        0x7
        0x1d
    .end array-data

    :array_19
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x9
        0x6
    .end array-data

    :array_1b
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_1c
    .array-data 4
        0xb
        0x19
    .end array-data

    :array_1d
    .array-data 4
        0x10
        0x22
    .end array-data

    :array_1e
    .array-data 4
        0x11
        0x23
    .end array-data

    :array_1f
    .array-data 4
        0x12
        0x20
    .end array-data

    :array_20
    .array-data 4
        0x13
        0x21
    .end array-data

    :array_21
    .array-data 4
        0x20
        0x1f
    .end array-data

    :array_22
    .array-data 4
        0x21
        0x1e
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_24
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_25
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_27
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_28
    .array-data 4
        0x7
        0x1
    .end array-data

    :array_29
    .array-data 4
        0x8
        0x18
    .end array-data

    :array_2a
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_2b
    .array-data 4
        0xa
        0xc
    .end array-data

    :array_2c
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_2d
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0xd
        0x37
    .end array-data

    :array_2f
    .array-data 4
        0xe
        -0x1
    .end array-data

    :array_30
    .array-data 4
        0xf
        0x36
    .end array-data

    :array_31
    .array-data 4
        0x10
        0x22
    .end array-data

    :array_32
    .array-data 4
        0x11
        0x23
    .end array-data

    :array_33
    .array-data 4
        0x12
        0x20
    .end array-data

    :array_34
    .array-data 4
        0x13
        0x21
    .end array-data

    :array_35
    .array-data 4
        0x14
        0x1d
    .end array-data

    :array_36
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_37
    .array-data 4
        0x16
        0x5
    .end array-data
.end method

.method public static synthetic d3(Lk0/di;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/di;->n:J

    return-wide v0
.end method

.method public static synthetic e3(Lk0/di;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/di;->n:J

    return-wide p1
.end method

.method public static synthetic f3(Lk0/di;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/di;->o:I

    return p0
.end method

.method public static synthetic g3(Lk0/di;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/di;->o:I

    return p1
.end method

.method public static synthetic h3(Lk0/di;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/di;->b3()V

    return-void
.end method

.method public static synthetic i3(Lk0/di;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/di;->w:Lo1/g0;

    return-object p0
.end method

.method public static synthetic j3(Lk0/di;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/di;->l3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/di;->u:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->l:I

    .line 9
    iget-object v0, p0, Lk0/di;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 11
    iget-object v0, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 12
    :sswitch_0
    iget-object v0, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 16
    :sswitch_1
    iget-object v0, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 17
    :sswitch_2
    iget-object v0, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 21
    :sswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x2

    .line 22
    iput v1, v0, Lk0/mt;->h:I

    .line 23
    iput v2, v0, Lk0/mt;->l:I

    .line 24
    iget-object v0, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 25
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/di;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 30
    :sswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 31
    iput v2, v0, Lk0/mt;->l:I

    .line 32
    iget-object v0, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 33
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 36
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 37
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/di;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 38
    :sswitch_5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 39
    :sswitch_6
    iget-object v0, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 40
    :goto_0
    :sswitch_7
    iget-object v0, p0, Lk0/di;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 41
    iget-object v0, p0, Lk0/di;->w:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4401b7 -> :sswitch_6
        0x4501b7 -> :sswitch_7
        0x5d01c7 -> :sswitch_5
        0x5e01c7 -> :sswitch_5
        0x5f01c7 -> :sswitch_5
        0x6001c7 -> :sswitch_4
        0x6301c7 -> :sswitch_3
        0x6901c6 -> :sswitch_2
        0x6f01c4 -> :sswitch_1
        0x7101c6 -> :sswitch_6
        0x7201c6 -> :sswitch_6
        0x7401c6 -> :sswitch_6
        0x7601c6 -> :sswitch_5
        0x7e01c4 -> :sswitch_0
        0x9301c6 -> :sswitch_5
        0x9401c6 -> :sswitch_5
        0x9601c6 -> :sswitch_5
        0xa301c6 -> :sswitch_5
        0xa701c6 -> :sswitch_5
        0xa801c6 -> :sswitch_5
        0xb201b7 -> :sswitch_0
        0xb301b7 -> :sswitch_0
        0xb801b7 -> :sswitch_7
        0xba01c4 -> :sswitch_5
        0xc401c4 -> :sswitch_5
        0xce01c4 -> :sswitch_5
        0xcf01c4 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v4, -0x2

    const/16 v6, 0xf

    const/16 v7, 0x29

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v8, :cond_52

    const/16 v12, 0xa

    const/16 v13, 0xc

    const/4 v14, 0x2

    const/4 v8, 0x3

    const/4 v15, 0x4

    const/16 v3, 0xff

    if-eq v2, v7, :cond_48

    const/16 v7, 0x30

    if-eq v2, v7, :cond_47

    const/16 v7, 0x39

    const/16 v5, 0x80

    if-eq v2, v7, :cond_2b

    const/16 v7, 0x7d

    const v16, 0xff00

    if-eq v2, v7, :cond_23

    const/16 v7, 0x40

    if-eq v2, v7, :cond_1f

    const/16 v7, 0x41

    if-eq v2, v7, :cond_17

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_13

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 4
    iput v2, v0, Lk0/di;->f:I

    move v4, v10

    .line 5
    :goto_0
    iget-object v5, v0, Lk0/di;->g:[[I

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 6
    iget v6, v0, Lk0/di;->f:I

    aget-object v7, v5, v4

    aget v7, v7, v10

    if-ne v6, v7, :cond_0

    if-eqz v6, :cond_1

    .line 7
    iput v4, v0, Lk0/di;->e:I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v6, 0x20

    if-eq v2, v6, :cond_6

    const/16 v6, 0x21

    if-eq v2, v6, :cond_4

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 8
    array-length v1, v5

    if-ge v4, v1, :cond_59

    .line 9
    aget-object v1, v5, v4

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 10
    :cond_2
    iget v1, v0, Lk0/di;->e:I

    array-length v2, v5

    if-ge v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 11
    aget-object v1, v5, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 12
    :cond_3
    iput v3, v0, Lk0/di;->e:I

    goto/16 :goto_13

    :cond_4
    move v2, v10

    :goto_2
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_5

    const/16 v4, 0x1e

    .line 13
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/16 v1, 0x1e

    .line 14
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_6
    move v2, v10

    :goto_3
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_7

    const/16 v4, 0x1f

    .line 15
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const/16 v1, 0x1f

    .line 16
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 17
    :pswitch_1
    iget-boolean v2, v0, Lk0/di;->s:Z

    if-nez v2, :cond_59

    add-int/lit8 v2, p2, 0x2

    .line 18
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_13

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v1, v1, v2

    const/16 v2, 0x63

    new-array v3, v11, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v11, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v11

    aput v1, v3, v10

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 23
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 24
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 25
    aget-byte v1, v1, v6

    if-nez v2, :cond_8

    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-nez v1, :cond_8

    .line 26
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 27
    :cond_8
    sget v6, Ll0/c0;->g:I

    if-ne v6, v2, :cond_9

    sget v6, Ll0/c0;->h:I

    if-ne v6, v4, :cond_9

    sget v6, Ll0/c0;->i:I

    if-ne v6, v5, :cond_9

    sget v6, Ll0/c0;->j:I

    if-eq v6, v1, :cond_a

    .line 28
    :cond_9
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_a

    .line 29
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 30
    sput v15, Ll0/c0;->k:I

    .line 31
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 32
    :cond_a
    :goto_4
    sput v2, Ll0/c0;->g:I

    .line 33
    sput v4, Ll0/c0;->h:I

    .line 34
    sput v5, Ll0/c0;->i:I

    .line 35
    sput v1, Ll0/c0;->j:I

    and-int/2addr v2, v3

    .line 36
    invoke-virtual {v0, v2}, Lk0/di;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 37
    invoke-virtual {v0, v2}, Lk0/di;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v5, 0xff

    .line 38
    invoke-virtual {v0, v2}, Lk0/di;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v1, v3

    .line 39
    invoke-virtual {v0, v1}, Lk0/di;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 41
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 42
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 43
    aget-byte v1, v1, v6

    and-int/2addr v2, v3

    .line 44
    invoke-virtual {v0, v2}, Lk0/di;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 45
    invoke-virtual {v0, v2}, Lk0/di;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v5, 0xff

    .line 46
    invoke-virtual {v0, v2}, Lk0/di;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v1, v3

    .line 47
    invoke-virtual {v0, v1}, Lk0/di;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_13

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 49
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 50
    aget-byte v7, v1, v5

    add-int/lit8 v16, p2, 0x5

    .line 51
    aget-byte v17, v1, v16

    add-int/lit8 v18, p2, 0x6

    .line 52
    aget-byte v18, v1, v18

    new-array v15, v11, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v15, v10

    .line 53
    invoke-static {v12, v15}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xb

    new-array v15, v11, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v15, v10

    .line 54
    invoke-static {v12, v15}, Lk0/qt;->y0(I[I)V

    new-array v12, v11, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v11

    aput v15, v12, v10

    .line 55
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xd

    new-array v13, v11, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v11

    aput v15, v13, v10

    .line 56
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x35

    new-array v13, v11, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v11

    aput v15, v13, v10

    .line 57
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xe

    new-array v13, v11, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v11

    aput v15, v13, v10

    .line 58
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 59
    invoke-static {v6, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x26

    new-array v13, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v11

    aput v2, v13, v10

    .line 60
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v12, v11, [I

    shr-int/lit8 v13, v3, 0x5

    and-int/lit8 v15, v13, 0x7

    aput v15, v12, v10

    .line 61
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v12, v11, [I

    shr-int/lit8 v15, v3, 0x7

    and-int/2addr v15, v11

    aput v15, v12, v10

    .line 62
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v12, v11, [I

    shr-int/lit8 v15, v3, 0x6

    and-int/2addr v15, v11

    aput v15, v12, v10

    .line 63
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v12, v11, [I

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 64
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v12, v11, [I

    add-int/lit8 v13, p2, 0x7

    .line 65
    aget-byte v15, v1, v13

    shr-int/2addr v15, v9

    and-int/2addr v15, v11

    aput v15, v12, v10

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v12, v11, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    aput v3, v12, v10

    .line 66
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 67
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 68
    aget-byte v7, v1, v16

    .line 69
    aget-byte v17, v1, v5

    :cond_b
    move/from16 v2, v17

    .line 70
    aget-byte v3, v1, v13

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    and-int/lit16 v5, v7, 0xff

    const/16 v12, 0x1b

    if-nez v5, :cond_c

    new-array v5, v11, [I

    aput v4, v5, v10

    .line 71
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_c
    const/16 v15, 0xfe

    if-ne v5, v15, :cond_d

    new-array v5, v11, [I

    const/4 v7, -0x3

    aput v7, v5, v10

    .line 72
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array v5, v11, [I

    add-int/2addr v7, v3

    aput v7, v5, v10

    .line 73
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    :goto_5
    and-int/lit16 v5, v2, 0xff

    const/16 v7, 0x1c

    if-nez v5, :cond_e

    new-array v2, v11, [I

    aput v4, v2, v10

    .line 74
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_e
    const/16 v4, 0xfe

    if-ne v5, v4, :cond_f

    new-array v2, v11, [I

    const/4 v3, -0x3

    aput v3, v2, v10

    .line 75
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_f
    new-array v4, v11, [I

    add-int/2addr v2, v3

    aput v2, v4, v10

    .line 76
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v2, 0x1d

    new-array v3, v11, [I

    and-int/lit8 v4, v18, 0x3

    aput v4, v3, v10

    .line 77
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v11, [I

    shr-int/lit8 v4, v18, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v10

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v11, [I

    .line 79
    aget-byte v4, v1, v13

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v11, [I

    .line 80
    aget-byte v4, v1, v13

    const/4 v5, 0x6

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v11, [I

    .line 81
    aget-byte v4, v1, v13

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v11, [I

    .line 82
    aget-byte v4, v1, v13

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v11, [I

    .line 83
    aget-byte v4, v1, v13

    shr-int/2addr v4, v14

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x40

    new-array v3, v11, [I

    .line 84
    aget-byte v4, v1, v13

    shr-int/2addr v4, v10

    and-int/2addr v4, v8

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v11, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 85
    aget-byte v5, v1, v4

    const/4 v7, 0x7

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v11, [I

    .line 86
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v11, [I

    .line 87
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v11, [I

    .line 88
    aget-byte v5, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v11, [I

    .line 89
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v6

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 91
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 92
    iput v2, v0, Lk0/di;->c:I

    move v2, v10

    .line 93
    :goto_7
    iget-object v4, v0, Lk0/di;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_11

    .line 94
    iget v5, v0, Lk0/di;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_10

    if-eqz v5, :cond_11

    .line 95
    iput v2, v0, Lk0/di;->b:I

    goto :goto_8

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 96
    :cond_11
    :goto_8
    iget v5, v0, Lk0/di;->c:I

    if-eq v5, v11, :cond_16

    if-eq v5, v14, :cond_15

    if-eq v5, v12, :cond_14

    and-int/2addr v1, v3

    if-eqz v1, :cond_12

    .line 97
    array-length v1, v4

    if-ge v2, v1, :cond_59

    .line 98
    aget-object v1, v4, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 99
    :cond_12
    iget v1, v0, Lk0/di;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_13

    if-eq v1, v3, :cond_13

    .line 100
    aget-object v1, v4, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 101
    :cond_13
    iput v3, v0, Lk0/di;->b:I

    goto/16 :goto_13

    .line 102
    :cond_14
    sget v2, Lk0/di;->z:I

    if-ne v2, v11, :cond_59

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_59

    .line 103
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    .line 104
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 105
    :cond_15
    sget v2, Lk0/di;->z:I

    if-ne v2, v11, :cond_59

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_59

    const/16 v1, 0x8

    .line 106
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 107
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 108
    :cond_16
    sget v2, Lk0/di;->z:I

    if-ne v2, v11, :cond_59

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_59

    const/4 v1, 0x7

    .line 109
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 110
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v4, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 112
    aget-byte v7, v1, v6

    if-ne v4, v11, :cond_19

    const-string v1, "persist.syu.reversefrontdoor"

    .line 113
    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    new-array v1, v11, [I

    shr-int/lit8 v2, v7, 0x1

    and-int/2addr v2, v11

    aput v2, v1, v10

    .line 114
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v7, 0x0

    and-int/2addr v2, v11

    aput v2, v1, v10

    .line 115
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_18
    new-array v1, v11, [I

    shr-int/lit8 v2, v7, 0x0

    and-int/2addr v2, v11

    aput v2, v1, v10

    .line 116
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v7, 0x1

    and-int/2addr v2, v11

    aput v2, v1, v10

    .line 117
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array v1, v11, [I

    shr-int/lit8 v2, v7, 0x4

    and-int/2addr v2, v11

    aput v2, v1, v10

    .line 118
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v7, 0x3

    and-int/2addr v2, v11

    aput v2, v1, v10

    const/4 v2, 0x4

    .line 119
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v7, 0x2

    and-int/2addr v2, v11

    aput v2, v1, v10

    .line 120
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_19
    if-ne v4, v14, :cond_1b

    .line 121
    aget-byte v2, v1, v6

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    and-int v2, v2, v16

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    .line 122
    aget-byte v4, v1, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_1a

    const/high16 v4, 0x10000

    sub-int/2addr v4, v2

    rsub-int v2, v4, 0x3e8

    goto :goto_a

    :cond_1a
    add-int/lit16 v2, v2, 0x3e8

    .line 123
    :goto_a
    invoke-static {v2}, Lu0/d;->A3(I)V

    const/16 v2, 0x88

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 124
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    and-int v6, v6, v16

    or-int/2addr v5, v6

    const/4 v6, 0x7

    add-int/lit8 v6, p2, 0x7

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_1b
    if-ne v4, v8, :cond_1c

    const/16 v2, 0x6e

    new-array v4, v11, [I

    .line 125
    aget-byte v5, v1, v6

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 126
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x7

    .line 127
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x9

    .line 128
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xb

    .line 129
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0xc

    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xd

    .line 130
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xe

    .line 131
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 132
    :cond_1c
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    if-ne v4, v5, :cond_1d

    const/16 v2, 0x6b

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 133
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 134
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 135
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x7

    .line 136
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v11, [I

    const/16 v5, 0x8

    add-int/lit8 v5, p2, 0x8

    .line 137
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 138
    :cond_1d
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    const/16 v5, 0x85

    if-ne v4, v5, :cond_1e

    const/16 v2, 0x89

    new-array v4, v11, [I

    .line 139
    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 140
    :cond_1e
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0xa8

    if-ne v2, v4, :cond_59

    const/16 v2, 0x8c

    new-array v4, v11, [I

    .line 141
    aget-byte v5, v1, v6

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v11, [I

    .line 142
    aget-byte v5, v1, v6

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v11, [I

    .line 143
    aget-byte v5, v1, v6

    shr-int/2addr v5, v14

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v11, [I

    .line 144
    aget-byte v5, v1, v6

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v11, [I

    .line 145
    aget-byte v5, v1, v6

    shr-int/2addr v5, v10

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 146
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 147
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 148
    aget-byte v1, v1, v2

    .line 149
    iget v2, v0, Lk0/di;->k:I

    if-eq v2, v1, :cond_59

    .line 150
    iput v1, v0, Lk0/di;->k:I

    .line 151
    sget v2, Lk0/nt;->a:I

    const v3, 0x6001c7

    if-eq v2, v3, :cond_21

    const v3, 0x6301c7

    if-eq v2, v3, :cond_21

    if-nez v1, :cond_20

    .line 152
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-nez v1, :cond_59

    .line 153
    iput-boolean v11, v0, Lk0/di;->l:Z

    .line 154
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_13

    :cond_20
    if-ne v1, v11, :cond_59

    .line 155
    iget-boolean v1, v0, Lk0/di;->l:Z

    if-eqz v1, :cond_59

    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v1, 0x6

    .line 156
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 157
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_21
    if-nez v1, :cond_22

    .line 158
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_59

    .line 159
    iput-boolean v11, v0, Lk0/di;->l:Z

    .line 160
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_13

    :cond_22
    if-ne v1, v11, :cond_59

    .line 161
    iget-boolean v1, v0, Lk0/di;->l:Z

    if-eqz v1, :cond_59

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v1, 0x6

    .line 162
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 163
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_23
    add-int/lit8 v2, p2, 0x2

    .line 164
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v11, :cond_29

    if-eq v2, v8, :cond_28

    if-eq v2, v9, :cond_26

    const/16 v4, 0x8

    if-eq v2, v4, :cond_25

    if-eq v2, v12, :cond_24

    goto/16 :goto_13

    :cond_24
    const/16 v2, 0x408

    new-array v5, v11, [I

    add-int/lit8 v6, p2, 0x4

    .line 165
    aget-byte v6, v1, v6

    shl-int/lit8 v4, v6, 0x8

    and-int v4, v4, v16

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    or-int/2addr v1, v4

    aput v1, v5, v10

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_25
    add-int/lit8 v2, p2, 0x3

    .line 166
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 167
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 168
    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    .line 169
    iput-boolean v11, v0, Lk0/di;->s:Z

    goto/16 :goto_13

    :cond_26
    add-int/lit8 v2, p2, 0x3

    .line 170
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 171
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_27

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 172
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 173
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_27
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 174
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 175
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/4 v3, 0x4

    .line 176
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 177
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 178
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v14

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 179
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_28
    add-int/lit8 v2, p2, 0x4

    .line 180
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    and-int v2, v2, v16

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 181
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 182
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v14, [I

    aput v11, v4, v10

    aput v1, v4, v11

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_29
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 183
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2a

    add-int/lit8 v2, p2, 0x3

    .line 184
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v11

    invoke-static {v3, v1, v10}, Ll0/c0;->b(III)V

    goto/16 :goto_13

    :cond_2a
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 185
    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aget-byte v1, v1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v11

    invoke-static {v4, v1, v10}, Ll0/c0;->a(III)V

    goto/16 :goto_13

    :cond_2b
    add-int/lit8 v2, p2, 0x2

    .line 186
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_13

    :pswitch_7
    add-int/lit8 v2, p2, 0x3

    .line 187
    aget-byte v2, v1, v2

    if-ne v2, v11, :cond_59

    const/16 v2, 0xa1

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 188
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_8
    add-int/lit8 v2, p2, 0x3

    .line 189
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_2c

    const/16 v2, 0x9c

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 190
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_2c
    const/4 v5, 0x4

    .line 191
    aget-byte v4, v1, v2

    if-ne v4, v14, :cond_2d

    const/16 v2, 0x9d

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 192
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 193
    :cond_2d
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_2e

    const/16 v2, 0x9e

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 194
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 195
    :cond_2e
    aget-byte v2, v1, v2

    if-ne v2, v5, :cond_59

    const/16 v2, 0x9f

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 196
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_9
    add-int/lit8 v2, p2, 0x3

    .line 197
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_2f

    const/16 v2, 0x84

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 198
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_2f
    const/4 v5, 0x4

    .line 199
    aget-byte v4, v1, v2

    if-ne v4, v14, :cond_30

    const/16 v2, 0x85

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 200
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 201
    :cond_30
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_31

    const/16 v2, 0x86

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 202
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 203
    :cond_31
    aget-byte v2, v1, v2

    if-ne v2, v5, :cond_59

    const/16 v2, 0x87

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 204
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_a
    add-int/lit8 v2, p2, 0x3

    .line 205
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_32

    const/16 v2, 0x81

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 206
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_32
    const/4 v5, 0x4

    .line 207
    aget-byte v4, v1, v2

    if-ne v4, v14, :cond_33

    const/16 v2, 0x82

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 208
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 209
    :cond_33
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_34

    const/16 v2, 0x83

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 210
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 211
    :cond_34
    aget-byte v4, v1, v2

    if-ne v4, v5, :cond_35

    const/16 v2, 0x98

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 212
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 213
    :cond_35
    aget-byte v4, v1, v2

    if-ne v4, v9, :cond_36

    const/16 v2, 0x99

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 214
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 215
    :cond_36
    aget-byte v4, v1, v2

    const/4 v6, 0x6

    if-ne v4, v6, :cond_37

    const/16 v2, 0x9a

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 216
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 217
    :cond_37
    aget-byte v2, v1, v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_59

    const/16 v2, 0x9b

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 218
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_b
    add-int/lit8 v2, p2, 0x3

    .line 219
    aget-byte v2, v1, v2

    if-ne v2, v11, :cond_59

    new-array v2, v11, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 220
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    aput v1, v2, v10

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_c
    add-int/lit8 v2, p2, 0x3

    .line 221
    aget-byte v2, v1, v2

    if-ne v2, v11, :cond_59

    const/16 v2, 0x7f

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 222
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_d
    add-int/lit8 v2, p2, 0x3

    .line 223
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_38

    const/16 v2, 0x7d

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 224
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_38
    const/4 v5, 0x4

    .line 225
    aget-byte v2, v1, v2

    if-ne v2, v14, :cond_59

    const/16 v2, 0x7e

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 226
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_e
    add-int/lit8 v2, p2, 0x3

    .line 227
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_39

    const/16 v2, 0x7a

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 228
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_39
    const/4 v5, 0x4

    .line 229
    aget-byte v4, v1, v2

    if-ne v4, v14, :cond_3a

    const/16 v2, 0x7b

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 230
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 231
    :cond_3a
    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_59

    const/16 v2, 0x7c

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 232
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_f
    add-int/lit8 v2, p2, 0x3

    .line 233
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_3b

    const/16 v2, 0x75

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 234
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_3b
    const/4 v5, 0x4

    .line 235
    aget-byte v4, v1, v2

    if-ne v4, v14, :cond_3c

    const/16 v2, 0x76

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 236
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 237
    :cond_3c
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_3d

    const/16 v2, 0x77

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 238
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 239
    :cond_3d
    aget-byte v4, v1, v2

    if-ne v4, v5, :cond_3e

    const/16 v2, 0x78

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 240
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 241
    :cond_3e
    aget-byte v4, v1, v2

    if-ne v4, v9, :cond_3f

    const/16 v2, 0x79

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 242
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 243
    :cond_3f
    aget-byte v4, v1, v2

    const/4 v6, 0x6

    if-ne v4, v6, :cond_40

    const/16 v2, 0x95

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 244
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 245
    :cond_40
    aget-byte v4, v1, v2

    const/4 v6, 0x7

    if-ne v4, v6, :cond_41

    const/16 v2, 0x96

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 246
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 247
    :cond_41
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_59

    const/16 v2, 0x97

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 248
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_10
    add-int/lit8 v2, p2, 0x3

    .line 249
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_42

    const/16 v2, 0x69

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 250
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_42
    const/4 v5, 0x4

    .line 251
    aget-byte v2, v1, v2

    if-ne v2, v14, :cond_59

    const/16 v2, 0x6a

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 252
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_11
    add-int/lit8 v2, p2, 0x3

    .line 253
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_43

    const/16 v2, 0x66

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 254
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_43
    const/4 v5, 0x4

    .line 255
    aget-byte v4, v1, v2

    if-ne v4, v14, :cond_44

    const/16 v2, 0x67

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 256
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 257
    :cond_44
    aget-byte v4, v1, v2

    if-ne v4, v8, :cond_45

    const/16 v2, 0x68

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 258
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 259
    :cond_45
    aget-byte v4, v1, v2

    if-ne v4, v5, :cond_46

    const/16 v2, 0x73

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 260
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 261
    :cond_46
    aget-byte v2, v1, v2

    if-ne v2, v9, :cond_59

    const/16 v2, 0x74

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 262
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_12
    add-int/lit8 v2, p2, 0x3

    .line 263
    aget-byte v2, v1, v2

    if-ne v2, v11, :cond_59

    const/16 v2, 0x65

    new-array v4, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 264
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 265
    :cond_47
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_48
    add-int/lit8 v2, p2, 0x2

    .line 266
    aget-byte v4, v1, v2

    if-ne v4, v11, :cond_50

    add-int/lit8 v2, p2, 0x3

    .line 267
    aget-byte v2, v1, v2

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 268
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 269
    iput v2, v0, Lk0/di;->i:I

    move v2, v10

    .line 270
    :goto_c
    iget-object v4, v0, Lk0/di;->j:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_4a

    .line 271
    iget v5, v0, Lk0/di;->i:I

    aget-object v6, v4, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_49

    if-eqz v5, :cond_4a

    .line 272
    iput v2, v0, Lk0/di;->h:I

    goto :goto_d

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 273
    :cond_4a
    :goto_d
    iget v5, v0, Lk0/di;->c:I

    if-eq v5, v11, :cond_4f

    if-eq v5, v14, :cond_4e

    if-eq v5, v12, :cond_4d

    and-int/2addr v1, v3

    if-eqz v1, :cond_4b

    .line 274
    array-length v1, v4

    if-ge v2, v1, :cond_59

    .line 275
    aget-object v1, v4, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 276
    :cond_4b
    iget v1, v0, Lk0/di;->h:I

    array-length v2, v4

    if-ge v1, v2, :cond_4c

    if-eq v1, v3, :cond_4c

    .line 277
    aget-object v1, v4, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 278
    :cond_4c
    iput v3, v0, Lk0/di;->h:I

    goto/16 :goto_13

    .line 279
    :cond_4d
    sget v2, Lk0/di;->z:I

    if-ne v2, v11, :cond_59

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_59

    .line 280
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    .line 281
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 282
    :cond_4e
    sget v2, Lk0/di;->z:I

    if-ne v2, v11, :cond_59

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_59

    const/16 v1, 0x8

    .line 283
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 284
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 285
    :cond_4f
    sget v2, Lk0/di;->z:I

    if-ne v2, v11, :cond_59

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_59

    const/4 v1, 0x7

    .line 286
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 287
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 288
    :cond_50
    aget-byte v2, v1, v2

    if-ne v2, v14, :cond_59

    add-int/lit8 v2, p2, 0x3

    .line 289
    aget-byte v1, v1, v2

    .line 290
    sget v2, Lk0/di;->z:I

    if-ne v2, v11, :cond_59

    if-gez v1, :cond_51

    move v2, v10

    :goto_e
    rsub-int/lit8 v3, v1, 0x0

    if-ge v2, v3, :cond_59

    const/16 v3, 0x8

    .line 291
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 292
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_51
    if-lez v1, :cond_59

    move v2, v10

    :goto_f
    if-ge v2, v1, :cond_59

    const/4 v3, 0x7

    .line 293
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 294
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_52
    add-int/lit8 v2, p2, 0x2

    .line 295
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 296
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 297
    aget-byte v5, v1, v5

    add-int/lit8 v8, p2, 0x5

    .line 298
    aget-byte v1, v1, v8

    const/16 v8, 0x2a

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 299
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    .line 300
    sget v8, Lk0/nt;->a:I

    const v9, 0x6001c7

    if-eq v8, v9, :cond_54

    const v9, 0x6301c7

    if-ne v8, v9, :cond_53

    goto :goto_10

    :cond_53
    const/16 v8, 0x2b

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 301
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_54
    :goto_10
    const/16 v8, 0x2b

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 302
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_11
    const/16 v8, 0x37

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 303
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x30

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 304
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x2e

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x1

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 305
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x2f

    new-array v9, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v11

    aput v2, v9, v10

    .line 306
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x51

    new-array v8, v11, [I

    shr-int/lit8 v9, v3, 0x4

    and-int/2addr v9, v11

    aput v9, v8, v10

    .line 307
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x54

    new-array v8, v11, [I

    shr-int/lit8 v9, v3, 0x7

    and-int/2addr v9, v11

    aput v9, v8, v10

    .line 308
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x52

    new-array v8, v11, [I

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v9, v11

    aput v9, v8, v10

    .line 309
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x53

    new-array v8, v11, [I

    shr-int/lit8 v9, v3, 0x5

    and-int/2addr v9, v11

    aput v9, v8, v10

    .line 310
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v8, v11, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    aput v3, v8, v10

    .line 311
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v5, 0xff

    const/16 v3, 0x28

    if-nez v2, :cond_55

    new-array v2, v11, [I

    aput v4, v2, v10

    .line 312
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_55
    const/16 v6, 0xfe

    if-ne v2, v6, :cond_56

    new-array v2, v11, [I

    const/4 v5, -0x3

    aput v5, v2, v10

    .line 313
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_56
    new-array v2, v11, [I

    aput v5, v2, v10

    .line 314
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_12
    and-int/lit16 v2, v1, 0xff

    if-nez v2, :cond_57

    new-array v1, v11, [I

    aput v4, v1, v10

    .line 315
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_57
    const/16 v3, 0xfe

    if-ne v2, v3, :cond_58

    new-array v1, v11, [I

    const/4 v2, -0x3

    aput v2, v1, v10

    .line 316
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_58
    new-array v2, v11, [I

    aput v1, v2, v10

    .line 317
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :cond_59
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/di;->w:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/di;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/di;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/di;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/di;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/di;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/di;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/di;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa3

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

    const/16 p3, 0x3eb

    const/4 p4, 0x6

    const/4 v0, 0x1

    if-eq p1, p3, :cond_0

    const/16 p3, 0x7d

    const/16 v1, 0xef

    const/4 v2, 0x5

    const/16 v3, 0xe3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    aget p1, p2, v7

    invoke-virtual {p0, p1}, Lk0/di;->l3(I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0xe

    new-array p1, p1, [I

    aput v3, p1, v7

    aput v1, p1, v0

    const/16 v1, 0xb

    aput v1, p1, v6

    aput p3, p1, v5

    const/16 p3, 0xf2

    aput p3, p1, v4

    .line 2
    aget p3, p2, v7

    aput p3, p1, v2

    aget p3, p2, v0

    aput p3, p1, p4

    const/4 p3, 0x7

    aget p4, p2, v6

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p4, p2, v5

    aput p4, p1, p3

    const/16 p3, 0x9

    aget p2, p2, v4

    aput p2, p1, p3

    const/16 p2, 0xa

    aput v7, p1, p2

    aput v7, p1, v1

    const/16 p2, 0xc

    aput v7, p1, p2

    const/16 p2, 0xd

    aput v7, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v2, [I

    aput v3, p1, v7

    const/16 p3, 0xc8

    aput p3, p1, v0

    aput v6, p1, v6

    .line 3
    aget p3, p2, v7

    aput p3, p1, v5

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, p4, [I

    aput v3, p1, v7

    aput v1, p1, v0

    aput v5, p1, v6

    aput p3, p1, v5

    const/16 p3, 0x4b

    aput p3, p1, v4

    .line 4
    aget p2, p2, v7

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v2, [I

    aput v3, p1, v7

    const/16 p3, 0xa8

    aput p3, p1, v0

    aput v6, p1, v6

    .line 5
    aget p3, p2, v7

    aput p3, p1, v5

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v2, [I

    aput v3, p1, v7

    const/16 p3, 0x90

    aput p3, p1, v0

    aput v6, p1, v6

    .line 6
    aget p3, p2, v7

    aput p3, p1, v5

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, v2, [I

    aput v3, p1, v7

    const/16 p3, 0x83

    aput p3, p1, v0

    aput v6, p1, v6

    .line 7
    aget p3, p2, v7

    aput p3, p1, v5

    aget p2, p2, v0

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array p1, p4, [I

    aput v3, p1, v7

    const/16 p3, 0xc7

    aput p3, p1, v0

    aput v5, p1, v6

    .line 8
    aget p3, p2, v7

    aput p3, p1, v5

    aget p3, p2, v0

    aput p3, p1, v4

    aget p2, p2, v6

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 9
    array-length p1, p2

    if-lez p1, :cond_2

    .line 10
    sget p1, Lu0/b;->o:I

    if-ne p1, v0, :cond_1

    new-array p1, p4, [I

    .line 11
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    .line 12
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
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

    :array_0
    .array-data 4
        0xe3
        0xc7
        0x3
        0xc
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc7
        0x3
        0xc
        0x1
        0x9
    .end array-data
.end method

.method public a3()V
    .locals 17

    const/16 v0, 0x25

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc4

    const/4 v3, 0x1

    aput v1, v0, v3

    const/16 v1, 0x22

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 1
    sget v1, Lu0/b;->D:I

    const/16 v5, 0xc

    const/4 v6, 0x3

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    aput v5, v0, v6

    move-object/from16 v7, p0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-virtual {v7, v1}, Lk0/di;->k3(Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_1

    :cond_0
    move-object/from16 v7, p0

    .line 3
    sget v1, Lw0/d;->h:I

    const v8, 0x10002

    const/high16 v9, 0x10000

    const/4 v10, 0x5

    const/4 v11, 0x4

    if-ne v1, v9, :cond_1

    aput v3, v0, v6

    goto :goto_0

    :cond_1
    const v12, 0x10001

    if-ne v1, v12, :cond_2

    aput v4, v0, v6

    goto :goto_0

    :cond_2
    if-ne v1, v8, :cond_3

    aput v6, v0, v6

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    aput v11, v0, v6

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    aput v10, v0, v6

    :cond_5
    :goto_0
    const/16 v3, 0x7a

    const/16 v4, 0x68

    const/16 v6, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/16 v15, 0xa

    if-lt v1, v9, :cond_7

    if-gt v1, v8, :cond_7

    .line 4
    sget v1, Lw0/d;->i:I

    div-int/lit16 v8, v1, 0x2710

    const/16 v9, 0x4d

    const/16 v16, 0x2e

    if-nez v8, :cond_6

    .line 5
    div-int/lit16 v5, v1, 0x3e8

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v11

    .line 6
    div-int/lit8 v5, v1, 0x64

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v10

    aput v16, v0, v14

    .line 7
    div-int/lit8 v5, v1, 0xa

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v13

    .line 8
    rem-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x30

    aput v1, v0, v12

    aput v9, v0, v6

    aput v4, v0, v15

    const/16 v1, 0xb

    aput v3, v0, v1

    goto :goto_1

    .line 9
    :cond_6
    div-int/lit16 v8, v1, 0x2710

    add-int/lit8 v8, v8, 0x30

    aput v8, v0, v11

    .line 10
    div-int/lit16 v8, v1, 0x3e8

    rem-int/2addr v8, v15

    add-int/lit8 v8, v8, 0x30

    aput v8, v0, v10

    .line 11
    div-int/lit8 v8, v1, 0x64

    rem-int/2addr v8, v15

    add-int/lit8 v8, v8, 0x30

    aput v8, v0, v14

    aput v16, v0, v13

    .line 12
    div-int/lit8 v8, v1, 0xa

    rem-int/2addr v8, v15

    add-int/lit8 v8, v8, 0x30

    aput v8, v0, v12

    .line 13
    rem-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x30

    aput v1, v0, v6

    aput v9, v0, v15

    const/16 v1, 0xb

    aput v4, v0, v1

    aput v3, v0, v5

    goto :goto_1

    .line 14
    :cond_7
    sget v1, Lw0/d;->i:I

    div-int/lit16 v5, v1, 0x3e8

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v11

    .line 15
    div-int/lit8 v5, v1, 0x64

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v10

    .line 16
    div-int/lit8 v5, v1, 0xa

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v14

    .line 17
    rem-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x30

    aput v1, v0, v13

    const/16 v1, 0x4b

    aput v1, v0, v12

    aput v4, v0, v6

    aput v3, v0, v15

    :goto_1
    if-nez v2, :cond_8

    .line 18
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b3()V
    .locals 12

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

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd

    const/16 v11, 0x30

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    const/16 v2, 0xc

    aput v2, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x6

    aput v2, v1, v4

    const/16 v2, 0x12

    aput v2, v1, v10

    goto :goto_0

    :pswitch_1
    aput v10, v1, v4

    aput v11, v1, v10

    goto :goto_0

    .line 2
    :pswitch_2
    sget v5, Lo0/e;->H:I

    const/16 v6, 0x21

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    aput v6, v1, v10

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    const/16 v2, 0x9

    aput v2, v1, v4

    aput v6, v1, v10

    goto :goto_0

    :cond_1
    if-ne v5, v10, :cond_4

    aput v7, v1, v4

    aput v6, v1, v10

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xb

    aput v2, v1, v4

    aput v8, v1, v10

    goto :goto_0

    :pswitch_4
    aput v9, v1, v4

    const/16 v2, 0x40

    aput v2, v1, v10

    goto :goto_0

    :pswitch_5
    aput v2, v1, v4

    aput v2, v1, v10

    goto :goto_0

    :cond_2
    :pswitch_6
    const/4 v2, 0x7

    aput v2, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :cond_3
    :pswitch_7
    aput v7, v1, v4

    aput v8, v1, v10

    :cond_4
    :goto_0
    new-array v2, v9, [I

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public c3(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xa

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x0

    :goto_0
    return p1

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

.method public k3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc4

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x22

    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x9

    aput v3, v0, v1

    .line 2
    array-length v1, p1

    const/16 v3, 0x21

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x4

    .line 3
    aget-byte v4, p1, v2

    aput v4, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final l3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v2, 0xa2

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/di;->z:I

    .line 3
    iget-object p1, p0, Lk0/di;->w:Lo1/g0;

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/di;->z:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/di;->w:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
