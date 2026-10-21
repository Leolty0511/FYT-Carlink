.class public Lk0/fk;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static K:I

.field public static L:I

.field public static M:I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:I

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Z

.field public j:B

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public final u:I

.field public v:Lo1/g0;

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


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

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/fk;->c:I

    const/16 v2, 0x10

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_0

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v7, 0x1

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v8, 0x3

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v9, 0x4

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v10, 0x5

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v11, 0x6

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v12, 0x7

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v13, 0x8

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v14, 0x9

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v15, 0xa

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v16, 0xb

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v17, 0xc

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v18, 0xd

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v19, 0xe

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v20, 0xf

    aput-object v5, v3, v20

    iput-object v3, v0, Lk0/fk;->d:[[I

    .line 4
    iput v1, v0, Lk0/fk;->f:I

    const/16 v3, 0x25

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_10

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    const/16 v5, 0x11

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    const/16 v5, 0x12

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    const/16 v5, 0x13

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    const/16 v5, 0x14

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    const/16 v5, 0x15

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    const/16 v5, 0x16

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_27

    const/16 v5, 0x17

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    const/16 v5, 0x18

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    const/16 v5, 0x19

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    const/16 v5, 0x1a

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v5, 0x1b

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v5, 0x1c

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v5, 0x1d

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2e

    const/16 v5, 0x1e

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2f

    const/16 v5, 0x1f

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_30

    const/16 v5, 0x20

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_31

    const/16 v8, 0x21

    aput-object v2, v3, v8

    new-array v2, v4, [I

    fill-array-data v2, :array_32

    const/16 v8, 0x22

    aput-object v2, v3, v8

    new-array v2, v4, [I

    fill-array-data v2, :array_33

    const/16 v8, 0x23

    aput-object v2, v3, v8

    new-array v2, v4, [I

    fill-array-data v2, :array_34

    const/16 v4, 0x24

    aput-object v2, v3, v4

    iput-object v3, v0, Lk0/fk;->g:[[I

    .line 6
    iput v1, v0, Lk0/fk;->h:I

    .line 7
    iput-boolean v6, v0, Lk0/fk;->i:Z

    .line 8
    iput-byte v6, v0, Lk0/fk;->j:B

    .line 9
    iput v6, v0, Lk0/fk;->k:I

    .line 10
    new-instance v1, Lk0/fk$a;

    invoke-direct {v1, v0}, Lk0/fk$a;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->l:Ljava/lang/Runnable;

    .line 11
    iput v6, v0, Lk0/fk;->m:I

    .line 12
    iput v6, v0, Lk0/fk;->n:I

    .line 13
    iput-boolean v6, v0, Lk0/fk;->o:Z

    .line 14
    iput v6, v0, Lk0/fk;->p:I

    .line 15
    iput-boolean v6, v0, Lk0/fk;->q:Z

    .line 16
    iput v6, v0, Lk0/fk;->r:I

    .line 17
    iput v6, v0, Lk0/fk;->s:I

    .line 18
    iput v6, v0, Lk0/fk;->t:I

    .line 19
    iput v7, v0, Lk0/fk;->u:I

    .line 20
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/fk;->v:Lo1/g0;

    .line 21
    new-instance v1, Lk0/fk$b;

    invoke-direct {v1, v0}, Lk0/fk$b;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->w:Ljava/lang/Runnable;

    .line 22
    new-instance v1, Lk0/fk$c;

    invoke-direct {v1, v0}, Lk0/fk$c;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->x:Ljava/lang/Runnable;

    .line 23
    new-instance v1, Lk0/fk$d;

    invoke-direct {v1, v0}, Lk0/fk$d;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->y:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lk0/fk$e;

    invoke-direct {v1, v0}, Lk0/fk$e;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->z:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Lk0/fk$f;

    invoke-direct {v1, v0}, Lk0/fk$f;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->A:Ljava/lang/Runnable;

    .line 26
    new-instance v1, Lk0/fk$g;

    invoke-direct {v1, v0}, Lk0/fk$g;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->B:Ljava/lang/Runnable;

    .line 27
    iput v6, v0, Lk0/fk;->C:I

    .line 28
    new-instance v1, Lk0/fk$h;

    invoke-direct {v1, v0}, Lk0/fk$h;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->D:Ljava/lang/Runnable;

    .line 29
    new-instance v1, Lk0/fk$i;

    invoke-direct {v1, v0}, Lk0/fk$i;-><init>(Lk0/fk;)V

    iput-object v1, v0, Lk0/fk;->E:Ljava/lang/Runnable;

    .line 30
    iput v6, v0, Lk0/fk;->F:I

    .line 31
    iput v6, v0, Lk0/fk;->G:I

    .line 32
    iput v6, v0, Lk0/fk;->H:I

    .line 33
    iput v6, v0, Lk0/fk;->I:I

    .line 34
    iput v6, v0, Lk0/fk;->J:I

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
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x22
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x2b
        0x5
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
        0x4
        0x37
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x8
        0x35
    .end array-data

    :array_16
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_17
    .array-data 4
        0xa
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x12
        0x3a
    .end array-data

    :array_19
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_1b
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_1c
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_1d
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_1e
    .array-data 4
        0x1b
        0x20
    .end array-data

    :array_1f
    .array-data 4
        0x1c
        0x22
    .end array-data

    :array_20
    .array-data 4
        0x1d
        0x23
    .end array-data

    :array_21
    .array-data 4
        0x1e
        0x21
    .end array-data

    :array_22
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_23
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_25
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_26
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_27
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_28
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_29
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_2a
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_2b
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_2c
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_2d
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_2e
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_2f
    .array-data 4
        0x3b
        0x2
    .end array-data

    :array_30
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_31
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_32
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_33
    .array-data 4
        0x54
        0x1
    .end array-data

    :array_34
    .array-data 4
        0x61
        0x3e
    .end array-data
.end method

.method public static b3()V
    .locals 15

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0x91

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 2
    invoke-static {}, Lk0/fk;->d3()I

    move-result v3

    const/4 v5, 0x2

    aput v3, v1, v5

    .line 3
    sget v3, Lu0/b;->D:I

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    sget v3, Lw0/d;->h:I

    const/high16 v6, 0x10000

    sub-int v7, v3, v6

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/16 v14, 0xa

    if-eqz v7, :cond_3

    sub-int v7, v3, v6

    if-eq v4, v7, :cond_3

    sub-int/2addr v3, v6

    if-ne v5, v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget v3, Lw0/d;->j:I

    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 6
    rem-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 7
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 8
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 9
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v14

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 10
    rem-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    .line 12
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 13
    rem-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 14
    sget v3, Lw0/d;->i:I

    const v4, 0x186a0

    rem-int v4, v3, v4

    div-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 15
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 16
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v8

    .line 17
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    :goto_2
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 18
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 19
    :cond_4
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static c3()V
    .locals 14

    const/16 v0, 0x22

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput v4, v1, v2

    const/16 v3, 0x91

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 2
    sget v3, Lu0/b;->a0:I

    const/4 v5, 0x7

    shl-int/2addr v3, v5

    and-int/lit16 v3, v3, 0x80

    const/4 v6, 0x2

    aput v3, v1, v6

    const/4 v3, 0x3

    .line 3
    invoke-static {}, Lk0/fk;->d3()I

    move-result v7

    aput v7, v1, v3

    .line 4
    sget v3, Lu0/b;->D:I

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    sget v3, Lw0/d;->h:I

    const/high16 v7, 0x10000

    sub-int v8, v3, v7

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/16 v13, 0xa

    if-eqz v8, :cond_3

    sub-int v8, v3, v7

    if-eq v4, v8, :cond_3

    sub-int/2addr v3, v7

    if-ne v6, v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget v3, Lw0/d;->j:I

    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 7
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    .line 8
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 9
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 10
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 11
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    .line 13
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 14
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    .line 15
    sget v3, Lw0/d;->i:I

    const v4, 0x186a0

    rem-int v4, v3, v4

    div-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 16
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 17
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v13

    const/16 v4, 0xb

    .line 18
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v4

    :goto_2
    const/16 v3, 0x23

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 19
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 20
    :cond_4
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static d3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v1, 0xfe

    goto :goto_1

    :cond_0
    :pswitch_2
    move v1, v2

    goto :goto_1

    :pswitch_3
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_5
    const/16 v1, 0xc

    goto :goto_1

    .line 2
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_7
    const/16 v1, 0x85

    goto :goto_1

    :pswitch_8
    const/16 v1, 0xa

    goto :goto_1

    .line 3
    :pswitch_9
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v5, v0, v2

    if-nez v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    sub-int v5, v0, v2

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, v0, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v3

    if-ne v4, v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v3

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v4, :cond_6

    const/16 v1, 0x10

    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic e3(Lk0/fk;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/fk;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lk0/fk;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/fk;->i3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic g3(Lk0/fk;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/fk;->v:Lo1/g0;

    return-object p0
.end method

.method public static synthetic h3(Lk0/fk;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/fk;->k3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_25

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

    aget v2, v1, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "      value = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v5, 0x29

    const/16 v6, 0xd

    if-eq v4, v5, :cond_23

    const/16 v5, 0x2a

    const/16 v7, 0x10

    const/16 v8, 0xf

    if-eq v4, v5, :cond_21

    const/16 v5, 0x43

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eq v4, v5, :cond_18

    const/16 v5, 0x44

    const/4 v12, 0x6

    const/16 v13, 0xa

    const/16 v14, 0xc

    const/16 v15, 0xb

    const/4 v9, 0x7

    if-eq v4, v5, :cond_8

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, v15}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v14}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget v1, v1, v2

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-nez v1, :cond_25

    .line 9
    invoke-virtual {v0, v9}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-ne v1, v2, :cond_25

    .line 11
    invoke-virtual {v0, v9}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    aget v1, v1, v2

    if-eqz v1, :cond_3

    .line 13
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v7

    if-nez v1, :cond_25

    .line 14
    invoke-virtual {v0, v12}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_3
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v7

    if-ne v1, v2, :cond_25

    .line 16
    invoke-virtual {v0, v12}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    aget v1, v1, v2

    if-eqz v1, :cond_4

    .line 18
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v8

    if-nez v1, :cond_25

    .line 19
    invoke-virtual {v0, v11}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 20
    :cond_4
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v8

    if-ne v1, v2, :cond_25

    .line 21
    invoke-virtual {v0, v11}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_4
    aget v1, v1, v2

    if-eqz v1, :cond_5

    .line 23
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v6

    if-nez v1, :cond_25

    .line 24
    invoke-virtual {v0, v10}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 25
    :cond_5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v6

    if-ne v1, v2, :cond_25

    .line 26
    invoke-virtual {v0, v10}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_5
    aget v1, v1, v2

    if-eqz v1, :cond_6

    .line 28
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_25

    .line 29
    invoke-virtual {v0, v3}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 30
    :cond_6
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v2, :cond_25

    .line 31
    invoke-virtual {v0, v3}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 32
    :pswitch_6
    aget v1, v1, v2

    if-eqz v1, :cond_7

    .line 33
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-nez v1, :cond_25

    .line 34
    invoke-virtual {v0, v2}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 35
    :cond_7
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-ne v1, v2, :cond_25

    .line 36
    invoke-virtual {v0, v2}, Lk0/fk;->a3(I)V

    goto/16 :goto_0

    .line 37
    :cond_8
    aget v4, v1, v2

    if-ne v4, v2, :cond_a

    .line 38
    sget v1, Lk0/nt;->W:I

    if-ne v1, v2, :cond_9

    new-array v1, v9, [I

    .line 39
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_9
    new-array v1, v9, [I

    .line 40
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_a
    aget v4, v1, v2

    if-ne v4, v3, :cond_c

    .line 42
    sget v1, Lk0/nt;->W:I

    if-ne v1, v2, :cond_b

    new-array v1, v9, [I

    .line 43
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_b
    new-array v1, v9, [I

    .line 44
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_c
    aget v3, v1, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 46
    sget v1, Lk0/nt;->W:I

    if-ne v1, v2, :cond_d

    new-array v1, v9, [I

    .line 47
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_d
    new-array v1, v9, [I

    .line 48
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 49
    :cond_e
    aget v3, v1, v2

    if-ne v3, v10, :cond_10

    .line 50
    sget v1, Lk0/nt;->W:I

    if-ne v1, v2, :cond_f

    new-array v1, v9, [I

    .line 51
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_f
    new-array v1, v9, [I

    .line 52
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 53
    :cond_10
    aget v3, v1, v2

    if-ne v3, v11, :cond_11

    new-array v1, v9, [I

    .line 54
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 55
    :cond_11
    aget v3, v1, v2

    if-ne v3, v12, :cond_12

    new-array v1, v9, [I

    .line 56
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 57
    :cond_12
    aget v3, v1, v2

    if-ne v3, v9, :cond_13

    new-array v1, v9, [I

    .line 58
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 59
    :cond_13
    aget v3, v1, v2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_14

    new-array v1, v9, [I

    .line 60
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 61
    :cond_14
    aget v3, v1, v2

    const/16 v4, 0x9

    if-ne v3, v4, :cond_15

    new-array v1, v9, [I

    .line 62
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 63
    :cond_15
    aget v3, v1, v2

    if-ne v3, v13, :cond_16

    new-array v1, v9, [I

    .line 64
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 65
    :cond_16
    aget v3, v1, v2

    if-ne v3, v15, :cond_17

    new-array v1, v9, [I

    .line 66
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 67
    :cond_17
    aget v1, v1, v2

    if-ne v1, v14, :cond_25

    new-array v1, v9, [I

    .line 68
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 69
    :cond_18
    aget v1, v1, v2

    const v4, 0x9201bb

    if-eqz v1, :cond_1f

    if-eq v1, v2, :cond_1d

    if-eq v1, v3, :cond_1c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    if-eq v1, v10, :cond_1a

    if-eq v1, v11, :cond_19

    goto :goto_0

    .line 70
    :cond_19
    invoke-virtual {v0, v11}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 71
    :cond_1a
    invoke-virtual {v0, v10}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 72
    :cond_1b
    invoke-virtual {v0, v2}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 73
    :cond_1c
    invoke-virtual {v0, v3}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 74
    :cond_1d
    sget v1, Lu0/b;->o:I

    if-ne v1, v2, :cond_25

    .line 75
    sget v1, Lk0/nt;->a:I

    if-ne v1, v4, :cond_1e

    new-array v1, v11, [I

    .line 76
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 77
    :cond_1e
    invoke-virtual {v0, v2}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 78
    :cond_1f
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_25

    .line 79
    sget v1, Lk0/nt;->a:I

    if-ne v1, v4, :cond_20

    new-array v1, v11, [I

    .line 80
    fill-array-data v1, :array_11

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 81
    :cond_20
    invoke-virtual {v0, v2}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 82
    :cond_21
    aget v1, v1, v2

    if-eqz v1, :cond_22

    .line 83
    invoke-virtual {v0, v8}, Lk0/fk;->a3(I)V

    goto :goto_0

    .line 84
    :cond_22
    invoke-virtual {v0, v7}, Lk0/fk;->a3(I)V

    goto :goto_0

    .line 85
    :cond_23
    aget v1, v1, v2

    if-eqz v1, :cond_24

    .line 86
    invoke-virtual {v0, v6}, Lk0/fk;->a3(I)V

    goto :goto_0

    :cond_24
    const/16 v1, 0xe

    .line 87
    invoke-virtual {v0, v1}, Lk0/fk;->a3(I)V

    :cond_25
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
        0x4
        0x6f
        0x11
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x0
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x1
        0xff
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x1
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x0
        0xff
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x0
        0xff
        0xff
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        0x6f
        0x10
        0x1
        0xff
        0xff
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6f
        0x11
        0x1
        0xff
        0xff
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x0
        0xff
        0xff
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x4
        0x6f
        0x12
        0x1
        0xff
        0xff
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x0
        0xff
        0xff
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x4
        0x6f
        0x13
        0x1
        0xff
        0xff
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x0
        0xff
        0xff
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x4
        0x6f
        0x14
        0x1
        0xff
        0xff
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x4
        0x6f
        0x15
        0x0
        0xff
        0xff
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x4
        0x6f
        0x15
        0x1
        0xff
        0xff
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0xfd
        0xa
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x2
        0xfd
        0xa
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/fk;->v:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->q:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v2, v0, Lk0/mt;->h:I

    .line 10
    iput v2, v0, Lk0/mt;->l:I

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/fk;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v3, p0, Lk0/fk;->B:Ljava/lang/Runnable;

    invoke-static {v3}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    sget v3, Lk0/nt;->a:I

    const/4 v4, 0x2

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 14
    :sswitch_0
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v2, Lk0/mt;->h:I

    .line 15
    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 19
    :sswitch_1
    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 23
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto/16 :goto_0

    .line 24
    :sswitch_3
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v2, Lk0/mt;->h:I

    .line 25
    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/fk;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/fk;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/fk;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 32
    :sswitch_4
    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 33
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 36
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/fk;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 37
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/fk;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 38
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/fk;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 39
    :sswitch_5
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v2, Lk0/mt;->l:I

    .line 40
    iput v4, v2, Lk0/mt;->h:I

    .line 41
    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 42
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 43
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 44
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 45
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/fk;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 46
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/fk;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 47
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/fk;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 48
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/fk;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 49
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 50
    :sswitch_6
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v2, Lk0/mt;->l:I

    .line 51
    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 52
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 53
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 54
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 55
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/fk;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 56
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/fk;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 57
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/fk;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 58
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/fk;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 59
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/fk;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 60
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x701be -> :sswitch_6
        0x801be -> :sswitch_5
        0x1201be -> :sswitch_6
        0x1301be -> :sswitch_6
        0x5301bc -> :sswitch_6
        0x5801bc -> :sswitch_5
        0x8e01bb -> :sswitch_4
        0x8f01bb -> :sswitch_3
        0x9001bb -> :sswitch_2
        0x9101bb -> :sswitch_1
        0x9201bb -> :sswitch_0
        0xfd01bb -> :sswitch_4
        0xfe01bb -> :sswitch_3
    .end sparse-switch

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
        0x46
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x70

    const-string v4, "persist.lesc.video.ignore"

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_58

    const/16 v3, -0x18

    const/16 v10, 0x8

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v2, v3, :cond_46

    const/16 v3, -0x10

    if-eq v2, v3, :cond_45

    const/16 v3, 0x18

    const/16 v4, 0xb

    if-eq v2, v3, :cond_44

    const/16 v3, 0x1a

    const/16 v16, 0x9

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x41

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x11

    const/16 v15, 0x12

    if-eq v2, v3, :cond_28

    if-eq v2, v15, :cond_26

    const/16 v3, 0x21

    if-eq v2, v3, :cond_20

    const/16 v3, 0x22

    if-eq v2, v3, :cond_15

    const/16 v3, 0x31

    if-eq v2, v3, :cond_6

    const/16 v3, 0x32

    if-eq v2, v3, :cond_5

    const/16 v3, 0x61

    if-eq v2, v3, :cond_2

    const/16 v3, 0x62

    if-eq v2, v3, :cond_0

    goto/16 :goto_20

    :cond_0
    const/16 v2, 0x91

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v9, [I

    .line 3
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v9, [I

    .line 4
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v9, [I

    .line 6
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v13

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v9, [I

    .line 7
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v13

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 8
    iget v2, v0, Lk0/fk;->I:I

    add-int/lit8 v3, p2, 0x4

    aget-byte v4, v1, v3

    shr-int/2addr v4, v12

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_1

    .line 9
    aget-byte v2, v1, v3

    shr-int/2addr v2, v12

    and-int/2addr v2, v9

    iput v2, v0, Lk0/fk;->I:I

    const/16 v4, 0xa2

    new-array v6, v9, [I

    aput v2, v6, v8

    .line 10
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    .line 11
    :cond_1
    iget v2, v0, Lk0/fk;->J:I

    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_5d

    .line 12
    aget-byte v1, v1, v3

    shr-int/2addr v1, v12

    and-int/2addr v1, v9

    iput v1, v0, Lk0/fk;->J:I

    const/16 v2, 0xa3

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 14
    :cond_2
    sget v2, Lk0/nt;->a:I

    const v3, 0x5301bc

    if-eq v2, v3, :cond_4

    const v3, 0x5801bc

    if-eq v2, v3, :cond_4

    const v3, 0x701be

    if-eq v2, v3, :cond_4

    const v3, 0x801be

    if-eq v2, v3, :cond_4

    const v3, 0x1201be

    if-eq v2, v3, :cond_4

    const v3, 0x1301be

    if-ne v2, v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x64

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 15
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v9, [I

    .line 16
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    .line 17
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v13

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    .line 18
    aget-byte v4, v1, v4

    shr-int/2addr v4, v14

    and-int/2addr v4, v13

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 19
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    .line 20
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    .line 21
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 22
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    .line 23
    aget-byte v7, v1, v4

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    .line 24
    aget-byte v7, v1, v4

    shr-int/2addr v7, v14

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    .line 25
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    .line 26
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 27
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    .line 28
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    .line 29
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    .line 30
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    .line 31
    aget-byte v7, v1, v4

    shr-int/2addr v7, v14

    and-int/2addr v7, v13

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v9, [I

    .line 32
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v9, [I

    .line 33
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 34
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v9, [I

    .line 35
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    .line 36
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v9, [I

    .line 37
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v9, [I

    .line 38
    aget-byte v7, v1, v4

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v9, [I

    .line 39
    aget-byte v7, v1, v4

    shr-int/2addr v7, v14

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 40
    aget-byte v2, v1, v4

    shr-int/2addr v2, v8

    and-int/2addr v2, v13

    add-int/2addr v2, v9

    const/16 v3, 0x7f

    new-array v4, v9, [I

    aput v2, v4, v8

    .line 41
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 42
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v12

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v9, [I

    .line 43
    aget-byte v7, v1, v4

    shr-int/2addr v7, v13

    and-int/2addr v7, v13

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v9, [I

    .line 44
    aget-byte v7, v1, v4

    shr-int/2addr v7, v14

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v9, [I

    .line 45
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v9, [I

    .line 46
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 47
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v9, [I

    .line 48
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v9, [I

    .line 49
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v9, [I

    .line 50
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v9, [I

    .line 51
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 52
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v9, [I

    .line 53
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v9, [I

    .line 54
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v9, [I

    .line 55
    aget-byte v7, v1, v4

    shr-int/2addr v7, v13

    and-int/2addr v7, v13

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v9, [I

    .line 56
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 57
    aget-byte v7, v1, v4

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v9, [I

    .line 58
    aget-byte v7, v1, v4

    shr-int/lit8 v5, v7, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v9, [I

    .line 59
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v9, [I

    .line 60
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v9, [I

    .line 61
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v9, [I

    .line 62
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v9, [I

    .line 63
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v9, [I

    .line 64
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_4
    :goto_0
    const/16 v2, 0xa1

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 65
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v9, [I

    .line 66
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v9, [I

    .line 67
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 68
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_5
    add-int/lit8 v2, p2, 0x4

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x5

    .line 70
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    add-int/lit8 v5, p2, 0x6

    .line 71
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    add-int/lit8 v6, p2, 0x7

    .line 72
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    const/16 v12, 0x408

    new-array v13, v9, [I

    shl-int/2addr v2, v10

    or-int/2addr v2, v3

    aput v2, v13, v8

    .line 73
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v9, [I

    shl-int/2addr v5, v10

    or-int/2addr v5, v6

    aput v5, v3, v8

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x8

    .line 75
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x9

    .line 76
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0xa

    .line 77
    aget-byte v6, v1, v5

    shl-int/2addr v6, v10

    const v12, 0xff00

    and-int/2addr v6, v12

    add-int/lit8 v4, p2, 0xb

    aget-byte v12, v1, v4

    and-int/2addr v12, v7

    or-int/2addr v6, v12

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 78
    aget-byte v2, v1, v5

    shl-int/2addr v2, v10

    const v3, 0xff00

    and-int/2addr v2, v3

    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    .line 79
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v14, [I

    aput v11, v3, v8

    aput v1, v3, v9

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 81
    aget-byte v3, v1, v3

    add-int/lit8 v10, p2, 0x4

    .line 82
    aget-byte v10, v1, v10

    add-int/lit8 v12, p2, 0x6

    .line 83
    aget-byte v12, v1, v12

    add-int/lit8 v16, p2, 0x7

    .line 84
    aget-byte v7, v1, v16

    const/16 v15, 0xa

    new-array v5, v9, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v8

    .line 85
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x35

    new-array v15, v9, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 86
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x26

    new-array v15, v9, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 87
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v15, v9, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v9

    aput v2, v15, v8

    .line 88
    invoke-static {v5, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v5, v9, [I

    shr-int/lit8 v15, v3, 0x7

    and-int/2addr v15, v9

    aput v15, v5, v8

    .line 89
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 90
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v5, v9, [I

    shr-int/lit8 v15, v3, 0x5

    and-int/2addr v15, v9

    aput v15, v5, v8

    .line 91
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v9

    aput v5, v2, v8

    const/16 v5, 0xc

    .line 92
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v5, v9, [I

    shr-int/lit8 v15, v3, 0x3

    and-int/2addr v15, v9

    aput v15, v5, v8

    .line 93
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v5, v9, [I

    shr-int/lit8 v15, v3, 0x2

    and-int/2addr v15, v9

    aput v15, v5, v8

    .line 94
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v5, v9, [I

    shr-int/2addr v3, v9

    and-int/2addr v3, v9

    aput v3, v5, v8

    .line 95
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    new-array v3, v9, [I

    shr-int/lit8 v5, v10, 0x4

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 96
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v9, [I

    shr-int/lit8 v5, v10, 0x5

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 97
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v9, [I

    shr-int/lit8 v5, v10, 0x6

    and-int/2addr v5, v9

    shl-int/2addr v5, v6

    shr-int/lit8 v15, v10, 0x0

    and-int/2addr v15, v13

    or-int/2addr v5, v15

    aput v5, v3, v8

    .line 98
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v9, [I

    shr-int/lit8 v5, v10, 0x7

    and-int/2addr v5, v9

    shl-int/2addr v5, v6

    shr-int/lit8 v6, v10, 0x2

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v3, v8

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eq v12, v13, :cond_b

    if-eq v12, v11, :cond_a

    const/4 v2, 0x6

    if-eq v12, v2, :cond_9

    if-eq v12, v4, :cond_8

    const/16 v2, 0xc

    if-eq v12, v2, :cond_7

    move v2, v8

    move v3, v2

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_7
    move v3, v8

    move v2, v9

    move v5, v2

    goto :goto_2

    :cond_8
    move v3, v8

    move v5, v3

    move v2, v9

    goto :goto_2

    :cond_9
    move v2, v8

    move v5, v2

    move v3, v9

    goto :goto_2

    :cond_a
    move v2, v8

    move v3, v9

    goto :goto_1

    :cond_b
    move v2, v8

    move v3, v2

    move v5, v9

    :goto_2
    new-array v6, v9, [I

    aput v2, v6, v8

    const/16 v2, 0x12

    .line 100
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v9, [I

    aput v3, v6, v8

    .line 101
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    aput v5, v3, v8

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    const/16 v5, 0xff

    and-int/lit16 v6, v7, 0xff

    aput v6, v3, v8

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 104
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v5, -0x2

    const/16 v6, 0xfe

    const/16 v7, 0x1c

    const/16 v10, 0x1b

    if-eqz v2, :cond_10

    add-int/lit8 v2, p2, 0x8

    .line 105
    aget-byte v11, v1, v2

    const/16 v12, 0xff

    and-int/2addr v11, v12

    if-ne v11, v6, :cond_c

    new-array v2, v9, [I

    aput v5, v2, v8

    .line 106
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 107
    :cond_c
    aget-byte v11, v1, v2

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_d

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 108
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v11, v9, [I

    .line 109
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v11, v8

    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 110
    aget-byte v7, v1, v2

    and-int/2addr v7, v12

    if-ne v7, v6, :cond_e

    new-array v2, v9, [I

    aput v5, v2, v8

    .line 111
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 112
    :cond_e
    aget-byte v5, v1, v2

    and-int/2addr v5, v12

    if-ne v5, v12, :cond_f

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 113
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array v3, v9, [I

    .line 114
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v3, v8

    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    const/16 v12, 0xff

    add-int/lit8 v2, p2, 0x8

    .line 115
    aget-byte v11, v1, v2

    and-int/2addr v11, v12

    if-ne v11, v6, :cond_11

    new-array v2, v9, [I

    aput v5, v2, v8

    .line 116
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 117
    :cond_11
    aget-byte v11, v1, v2

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_12

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 118
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    new-array v11, v9, [I

    .line 119
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v11, v8

    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x9

    .line 120
    aget-byte v10, v1, v2

    and-int/2addr v10, v12

    if-ne v10, v6, :cond_13

    new-array v2, v9, [I

    aput v5, v2, v8

    .line 121
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 122
    :cond_13
    aget-byte v5, v1, v2

    and-int/2addr v5, v12

    if-ne v5, v12, :cond_14

    new-array v2, v9, [I

    aput v3, v2, v8

    .line 123
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    new-array v3, v9, [I

    .line 124
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v3, v8

    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v2, 0x2c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 125
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 126
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 127
    aget-byte v1, v1, v3

    if-eq v2, v9, :cond_1b

    if-eq v2, v14, :cond_16

    if-eq v2, v13, :cond_16

    if-eq v2, v6, :cond_16

    if-eq v2, v11, :cond_16

    goto/16 :goto_20

    .line 128
    :cond_16
    iget v2, v0, Lk0/fk;->t:I

    if-eq v1, v2, :cond_5d

    if-le v1, v2, :cond_18

    move v2, v8

    .line 129
    :goto_6
    iget v3, v0, Lk0/fk;->t:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_17

    const/16 v3, 0x1f

    .line 130
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    const/16 v2, 0x1f

    .line 131
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_18
    if-ge v1, v2, :cond_1a

    move v2, v8

    .line 132
    :goto_7
    iget v3, v0, Lk0/fk;->t:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_19

    const/16 v3, 0x1e

    .line 133
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    const/16 v2, 0x1e

    .line 134
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 135
    :cond_1a
    :goto_8
    iput v1, v0, Lk0/fk;->t:I

    goto/16 :goto_20

    .line 136
    :cond_1b
    iget v2, v0, Lk0/fk;->s:I

    if-eq v1, v2, :cond_5d

    if-le v1, v2, :cond_1d

    move v2, v8

    .line 137
    :goto_9
    iget v3, v0, Lk0/fk;->s:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_1c

    .line 138
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 139
    :cond_1c
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_1d
    if-ge v1, v2, :cond_1f

    move v2, v8

    .line 140
    :goto_a
    iget v3, v0, Lk0/fk;->s:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1e

    .line 141
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 142
    :cond_1e
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    .line 143
    :cond_1f
    :goto_b
    iput v1, v0, Lk0/fk;->s:I

    goto/16 :goto_20

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 144
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/fk;->f:I

    add-int/lit8 v2, p2, 0x3

    .line 145
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    move v2, v8

    .line 146
    :goto_c
    iget-object v3, v0, Lk0/fk;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_22

    .line 147
    iget v4, v0, Lk0/fk;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_21

    if-eqz v4, :cond_22

    .line 148
    iput v2, v0, Lk0/fk;->e:I

    goto :goto_d

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    :goto_d
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v9, :cond_23

    .line 149
    array-length v1, v3

    if-ge v2, v1, :cond_5d

    .line 150
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_23
    if-nez v1, :cond_5d

    .line 151
    iget v1, v0, Lk0/fk;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_24

    const/16 v2, 0xff

    if-eq v1, v2, :cond_25

    .line 152
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_24
    const/16 v2, 0xff

    .line 153
    :cond_25
    :goto_e
    iput v2, v0, Lk0/fk;->e:I

    goto/16 :goto_20

    :cond_26
    add-int/lit8 v2, p2, 0x4

    .line 154
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 155
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_27

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 156
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 157
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_27
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 158
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 159
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_f
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 160
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 161
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 162
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v14

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 163
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_28
    add-int/lit8 v2, p2, 0x4

    .line 164
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 165
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 166
    iput v2, v0, Lk0/fk;->c:I

    move v2, v8

    .line 167
    :goto_10
    iget-object v4, v0, Lk0/fk;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_2a

    .line 168
    iget v5, v0, Lk0/fk;->c:I

    aget-object v4, v4, v2

    aget v4, v4, v8

    if-ne v5, v4, :cond_29

    if-eqz v5, :cond_2a

    .line 169
    iput v2, v0, Lk0/fk;->b:I

    .line 170
    iput v5, v0, Lk0/fk;->h:I

    goto :goto_11

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 171
    :cond_2a
    :goto_11
    sget v4, Lk0/nt;->a:I

    const v5, 0x5801bc

    if-eq v4, v5, :cond_2b

    const v5, 0x801be

    if-ne v4, v5, :cond_2e

    .line 172
    :cond_2b
    sget v4, Lu0/b;->r0:I

    if-nez v4, :cond_2e

    .line 173
    iget v4, v0, Lk0/fk;->p:I

    add-int/lit8 v5, p2, 0x2

    aget-byte v7, v1, v5

    shr-int/2addr v7, v14

    and-int/2addr v7, v9

    if-eq v4, v7, :cond_2e

    .line 174
    aget-byte v4, v1, v5

    shr-int/2addr v4, v14

    and-int/2addr v4, v9

    iput v4, v0, Lk0/fk;->p:I

    if-ne v4, v9, :cond_2d

    .line 175
    sget v4, Ly0/f;->x:I

    if-nez v4, :cond_2c

    sget v4, Ly0/f;->c:I

    sget v5, Ly0/f;->R:I

    mul-int/2addr v4, v5

    sget v5, Ly0/f;->S:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    goto :goto_12

    :cond_2c
    const/4 v4, 0x0

    :goto_12
    float-to-int v4, v4

    .line 176
    sget v5, Ly0/f;->c:I

    iput v5, v0, Lk0/fk;->r:I

    .line 177
    invoke-static {v4}, Ly0/h;->t0(I)V

    goto :goto_13

    :cond_2d
    if-nez v4, :cond_2e

    .line 178
    iget v4, v0, Lk0/fk;->r:I

    invoke-static {v4}, Ly0/h;->t0(I)V

    .line 179
    :cond_2e
    :goto_13
    iget v4, v0, Lk0/fk;->c:I

    if-eqz v4, :cond_36

    if-eq v4, v11, :cond_33

    const/16 v5, 0xc

    if-eq v4, v5, :cond_32

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v9, :cond_2f

    .line 180
    iget-object v3, v0, Lk0/fk;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3a

    .line 181
    aget-object v2, v3, v2

    aget v2, v2, v9

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_2f
    if-nez v3, :cond_3a

    .line 182
    iget v2, v0, Lk0/fk;->b:I

    iget-object v3, v0, Lk0/fk;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_30

    const/16 v4, 0xff

    if-eq v2, v4, :cond_31

    .line 183
    aget-object v2, v3, v2

    aget v2, v2, v9

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_30
    const/16 v4, 0xff

    .line 184
    :cond_31
    :goto_14
    iput v4, v0, Lk0/fk;->b:I

    goto/16 :goto_16

    .line 185
    :cond_32
    iget v2, v0, Lk0/fk;->k:I

    if-eq v2, v3, :cond_3a

    .line 186
    iput v3, v0, Lk0/fk;->k:I

    if-ne v3, v9, :cond_3a

    .line 187
    iput-boolean v8, v0, Lk0/fk;->i:Z

    .line 188
    iput-byte v8, v0, Lk0/fk;->j:B

    .line 189
    iget-object v2, v0, Lk0/fk;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_16

    .line 190
    :cond_33
    sget v2, Lk0/nt;->a:I

    const v3, 0x9001bb

    if-ne v2, v3, :cond_35

    .line 191
    sget v2, Lh0/c;->E:I

    if-eq v2, v6, :cond_34

    const/16 v2, 0xc

    .line 192
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 193
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_16

    :cond_34
    const/16 v2, 0x12

    .line 194
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 195
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_16

    :cond_35
    const/16 v2, 0x12

    .line 196
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 197
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_16

    :cond_36
    const/16 v2, 0xc

    .line 198
    iget v4, v0, Lk0/fk;->h:I

    if-eq v4, v2, :cond_38

    const/16 v2, 0xff

    and-int/2addr v3, v2

    if-nez v3, :cond_39

    .line 199
    iget v3, v0, Lk0/fk;->b:I

    iget-object v4, v0, Lk0/fk;->d:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_37

    if-eq v3, v2, :cond_37

    .line 200
    aget-object v3, v4, v3

    aget v3, v3, v9

    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 201
    :cond_37
    iput v2, v0, Lk0/fk;->b:I

    goto :goto_15

    .line 202
    :cond_38
    iget-boolean v2, v0, Lk0/fk;->i:Z

    if-nez v2, :cond_39

    .line 203
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    .line 204
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    .line 205
    :cond_39
    :goto_15
    iget-object v2, v0, Lk0/fk;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 206
    iput-boolean v8, v0, Lk0/fk;->i:Z

    .line 207
    iput-byte v8, v0, Lk0/fk;->j:B

    .line 208
    iput v8, v0, Lk0/fk;->k:I

    .line 209
    iput v8, v0, Lk0/fk;->h:I

    :cond_3a
    :goto_16
    add-int/lit8 v2, p2, 0x9

    .line 210
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, v1, v4

    and-int/2addr v3, v4

    const/16 v4, 0x21c

    invoke-static {v2, v3, v9, v4}, Lk0/qt;->i(IIZI)V

    .line 211
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v14, [I

    aput v13, v3, v8

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v9

    aput v1, v3, v9

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_3b
    add-int/lit8 v2, p2, 0x2

    .line 212
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 213
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 214
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 215
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 216
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x7

    .line 217
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x8

    .line 218
    aget-byte v10, v1, v7

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x9

    .line 219
    aget-byte v12, v1, v11

    and-int/2addr v12, v3

    if-ne v4, v3, :cond_3c

    if-ne v6, v3, :cond_3c

    if-ne v10, v3, :cond_3c

    if-ne v12, v3, :cond_3c

    .line 220
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_17

    .line 221
    :cond_3c
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_3d

    sget v3, Ll0/c0;->h:I

    if-ne v3, v6, :cond_3d

    sget v3, Ll0/c0;->i:I

    if-ne v3, v10, :cond_3d

    sget v3, Ll0/c0;->j:I

    if-eq v3, v12, :cond_3e

    .line 222
    :cond_3d
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_3e

    .line 223
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 224
    :cond_3e
    :goto_17
    sput v4, Ll0/c0;->g:I

    .line 225
    sput v6, Ll0/c0;->h:I

    .line 226
    sput v10, Ll0/c0;->i:I

    .line 227
    sput v12, Ll0/c0;->j:I

    .line 228
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 229
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 230
    aget-byte v2, v1, v7

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->U0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 231
    aget-byte v1, v1, v11

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_20

    .line 232
    :cond_3f
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v14, [I

    const/16 v4, 0xc

    aput v4, v3, v8

    add-int/lit8 v4, p2, 0x4

    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v9

    aput v5, v3, v9

    const/16 v5, 0x419

    const/4 v7, 0x0

    invoke-static {v2, v5, v3, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v14, [I

    aput v16, v3, v8

    .line 233
    aget-byte v4, v1, v4

    const/4 v8, 0x6

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v9

    invoke-static {v2, v5, v3, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x7

    .line 234
    aget-byte v1, v1, v3

    if-eq v1, v9, :cond_43

    if-eq v1, v14, :cond_42

    if-eq v1, v13, :cond_41

    if-eq v1, v6, :cond_40

    goto/16 :goto_20

    :cond_40
    new-array v1, v14, [I

    .line 235
    fill-array-data v1, :array_0

    invoke-static {v2, v5, v1, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_41
    new-array v1, v14, [I

    .line 236
    fill-array-data v1, :array_1

    invoke-static {v2, v5, v1, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_42
    new-array v1, v14, [I

    .line 237
    fill-array-data v1, :array_2

    invoke-static {v2, v5, v1, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_43
    new-array v1, v14, [I

    .line 238
    fill-array-data v1, :array_3

    invoke-static {v2, v5, v1, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_44
    add-int/lit8 v2, p2, 0x3

    .line 239
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v9

    .line 240
    aget-byte v5, v1, v2

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v9

    shl-int/2addr v3, v13

    and-int/2addr v3, v10

    shl-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    .line 241
    sget v5, Lu0/b;->w:I

    shl-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v3, v5

    .line 242
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    new-array v6, v14, [I

    aput v4, v6, v8

    aput v3, v6, v9

    const/16 v3, 0x419

    const/4 v4, 0x0

    invoke-static {v5, v3, v6, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 243
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v9

    aget-byte v4, v1, v2

    const/4 v5, 0x6

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v9

    invoke-static {v3, v4, v1}, Ll0/c0;->N1(III)V

    goto/16 :goto_20

    .line 244
    :cond_45
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_46
    const/16 v2, 0xa0

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 245
    aget-byte v7, v1, v5

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 246
    sget v2, Lk0/nt;->a:I

    const v3, 0x8f01bb

    if-eq v2, v3, :cond_4f

    const v3, 0x9201bb

    if-ne v2, v3, :cond_47

    goto/16 :goto_19

    :cond_47
    const v3, 0x5801bc

    if-eq v2, v3, :cond_4b

    const v3, 0x801be

    if-ne v2, v3, :cond_48

    goto :goto_18

    .line 247
    :cond_48
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 248
    iget v2, v0, Lk0/fk;->n:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v4, v1, v3

    if-eq v2, v4, :cond_5d

    .line 249
    aget-byte v1, v1, v3

    iput v1, v0, Lk0/fk;->n:I

    if-ne v1, v9, :cond_4a

    const-string v1, "com.syu.fourcamera2"

    .line 250
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 251
    iput-boolean v9, v0, Lk0/fk;->o:Z

    .line 252
    :cond_49
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_20

    .line 253
    :cond_4a
    iget-boolean v1, v0, Lk0/fk;->o:Z

    if-eqz v1, :cond_5d

    .line 254
    iput-boolean v8, v0, Lk0/fk;->o:Z

    .line 255
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_20

    .line 256
    :cond_4b
    :goto_18
    iget v2, v0, Lk0/fk;->m:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v5, v1, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-eq v2, v5, :cond_5d

    .line 257
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    iput v1, v0, Lk0/fk;->m:I

    .line 258
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFlagCamera 11111111  ==   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lk0/fk;->m:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 259
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_5d

    .line 260
    iget v1, v0, Lk0/fk;->m:I

    if-ne v1, v9, :cond_4d

    const-wide/16 v5, 0x12c

    .line 261
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 262
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JumpPage.isCarUiTop 11111111  ==   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 264
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    const-string v3, "JumpPage.isCarUiTop 3333333  ==  U_CAR_BACKCAR_UI 111 "

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v1, 0x9e

    new-array v2, v9, [I

    aput v9, v2, v8

    .line 265
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-string v1, "true"

    .line 266
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 267
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 268
    iput-boolean v9, v0, Lk0/fk;->q:Z

    .line 269
    invoke-static {}, Lo1/u;->z()I

    .line 270
    :cond_4c
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto/16 :goto_20

    :cond_4d
    if-nez v1, :cond_5d

    .line 271
    iget v1, v0, Lk0/fk;->p:I

    if-nez v1, :cond_5d

    .line 272
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JumpPage.isCarUiTop 222222222  ==   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "____  iJumppage  = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lk0/fk;->q:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-wide/16 v5, 0x190

    .line 273
    invoke-static {v5, v6}, La/i;->a0(J)V

    .line 274
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JumpPage.isCarUiTop 555555  ==   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "____  iJumppage  = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lk0/fk;->q:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 275
    iget-boolean v1, v0, Lk0/fk;->q:Z

    if-eqz v1, :cond_4e

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 276
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    const-string v3, "JumpPage.isCarUiTop 44444444  ==  U_CAR_BACKCAR_UI 222222222 "

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lo1/u;->k()V

    const-wide/16 v1, 0x15e

    .line 278
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "false"

    .line 279
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_4e
    iput-boolean v8, v0, Lk0/fk;->q:Z

    goto/16 :goto_20

    .line 281
    :cond_4f
    :goto_19
    iget v2, v0, Lk0/fk;->m:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v4, v1, v3

    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eq v2, v4, :cond_53

    .line 282
    aget-byte v2, v1, v3

    and-int/2addr v2, v7

    iput v2, v0, Lk0/fk;->m:I

    .line 283
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 284
    iget v2, v0, Lk0/fk;->m:I

    if-ne v2, v9, :cond_50

    .line 285
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v9}, Lu0/i;->g4(IZ)V

    goto :goto_1a

    .line 286
    :cond_50
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v8}, Lu0/i;->g4(IZ)V

    goto :goto_1a

    .line 287
    :cond_51
    iget v2, v0, Lk0/fk;->m:I

    if-ne v2, v9, :cond_52

    .line 288
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto :goto_1a

    .line 289
    :cond_52
    invoke-static {v8}, Lk0/qt;->a(I)V

    .line 290
    :cond_53
    :goto_1a
    sget v2, Lk0/nt;->a:I

    const v3, 0x8f01bb

    if-ne v2, v3, :cond_5d

    .line 291
    aget-byte v2, v1, v5

    const/4 v3, 0x6

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    iput v2, v0, Lk0/fk;->F:I

    .line 292
    aget-byte v2, v1, v5

    shr-int/2addr v2, v12

    and-int/2addr v2, v9

    iput v2, v0, Lk0/fk;->G:I

    add-int/lit8 v2, p2, 0x7

    .line 293
    aget-byte v2, v1, v2

    if-ne v2, v9, :cond_54

    move v2, v9

    goto :goto_1b

    :cond_54
    move v2, v8

    :goto_1b
    add-int/lit8 v3, p2, 0x8

    .line 294
    aget-byte v3, v1, v3

    if-ne v3, v9, :cond_55

    move v3, v9

    goto :goto_1c

    :cond_55
    move v3, v8

    :goto_1c
    add-int/lit8 v4, p2, 0x6

    .line 295
    aget-byte v4, v1, v4

    if-ne v4, v9, :cond_56

    move v4, v9

    goto :goto_1d

    :cond_56
    move v4, v8

    :goto_1d
    add-int/lit8 v7, p2, 0x4

    .line 296
    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_57

    move v7, v9

    goto :goto_1e

    :cond_57
    move v7, v8

    :goto_1e
    shl-int/2addr v2, v13

    and-int/2addr v2, v10

    shl-int/2addr v3, v14

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x1

    and-int/2addr v3, v14

    or-int/2addr v2, v3

    shl-int/lit8 v3, v7, 0x0

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    const/16 v3, 0x3f5

    new-array v4, v9, [I

    shl-int/2addr v2, v10

    and-int/lit16 v2, v2, 0xf00

    .line 297
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xf0

    or-int/2addr v2, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    aput v1, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 298
    :cond_58
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_20

    .line 299
    :sswitch_0
    sget v2, Lk0/fk;->K:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v5, v1, v3

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-eq v2, v5, :cond_5c

    .line 300
    aget-byte v2, v1, v3

    and-int/2addr v2, v7

    sput v2, Lk0/fk;->K:I

    if-ne v2, v9, :cond_5b

    .line 301
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 302
    iget v2, v0, Lk0/fk;->m:I

    if-nez v2, :cond_5a

    iget v2, v0, Lk0/fk;->p:I

    if-nez v2, :cond_5a

    .line 303
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_59

    sget-object v2, Lk0/nt;->g:[I

    const/16 v3, 0x9e

    aget v2, v2, v3

    if-ne v2, v9, :cond_5a

    :cond_59
    const-string v2, "false"

    .line 304
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9e

    new-array v3, v9, [I

    aput v8, v3, v8

    .line 305
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-wide/16 v2, 0xfa

    .line 306
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 307
    :cond_5a
    invoke-static {}, Lo1/u;->z()I

    goto :goto_1f

    :cond_5b
    if-nez v2, :cond_5c

    .line 308
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, v0, Lk0/fk;->H:I

    if-ne v2, v9, :cond_5c

    const/4 v2, 0x6

    .line 309
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 310
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 311
    :cond_5c
    :goto_1f
    sget v2, Lk0/fk;->L:I

    add-int/lit8 v3, p2, 0x4

    aget-byte v4, v1, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-eq v2, v4, :cond_5d

    .line 312
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    sput v1, Lk0/fk;->L:I

    .line 313
    invoke-static {v1}, Ly0/h;->t0(I)V

    :cond_5d
    :goto_20
    return-void

    :sswitch_data_0
    .sparse-switch
        0x701be -> :sswitch_0
        0x801be -> :sswitch_0
        0x1201be -> :sswitch_0
        0x1301be -> :sswitch_0
        0x5301bc -> :sswitch_0
        0x5801bc -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/fk;->v:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fk;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/fk;->E:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lk0/fk;->B:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/fk;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/fk;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/fk;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/fk;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/fk;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/fk;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa5

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

    const/16 v3, 0x3eb

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v3, :cond_5

    const/16 v3, 0x3ed

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v1, v3, :cond_2

    const/16 v3, 0x405

    const/16 v12, 0x9

    const/16 v13, 0x2c

    const/16 v14, 0x8

    const/16 v15, 0xe3

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    aget v1, v2, v6

    invoke-virtual {v0, v1}, Lk0/fk;->k3(I)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    sget v1, Lk0/nt;->U:I

    if-ne v1, v5, :cond_8

    .line 3
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x3e9

    aget v2, v2, v6

    invoke-static {v1, v3, v2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v4, [I

    aput v15, v1, v6

    aput v11, v1, v5

    const/16 v3, 0xfd

    aput v3, v1, v11

    .line 4
    aget v3, v2, v6

    aput v3, v1, v10

    aget v2, v2, v5

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x1c

    new-array v1, v1, [I

    aput v15, v1, v6

    const/16 v3, 0x19

    aput v3, v1, v5

    aput v13, v1, v11

    .line 5
    aget v13, v2, v6

    aput v13, v1, v10

    aget v5, v2, v5

    aput v5, v1, v9

    aget v5, v2, v11

    aput v5, v1, v4

    aget v4, v2, v10

    aput v4, v1, v8

    aget v2, v2, v9

    aput v2, v1, v7

    aput v6, v1, v14

    aput v6, v1, v12

    const/16 v2, 0xa

    aput v6, v1, v2

    const/16 v2, 0xb

    aput v6, v1, v2

    const/16 v2, 0xc

    aput v6, v1, v2

    const/16 v2, 0xd

    aput v6, v1, v2

    const/16 v2, 0xe

    aput v6, v1, v2

    const/16 v2, 0xf

    aput v6, v1, v2

    const/16 v2, 0x10

    aput v6, v1, v2

    const/16 v2, 0x11

    aput v6, v1, v2

    const/16 v2, 0x12

    aput v6, v1, v2

    const/16 v2, 0x13

    aput v6, v1, v2

    const/16 v2, 0x14

    aput v6, v1, v2

    const/16 v2, 0x15

    aput v6, v1, v2

    const/16 v2, 0x16

    aput v6, v1, v2

    const/16 v2, 0x17

    aput v6, v1, v2

    const/16 v2, 0x18

    aput v6, v1, v2

    aput v6, v1, v3

    const/16 v2, 0x1a

    aput v6, v1, v2

    const/16 v2, 0x1b

    aput v6, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CarDisNormalScreen  222 =   ints[0] = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v2, v6

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 7
    aget v1, v2, v6

    iput v1, v0, Lk0/fk;->H:I

    new-array v1, v8, [I

    aput v15, v1, v6

    aput v10, v1, v5

    const/16 v3, -0x60

    aput v3, v1, v11

    aput v6, v1, v10

    .line 8
    aget v2, v2, v6

    aput v2, v1, v9

    aput v6, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v1, v8, [I

    aput v15, v1, v6

    aput v10, v1, v5

    const/16 v3, 0x6a

    aput v3, v1, v11

    aput v4, v1, v10

    aput v5, v1, v9

    .line 9
    aget v2, v2, v6

    aput v2, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v1, v7, [I

    aput v15, v1, v6

    aput v9, v1, v5

    const/16 v3, 0x6f

    aput v3, v1, v11

    .line 10
    aget v3, v2, v6

    aput v3, v1, v10

    aget v3, v2, v5

    aput v3, v1, v9

    aget v3, v2, v11

    aput v3, v1, v4

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v1, v4, [I

    aput v15, v1, v6

    aput v11, v1, v5

    const/16 v3, 0x3d

    aput v3, v1, v11

    .line 11
    aget v3, v2, v6

    aput v3, v1, v10

    aget v2, v2, v5

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13
    aget v1, v2, v5

    mul-int/lit16 v1, v1, 0x500

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 14
    aget v3, v2, v11

    mul-int/lit16 v3, v3, 0x2d0

    invoke-static {}, La/f;->i()I

    move-result v16

    div-int v3, v3, v16

    .line 15
    aget v16, v2, v6

    if-nez v16, :cond_1

    new-array v2, v12, [I

    aput v15, v2, v6

    aput v8, v2, v5

    aput v13, v2, v11

    aput v5, v2, v10

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v4

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v8

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v7

    aput v6, v2, v14

    .line 16
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 17
    :cond_1
    aget v2, v2, v6

    if-ne v2, v5, :cond_8

    new-array v2, v12, [I

    aput v15, v2, v6

    aput v8, v2, v5

    aput v13, v2, v11

    aput v6, v2, v10

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v4

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v8

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v7

    aput v6, v2, v14

    .line 18
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0, v2, v5}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    aget v1, v2, v6

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 21
    :pswitch_8
    invoke-virtual {v0, v10}, Lk0/fk;->j3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_9
    invoke-virtual {v0, v11}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 23
    :pswitch_a
    invoke-virtual {v0, v4}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 24
    :pswitch_b
    invoke-virtual {v0, v9}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 25
    :pswitch_c
    iget v1, v0, Lk0/fk;->G:I

    if-ne v1, v5, :cond_3

    new-array v1, v4, [I

    .line 26
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v1, v4, [I

    .line 27
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 28
    :pswitch_d
    invoke-virtual {v0, v7}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 29
    :pswitch_e
    invoke-virtual {v0, v8}, Lk0/fk;->j3(I)V

    goto :goto_0

    .line 30
    :pswitch_f
    iget v1, v0, Lk0/fk;->F:I

    if-ne v1, v5, :cond_4

    new-array v1, v4, [I

    .line 31
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v1, v4, [I

    .line 32
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 33
    :cond_5
    sget v1, Lk0/nt;->a:I

    const v2, 0x9201bb

    if-ne v1, v2, :cond_7

    .line 34
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_6

    new-array v1, v4, [I

    .line 35
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    .line 36
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_0

    :cond_6
    new-array v1, v4, [I

    .line 37
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 38
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 39
    :cond_7
    invoke-virtual {v0, v5}, Lk0/fk;->j3(I)V

    :cond_8
    :goto_0
    return-void

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

    :pswitch_data_1
    .packed-switch 0x0
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
        0x2
        0xfd
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0xfd
        0x9
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0xfd
        0x8
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0xfd
        0x8
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0xfd
        0xa
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0xfd
        0xa
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

    const/4 v5, 0x2

    aput v5, v1, v4

    const/16 v6, 0x3d

    aput v6, v1, v5

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

    aput v6, v0, v5

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final i3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x4

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x3

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput v5, v1, v4

    const/16 v6, 0xfd

    aput v6, v1, v5

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v5

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final k3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa4

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/fk;->M:I

    .line 3
    iget-object p1, p0, Lk0/fk;->v:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/fk;->M:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/fk;->v:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
