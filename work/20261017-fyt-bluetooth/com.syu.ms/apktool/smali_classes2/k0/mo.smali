.class public Lk0/mo;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static N:I

.field public static O:I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:[[Ljava/lang/String;

.field public E:[[Ljava/lang/String;

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:[[I

.field public L:[I

.field public M:I

.field public b:I

.field public c:I

.field public d:[[I

.field public final e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:[[I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:F

.field public t:I

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:Lo1/g0;

.field public final x:I

.field public final y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Lk0/mo;->c:I

    const/16 v3, 0x41

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_0

    aput-object v5, v3, v2

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

    const/16 v15, 0xd

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v17, 0xe

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v17, 0xf

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    const/16 v17, 0x10

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    const/16 v17, 0x11

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    const/16 v17, 0x12

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    const/16 v17, 0x13

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    const/16 v17, 0x14

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    const/16 v17, 0x15

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    const/16 v17, 0x16

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    const/16 v17, 0x17

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    const/16 v17, 0x18

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    const/16 v17, 0x19

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    const/16 v17, 0x1a

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    const/16 v17, 0x1b

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    const/16 v17, 0x1c

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    const/16 v17, 0x1d

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    const/16 v17, 0x1e

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    const/16 v17, 0x1f

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    const/16 v14, 0x20

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    const/16 v18, 0x21

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    const/16 v18, 0x22

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    const/16 v18, 0x23

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    const/16 v18, 0x24

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    const/16 v18, 0x25

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    const/16 v18, 0x26

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    const/16 v18, 0x27

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    const/16 v18, 0x28

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    const/16 v18, 0x29

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    const/16 v18, 0x2a

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    const/16 v18, 0x2b

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    const/16 v18, 0x2c

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    const/16 v18, 0x2d

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    const/16 v18, 0x2e

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    const/16 v18, 0x2f

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_30

    const/16 v18, 0x30

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_31

    const/16 v18, 0x31

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_32

    const/16 v18, 0x32

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_33

    const/16 v18, 0x33

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_34

    const/16 v18, 0x34

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_35

    const/16 v18, 0x35

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_36

    const/16 v18, 0x36

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_37

    const/16 v18, 0x37

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_38

    const/16 v18, 0x38

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_39

    const/16 v18, 0x39

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3a

    const/16 v18, 0x3a

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3b

    const/16 v18, 0x3b

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3c

    const/16 v18, 0x3c

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3d

    const/16 v18, 0x3d

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3e

    const/16 v18, 0x3e

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3f

    const/16 v18, 0x3f

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_40

    const/16 v18, 0x40

    aput-object v5, v3, v18

    iput-object v3, v0, Lk0/mo;->d:[[I

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 4
    iput-object v3, v0, Lk0/mo;->e:[B

    .line 5
    iput v2, v0, Lk0/mo;->f:I

    .line 6
    iput v2, v0, Lk0/mo;->g:I

    .line 7
    iput v2, v0, Lk0/mo;->h:I

    .line 8
    iput v2, v0, Lk0/mo;->j:I

    new-array v3, v15, [[I

    new-array v5, v4, [I

    .line 9
    fill-array-data v5, :array_41

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_42

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_43

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_44

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_45

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_46

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_47

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_48

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_49

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_4a

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_4b

    const/16 v7, 0xa

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4c

    const/16 v7, 0xb

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4d

    aput-object v5, v3, v16

    iput-object v3, v0, Lk0/mo;->k:[[I

    .line 10
    iput v2, v0, Lk0/mo;->l:I

    .line 11
    iput v2, v0, Lk0/mo;->m:I

    .line 12
    iput-boolean v2, v0, Lk0/mo;->n:Z

    .line 13
    new-instance v3, Lk0/mo$a;

    invoke-direct {v3, v0}, Lk0/mo$a;-><init>(Lk0/mo;)V

    iput-object v3, v0, Lk0/mo;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v3, Lk0/mo$b;

    invoke-direct {v3, v0}, Lk0/mo$b;-><init>(Lk0/mo;)V

    iput-object v3, v0, Lk0/mo;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v3, Lk0/mo$c;

    invoke-direct {v3, v0}, Lk0/mo$c;-><init>(Lk0/mo;)V

    iput-object v3, v0, Lk0/mo;->q:Ljava/lang/Runnable;

    .line 16
    iput v2, v0, Lk0/mo;->r:I

    const/4 v3, 0x0

    .line 17
    iput v3, v0, Lk0/mo;->s:F

    const/16 v3, 0xff

    .line 18
    iput v3, v0, Lk0/mo;->t:I

    .line 19
    iput v3, v0, Lk0/mo;->u:I

    .line 20
    new-instance v3, Lk0/mo$d;

    invoke-direct {v3, v0}, Lk0/mo$d;-><init>(Lk0/mo;)V

    iput-object v3, v0, Lk0/mo;->v:Ljava/lang/Runnable;

    .line 21
    new-instance v3, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v14}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lk0/mo;->w:Lo1/g0;

    .line 22
    iput v6, v0, Lk0/mo;->x:I

    .line 23
    iput v4, v0, Lk0/mo;->y:I

    .line 24
    iput v2, v0, Lk0/mo;->z:I

    .line 25
    iput v2, v0, Lk0/mo;->A:I

    .line 26
    iput v2, v0, Lk0/mo;->B:I

    const/4 v3, -0x1

    .line 27
    iput v3, v0, Lk0/mo;->C:I

    new-array v3, v4, [I

    .line 28
    fill-array-data v3, :array_4e

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    iput-object v3, v0, Lk0/mo;->D:[[Ljava/lang/String;

    new-array v3, v4, [I

    .line 29
    fill-array-data v3, :array_4f

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, v0, Lk0/mo;->E:[[Ljava/lang/String;

    .line 30
    iput v2, v0, Lk0/mo;->F:I

    .line 31
    new-instance v1, Lk0/mo$e;

    invoke-direct {v1, v0}, Lk0/mo$e;-><init>(Lk0/mo;)V

    iput-object v1, v0, Lk0/mo;->G:Ljava/lang/Runnable;

    .line 32
    new-instance v1, Lk0/mo$f;

    invoke-direct {v1, v0}, Lk0/mo$f;-><init>(Lk0/mo;)V

    iput-object v1, v0, Lk0/mo;->H:Ljava/lang/Runnable;

    .line 33
    new-instance v1, Lk0/mo$g;

    invoke-direct {v1, v0}, Lk0/mo$g;-><init>(Lk0/mo;)V

    iput-object v1, v0, Lk0/mo;->I:Ljava/lang/Runnable;

    .line 34
    new-instance v1, Lk0/mo$h;

    invoke-direct {v1, v0}, Lk0/mo$h;-><init>(Lk0/mo;)V

    iput-object v1, v0, Lk0/mo;->J:Ljava/lang/Runnable;

    new-array v1, v4, [I

    .line 35
    fill-array-data v1, :array_50

    const-class v3, I

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Lk0/mo;->K:[[I

    new-array v1, v4, [I

    .line 36
    fill-array-data v1, :array_51

    iput-object v1, v0, Lk0/mo;->L:[I

    .line 37
    iput v2, v0, Lk0/mo;->M:I

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
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x13
        0xd
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
        0x1
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
        0x5
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
        0x12
    .end array-data

    :array_2b
    .array-data 4
        0x53
        0x1a
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
        0x37
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
        0x60
        0x4
    .end array-data

    :array_33
    .array-data 4
        0x61
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x62
        0x10
    .end array-data

    :array_35
    .array-data 4
        0x68
        0x6
    .end array-data

    :array_36
    .array-data 4
        0x69
        0x1
    .end array-data

    :array_37
    .array-data 4
        0x6a
        0x37
    .end array-data

    :array_38
    .array-data 4
        0x6b
        0x36
    .end array-data

    :array_39
    .array-data 4
        0x6f
        0x36
    .end array-data

    :array_3a
    .array-data 4
        0x86
        0x10
    .end array-data

    :array_3b
    .array-data 4
        0x70
        0x5
    .end array-data

    :array_3c
    .array-data 4
        0x71
        -0x1
    .end array-data

    :array_3d
    .array-data 4
        0x72
        -0x1
    .end array-data

    :array_3e
    .array-data 4
        0x73
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_40
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x4b
    .end array-data

    :array_42
    .array-data 4
        0x2
        0x4b
    .end array-data

    :array_43
    .array-data 4
        0x3
        0x4a
    .end array-data

    :array_44
    .array-data 4
        0x4
        0x4a
    .end array-data

    :array_45
    .array-data 4
        0x5
        0x4a
    .end array-data

    :array_46
    .array-data 4
        0x6
        -0x1
    .end array-data

    :array_47
    .array-data 4
        0x7
        0x4c
    .end array-data

    :array_48
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_49
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_4a
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_4b
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_4c
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_4d
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_4e
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_4f
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_50
    .array-data 4
        0x10
        0x8
    .end array-data

    :array_51
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic a3(Lk0/mo;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/mo;->s:F

    return p0
.end method

.method public static synthetic b3(Lk0/mo;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/mo;->s:F

    return p1
.end method

.method public static synthetic c3(Lk0/mo;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/mo;->u:I

    return p0
.end method

.method public static synthetic d3(Lk0/mo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/mo;->u:I

    return p1
.end method

.method public static synthetic e3(Lk0/mo;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/mo;->t:I

    return p0
.end method

.method public static synthetic f3(Lk0/mo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/mo;->t:I

    return p1
.end method

.method public static synthetic g3(Lk0/mo;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mo;->w:Lo1/g0;

    return-object p0
.end method

.method public static synthetic h3(Lk0/mo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/mo;->p3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/mo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/mo;->q3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/mo;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/mo;->o3(III)V

    return-void
.end method

.method public static r3([B)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_0
    return-void
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
    iget-object v0, p0, Lk0/mo;->w:Lo1/g0;

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

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput v2, v0, Lk0/mt;->i:I

    .line 10
    :cond_0
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/mo;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/mo;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v2, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/mo;->G:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v2, p0, Lk0/mo;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v2, Lo1/h;->a:Lo1/y;

    iget-object v3, p0, Lk0/mo;->v:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v2, Lu0/c;->o:Lo1/y;

    iget-object v3, p0, Lk0/mo;->q:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    iget-object v2, p0, Lk0/mo;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget v0, Lk0/nt;->a:I

    const v1, 0xdb01c7

    if-eq v0, v1, :cond_1

    .line 23
    iget-object v0, p0, Lk0/mo;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, 0x16

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_74

    const/16 v3, 0x20

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/4 v11, 0x4

    if-eq v2, v3, :cond_46

    const/16 v3, 0x29

    const/16 v16, -0x3

    const/16 v17, -0x2

    const/16 v9, 0x3c

    const/16 v10, 0xa

    const/4 v12, 0x6

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x41

    if-eq v2, v3, :cond_23

    const/16 v3, 0x48

    if-eq v2, v3, :cond_22

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_20

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x55

    if-eq v2, v3, :cond_10

    const/16 v3, 0x56

    if-eq v2, v3, :cond_9

    const/16 v3, 0x78

    if-eq v2, v3, :cond_8

    const/16 v3, 0x79

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_20

    :pswitch_0
    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 2
    aget-byte v4, v0, v4

    mul-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x4

    aget-byte v0, v0, v5

    add-int/2addr v4, v0

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    mul-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v0, v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x4

    aget-byte v0, v0, v3

    add-int/2addr v2, v0

    const/16 v0, 0x70

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 4
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 5
    :pswitch_2
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x6e

    new-array v9, v5, [I

    add-int/lit8 v10, p2, 0x2

    aget-byte v11, v0, v10

    and-int/2addr v11, v6

    aput v11, v9, v7

    add-int/lit8 v11, p2, 0x4

    aget-byte v12, v0, v11

    and-int/2addr v12, v6

    aput v12, v9, v8

    add-int/lit8 v12, p2, 0x5

    aget-byte v12, v0, v12

    and-int/2addr v12, v6

    aput v12, v9, v15

    invoke-static {v2, v3, v9}, Lo1/x;->B([Lo1/x;I[I)V

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p2, 0x6

    add-int v9, p2, p3

    sub-int/2addr v9, v8

    :goto_0
    if-ge v3, v9, :cond_0

    add-int/lit8 v12, v3, 0x1

    .line 7
    aget-byte v12, v0, v12

    and-int/2addr v12, v6

    aget-byte v13, v0, v3

    shl-int/2addr v13, v4

    or-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x6f

    new-array v4, v5, [I

    .line 8
    aget-byte v9, v0, v10

    and-int/2addr v9, v6

    aput v9, v4, v7

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    aput v5, v4, v8

    aget-byte v0, v0, v11

    and-int/2addr v0, v6

    aput v0, v4, v15

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v3, v4, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_20

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_20

    :pswitch_3
    new-array v2, v12, [I

    :goto_1
    if-ge v7, v12, :cond_1

    add-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v7

    .line 12
    aget-byte v3, v0, v3

    aput v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x66

    invoke-static {v0, v3, v2}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_20

    :pswitch_4
    const/16 v2, 0x88

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 14
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 16
    aget-byte v0, v0, v3

    const/16 v3, 0x14b4

    .line 17
    invoke-static {v2, v0, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_20

    :pswitch_6
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 18
    aget-byte v6, v0, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    .line 19
    aget-byte v0, v0, v4

    shr-int/2addr v0, v5

    and-int/2addr v0, v8

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v0, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 21
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 22
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 23
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_2
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 24
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 25
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 26
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 27
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 28
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v15

    and-int/2addr v2, v8

    aput v2, v3, v7

    .line 29
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 30
    aget-byte v0, v0, v4

    shr-int/2addr v0, v13

    and-int/2addr v0, v8

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v3, v0, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x3

    .line 32
    aget-byte v5, v0, v4

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x4

    .line 33
    aget-byte v10, v0, v9

    and-int/2addr v10, v6

    add-int/lit8 v12, p2, 0x5

    .line 34
    aget-byte v13, v0, v12

    and-int/2addr v13, v6

    if-nez v3, :cond_3

    if-nez v5, :cond_3

    if-nez v10, :cond_3

    if-nez v13, :cond_3

    .line 35
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 36
    :cond_3
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_4

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_4

    sget v7, Ll0/c0;->i:I

    if-ne v7, v10, :cond_4

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_5

    .line 37
    :cond_4
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_5

    .line 38
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 39
    sput v11, Ll0/c0;->k:I

    .line 40
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 41
    :cond_5
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 42
    sput v5, Ll0/c0;->h:I

    .line 43
    sput v10, Ll0/c0;->i:I

    .line 44
    sput v13, Ll0/c0;->j:I

    .line 45
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 46
    aget-byte v2, v0, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 47
    aget-byte v2, v0, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 48
    aget-byte v0, v0, v12

    and-int/2addr v0, v6

    invoke-static {v0}, Ll0/c0;->R0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_20

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 50
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 51
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->R0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 52
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Ll0/c0;->R0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_20

    .line 53
    :cond_6
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_7

    goto/16 :goto_20

    :cond_7
    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 54
    aget-byte v5, v0, v4

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 55
    aget-byte v0, v0, v4

    invoke-virtual {v1, v0}, Lk0/mo;->n3(B)V

    goto/16 :goto_20

    :cond_8
    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 56
    aget-byte v4, v0, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 57
    aget-byte v4, v0, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 58
    aget-byte v0, v0, v4

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_9
    const-string v2, "persist.fyt.temperature"

    .line 59
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    .line 60
    aget-byte v4, v0, v3

    and-int/2addr v4, v6

    const/16 v9, 0x10

    if-ne v4, v9, :cond_a

    const/16 v2, 0x28

    new-array v3, v8, [I

    aput v17, v3, v7

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 62
    :cond_a
    aget-byte v4, v0, v3

    and-int/2addr v4, v6

    const/16 v9, 0x50

    if-ne v4, v9, :cond_b

    const/16 v2, 0x28

    new-array v3, v8, [I

    aput v16, v3, v7

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    if-ne v2, v8, :cond_c

    const/16 v2, 0x28

    new-array v4, v8, [I

    .line 64
    aget-byte v3, v0, v3

    and-int/2addr v3, v6

    mul-int/2addr v3, v10

    add-int/lit16 v3, v3, 0x122

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    const/16 v2, 0x28

    new-array v4, v8, [I

    .line 65
    aget-byte v3, v0, v3

    and-int/2addr v3, v6

    mul-int/2addr v3, v14

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x2c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 66
    aget-byte v6, v0, v4

    shr-int/2addr v6, v7

    const/16 v9, 0xf

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 67
    aget-byte v2, v0, v4

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    if-eq v2, v8, :cond_f

    if-eq v2, v15, :cond_e

    if-eq v2, v5, :cond_d

    move v2, v7

    :goto_5
    move v3, v2

    goto :goto_6

    :cond_d
    move v2, v7

    move v3, v8

    goto :goto_6

    :cond_e
    move v2, v8

    goto :goto_5

    :cond_f
    move v3, v7

    move v2, v8

    :goto_6
    const/16 v4, 0x2e

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 68
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 69
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 70
    aget-byte v0, v0, v4

    shr-int/2addr v0, v7

    and-int/2addr v0, v8

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 71
    :cond_10
    sget v2, Lk0/nt;->a:I

    const v3, 0x3a01c7

    if-eq v2, v3, :cond_11

    const v3, 0x3b01c7

    if-eq v2, v3, :cond_11

    const v3, 0xd01c8

    if-eq v2, v3, :cond_11

    const v3, 0xe01c8

    if-eq v2, v3, :cond_11

    const v3, 0x3c01c7

    if-eq v2, v3, :cond_11

    const v3, 0x3d01c7

    if-eq v2, v3, :cond_11

    const v3, 0x7801c7

    if-eq v2, v3, :cond_11

    const v3, 0x8d01c8

    if-eq v2, v3, :cond_11

    const v3, 0x8e01c8

    if-eq v2, v3, :cond_11

    const v3, 0x7901c7

    if-eq v2, v3, :cond_11

    const v3, 0x8f01c8

    if-eq v2, v3, :cond_11

    const v3, 0x9001c8

    if-eq v2, v3, :cond_11

    const v3, 0x7a01c7

    if-eq v2, v3, :cond_11

    const v3, 0x7b01c7

    if-eq v2, v3, :cond_11

    const v3, 0xc301c7

    if-eq v2, v3, :cond_11

    const v3, 0x9201c8

    if-eq v2, v3, :cond_11

    const v3, 0xc401c7    # 1.8000395E-38f

    if-eq v2, v3, :cond_11

    const v3, 0x6e01c8

    if-eq v2, v3, :cond_11

    const v3, 0x6f01c8

    if-eq v2, v3, :cond_11

    const v3, 0x7b01c8

    if-eq v2, v3, :cond_11

    const v3, 0x7c01c8

    if-eq v2, v3, :cond_11

    const v3, 0x7d01c8

    if-eq v2, v3, :cond_11

    const v3, 0x7e01c8

    if-ne v2, v3, :cond_75

    :cond_11
    const-string v2, "persist.fyt.temperature"

    .line 72
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    .line 73
    aget-byte v4, v0, v3

    and-int/2addr v4, v6

    add-int/lit8 v9, p2, 0x3

    .line 74
    aget-byte v13, v0, v9

    and-int/2addr v13, v6

    const-string v12, "persist.fyt.reversetemp"

    .line 75
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 76
    aget-byte v4, v0, v9

    and-int/2addr v4, v6

    .line 77
    aget-byte v3, v0, v3

    and-int/lit16 v13, v3, 0xff

    :cond_12
    const/16 v3, 0x10

    if-ne v4, v3, :cond_13

    new-array v3, v8, [I

    aput v17, v3, v7

    const/16 v9, 0x1b

    .line 78
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    const/16 v9, 0x1b

    const/16 v3, 0x50

    if-ne v4, v3, :cond_14

    new-array v3, v8, [I

    aput v16, v3, v7

    .line 79
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    if-ne v2, v8, :cond_15

    new-array v3, v8, [I

    mul-int/2addr v4, v10

    add-int/lit16 v4, v4, 0x122

    aput v4, v3, v7

    .line 80
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    new-array v3, v8, [I

    mul-int/2addr v4, v14

    aput v4, v3, v7

    .line 81
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v3, 0x10

    if-ne v13, v3, :cond_16

    new-array v3, v8, [I

    aput v17, v3, v7

    const/16 v4, 0x1c

    .line 82
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_16
    const/16 v4, 0x1c

    const/16 v3, 0x50

    if-ne v13, v3, :cond_17

    new-array v3, v8, [I

    aput v16, v3, v7

    .line 83
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_17
    if-ne v2, v8, :cond_18

    new-array v3, v8, [I

    mul-int/2addr v13, v10

    add-int/lit16 v13, v13, 0x122

    aput v13, v3, v7

    .line 84
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_18
    new-array v3, v8, [I

    mul-int/2addr v13, v14

    aput v13, v3, v7

    .line 85
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    add-int/lit8 v3, p2, 0x4

    .line 86
    aget-byte v4, v0, v3

    shr-int/2addr v4, v11

    const/16 v9, 0xf

    and-int/2addr v4, v9

    packed-switch v4, :pswitch_data_2

    move v4, v7

    :goto_9
    move v9, v4

    :goto_a
    move v12, v9

    goto :goto_b

    :pswitch_a
    move v4, v8

    goto :goto_9

    :pswitch_b
    move v9, v7

    move v12, v9

    move v4, v8

    goto :goto_b

    :pswitch_c
    move v12, v7

    move v4, v8

    move v9, v4

    goto :goto_b

    :pswitch_d
    move v9, v7

    move v4, v8

    move v12, v4

    goto :goto_b

    :pswitch_e
    move v4, v7

    move v9, v4

    move v12, v8

    goto :goto_b

    :pswitch_f
    move v4, v7

    move v9, v8

    goto :goto_a

    :pswitch_10
    move v4, v7

    move v12, v4

    move v9, v8

    :goto_b
    new-array v13, v8, [I

    aput v4, v13, v7

    const/16 v4, 0x12

    .line 87
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v13, v8, [I

    aput v9, v13, v7

    .line 88
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v9, v8, [I

    aput v12, v9, v7

    .line 89
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x15

    new-array v9, v8, [I

    .line 90
    aget-byte v3, v0, v3

    shr-int/2addr v3, v7

    const/16 v12, 0xf

    and-int/2addr v3, v12

    aput v3, v9, v7

    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1d

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x5

    .line 91
    aget-byte v12, v0, v9

    shr-int/2addr v12, v7

    and-int/2addr v12, v5

    aput v12, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1f

    new-array v4, v8, [I

    .line 92
    aget-byte v12, v0, v9

    shr-int/2addr v12, v15

    and-int/2addr v12, v5

    aput v12, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1e

    new-array v4, v8, [I

    .line 93
    aget-byte v12, v0, v9

    shr-int/2addr v12, v11

    and-int/2addr v12, v5

    aput v12, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x20

    new-array v4, v8, [I

    .line 94
    aget-byte v9, v0, v9

    const/4 v12, 0x6

    shr-int/2addr v9, v12

    and-int/2addr v9, v5

    aput v9, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 95
    aget-byte v9, v0, v4

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    const/16 v9, 0xd

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v9, v8, [I

    .line 96
    aget-byte v12, v0, v4

    shr-int/2addr v12, v8

    and-int/2addr v12, v8

    aput v12, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v9, v8, [I

    .line 97
    aget-byte v12, v0, v4

    shr-int/2addr v12, v15

    and-int/2addr v12, v8

    aput v12, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v9, v8, [I

    .line 98
    aget-byte v12, v0, v4

    shr-int/2addr v12, v11

    and-int/2addr v12, v8

    aput v12, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v9, v8, [I

    .line 99
    aget-byte v12, v0, v4

    shr-int/2addr v12, v14

    and-int/2addr v12, v8

    aput v12, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v9, v8, [I

    .line 100
    aget-byte v12, v0, v4

    const/4 v13, 0x6

    shr-int/2addr v12, v13

    and-int/2addr v12, v8

    aput v12, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    .line 101
    aget-byte v4, v0, v4

    const/4 v9, 0x7

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v7

    const/16 v4, 0xf

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 102
    aget-byte v9, v0, v4

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v3, v7

    const/16 v9, 0xc

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v9, v8, [I

    .line 103
    aget-byte v12, v0, v4

    shr-int/lit8 v5, v12, 0x3

    and-int/2addr v5, v8

    aput v5, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x42

    new-array v5, v8, [I

    .line 104
    aget-byte v9, v0, v4

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x11

    new-array v5, v8, [I

    .line 105
    aget-byte v9, v0, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8b

    new-array v5, v8, [I

    .line 106
    aget-byte v9, v0, v4

    const/4 v11, 0x7

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8c

    new-array v5, v8, [I

    .line 107
    aget-byte v4, v0, v4

    const/4 v9, 0x6

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x9

    .line 108
    aget-byte v0, v0, v3

    and-int/2addr v0, v6

    if-eqz v0, :cond_1b

    if-ne v0, v6, :cond_19

    goto :goto_d

    :cond_19
    if-nez v2, :cond_1a

    mul-int/2addr v0, v10

    add-int/lit16 v0, v0, 0x258

    goto :goto_c

    :cond_1a
    const/16 v2, 0x12

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x258

    .line 109
    div-int/2addr v0, v10

    mul-int/2addr v0, v10

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    and-int/lit8 v0, v0, -0x1

    .line 110
    :goto_c
    invoke-static {v0}, Lu0/d;->B3(I)V

    goto/16 :goto_20

    .line 111
    :cond_1b
    :goto_d
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_20

    .line 112
    :cond_1c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 113
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    .line 114
    iput v0, v1, Lk0/mo;->j:I

    move v0, v7

    .line 115
    :goto_e
    iget-object v2, v1, Lk0/mo;->k:[[I

    array-length v3, v2

    if-ge v0, v3, :cond_1f

    .line 116
    iget v3, v1, Lk0/mo;->j:I

    aget-object v4, v2, v0

    aget v4, v4, v7

    if-ne v3, v4, :cond_1e

    if-eqz v3, :cond_1f

    .line 117
    iput v0, v1, Lk0/mo;->i:I

    goto :goto_f

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 118
    :cond_1f
    :goto_f
    iget v0, v1, Lk0/mo;->j:I

    if-eqz v0, :cond_75

    iget v0, v1, Lk0/mo;->i:I

    array-length v3, v2

    if-ge v0, v3, :cond_75

    .line 119
    aget-object v0, v2, v0

    aget v0, v0, v8

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 120
    iget-object v0, v1, Lk0/mo;->k:[[I

    iget v2, v1, Lk0/mo;->i:I

    aget-object v0, v0, v2

    aget v0, v0, v8

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_20
    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 121
    aget-byte v5, v0, v4

    const/4 v9, 0x7

    shr-int/2addr v5, v9

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 122
    aget-byte v2, v0, v4

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_75

    .line 123
    iget v2, v1, Lk0/mo;->r:I

    aget-byte v3, v0, v4

    shr-int/2addr v3, v11

    and-int/2addr v3, v8

    if-eq v2, v3, :cond_75

    .line 124
    aget-byte v0, v0, v4

    shr-int/2addr v0, v11

    and-int/2addr v0, v8

    iput v0, v1, Lk0/mo;->r:I

    if-ne v0, v8, :cond_21

    .line 125
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_20

    .line 126
    :cond_21
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_20

    :cond_22
    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 127
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    const/16 v9, 0xf

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 128
    aget-byte v9, v0, v4

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v5

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 129
    aget-byte v3, v0, v4

    shr-int/2addr v3, v11

    and-int/2addr v3, v5

    aput v3, v2, v7

    const/16 v3, 0x77

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 130
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    const/16 v9, 0xf

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 131
    aget-byte v10, v0, v4

    shr-int/2addr v10, v11

    and-int/2addr v10, v9

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 132
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 133
    aget-byte v9, v0, v4

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v9, v5

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    .line 134
    aget-byte v9, v0, v4

    shr-int/2addr v9, v11

    and-int/2addr v9, v5

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 135
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    const/16 v9, 0xf

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 136
    aget-byte v10, v0, v4

    shr-int/2addr v10, v11

    and-int/2addr v10, v9

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    .line 137
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 138
    aget-byte v10, v0, v4

    shr-int/2addr v10, v11

    and-int/2addr v10, v9

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 139
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 140
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 141
    aget-byte v10, v0, v4

    shr-int/2addr v10, v11

    and-int/2addr v10, v9

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 142
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 143
    aget-byte v9, v0, v4

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    .line 144
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 145
    aget-byte v0, v0, v4

    shr-int/2addr v0, v7

    and-int/2addr v0, v6

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_23
    add-int/lit8 v2, p2, 0x2

    .line 146
    aget-byte v2, v0, v2

    if-eq v2, v8, :cond_24

    goto/16 :goto_20

    .line 147
    :cond_24
    sget v2, Lk0/nt;->a:I

    const v3, 0x4f01c8

    if-ne v2, v3, :cond_75

    const-string v2, "persist.fyt.leftcameraswitch"

    .line 148
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.syu.rearcamera"

    if-ne v2, v8, :cond_27

    const-string v2, "persist.fyt.rightcameraswitch"

    .line 149
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_27

    .line 150
    iget v2, v1, Lk0/mo;->m:I

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    aget-byte v5, v0, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    if-eq v2, v5, :cond_75

    .line 151
    aget-byte v0, v0, v4

    shr-int/2addr v0, v11

    and-int/2addr v0, v8

    iput v0, v1, Lk0/mo;->m:I

    if-ne v0, v8, :cond_25

    .line 152
    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 153
    invoke-static {v3}, Lo1/u;->f(Ljava/lang/String;)I

    .line 154
    iput-boolean v8, v1, Lk0/mo;->n:Z

    goto/16 :goto_20

    .line 155
    :cond_25
    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, v1, Lk0/mo;->n:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x6

    .line 156
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 157
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 158
    :cond_26
    iput-boolean v7, v1, Lk0/mo;->n:Z

    goto/16 :goto_20

    :cond_27
    const-string v2, "persist.fyt.leftcameraswitch"

    .line 159
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "persist.fyt.rightcameraswitch"

    .line 160
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v8, :cond_2a

    .line 161
    iget v2, v1, Lk0/mo;->l:I

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    aget-byte v5, v0, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v8

    if-eq v2, v5, :cond_75

    .line 162
    aget-byte v0, v0, v4

    shr-int/2addr v0, v14

    and-int/2addr v0, v8

    iput v0, v1, Lk0/mo;->l:I

    if-ne v0, v8, :cond_28

    .line 163
    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 164
    invoke-static {v3}, Lo1/u;->f(Ljava/lang/String;)I

    .line 165
    iput-boolean v8, v1, Lk0/mo;->n:Z

    goto/16 :goto_20

    .line 166
    :cond_28
    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, v1, Lk0/mo;->n:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x6

    .line 167
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 168
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 169
    :cond_29
    iput-boolean v7, v1, Lk0/mo;->n:Z

    goto/16 :goto_20

    :cond_2a
    const-string v2, "persist.fyt.leftcameraswitch"

    .line 170
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v8, :cond_75

    const-string v2, "persist.fyt.rightcameraswitch"

    .line 171
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v8, :cond_75

    .line 172
    iget v2, v1, Lk0/mo;->l:I

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    aget-byte v5, v0, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v8

    if-ne v2, v5, :cond_2b

    iget v2, v1, Lk0/mo;->m:I

    aget-byte v5, v0, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    if-eq v2, v5, :cond_75

    .line 173
    :cond_2b
    aget-byte v2, v0, v4

    shr-int/2addr v2, v14

    and-int/2addr v2, v8

    iput v2, v1, Lk0/mo;->l:I

    .line 174
    aget-byte v0, v0, v4

    shr-int/2addr v0, v11

    and-int/2addr v0, v8

    iput v0, v1, Lk0/mo;->m:I

    if-eq v2, v8, :cond_2e

    if-ne v0, v8, :cond_2c

    goto :goto_10

    .line 175
    :cond_2c
    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, v1, Lk0/mo;->n:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x6

    .line 176
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 177
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 178
    :cond_2d
    iput-boolean v7, v1, Lk0/mo;->n:Z

    goto/16 :goto_20

    .line 179
    :cond_2e
    :goto_10
    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 180
    invoke-static {v3}, Lo1/u;->f(Ljava/lang/String;)I

    .line 181
    iput-boolean v8, v1, Lk0/mo;->n:Z

    goto/16 :goto_20

    .line 182
    :cond_2f
    sget v2, Lk0/nt;->a:I

    const v3, 0x3a01c7

    if-eq v2, v3, :cond_75

    const v3, 0x3b01c7

    if-eq v2, v3, :cond_75

    const v3, 0xd01c8

    if-eq v2, v3, :cond_75

    const v3, 0xe01c8

    if-eq v2, v3, :cond_75

    const v3, 0x3c01c7

    if-eq v2, v3, :cond_75

    const v3, 0x3d01c7

    if-eq v2, v3, :cond_75

    const v3, 0x7801c7

    if-eq v2, v3, :cond_75

    const v3, 0x8d01c8

    if-eq v2, v3, :cond_75

    const v3, 0x8e01c8

    if-eq v2, v3, :cond_75

    const v3, 0x7901c7

    if-eq v2, v3, :cond_75

    const v3, 0x8f01c8

    if-eq v2, v3, :cond_75

    const v3, 0x9001c8

    if-eq v2, v3, :cond_75

    const v3, 0x7a01c7

    if-eq v2, v3, :cond_75

    const v3, 0x7b01c7

    if-eq v2, v3, :cond_75

    const v3, 0xc301c7

    if-eq v2, v3, :cond_75

    const v3, 0x9201c8

    if-eq v2, v3, :cond_75

    const v3, 0xc401c7    # 1.8000395E-38f

    if-eq v2, v3, :cond_75

    const v3, 0x6e01c8

    if-eq v2, v3, :cond_75

    const v3, 0x6f01c8

    if-eq v2, v3, :cond_75

    const v3, 0x7b01c8

    if-eq v2, v3, :cond_75

    const v3, 0x7c01c8

    if-eq v2, v3, :cond_75

    const v3, 0x7d01c8

    if-eq v2, v3, :cond_75

    const v3, 0x7e01c8

    if-ne v2, v3, :cond_30

    goto/16 :goto_20

    :cond_30
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 183
    aget-byte v4, v0, v3

    const/4 v12, 0x7

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v4, v8, [I

    .line 184
    aget-byte v12, v0, v3

    const/4 v13, 0x6

    shr-int/2addr v12, v13

    and-int/2addr v12, v8

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 185
    aget-byte v4, v0, v3

    shr-int/2addr v4, v14

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xc

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 186
    aget-byte v4, v0, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xd

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v8, [I

    .line 187
    aget-byte v12, v0, v3

    shr-int/2addr v12, v15

    and-int/2addr v12, v8

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 188
    aget-byte v4, v0, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xf

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v8, [I

    .line 189
    aget-byte v3, v0, v3

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x3

    .line 190
    aget-byte v4, v0, v3

    const/4 v12, 0x7

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0x12

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v8, [I

    .line 191
    aget-byte v12, v0, v3

    const/4 v13, 0x6

    shr-int/2addr v12, v13

    and-int/2addr v12, v8

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    .line 192
    aget-byte v12, v0, v3

    shr-int/2addr v12, v14

    and-int/2addr v12, v8

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v8, [I

    .line 193
    aget-byte v3, v0, v3

    shr-int/2addr v3, v7

    const/4 v12, 0x7

    and-int/2addr v3, v12

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 194
    aget-byte v12, v0, v4

    shr-int/2addr v12, v5

    and-int/2addr v12, v8

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 195
    aget-byte v3, v0, v2

    and-int/2addr v3, v6

    add-int/lit8 v12, p2, 0x8

    .line 196
    aget-byte v13, v0, v12

    and-int/2addr v13, v6

    const-string v10, "persist.fyt.reversetemp"

    .line 197
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 198
    aget-byte v3, v0, v12

    and-int/2addr v3, v6

    .line 199
    aget-byte v2, v0, v2

    and-int/lit16 v13, v2, 0xff

    :cond_31
    const/16 v2, 0x1e

    if-lt v3, v2, :cond_34

    if-gt v3, v9, :cond_34

    const/16 v2, 0x1e

    if-eq v3, v2, :cond_33

    if-eq v3, v9, :cond_32

    new-array v2, v8, [I

    aput v3, v2, v7

    const/16 v10, 0x1b

    .line 200
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_32
    const/16 v10, 0x1b

    new-array v2, v8, [I

    aput v16, v2, v7

    .line 201
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_33
    const/16 v10, 0x1b

    new-array v2, v8, [I

    aput v17, v2, v7

    .line 202
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_11
    const/16 v2, 0x25

    new-array v10, v8, [I

    aput v7, v10, v7

    .line 203
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_34
    const/16 v2, 0x77

    if-lt v3, v2, :cond_37

    const/16 v10, 0xab

    if-gt v3, v10, :cond_37

    if-eq v3, v2, :cond_36

    const/16 v2, 0xab

    if-eq v3, v2, :cond_35

    new-array v2, v8, [I

    aput v3, v2, v7

    const/16 v10, 0x1b

    .line 204
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_35
    const/16 v10, 0x1b

    new-array v2, v8, [I

    aput v16, v2, v7

    .line 205
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_36
    const/16 v10, 0x1b

    new-array v2, v8, [I

    aput v17, v2, v7

    .line 206
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_12
    const/16 v2, 0x25

    new-array v10, v8, [I

    aput v8, v10, v7

    .line 207
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_37
    new-array v2, v8, [I

    const/4 v10, -0x1

    aput v10, v2, v7

    const/16 v10, 0x1b

    .line 208
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_13
    const/16 v2, 0x1e

    if-lt v13, v2, :cond_3a

    if-gt v13, v9, :cond_3a

    const/16 v2, 0x1e

    if-eq v13, v2, :cond_39

    if-eq v13, v9, :cond_38

    new-array v2, v8, [I

    aput v13, v2, v7

    const/16 v9, 0x1c

    .line 209
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_38
    const/16 v9, 0x1c

    new-array v2, v8, [I

    aput v16, v2, v7

    .line 210
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_39
    const/16 v9, 0x1c

    new-array v2, v8, [I

    aput v17, v2, v7

    .line 211
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_3a
    const/16 v2, 0x77

    if-lt v13, v2, :cond_3d

    const/16 v9, 0xab

    if-gt v13, v9, :cond_3d

    if-eq v13, v2, :cond_3c

    const/16 v2, 0xab

    if-eq v13, v2, :cond_3b

    new-array v2, v8, [I

    aput v13, v2, v7

    const/16 v9, 0x1c

    .line 212
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_3b
    const/16 v9, 0x1c

    new-array v2, v8, [I

    aput v16, v2, v7

    .line 213
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_3c
    const/16 v9, 0x1c

    new-array v2, v8, [I

    aput v17, v2, v7

    .line 214
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_3d
    const/16 v9, 0x1c

    new-array v2, v8, [I

    const/4 v10, -0x1

    aput v10, v2, v7

    .line 215
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_14
    const/16 v2, 0x28

    new-array v9, v8, [I

    add-int/lit8 v10, p2, 0x5

    .line 216
    aget-byte v12, v0, v10

    const/16 v13, 0xf

    and-int/2addr v12, v13

    aput v12, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v9, v8, [I

    .line 217
    aget-byte v12, v0, v10

    shr-int/2addr v12, v11

    const/4 v13, 0x7

    and-int/2addr v12, v13

    aput v12, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v9, v8, [I

    .line 218
    aget-byte v10, v0, v10

    shr-int/2addr v10, v13

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v9, v8, [I

    .line 219
    aget-byte v10, v0, v4

    shr-int/2addr v10, v7

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v9, v8, [I

    .line 220
    aget-byte v10, v0, v4

    shr-int/2addr v10, v8

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v9, v8, [I

    .line 221
    aget-byte v10, v0, v4

    shr-int/2addr v10, v15

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x49

    new-array v9, v8, [I

    .line 222
    aget-byte v10, v0, v4

    shr-int/2addr v10, v11

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4a

    new-array v9, v8, [I

    .line 223
    aget-byte v10, v0, v4

    shr-int/2addr v10, v14

    and-int/2addr v10, v8

    aput v10, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v9, v8, [I

    .line 224
    aget-byte v4, v0, v4

    const/4 v10, 0x7

    shr-int/2addr v4, v10

    and-int/2addr v4, v8

    aput v4, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x9

    .line 225
    aget-byte v10, v0, v9

    shr-int/2addr v10, v7

    and-int/2addr v10, v5

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v8, [I

    .line 226
    aget-byte v10, v0, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v5

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v4, v8, [I

    .line 227
    aget-byte v10, v0, v9

    shr-int/2addr v10, v11

    and-int/2addr v10, v5

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v8, [I

    .line 228
    aget-byte v9, v0, v9

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    and-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x7

    add-int/lit8 v2, p2, 0x7

    .line 229
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-nez v0, :cond_3e

    .line 230
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_20

    :cond_3e
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_42

    const/16 v2, 0x77

    if-lt v3, v2, :cond_3f

    const/16 v2, 0xab

    if-le v3, v2, :cond_40

    :cond_3f
    const-string v2, "persist.fyt.temperature"

    .line 231
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_41

    :cond_40
    const/16 v2, 0x12

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_15

    :cond_41
    const/16 v2, 0xa

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_16

    :cond_42
    rsub-int v0, v0, 0x100

    const/16 v2, 0x77

    if-lt v3, v2, :cond_43

    const/16 v2, 0xab

    if-le v3, v2, :cond_44

    :cond_43
    const-string v2, "persist.fyt.temperature"

    .line 232
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_45

    :cond_44
    const/16 v2, 0x12

    mul-int/2addr v0, v2

    rsub-int v0, v0, 0x528

    :goto_15
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    and-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_45
    const/16 v2, 0xa

    mul-int/2addr v0, v2

    rsub-int v0, v0, 0x528

    .line 233
    :goto_16
    invoke-static {v0}, Lu0/d;->B3(I)V

    goto/16 :goto_20

    :cond_46
    add-int/lit8 v2, p2, 0x3

    .line 234
    aget-byte v3, v0, v2

    iput v3, v1, Lk0/mo;->z:I

    add-int/lit8 v9, p2, 0x2

    .line 235
    aget-byte v10, v0, v9

    const/16 v12, -0x10

    if-eq v10, v12, :cond_72

    const/16 v12, -0xf

    if-eq v10, v12, :cond_70

    const/16 v4, 0xe

    if-eq v10, v4, :cond_6d

    const/16 v4, 0x52

    if-eq v10, v4, :cond_69

    const/16 v4, 0x53

    if-eq v10, v4, :cond_65

    const/16 v4, 0x71

    if-eq v10, v4, :cond_60

    const/16 v4, 0x72

    if-eq v10, v4, :cond_5b

    packed-switch v10, :pswitch_data_3

    packed-switch v10, :pswitch_data_4

    packed-switch v10, :pswitch_data_5

    packed-switch v10, :pswitch_data_6

    .line 236
    aget-byte v3, v0, v9

    .line 237
    aget-byte v0, v0, v2

    and-int/lit16 v2, v3, 0xff

    .line 238
    iput v2, v1, Lk0/mo;->c:I

    move v2, v7

    .line 239
    :goto_17
    iget-object v3, v1, Lk0/mo;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_48

    .line 240
    iget v4, v1, Lk0/mo;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v7

    if-ne v4, v9, :cond_47

    if-eqz v4, :cond_48

    .line 241
    iput v2, v1, Lk0/mo;->b:I

    goto :goto_18

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 242
    :cond_48
    :goto_18
    iget v4, v1, Lk0/mo;->c:I

    if-eq v4, v5, :cond_4d

    if-eq v4, v11, :cond_4b

    and-int/2addr v0, v6

    if-ne v0, v8, :cond_49

    .line 243
    array-length v0, v3

    if-ge v2, v0, :cond_75

    .line 244
    aget-object v0, v3, v2

    aget v0, v0, v8

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_49
    if-nez v0, :cond_75

    .line 245
    iget v0, v1, Lk0/mo;->b:I

    array-length v2, v3

    if-ge v0, v2, :cond_4a

    if-eq v0, v6, :cond_4a

    .line 246
    aget-object v0, v3, v0

    aget v0, v0, v8

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 247
    :cond_4a
    iput v6, v1, Lk0/mo;->b:I

    goto/16 :goto_20

    .line 248
    :cond_4b
    sget v0, Lh0/c;->E:I

    if-eq v0, v11, :cond_4c

    .line 249
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 250
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_4c
    const/16 v0, 0x12

    .line 251
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 252
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    .line 253
    :cond_4d
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_4e

    if-eq v0, v11, :cond_4e

    if-eq v0, v14, :cond_4e

    .line 254
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 255
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_4e
    const/16 v0, 0x1a

    .line 256
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 257
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :pswitch_11
    if-ne v3, v8, :cond_75

    .line 258
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v0, 0xc6

    const/16 v2, 0xa1

    const/16 v3, 0x1f

    .line 259
    invoke-virtual {v1, v0, v2, v3}, Lk0/mo;->o3(III)V

    goto/16 :goto_20

    :pswitch_12
    if-ne v3, v8, :cond_75

    .line 260
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v0, 0xc6

    const/16 v2, 0xa1

    const/16 v3, 0x1e

    .line 261
    invoke-virtual {v1, v0, v2, v3}, Lk0/mo;->o3(III)V

    goto/16 :goto_20

    :pswitch_13
    if-ne v3, v8, :cond_75

    .line 262
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v0, 0xc6

    const/16 v2, 0xa1

    const/16 v3, 0x1d

    .line 263
    invoke-virtual {v1, v0, v2, v3}, Lk0/mo;->o3(III)V

    goto/16 :goto_20

    :pswitch_14
    if-ne v3, v8, :cond_75

    .line 264
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v0, 0xc6

    const/16 v2, 0xa1

    const/16 v3, 0x1c

    .line 265
    invoke-virtual {v1, v0, v2, v3}, Lk0/mo;->o3(III)V

    goto/16 :goto_20

    :pswitch_15
    if-ne v3, v8, :cond_75

    .line 266
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_50

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4f

    goto :goto_19

    .line 267
    :cond_4f
    invoke-static {}, Lu0/d;->x1()V

    goto/16 :goto_20

    :cond_50
    :goto_19
    new-array v0, v14, [I

    .line 268
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_20

    :pswitch_16
    const/16 v2, 0xc

    goto :goto_1a

    :pswitch_17
    if-ne v3, v8, :cond_75

    .line 269
    sget v0, Lu0/b;->D:I

    if-ne v0, v15, :cond_51

    .line 270
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lh0/f;->h(I)V

    goto/16 :goto_20

    :cond_51
    const/16 v2, 0xc

    if-eq v0, v2, :cond_52

    const/16 v2, 0xd

    if-ne v0, v2, :cond_75

    :cond_52
    const/16 v0, 0xc6

    const/16 v2, 0xa1

    const/16 v3, 0x18

    .line 271
    invoke-virtual {v1, v0, v2, v3}, Lk0/mo;->o3(III)V

    goto/16 :goto_20

    :pswitch_18
    if-ne v3, v8, :cond_75

    .line 272
    sget v0, Lu0/b;->D:I

    if-ne v0, v15, :cond_53

    .line 273
    sget-object v0, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Lh0/f;->h(I)V

    goto/16 :goto_20

    :cond_53
    const/16 v2, 0xd

    const/16 v3, 0xc

    if-eq v0, v3, :cond_54

    if-ne v0, v2, :cond_75

    :cond_54
    const/16 v0, 0xc6

    const/16 v2, 0xa1

    const/16 v3, 0x17

    .line 274
    invoke-virtual {v1, v0, v2, v3}, Lk0/mo;->o3(III)V

    goto/16 :goto_20

    :pswitch_19
    if-ne v3, v8, :cond_75

    .line 275
    aget-byte v0, v0, v9

    and-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x20

    invoke-virtual {v1, v0}, Lk0/mo;->m3(I)V

    goto/16 :goto_20

    :pswitch_1a
    if-ne v3, v8, :cond_75

    .line 276
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_55

    new-array v0, v14, [I

    .line 277
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_20

    .line 278
    :cond_55
    invoke-static {}, Lu0/d;->y1()V

    goto/16 :goto_20

    :goto_1a
    if-ne v3, v8, :cond_75

    .line 279
    sget v0, Lu0/b;->D:I

    if-eq v0, v2, :cond_58

    const/16 v2, 0xd

    if-ne v0, v2, :cond_56

    goto :goto_1b

    :cond_56
    if-ne v0, v8, :cond_57

    .line 280
    sget-object v0, Lw0/d;->b:Lw0/g;

    invoke-interface {v0}, Lw0/g;->c()V

    goto/16 :goto_20

    .line 281
    :cond_57
    invoke-static {}, Lu0/d;->I1()V

    goto/16 :goto_20

    :cond_58
    :goto_1b
    new-array v0, v14, [I

    .line 282
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_20

    :pswitch_1b
    if-ne v3, v8, :cond_75

    .line 283
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5a

    const/16 v2, 0xd

    if-ne v0, v2, :cond_59

    goto :goto_1c

    .line 284
    :cond_59
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_20

    :cond_5a
    :goto_1c
    new-array v0, v14, [I

    .line 285
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_20

    .line 286
    :cond_5b
    iget v0, v1, Lk0/mo;->A:I

    if-eq v0, v3, :cond_5f

    if-nez v3, :cond_5c

    if-eq v0, v8, :cond_5d

    :cond_5c
    if-nez v3, :cond_5e

    if-ne v0, v15, :cond_5e

    .line 287
    iget v0, v1, Lk0/mo;->B:I

    if-ge v0, v14, :cond_5e

    :cond_5d
    const/16 v0, 0x22

    .line 288
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 289
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 290
    :cond_5e
    iput v7, v1, Lk0/mo;->B:I

    .line 291
    iget v0, v1, Lk0/mo;->z:I

    iput v0, v1, Lk0/mo;->A:I

    goto/16 :goto_20

    :cond_5f
    if-ne v3, v15, :cond_75

    .line 292
    iget v0, v1, Lk0/mo;->B:I

    add-int/2addr v0, v8

    iput v0, v1, Lk0/mo;->B:I

    if-ne v0, v14, :cond_75

    const/16 v0, 0x44

    .line 293
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 294
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    .line 295
    :cond_60
    iget v0, v1, Lk0/mo;->A:I

    if-eq v0, v3, :cond_64

    if-nez v3, :cond_61

    if-eq v0, v8, :cond_62

    :cond_61
    if-nez v3, :cond_63

    if-ne v0, v15, :cond_63

    .line 296
    iget v0, v1, Lk0/mo;->B:I

    if-ge v0, v14, :cond_63

    :cond_62
    const/16 v0, 0x23

    .line 297
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 298
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 299
    :cond_63
    iput v7, v1, Lk0/mo;->B:I

    .line 300
    iget v0, v1, Lk0/mo;->z:I

    iput v0, v1, Lk0/mo;->A:I

    goto/16 :goto_20

    :cond_64
    if-ne v3, v15, :cond_75

    .line 301
    iget v0, v1, Lk0/mo;->B:I

    add-int/2addr v0, v8

    iput v0, v1, Lk0/mo;->B:I

    if-ne v0, v14, :cond_75

    const/16 v0, 0x43

    .line 302
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 303
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_65
    if-ne v3, v8, :cond_75

    .line 304
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_66

    new-array v0, v14, [I

    .line 305
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_20

    .line 306
    :cond_66
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_68

    if-eq v0, v11, :cond_68

    if-eq v0, v14, :cond_68

    .line 307
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->r3()Z

    move-result v0

    if-eqz v0, :cond_67

    const/16 v0, 0x1a

    .line 308
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 309
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    .line 310
    :cond_67
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 311
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_68
    const/16 v0, 0x1a

    .line 312
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 313
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_69
    if-nez v3, :cond_75

    .line 314
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_6a

    new-array v0, v14, [I

    .line 315
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_20

    .line 316
    :cond_6a
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_6c

    if-eq v0, v11, :cond_6c

    if-eq v0, v14, :cond_6c

    .line 317
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->r3()Z

    move-result v0

    if-eqz v0, :cond_6b

    const/16 v0, 0x12

    .line 318
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 319
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    .line 320
    :cond_6b
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 321
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_6c
    const/16 v0, 0x12

    .line 322
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 323
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_6d
    :pswitch_1c
    if-ne v3, v8, :cond_75

    .line 324
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6f

    const/16 v2, 0xd

    if-ne v0, v2, :cond_6e

    goto :goto_1d

    .line 325
    :cond_6e
    invoke-static {}, Lu0/d;->B1()V

    goto :goto_20

    :cond_6f
    :goto_1d
    new-array v0, v14, [I

    .line 326
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_20

    :cond_70
    move v0, v7

    .line 327
    :goto_1e
    iget v2, v1, Lk0/mo;->z:I

    and-int/2addr v2, v6

    if-ge v0, v2, :cond_71

    .line 328
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 329
    :cond_71
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto :goto_20

    :cond_72
    move v0, v7

    .line 330
    :goto_1f
    iget v2, v1, Lk0/mo;->z:I

    and-int/2addr v2, v6

    if-ge v0, v2, :cond_73

    const/4 v2, 0x7

    .line 331
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_73
    const/4 v2, 0x7

    .line 332
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_20

    :cond_74
    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 333
    aget-byte v10, v0, v9

    and-int/2addr v10, v6

    add-int/lit8 v5, p2, 0x3

    aget-byte v11, v0, v5

    shl-int/2addr v11, v4

    const v12, 0xff00

    and-int/2addr v11, v12

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x64

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v8, [I

    .line 334
    aget-byte v8, v0, v9

    and-int/2addr v6, v8

    aget-byte v0, v0, v5

    shl-int/2addr v0, v4

    const v4, 0xff00

    and-int/2addr v0, v4

    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x64

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_75
    :goto_20
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x10
        :pswitch_1b
        :pswitch_16
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x20
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x49
        :pswitch_1b
        :pswitch_16
        :pswitch_1c
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xc
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x19
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0x9
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa1
        0xa
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/mo;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/mo;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/mo;->I:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/mo;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/mo;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, p0, Lk0/mo;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v1, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/mo;->v:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v1, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/mo;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v1, p0, Lk0/mo;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb6

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
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xe3

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget v1, Lk0/nt;->a:I

    const/16 v2, 0x14

    const/16 v9, 0x12

    const/16 v10, 0x11

    const/16 v11, 0x25

    const/16 v12, -0x56

    const/4 v13, 0x6

    const/16 v14, 0x33

    const/4 v15, 0x7

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 2
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v2, v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v8, v1, v3

    aput-byte v9, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 3
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v2, v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v8, v1, v3

    aput-byte v9, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 4
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v2, v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v8, v1, v3

    aput-byte v9, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_0

    :sswitch_1
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 5
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v8, v1, v3

    aput-byte v10, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 6
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v8, v1, v3

    aput-byte v10, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 7
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v8, v1, v3

    aput-byte v10, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_0

    :sswitch_2
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 8
    aget v9, p2, v8

    int-to-byte v9, v9

    aput-byte v9, v1, v7

    iget-object v9, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    aput-byte v11, v1, v3

    aput-byte v2, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 9
    aget v9, p2, v8

    int-to-byte v9, v9

    aput-byte v9, v1, v7

    iget-object v9, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    aput-byte v11, v1, v3

    aput-byte v2, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 10
    aget v8, p2, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    iget-object v8, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    aput-byte v11, v1, v3

    aput-byte v2, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_0

    :sswitch_3
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 11
    aget v9, p2, v8

    int-to-byte v9, v9

    aput-byte v9, v1, v7

    iget-object v9, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    aput-byte v11, v1, v3

    const/16 v9, 0x13

    aput-byte v9, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 12
    aget v9, p2, v8

    int-to-byte v9, v9

    aput-byte v9, v1, v7

    iget-object v9, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    aput-byte v11, v1, v3

    aput-byte v2, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 13
    aget v8, p2, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    iget-object v8, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    aput-byte v11, v1, v3

    aput-byte v2, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_0

    :sswitch_4
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 14
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v2, v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v9, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 15
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v10, v0, Lk0/mo;->M:I

    rem-int/2addr v10, v7

    aget v2, v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v9, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 16
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v8, v0, Lk0/mo;->M:I

    rem-int/2addr v8, v7

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v9, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_0

    :sswitch_5
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 17
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v10, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 18
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v10, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 19
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v8, v0, Lk0/mo;->M:I

    rem-int/2addr v8, v7

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v10, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto/16 :goto_0

    :sswitch_6
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 20
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v7, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 21
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v7, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 22
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v8, v0, Lk0/mo;->M:I

    rem-int/2addr v8, v7

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v7, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    goto :goto_0

    :sswitch_7
    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 23
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v5, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 24
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v9, v0, Lk0/mo;->M:I

    rem-int/2addr v9, v7

    aget v2, v2, v9

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v5, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    new-array v1, v15, [B

    aput-byte v14, v1, v8

    aput-byte v6, v1, v5

    .line 25
    aget v2, p2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    iget-object v2, v0, Lk0/mo;->L:[I

    iget v8, v0, Lk0/mo;->M:I

    rem-int/2addr v8, v7

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aput-byte v11, v1, v3

    aput-byte v5, v1, v6

    aput-byte v12, v1, v13

    invoke-static {v1}, Lk0/mo;->r3([B)V

    .line 26
    :goto_0
    iget v1, v0, Lk0/mo;->M:I

    add-int/2addr v1, v5

    iput v1, v0, Lk0/mo;->M:I

    .line 27
    rem-int/2addr v1, v7

    iput v1, v0, Lk0/mo;->M:I

    goto :goto_1

    .line 28
    :cond_1
    aget v1, p2, v8

    const/16 v9, 0xa0

    if-eq v1, v9, :cond_3

    const/16 v9, 0xbc

    if-eq v1, v9, :cond_2

    new-array v1, v6, [I

    aput v2, v1, v8

    const/16 v2, 0xc6

    aput v2, v1, v5

    aput v7, v1, v7

    .line 29
    aget v2, p2, v8

    aput v2, v1, v4

    aget v2, p2, v5

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 30
    :cond_2
    aget v1, p2, v5

    invoke-virtual {v0, v1}, Lk0/mo;->p3(I)V

    goto :goto_1

    .line 31
    :cond_3
    aget v1, p2, v5

    invoke-virtual {v0, v1}, Lk0/mo;->q3(I)V

    goto :goto_1

    :cond_4
    new-array v1, v6, [I

    aput v2, v1, v8

    const/16 v2, 0x90

    aput v2, v1, v5

    aput v7, v1, v7

    .line 32
    aget v2, p2, v8

    aput v2, v1, v4

    aget v2, p2, v5

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xd01c8 -> :sswitch_7
        0xe01c8 -> :sswitch_6
        0x3a01c7 -> :sswitch_5
        0x3b01c7 -> :sswitch_4
        0x3c01c7 -> :sswitch_3
        0x3d01c7 -> :sswitch_2
        0x6e01c8 -> :sswitch_1
        0x6f01c8 -> :sswitch_0
        0x7801c7 -> :sswitch_5
        0x7901c7 -> :sswitch_4
        0x7a01c7 -> :sswitch_3
        0x7b01c7 -> :sswitch_2
        0x7b01c8 -> :sswitch_1
        0x7c01c8 -> :sswitch_4
        0x7d01c8 -> :sswitch_3
        0x7e01c8 -> :sswitch_2
        0x8d01c8 -> :sswitch_5
        0x8e01c8 -> :sswitch_5
        0x8f01c8 -> :sswitch_4
        0x9001c8 -> :sswitch_4
        0x9201c8 -> :sswitch_1
        0xc301c7 -> :sswitch_1
        0xc401c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public b([B)V
    .locals 9

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

    goto/16 :goto_5

    .line 3
    :cond_1
    iget v1, p0, Lk0/mo;->f:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/mo;->f:I

    .line 5
    iput v0, p0, Lk0/mo;->g:I

    .line 6
    iput v0, p0, Lk0/mo;->h:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/mo;->e:[B

    iget v2, p0, Lk0/mo;->f:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/mo;->f:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/mo;->f:I

    .line 9
    iget p1, p0, Lk0/mo;->h:I

    const/16 v2, 0xb

    const/16 v3, -0x56

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object v1, p0, Lk0/mo;->e:[B

    aget-byte p1, v1, p1

    if-ne p1, v3, :cond_4

    .line 11
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {p1, v1, v0, v2}, Lk0/lt;->U2([BII)V

    .line 12
    iget p1, p0, Lk0/mo;->h:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/mo;->g:I

    goto :goto_0

    .line 13
    :cond_4
    iput v4, p0, Lk0/mo;->g:I

    .line 14
    :goto_0
    iput v0, p0, Lk0/mo;->h:I

    .line 15
    :cond_5
    iget p1, p0, Lk0/mo;->f:I

    add-int/lit8 p1, p1, -0x2

    :goto_1
    iget v1, p0, Lk0/mo;->g:I

    if-ge v1, p1, :cond_c

    .line 16
    iget-object v5, p0, Lk0/mo;->e:[B

    aget-byte v6, v5, v1

    const/16 v7, 0x55

    const/16 v8, 0x9

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v5, v6

    if-eq v6, v8, :cond_7

    :cond_6
    aget-byte v6, v5, v1

    const/16 v7, 0x56

    if-ne v6, v7, :cond_b

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v5, v6

    if-ne v6, v8, :cond_b

    .line 17
    :cond_7
    iget v6, p0, Lk0/mo;->h:I

    const/16 v7, 0x200

    if-le v6, v7, :cond_8

    .line 18
    iput v0, p0, Lk0/mo;->h:I

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v1, 0xa

    .line 19
    iput v6, p0, Lk0/mo;->h:I

    .line 20
    iget v7, p0, Lk0/mo;->f:I

    if-lt v6, v7, :cond_9

    sub-int/2addr v6, v1

    .line 21
    iput v6, p0, Lk0/mo;->h:I

    goto :goto_4

    .line 22
    :cond_9
    aget-byte v6, v5, v6

    if-ne v6, v3, :cond_a

    .line 23
    sget-object v6, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v6, v5, v1, v2}, Lk0/lt;->U2([BII)V

    .line 24
    iget v1, p0, Lk0/mo;->h:I

    iput v1, p0, Lk0/mo;->g:I

    goto :goto_2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 25
    iput v1, p0, Lk0/mo;->g:I

    .line 26
    :goto_2
    iput v0, p0, Lk0/mo;->h:I

    .line 27
    :cond_b
    :goto_3
    iget v1, p0, Lk0/mo;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/mo;->g:I

    goto :goto_1

    :cond_c
    :goto_4
    if-eqz v1, :cond_e

    .line 28
    iget p1, p0, Lk0/mo;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/mo;->f:I

    if-lez p1, :cond_d

    .line 29
    iget-object v2, p0, Lk0/mo;->e:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :cond_d
    iput v0, p0, Lk0/mo;->g:I

    :cond_e
    :goto_5
    return-void
.end method

.method public k3(Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xcb

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x20

    aput v3, v0, v1

    const/16 v1, 0x11

    const/4 v3, 0x3

    aput v1, v0, v3

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xf

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v4, 0x5

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 3
    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x6

    and-int/lit16 v1, v1, 0xff

    .line 4
    aput v1, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public l3()Ljava/lang/String;
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

.method public m3(I)V
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    if-lez p1, :cond_1

    .line 2
    sget-object v0, Lo0/e;->b:Lo0/h;

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lo0/h;->D(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v7, 0x7

    if-ne v0, v3, :cond_2

    if-lez p1, :cond_2

    if-ge p1, v7, :cond_2

    .line 3
    invoke-static {p1}, Lw0/f;->B(I)V

    goto/16 :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 6
    :pswitch_2
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v5}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 7
    :pswitch_3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v4}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_4
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v7}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 9
    :pswitch_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 10
    :pswitch_6
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 11
    :pswitch_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v6}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 12
    :pswitch_8
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v1}, Lh0/f;->h(I)V

    goto :goto_1

    .line 13
    :pswitch_9
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto :goto_1

    :cond_3
    const/16 v1, 0xc

    const/16 v2, 0xd

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_6

    :cond_4
    const/16 v0, 0xa1

    const/16 v1, 0xc6

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x16

    .line 14
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x15

    .line 15
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x14

    .line 16
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_d
    const/16 p1, 0x13

    .line 17
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_e
    const/16 p1, 0x12

    .line 18
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_f
    const/16 p1, 0x11

    .line 19
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_10
    const/16 p1, 0x10

    .line 20
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_11
    const/16 p1, 0xf

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    :pswitch_12
    const/16 p1, 0xe

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lk0/mo;->o3(III)V

    goto :goto_1

    .line 23
    :pswitch_13
    invoke-virtual {p0, v1, v0, v2}, Lk0/mo;->o3(III)V

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v5, 0x25

    new-array v1, v1, [I

    const/4 v6, 0x0

    aput v0, v1, v6

    aput v4, v1, v3

    aput p1, v1, v2

    .line 24
    invoke-static {v5, v1}, Lu0/d;->I3(I[I)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public final n3(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lu0/b;->D:I

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    .line 2
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lk0/mo;->l3()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.syu.carinfo.focus.FocusSyncBtActi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.syu.canbus.sync"

    .line 4
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final o3(III)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p1, v0, p1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final p3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/mo;->N:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc6

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0xbc

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/mo;->N:I

    aput v0, p1, v2

    const/16 v0, 0x89

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/mo;->w:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/mo;->N:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/mo;->w:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final q3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/mo;->O:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc6

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v4, 0x3

    const/16 v5, 0xa0

    aput v5, v0, v4

    const/4 v4, 0x4

    aput p1, v0, v4

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/mo;->O:I

    aput v0, p1, v2

    const/16 v0, 0x25

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/mo;->w:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/mo;->O:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/mo;->w:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
