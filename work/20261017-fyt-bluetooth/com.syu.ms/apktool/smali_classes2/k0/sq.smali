.class public Lk0/sq;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static H:I = 0xff

.field public static I:I = 0x0

.field public static J:I = 0x0

.field public static K:I = 0x0

.field public static L:I = 0x14

.field public static M:I = 0x24

.field public static N:I

.field public static O:I

.field public static P:I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public D:Lo1/g0;

.field public E:I

.field public F:Ljava/lang/Runnable;

.field public G:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:[[I

.field public j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public final v:I

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
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/sq;->b:I

    .line 3
    iput v0, p0, Lk0/sq;->c:I

    .line 4
    iput v0, p0, Lk0/sq;->d:I

    .line 5
    iput v0, p0, Lk0/sq;->e:I

    .line 6
    iput-boolean v0, p0, Lk0/sq;->f:Z

    .line 7
    iput v0, p0, Lk0/sq;->h:I

    const/16 v1, 0x3c

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 8
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

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v6, 0x9

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v7, 0xa

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v8, 0xb

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v9, 0xc

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v9, 0xd

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v9, 0xe

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v9, 0xf

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v10, 0x10

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v11, 0x11

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v12, 0x12

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v12, 0x13

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v12, 0x14

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v12, 0x15

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v12, 0x16

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v12, 0x17

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v12, 0x18

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v12, 0x19

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v12, 0x1a

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v12, 0x1b

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v12, 0x1c

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v12, 0x1d

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v12, 0x1e

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v12, 0x1f

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v12, 0x20

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v13, 0x21

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v13, 0x22

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v13, 0x23

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v13, 0x24

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v13, 0x25

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v13, 0x26

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v13, 0x27

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v13, 0x28

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v13, 0x29

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v13, 0x2a

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v13, 0x2b

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v13, 0x2c

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v13, 0x2d

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v13, 0x2e

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    const/16 v13, 0x2f

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    const/16 v13, 0x30

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    const/16 v13, 0x31

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/16 v13, 0x32

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    const/16 v13, 0x33

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    const/16 v13, 0x34

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_35

    const/16 v13, 0x35

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    const/16 v13, 0x36

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    const/16 v13, 0x37

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    const/16 v13, 0x38

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_39

    const/16 v13, 0x39

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    const/16 v13, 0x3a

    aput-object v3, v1, v13

    new-array v2, v2, [I

    fill-array-data v2, :array_3b

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/sq;->i:[[I

    .line 9
    iput v0, p0, Lk0/sq;->j:I

    .line 10
    iput v0, p0, Lk0/sq;->k:I

    .line 11
    new-instance v1, Lk0/sq$c;

    invoke-direct {v1, p0}, Lk0/sq$c;-><init>(Lk0/sq;)V

    iput-object v1, p0, Lk0/sq;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/sq$d;

    invoke-direct {v1, p0}, Lk0/sq$d;-><init>(Lk0/sq;)V

    iput-object v1, p0, Lk0/sq;->m:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lk0/sq;->n:I

    .line 14
    new-instance v1, Lk0/sq$e;

    invoke-direct {v1, p0}, Lk0/sq$e;-><init>(Lk0/sq;)V

    iput-object v1, p0, Lk0/sq;->o:Ljava/lang/Runnable;

    .line 15
    iput v0, p0, Lk0/sq;->p:I

    .line 16
    new-instance v1, Lk0/sq$f;

    invoke-direct {v1, p0}, Lk0/sq$f;-><init>(Lk0/sq;)V

    iput-object v1, p0, Lk0/sq;->q:Ljava/lang/Runnable;

    .line 17
    iput v0, p0, Lk0/sq;->r:I

    .line 18
    iput-boolean v0, p0, Lk0/sq;->s:Z

    .line 19
    iput-boolean v0, p0, Lk0/sq;->t:Z

    .line 20
    iput-boolean v0, p0, Lk0/sq;->u:Z

    .line 21
    iput v4, p0, Lk0/sq;->v:I

    .line 22
    iput v5, p0, Lk0/sq;->w:I

    .line 23
    iput v6, p0, Lk0/sq;->x:I

    .line 24
    iput v7, p0, Lk0/sq;->y:I

    .line 25
    iput v8, p0, Lk0/sq;->z:I

    .line 26
    iput v9, p0, Lk0/sq;->A:I

    .line 27
    iput v10, p0, Lk0/sq;->B:I

    .line 28
    iput v11, p0, Lk0/sq;->C:I

    .line 29
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/sq;->D:Lo1/g0;

    .line 30
    iput v0, p0, Lk0/sq;->E:I

    .line 31
    new-instance v0, Lk0/sq$g;

    invoke-direct {v0, p0}, Lk0/sq$g;-><init>(Lk0/sq;)V

    iput-object v0, p0, Lk0/sq;->F:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lk0/sq$h;

    invoke-direct {v0, p0}, Lk0/sq$h;-><init>(Lk0/sq;)V

    iput-object v0, p0, Lk0/sq;->G:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
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
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_e
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_f
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x20
        0x31
    .end array-data

    :array_11
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_12
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_13
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_14
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_15
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_16
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_17
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_18
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_19
    .array-data 4
        0x29
        0x30
    .end array-data

    :array_1a
    .array-data 4
        0x2a
        0x32
    .end array-data

    :array_1b
    .array-data 4
        0x2b
        0x33
    .end array-data

    :array_1c
    .array-data 4
        0x33
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x34
        0x18
    .end array-data

    :array_1e
    .array-data 4
        0x35
        0x16
    .end array-data

    :array_1f
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_20
    .array-data 4
        0x37
        0x9
    .end array-data

    :array_21
    .array-data 4
        0x38
        0x26
    .end array-data

    :array_22
    .array-data 4
        0x39
        0x12
    .end array-data

    :array_23
    .array-data 4
        0x3d
        0x38
    .end array-data

    :array_24
    .array-data 4
        0x3f
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x48
        0x1d
    .end array-data

    :array_26
    .array-data 4
        0x49
        0x20
    .end array-data

    :array_27
    .array-data 4
        0x4a
        0x21
    .end array-data

    :array_28
    .array-data 4
        0x4b
        0x22
    .end array-data

    :array_29
    .array-data 4
        0x4c
        0x23
    .end array-data

    :array_2a
    .array-data 4
        0x52
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x53
        0x4
    .end array-data

    :array_2c
    .array-data 4
        0x54
        0xb
    .end array-data

    :array_2d
    .array-data 4
        0x56
        0x4e
    .end array-data

    :array_2e
    .array-data 4
        0x57
        0x3a
    .end array-data

    :array_2f
    .array-data 4
        0x59
        0x26
    .end array-data

    :array_30
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_31
    .array-data 4
        0x5b
        0x19
    .end array-data

    :array_32
    .array-data 4
        0x5c
        0x28
    .end array-data

    :array_33
    .array-data 4
        0x5d
        0x29
    .end array-data

    :array_34
    .array-data 4
        0x5e
        0x2a
    .end array-data

    :array_35
    .array-data 4
        0x5f
        0x2b
    .end array-data

    :array_36
    .array-data 4
        0x6f
        0x36
    .end array-data

    :array_37
    .array-data 4
        0x86
        0x10
    .end array-data

    :array_38
    .array-data 4
        0xf0
        0x31
    .end array-data

    :array_39
    .array-data 4
        0xf1
        0x31
    .end array-data

    :array_3a
    .array-data 4
        0xf2
        0x31
    .end array-data

    :array_3b
    .array-data 4
        0xf3
        0x31
    .end array-data
.end method

.method public static synthetic b3(Lk0/sq;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sq;->a3(Z)V

    return-void
.end method

.method public static synthetic c3(Lk0/sq;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/sq;->f:Z

    return p0
.end method

.method public static synthetic d3(Lk0/sq;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/sq;->f:Z

    return p1
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lk0/sq;->M:I

    return v0
.end method

.method public static synthetic f3(Lk0/sq;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/sq;->D:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lk0/sq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sq;->t3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/sq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sq;->r3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/sq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sq;->m3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/sq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sq;->s3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/sq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sq;->p3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/sq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/sq;->n3(I)V

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
    iget-object v0, p0, Lk0/sq;->D:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sq;->F:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->l:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    iput v1, v0, Lk0/mt;->p:I

    .line 14
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/sq;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/sq$a;

    invoke-direct {v1, p0}, Lk0/sq$a;-><init>(Lk0/sq;)V

    invoke-virtual {v0, v1}, Lo1/z;->a(Lo1/p;)V

    .line 16
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/sq;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/sq;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v0, p0, Lk0/sq;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x16

    if-eq v2, v3, :cond_0

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    add-int/lit8 v5, p2, -0x1

    add-int/lit8 v6, p3, 0x2

    invoke-static {v1, v5, v6}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    :cond_0
    aget-byte v2, v1, p2

    const v4, 0xff00

    const/4 v5, 0x7

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x29

    const/16 v10, 0xb

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v2, v3, :cond_29

    const/16 v3, 0x30

    if-eq v2, v3, :cond_28

    const/16 v3, 0x35

    if-eq v2, v3, :cond_27

    const/16 v3, 0x1e

    const/16 v4, 0x14

    const/16 v13, 0x1f

    const/16 v14, 0x12

    const/4 v15, 0x4

    const/4 v6, 0x5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 5
    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 6
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 7
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 8
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 9
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 10
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 11
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 12
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    aput v2, v3, v8

    .line 13
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    .line 14
    iget v2, v0, Lk0/sq;->b:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v5, v1, v3

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    if-ne v2, v5, :cond_2

    iget v2, v0, Lk0/sq;->d:I

    aget-byte v5, v1, v3

    shr-int/2addr v5, v15

    and-int/2addr v5, v9

    if-eq v2, v5, :cond_6

    .line 15
    :cond_2
    aget-byte v2, v1, v3

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    iput v2, v0, Lk0/sq;->b:I

    .line 16
    aget-byte v3, v1, v3

    shr-int/2addr v3, v15

    and-int/2addr v3, v9

    iput v3, v0, Lk0/sq;->d:I

    .line 17
    sget v5, Lu0/b;->r0:I

    if-nez v5, :cond_6

    if-eq v2, v9, :cond_5

    if-ne v3, v9, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 18
    iput v6, v0, Lk0/sq;->c:I

    .line 19
    iget-boolean v2, v0, Lk0/sq;->f:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x7b

    new-array v3, v9, [I

    aput v8, v3, v8

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 21
    iget v2, v0, Lk0/sq;->e:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    const-wide/16 v2, 0x64

    .line 22
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-wide/16 v2, 0x15e

    .line 23
    invoke-static {v2, v3}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v3, "false"

    .line 24
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_4
    iput-boolean v8, v0, Lk0/sq;->f:Z

    goto :goto_2

    .line 26
    :cond_5
    :goto_1
    iput v6, v0, Lk0/sq;->c:I

    :cond_6
    :goto_2
    add-int/lit8 v2, p2, 0x6

    .line 27
    aget-byte v3, v1, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v9

    .line 28
    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v9

    .line 29
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-boolean v2, Ll0/c0;->p:Z

    if-nez v2, :cond_2d

    if-nez v3, :cond_7

    if-ne v1, v9, :cond_7

    move v2, v9

    goto :goto_3

    :cond_7
    move v2, v8

    :goto_3
    if-ne v3, v9, :cond_8

    if-nez v1, :cond_8

    move v5, v9

    goto :goto_4

    :cond_8
    move v5, v8

    :goto_4
    if-ne v3, v9, :cond_9

    if-ne v1, v9, :cond_9

    move v1, v9

    goto :goto_5

    :cond_9
    move v1, v8

    .line 30
    :goto_5
    sput v8, Ll0/c0;->t:I

    .line 31
    sput v8, Ll0/c0;->r:I

    .line 32
    sput v8, Ll0/c0;->v:I

    if-eqz v2, :cond_a

    .line 33
    sput v4, Ll0/c0;->t:I

    :cond_a
    if-eqz v5, :cond_b

    .line 34
    sput v4, Ll0/c0;->r:I

    :cond_b
    if-eqz v1, :cond_c

    .line 35
    sput v4, Ll0/c0;->v:I

    .line 36
    :cond_c
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v3, v4, v2}, Lu0/i;->g4(IZ)V

    .line 37
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3, v5}, Lu0/i;->g4(IZ)V

    const/16 v2, 0x8b

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 38
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_10

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x3

    .line 40
    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    add-int/lit8 v10, p2, 0x4

    .line 41
    aget-byte v11, v1, v10

    and-int/2addr v11, v7

    add-int/lit8 v12, p2, 0x5

    .line 42
    aget-byte v13, v1, v12

    and-int/2addr v13, v7

    if-nez v3, :cond_d

    if-nez v5, :cond_d

    if-nez v11, :cond_d

    if-nez v13, :cond_d

    .line 43
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_6

    .line 44
    :cond_d
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_e

    sget v8, Ll0/c0;->h:I

    if-ne v8, v5, :cond_e

    sget v8, Ll0/c0;->i:I

    if-ne v8, v11, :cond_e

    sget v8, Ll0/c0;->j:I

    if-eq v8, v13, :cond_f

    .line 45
    :cond_e
    iget v8, v0, Lk0/sq;->b:I

    if-nez v8, :cond_f

    .line 46
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 47
    sput v6, Ll0/c0;->k:I

    .line 48
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 49
    :cond_f
    :goto_6
    sput v3, Ll0/c0;->g:I

    .line 50
    sput v5, Ll0/c0;->h:I

    .line 51
    sput v11, Ll0/c0;->i:I

    .line 52
    sput v13, Ll0/c0;->j:I

    .line 53
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->F1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 54
    aget-byte v2, v1, v4

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->F1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 55
    aget-byte v2, v1, v10

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->F1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 56
    aget-byte v1, v1, v12

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->F1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_10

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->F1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->F1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->F1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 60
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->F1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_10

    :pswitch_3
    new-array v2, v9, [I

    add-int/lit8 v16, p2, 0x2

    .line 61
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v2, v8

    const/16 v15, 0xa

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 62
    aget-byte v15, v1, v16

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v9

    aput v15, v2, v8

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v10, v9, [I

    .line 63
    aget-byte v15, v1, v16

    shr-int/2addr v15, v6

    and-int/2addr v15, v9

    aput v15, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v10, v9, [I

    .line 64
    aget-byte v15, v1, v16

    shr-int/2addr v15, v12

    and-int/2addr v15, v9

    aput v15, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v10, v9, [I

    .line 65
    aget-byte v15, v1, v16

    shr-int/2addr v15, v11

    and-int/2addr v15, v9

    aput v15, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    new-array v10, v9, [I

    .line 66
    aget-byte v15, v1, v16

    shr-int/2addr v15, v9

    and-int/2addr v15, v9

    aput v15, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v10, v9, [I

    .line 67
    aget-byte v15, v1, v16

    shr-int/2addr v15, v8

    and-int/2addr v15, v9

    aput v15, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v10, p2, 0x3

    .line 68
    aget-byte v15, v1, v10

    shr-int/2addr v15, v5

    and-int/2addr v15, v9

    aput v15, v2, v8

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v14, v9, [I

    .line 69
    aget-byte v15, v1, v10

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v9

    aput v15, v14, v8

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 70
    aget-byte v14, v1, v10

    shr-int/2addr v14, v6

    and-int/2addr v14, v9

    aput v14, v2, v8

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v9, [I

    .line 71
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/lit8 v10, v10, 0xf

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 72
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    add-int/lit8 v10, p2, 0x5

    .line 73
    aget-byte v14, v1, v10

    and-int/2addr v14, v7

    const-string v15, "persist.fyt.reversetemp"

    .line 74
    invoke-static {v15, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 75
    aget-byte v4, v1, v10

    and-int/2addr v4, v7

    .line 76
    aget-byte v2, v1, v2

    and-int/lit16 v14, v2, 0xff

    :cond_10
    const/16 v2, 0x1b

    if-eqz v4, :cond_13

    const/16 v10, 0x7f

    if-eq v4, v10, :cond_12

    if-lt v4, v13, :cond_11

    const/16 v10, 0x3b

    if-gt v4, v10, :cond_11

    new-array v10, v9, [I

    aput v4, v10, v8

    .line 77
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_11
    new-array v4, v9, [I

    const/4 v10, -0x1

    aput v10, v4, v8

    .line 78
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    new-array v4, v9, [I

    const/4 v10, -0x3

    aput v10, v4, v8

    .line 79
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    new-array v4, v9, [I

    const/4 v10, -0x2

    aput v10, v4, v8

    .line 80
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x1c

    if-eqz v14, :cond_16

    const/16 v4, 0x7f

    if-eq v14, v4, :cond_15

    if-lt v14, v13, :cond_14

    const/16 v4, 0x3b

    if-gt v14, v4, :cond_14

    new-array v4, v9, [I

    aput v14, v4, v8

    .line 81
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_14
    new-array v4, v9, [I

    const/4 v10, -0x1

    aput v10, v4, v8

    .line 82
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_15
    new-array v4, v9, [I

    const/4 v10, -0x3

    aput v10, v4, v8

    .line 83
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_16
    new-array v4, v9, [I

    const/4 v10, -0x2

    aput v10, v4, v8

    .line 84
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0x43

    new-array v4, v9, [I

    add-int/lit8 v10, p2, 0x6

    .line 85
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v9

    aput v14, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v4, v9, [I

    .line 86
    aget-byte v14, v1, v10

    shr-int/2addr v14, v9

    and-int/2addr v14, v9

    aput v14, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v9, [I

    .line 87
    aget-byte v14, v1, v10

    shr-int/2addr v14, v11

    and-int/2addr v14, v9

    aput v14, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v9, [I

    .line 88
    aget-byte v14, v1, v10

    shr-int/2addr v14, v12

    and-int/2addr v14, v9

    aput v14, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v4, v9, [I

    .line 89
    aget-byte v10, v1, v10

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v9

    aput v10, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v9, [I

    add-int/lit8 v10, p2, 0x9

    .line 90
    aget-byte v14, v1, v10

    shr-int/2addr v14, v8

    and-int/2addr v14, v12

    aput v14, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 91
    aget-byte v4, v1, v10

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v2, v8

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 92
    aget-byte v3, v1, v10

    const/4 v4, 0x4

    shr-int/2addr v3, v4

    and-int/2addr v3, v12

    aput v3, v2, v8

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v9, [I

    .line 93
    aget-byte v4, v1, v10

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 94
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    if-eq v1, v7, :cond_18

    if-nez v1, :cond_17

    goto :goto_9

    :cond_17
    mul-int/2addr v1, v6

    add-int/lit16 v1, v1, 0x258

    .line 95
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_10

    .line 96
    :cond_18
    :goto_9
    invoke-static {v8}, Lu0/d;->A3(I)V

    goto/16 :goto_10

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 98
    aget-byte v1, v1, v4

    and-int/2addr v2, v7

    .line 99
    iput v2, v0, Lk0/sq;->h:I

    move v2, v8

    .line 100
    :goto_a
    iget-object v4, v0, Lk0/sq;->i:[[I

    array-length v10, v4

    if-ge v2, v10, :cond_1a

    .line 101
    iget v10, v0, Lk0/sq;->h:I

    aget-object v11, v4, v2

    aget v11, v11, v8

    if-ne v10, v11, :cond_19

    if-eqz v10, :cond_1a

    .line 102
    iput v2, v0, Lk0/sq;->g:I

    goto :goto_b

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 103
    :cond_1a
    :goto_b
    iget v10, v0, Lk0/sq;->h:I

    if-eq v10, v12, :cond_24

    const/4 v11, 0x4

    if-eq v10, v11, :cond_21

    packed-switch v10, :pswitch_data_1

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_1b

    .line 104
    array-length v1, v4

    if-ge v2, v1, :cond_2d

    .line 105
    aget-object v1, v4, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_1b
    if-nez v1, :cond_2d

    .line 106
    iget v1, v0, Lk0/sq;->g:I

    array-length v2, v4

    if-ge v1, v2, :cond_1c

    if-eq v1, v7, :cond_1c

    .line 107
    aget-object v1, v4, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 108
    :cond_1c
    iput v7, v0, Lk0/sq;->g:I

    goto/16 :goto_10

    :pswitch_5
    move v2, v8

    :goto_c
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_1d

    .line 109
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 110
    :cond_1d
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_6
    move v2, v8

    :goto_d
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1e

    .line 111
    invoke-static {v13, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 112
    :cond_1e
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_7
    move v2, v8

    :goto_e
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1f

    const/16 v3, 0x8

    .line 113
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    const/16 v3, 0x8

    .line 114
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_8
    move v2, v8

    :goto_f
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_20

    .line 115
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 116
    :cond_20
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_21
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_2d

    .line 117
    sget v1, Lh0/c;->E:I

    if-eq v1, v12, :cond_23

    const/4 v2, 0x4

    if-eq v1, v2, :cond_23

    if-eq v1, v6, :cond_23

    .line 118
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 119
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    .line 120
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 121
    :cond_22
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    .line 122
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 123
    :cond_23
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    .line 124
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_24
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_2d

    .line 125
    sget v1, Lh0/c;->E:I

    const/16 v2, 0x1a

    if-eq v1, v12, :cond_26

    const/4 v3, 0x4

    if-eq v1, v3, :cond_26

    if-eq v1, v6, :cond_26

    .line 126
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 127
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 128
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 129
    :cond_25
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    .line 130
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    .line 131
    :cond_26
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 132
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 133
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    const/16 v3, 0x1200

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_10

    .line 134
    :cond_28
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 135
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eq v2, v11, :cond_2b

    if-eq v2, v12, :cond_2a

    goto/16 :goto_10

    :cond_2a
    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 136
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 137
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 138
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 139
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 140
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 141
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 142
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 143
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 144
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_2b
    const/16 v2, 0x64

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 145
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    .line 146
    aget-byte v5, v1, v5

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 147
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 148
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x9

    .line 149
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0xa

    .line 150
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v9, p2, 0xb

    aget-byte v9, v1, v9

    shl-int/lit8 v6, v9, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_2c
    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 151
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 152
    aget-byte v6, v1, v6

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_2d
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/sq;->D:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/sq;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/sq;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/sq;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/sq;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/sq;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/sq;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/sq$b;

    invoke-direct {v1, p0}, Lk0/sq$b;-><init>(Lk0/sq;)V

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7c

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
    .locals 7

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_9

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/16 v2, 0xe3

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq p1, p4, :cond_8

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array p1, v5, [I

    aput v2, p1, p3

    const/16 v0, 0x90

    aput v0, p1, p4

    aput v6, p1, v6

    .line 1
    aget p3, p2, p3

    aput p3, p1, v4

    aget p2, p2, p4

    aput p2, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 2
    :cond_1
    sget p1, Lk0/nt;->U:I

    if-ne p1, p4, :cond_f

    .line 3
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p4, 0x3e9

    aget p2, p2, p3

    invoke-static {p1, p4, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_1

    .line 4
    :cond_2
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/sq;->q3(I)V

    .line 5
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/sq;->o3(I)V

    goto/16 :goto_1

    .line 6
    :cond_3
    aget p1, p2, p3

    if-nez p1, :cond_6

    const-string p1, "persist.lesc.video.ignore"

    .line 7
    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 8
    sget p1, Lk0/sq;->L:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 9
    :cond_4
    sget p1, Lh0/c;->E:I

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    if-eq p1, v5, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    iget-boolean p1, p0, Lk0/sq;->t:Z

    if-nez p1, :cond_7

    .line 11
    invoke-virtual {p0, p4}, Lk0/sq;->a3(Z)V

    goto :goto_0

    :cond_6
    const/16 p1, 0xf

    .line 12
    iput p1, p0, Lk0/sq;->n:I

    :cond_7
    :goto_0
    new-array p1, v5, [I

    aput v2, p1, p3

    const/16 v0, 0xc6

    aput v0, p1, p4

    aput v6, p1, v6

    .line 13
    aget p3, p2, p3

    aput p3, p1, v4

    aget p2, p2, p4

    aput p2, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_8
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput v2, p1, p3

    const/16 v2, 0xa7

    aput v2, p1, p4

    aput v5, p1, v6

    .line 14
    aget p3, p2, p3

    aput p3, p1, v4

    aget p3, p2, p4

    aput p3, p1, v3

    aget p3, p2, v6

    aput p3, p1, v5

    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 15
    :cond_9
    aget p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xfe

    if-ne p1, v0, :cond_a

    .line 16
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/sq;->t3(I)V

    goto :goto_1

    .line 17
    :cond_a
    aget p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xfd

    if-ne p1, v0, :cond_b

    .line 18
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/sq;->r3(I)V

    goto :goto_1

    .line 19
    :cond_b
    aget p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xfc

    if-ne p1, v0, :cond_c

    .line 20
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/sq;->m3(I)V

    goto :goto_1

    .line 21
    :cond_c
    aget p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xf7

    if-ne p1, v0, :cond_d

    .line 22
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/sq;->s3(I)V

    goto :goto_1

    .line 23
    :cond_d
    aget p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xf6

    if-ne p1, v0, :cond_e

    .line 24
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/sq;->p3(I)V

    goto :goto_1

    .line 25
    :cond_e
    aget p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    const/16 p3, 0xf5

    if-ne p1, p3, :cond_f

    .line 26
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/sq;->n3(I)V

    :cond_f
    :goto_1
    return-void
.end method

.method public final a3(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 1111111=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/sq;->t:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/sq;->t:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lk0/sq;->t:Z

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 222222=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/sq;->t:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6521"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_3
    const-string v1, "6316"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "6312"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "6315"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6318"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6319"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 12
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_7
    :goto_0
    const/16 v0, 0xe

    if-eqz p1, :cond_8

    .line 14
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_9
    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_a

    .line 16
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 17
    :cond_a
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_2
    return-void
.end method

.method public final m3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x74

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sq;->M:I

    .line 3
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sq;->M:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

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

    const/16 v3, 0x7a

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    const/16 v3, 0xb6

    aput v3, v1, v0

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/sq;->P:I

    .line 4
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sq;->P:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x78

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sq;->K:I

    .line 3
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/sq;->K:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/sq;->K:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.height"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    sget v0, Lk0/sq;->K:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final p3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x79

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xa8

    aput v3, v1, v0

    const/4 v0, 0x2

    const/4 v3, 0x5

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    const/4 v0, 0x4

    aput v2, v1, v0

    aput v2, v1, v3

    const/4 v0, 0x6

    aput v2, v1, v0

    const/4 v0, 0x7

    aput v2, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/sq;->O:I

    .line 4
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sq;->O:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final q3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x77

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sq;->J:I

    .line 3
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/sq;->J:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/sq;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.width"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    sget v0, Lk0/sq;->J:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final r3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x73

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sq;->L:I

    .line 3
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sq;->L:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final s3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x75

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sq;->N:I

    .line 3
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sq;->N:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final t3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x76

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/sq;->I:I

    .line 3
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lf1/o;->e(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    instance-of v1, p1, Lf1/l;

    if-eqz v1, :cond_4

    .line 5
    sget v1, Lk0/sq;->I:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lf1/l;

    const/16 v0, 0xdb

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 7
    :cond_1
    check-cast p1, Lf1/l;

    const/16 v0, 0xda

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 8
    :cond_2
    check-cast p1, Lf1/l;

    const/16 v0, 0xde

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 9
    :cond_3
    check-cast p1, Lf1/l;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/sq;->I:I

    if-eq p1, v1, :cond_5

    .line 11
    iget-object p1, p0, Lk0/sq;->D:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method
