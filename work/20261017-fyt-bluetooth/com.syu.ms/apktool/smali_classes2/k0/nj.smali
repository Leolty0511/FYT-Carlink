.class public Lk0/nj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:B

.field public G:Ljava/lang/Runnable;

.field public H:B

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:Ljava/lang/Runnable;

.field public L:Ljava/lang/Runnable;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/Runnable;

.field public O:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:[[I

.field public j:[[I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:[[I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/nj;->e:I

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Lk0/nj;->f:Z

    .line 4
    iput v2, v0, Lk0/nj;->g:I

    .line 5
    iput v1, v0, Lk0/nj;->h:I

    const/16 v3, 0x18

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 6
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

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    const/16 v25, 0x17

    aput-object v5, v3, v25

    iput-object v3, v0, Lk0/nj;->i:[[I

    const/16 v3, 0x2e

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 7
    fill-array-data v5, :array_18

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_30

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_31

    const/16 v25, 0x19

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_32

    const/16 v25, 0x1a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_33

    const/16 v25, 0x1b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_34

    const/16 v25, 0x1c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_35

    const/16 v25, 0x1d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_36

    const/16 v25, 0x1e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_37

    const/16 v25, 0x1f

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_38

    const/16 v25, 0x20

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_39

    const/16 v25, 0x21

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_3a

    const/16 v25, 0x22

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_3b

    const/16 v25, 0x23

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_3c

    const/16 v25, 0x24

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_3d

    const/16 v25, 0x25

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_3e

    const/16 v25, 0x26

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_3f

    const/16 v25, 0x27

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_40

    const/16 v25, 0x28

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_41

    const/16 v25, 0x29

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_42

    const/16 v25, 0x2a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_43

    const/16 v25, 0x2b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_44

    const/16 v25, 0x2c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_45

    const/16 v25, 0x2d

    aput-object v5, v3, v25

    iput-object v3, v0, Lk0/nj;->j:[[I

    .line 8
    iput v1, v0, Lk0/nj;->l:I

    .line 9
    iput v2, v0, Lk0/nj;->m:I

    .line 10
    iput v2, v0, Lk0/nj;->n:I

    .line 11
    iput v2, v0, Lk0/nj;->o:I

    const/16 v3, 0x16

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 12
    fill-array-data v5, :array_46

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_47

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_48

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_49

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4a

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_4b

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_4c

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_4d

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_4e

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_4f

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_50

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_51

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_52

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_53

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_54

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_55

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_56

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_57

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_58

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_59

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_5a

    aput-object v5, v3, v24

    new-array v4, v4, [I

    fill-array-data v4, :array_5b

    const/16 v5, 0x15

    aput-object v4, v3, v5

    iput-object v3, v0, Lk0/nj;->p:[[I

    const/4 v3, -0x1

    .line 13
    iput v3, v0, Lk0/nj;->q:I

    .line 14
    iput v2, v0, Lk0/nj;->r:I

    .line 15
    iput v2, v0, Lk0/nj;->s:I

    .line 16
    iput v6, v0, Lk0/nj;->t:I

    .line 17
    iput v2, v0, Lk0/nj;->u:I

    .line 18
    new-instance v3, Lk0/nj$e;

    invoke-direct {v3, v0}, Lk0/nj$e;-><init>(Lk0/nj;)V

    iput-object v3, v0, Lk0/nj;->v:Ljava/lang/Runnable;

    .line 19
    iput v2, v0, Lk0/nj;->w:I

    .line 20
    new-instance v3, Lk0/nj$f;

    invoke-direct {v3, v0}, Lk0/nj$f;-><init>(Lk0/nj;)V

    iput-object v3, v0, Lk0/nj;->x:Ljava/lang/Runnable;

    .line 21
    new-instance v3, Lk0/nj$g;

    invoke-direct {v3, v0}, Lk0/nj$g;-><init>(Lk0/nj;)V

    iput-object v3, v0, Lk0/nj;->y:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 22
    iput v3, v0, Lk0/nj;->z:F

    .line 23
    iput v1, v0, Lk0/nj;->A:I

    .line 24
    iput v1, v0, Lk0/nj;->B:I

    .line 25
    new-instance v1, Lk0/nj$h;

    invoke-direct {v1, v0}, Lk0/nj$h;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->C:Ljava/lang/Runnable;

    .line 26
    new-instance v1, Lk0/nj$i;

    invoke-direct {v1, v0}, Lk0/nj$i;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->D:Ljava/lang/Runnable;

    .line 27
    new-instance v1, Lk0/nj$j;

    invoke-direct {v1, v0}, Lk0/nj$j;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->E:Ljava/lang/Runnable;

    .line 28
    iput-byte v2, v0, Lk0/nj;->F:B

    .line 29
    new-instance v1, Lk0/nj$k;

    invoke-direct {v1, v0}, Lk0/nj$k;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->G:Ljava/lang/Runnable;

    .line 30
    iput-byte v2, v0, Lk0/nj;->H:B

    .line 31
    new-instance v1, Lk0/nj$l;

    invoke-direct {v1, v0}, Lk0/nj$l;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->I:Ljava/lang/Runnable;

    .line 32
    new-instance v1, Lk0/nj$m;

    invoke-direct {v1, v0}, Lk0/nj$m;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->J:Ljava/lang/Runnable;

    .line 33
    new-instance v1, Lk0/nj$a;

    invoke-direct {v1, v0}, Lk0/nj$a;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->K:Ljava/lang/Runnable;

    .line 34
    new-instance v1, Lk0/nj$b;

    invoke-direct {v1, v0}, Lk0/nj$b;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->L:Ljava/lang/Runnable;

    const-string v1, ""

    .line 35
    iput-object v1, v0, Lk0/nj;->M:Ljava/lang/String;

    .line 36
    new-instance v1, Lk0/nj$c;

    invoke-direct {v1, v0}, Lk0/nj$c;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->N:Ljava/lang/Runnable;

    .line 37
    new-instance v1, Lk0/nj$d;

    invoke-direct {v1, v0}, Lk0/nj$d;-><init>(Lk0/nj;)V

    iput-object v1, v0, Lk0/nj;->O:Ljava/lang/Runnable;

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
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x20
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x21
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x19
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x1b
        0x1a
    .end array-data

    :array_11
    .array-data 4
        0x28
        0xd
    .end array-data

    :array_12
    .array-data 4
        0x2d
        0x36
    .end array-data

    :array_13
    .array-data 4
        0x30
        0x3a
    .end array-data

    :array_14
    .array-data 4
        0x31
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x62
        0x10
    .end array-data

    :array_17
    .array-data 4
        0x65
        0xb
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_1d
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_1e
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_1f
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_20
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_21
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_22
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_23
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_24
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_25
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_26
    .array-data 4
        0x12
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_28
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_29
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_2a
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_2b
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_2c
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_2d
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_2e
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_30
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_31
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_32
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_33
    .array-data 4
        0x2d
        0x18
    .end array-data

    :array_34
    .array-data 4
        0x2e
        0x27
    .end array-data

    :array_35
    .array-data 4
        0x30
        0x2e
    .end array-data

    :array_36
    .array-data 4
        0x31
        0x2f
    .end array-data

    :array_37
    .array-data 4
        0x32
        0x30
    .end array-data

    :array_38
    .array-data 4
        0x33
        0x31
    .end array-data

    :array_39
    .array-data 4
        0x34
        0x32
    .end array-data

    :array_3a
    .array-data 4
        0x35
        0x33
    .end array-data

    :array_3b
    .array-data 4
        0x36
        0x2
    .end array-data

    :array_3c
    .array-data 4
        0x37
        0x18
    .end array-data

    :array_3d
    .array-data 4
        0x38
        0x12
    .end array-data

    :array_3e
    .array-data 4
        0x39
        0x36
    .end array-data

    :array_3f
    .array-data 4
        0x3a
        0x16
    .end array-data

    :array_40
    .array-data 4
        0x3b
        0x36
    .end array-data

    :array_41
    .array-data 4
        0x3c
        0x1f
    .end array-data

    :array_42
    .array-data 4
        0x3d
        0x1e
    .end array-data

    :array_43
    .array-data 4
        0x3e
        0x27
    .end array-data

    :array_44
    .array-data 4
        0x3f
        0x9
    .end array-data

    :array_45
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_47
    .array-data 4
        0x4
        0x37
    .end array-data

    :array_48
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_49
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_4a
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_4b
    .array-data 4
        0x15
        0x22
    .end array-data

    :array_4c
    .array-data 4
        0x16
        0x23
    .end array-data

    :array_4d
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_4e
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_4f
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_51
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_52
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_53
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_54
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_55
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_56
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_57
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_58
    .array-data 4
        0x3b
        0x2
    .end array-data

    :array_59
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_5a
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_5b
    .array-data 4
        0x5f
        0xd
    .end array-data
.end method

.method public static a3()V
    .locals 19

    const/16 v0, 0x10

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
    const/16 v3, 0xe

    aput v3, v1, v2

    const/16 v5, 0x91

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 2
    invoke-static {}, Lk0/nj;->b3()B

    move-result v5

    const/4 v7, 0x2

    aput v5, v1, v7

    .line 3
    sget v5, Lu0/b;->a0:I

    const/4 v8, 0x3

    if-ne v5, v6, :cond_1

    aput v7, v1, v8

    goto :goto_1

    :cond_1
    aput v2, v1, v8

    .line 4
    :goto_1
    sget v5, Lu0/b;->D:I

    const/16 v8, 0xb

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/16 v15, 0xa

    const/16 v16, 0x30

    if-eq v5, v6, :cond_e

    if-eq v5, v7, :cond_d

    if-eq v5, v12, :cond_a

    if-eq v5, v14, :cond_2

    if-eq v5, v13, :cond_2

    goto/16 :goto_b

    .line 5
    :cond_2
    sget v4, Lu0/b;->s3:I

    if-nez v4, :cond_3

    goto/16 :goto_b

    .line 6
    :cond_3
    sget v4, Lu0/b;->r3:I

    rem-int/lit16 v4, v4, 0x3e8

    .line 7
    div-int/lit8 v5, v4, 0x64

    if-nez v5, :cond_4

    move/from16 v5, v16

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x30

    :goto_2
    aput v5, v1, v12

    .line 8
    rem-int/lit8 v5, v4, 0x64

    div-int/2addr v5, v15

    if-nez v5, :cond_5

    move/from16 v5, v16

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x30

    :goto_3
    aput v5, v1, v11

    .line 9
    rem-int/2addr v4, v15

    if-nez v4, :cond_6

    move/from16 v4, v16

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x30

    :goto_4
    aput v4, v1, v10

    .line 10
    sget v4, Lu0/b;->s3:I

    rem-int/lit16 v4, v4, 0x3e8

    const/16 v5, 0xd

    .line 11
    div-int/lit8 v6, v4, 0x64

    if-nez v6, :cond_7

    move/from16 v6, v16

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x30

    :goto_5
    aput v6, v1, v5

    .line 12
    rem-int/lit8 v5, v4, 0x64

    div-int/2addr v5, v15

    if-nez v5, :cond_8

    move/from16 v5, v16

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x30

    :goto_6
    aput v5, v1, v3

    const/16 v3, 0xf

    .line 13
    rem-int/2addr v4, v15

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v16, v4, 0x30

    :goto_7
    aput v16, v1, v3

    goto/16 :goto_b

    .line 14
    :cond_a
    sget v5, Lo0/e;->C:I

    if-nez v5, :cond_b

    goto/16 :goto_b

    :cond_b
    const/16 v5, 0x54

    aput v5, v1, v12

    .line 15
    sget v5, Lo0/e;->B:I

    rem-int/lit16 v5, v5, 0x2710

    .line 16
    div-int/lit16 v6, v5, 0x3e8

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v11

    .line 17
    rem-int/lit8 v6, v5, 0x64

    div-int/2addr v6, v15

    rem-int/lit16 v7, v5, 0x3e8

    if-nez v6, :cond_c

    goto :goto_8

    :cond_c
    div-int/2addr v7, v15

    :goto_8
    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v10

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v9

    .line 18
    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 19
    sget v5, Lo0/e;->r:I

    div-int/lit8 v6, v5, 0x3c

    .line 20
    rem-int/lit8 v6, v6, 0x3c

    aput v4, v1, v13

    .line 21
    div-int/lit8 v7, v6, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v15

    .line 22
    rem-int/2addr v6, v15

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v8

    const/16 v6, 0xc

    aput v4, v1, v6

    .line 23
    rem-int/lit8 v5, v5, 0x3c

    const/16 v4, 0xd

    .line 24
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v4

    .line 25
    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v3

    goto/16 :goto_b

    .line 26
    :cond_d
    sget v3, Lh0/c;->E:I

    if-ne v3, v11, :cond_13

    .line 27
    sget v3, Lh0/c;->P:I

    div-int/lit16 v3, v3, 0x3e8

    .line 28
    div-int/lit8 v4, v3, 0x3c

    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 29
    rem-int/2addr v4, v15

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    int-to-byte v3, v3

    .line 30
    rem-int/lit8 v3, v3, 0x3c

    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    .line 31
    rem-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    goto/16 :goto_b

    .line 32
    :cond_e
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v17, v3, v5

    const/16 v18, 0x31

    if-eqz v17, :cond_11

    sub-int v0, v3, v5

    if-eq v6, v0, :cond_11

    sub-int/2addr v3, v5

    if-ne v7, v3, :cond_f

    goto :goto_9

    :cond_f
    aput v18, v1, v12

    aput v16, v1, v11

    aput v4, v1, v10

    .line 33
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x3e8

    if-nez v3, :cond_10

    .line 34
    div-int/lit8 v3, v0, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 35
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 36
    rem-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    goto :goto_b

    .line 37
    :cond_10
    div-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 38
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 39
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v15

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 40
    rem-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v15

    goto :goto_b

    :cond_11
    :goto_9
    aput v16, v1, v12

    aput v18, v1, v11

    aput v4, v1, v10

    .line 41
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_12

    goto :goto_a

    :cond_12
    div-int/lit16 v3, v0, 0x2710

    add-int/lit8 v4, v3, 0x30

    :goto_a
    aput v4, v1, v9

    .line 42
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v14

    .line 43
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    const/16 v3, 0x2e

    aput v3, v1, v15

    .line 44
    rem-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v15

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v8

    :cond_13
    :goto_b
    const/16 v0, 0x11

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0x10

    :goto_c
    if-ge v2, v3, :cond_14

    add-int/lit8 v4, v2, 0x1

    .line 45
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_c

    .line 46
    :cond_14
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v1, -0x1

    goto :goto_2

    :pswitch_2
    const/4 v1, -0x2

    goto :goto_2

    :pswitch_3
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_4
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_5
    const/16 v1, 0xc

    goto :goto_2

    .line 2
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    if-ne v0, v3, :cond_1

    const/16 v1, 0xe

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    goto :goto_2

    :pswitch_7
    const/16 v1, -0x7b

    goto :goto_2

    :pswitch_8
    const/16 v1, 0xa

    goto :goto_2

    .line 3
    :pswitch_9
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    sub-int v5, v0, v1

    if-nez v5, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    sub-int v5, v0, v1

    if-ne v4, v5, :cond_3

    :goto_0
    move v1, v3

    goto :goto_2

    :cond_3
    sub-int v1, v0, v1

    if-ne v3, v1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v2

    if-ne v4, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_a
    const/16 v1, 0x9

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v2

    :goto_2
    :pswitch_b
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic d3(Lk0/nj;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/nj;->z:F

    return p0
.end method

.method public static synthetic e3(Lk0/nj;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/nj;->z:F

    return p1
.end method

.method public static synthetic f3(Lk0/nj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/nj;->B:I

    return p0
.end method

.method public static synthetic g3(Lk0/nj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/nj;->B:I

    return p1
.end method

.method public static synthetic h3(Lk0/nj;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/nj;->A:I

    return p0
.end method

.method public static synthetic i3(Lk0/nj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/nj;->A:I

    return p1
.end method

.method public static synthetic j3(Lk0/nj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nj;->G:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic k3(Lk0/nj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nj;->I:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic l3(Lk0/nj;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/nj;->p3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic m3(Lk0/nj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nj;->M:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic n3(Lk0/nj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nj;->M:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic o3(Lk0/nj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/nj;->r3(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xc

    const/16 v3, 0x10

    const/16 v4, 0xd

    const/16 v5, 0xb

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_1

    const/16 p1, 0xf

    .line 4
    invoke-virtual {p0, p1}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v3}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v4}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xe

    .line 8
    invoke-virtual {p0, p1}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v5}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v2}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v6

    const/4 v1, 0x7

    if-ne v0, v6, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v6

    if-nez p1, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_a

    .line 17
    invoke-virtual {p0, v1}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v6

    const/4 v0, 0x6

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lk0/nj;->c3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v6

    const/4 v0, 0x5

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lk0/nj;->c3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lk0/nj;->c3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v6

    const/4 v0, 0x4

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v0}, Lk0/nj;->c3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_a

    .line 32
    invoke-virtual {p0, v0}, Lk0/nj;->c3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v6

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v1}, Lk0/nj;->c3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_a

    .line 37
    invoke-virtual {p0, v1}, Lk0/nj;->c3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v6

    const/16 v0, 0xa

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v6}, Lk0/nj;->c3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_a

    .line 42
    invoke-virtual {p0, v6}, Lk0/nj;->c3(I)V

    :cond_a
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
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nj;->x:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/nj;->C:Ljava/lang/Runnable;

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
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget v1, Lk0/nt;->a:I

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 9
    :sswitch_0
    iget-object v0, p0, Lk0/nj;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 11
    :sswitch_1
    iget-object v0, p0, Lk0/nj;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 14
    :sswitch_2
    iget-object v0, p0, Lk0/nj;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 16
    :sswitch_3
    iput v3, v0, Lk0/mt;->i:I

    .line 17
    :cond_0
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    .line 19
    :cond_1
    iget-object v0, p0, Lk0/nj;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/nj;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/nj;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    iget-object v1, p0, Lk0/nj;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/nj;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/nj;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/nj;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    iget-object v1, p0, Lk0/nj;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    iget-object v1, p0, Lk0/nj;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/nj;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/nj;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1901bb -> :sswitch_3
        0x1b01bb -> :sswitch_2
        0x1c01bb -> :sswitch_2
        0x3901be -> :sswitch_2
        0x4301bb -> :sswitch_2
        0x4401bb -> :sswitch_1
        0x4501bb -> :sswitch_0
        0x5b01bb -> :sswitch_0
        0x5e01bb -> :sswitch_0
        0x5f01bb -> :sswitch_0
        0x6001bb -> :sswitch_0
        0x6101bb -> :sswitch_0
        0xe701bb -> :sswitch_2
        0xed01bb -> :sswitch_2
        0xee01bb -> :sswitch_2
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
    .end array-data
.end method

.method public U2([BII)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x7b

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_5d

    const/16 v3, -0x6c

    const/4 v9, 0x2

    const/16 v10, 0xff

    if-eq v2, v3, :cond_5c

    const/16 v3, -0x5a

    const/16 v11, 0x8

    if-eq v2, v3, :cond_5b

    const/16 v3, -0x20

    const/16 v12, 0x25

    const/16 v13, 0x64

    const/16 v14, 0xd

    if-eq v2, v3, :cond_48

    const/16 v3, -0x18

    if-eq v2, v3, :cond_44

    const/16 v3, -0x10

    if-eq v2, v3, :cond_43

    const/16 v3, 0x41

    if-eq v2, v3, :cond_40

    const/16 v15, 0x11

    if-eq v2, v15, :cond_36

    const/16 v15, 0x12

    if-eq v2, v15, :cond_34

    const/16 v15, 0x21

    if-eq v2, v15, :cond_21

    const/16 v15, 0x22

    if-eq v2, v15, :cond_11

    const/16 v15, 0x31

    const/16 v3, 0xb

    if-eq v2, v15, :cond_5

    const/16 v9, 0x32

    if-eq v2, v9, :cond_4

    const/16 v9, 0x61

    if-eq v2, v9, :cond_3

    const/16 v3, 0x62

    if-eq v2, v3, :cond_2

    const/16 v3, 0x67

    if-eq v2, v3, :cond_1

    const/16 v3, 0x68

    if-eq v2, v3, :cond_0

    goto/16 :goto_1d

    :cond_0
    add-int/lit8 v2, p2, 0x3

    .line 2
    aget-byte v1, v1, v2

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 3
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v4, v7

    .line 4
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 5
    iput v3, v0, Lk0/nj;->t:I

    .line 6
    iget v1, v0, Lk0/nj;->u:I

    invoke-virtual {v0, v1}, Lk0/nj;->q3(I)V

    goto/16 :goto_1d

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 7
    aget-byte v1, v1, v2

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 8
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    aput v1, v3, v7

    .line 12
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_2
    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 13
    aget-byte v9, v1, v5

    shr-int/2addr v9, v8

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 14
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 15
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 16
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_3
    add-int/lit8 v2, p2, 0x4

    .line 17
    aget-byte v2, v1, v2

    const/16 v6, 0x65

    new-array v9, v8, [I

    and-int/2addr v2, v10

    aput v2, v9, v7

    .line 18
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v6, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 19
    aget-byte v11, v1, v9

    shr-int/lit8 v4, v11, 0x5

    and-int/2addr v4, v8

    aput v4, v6, v7

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v8, [I

    .line 20
    aget-byte v6, v1, v9

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v4, v8, [I

    .line 21
    aget-byte v5, v1, v9

    shr-int/2addr v5, v7

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v4, v8, [I

    add-int/lit8 v3, p2, 0xb

    .line 22
    aget-byte v1, v1, v3

    and-int/2addr v1, v10

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_4
    const/16 v2, 0x408

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 23
    aget-byte v5, v1, v5

    shl-int/2addr v5, v11

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v4, p2, 0x5

    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    or-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 25
    aget-byte v5, v1, v5

    add-int/lit8 v11, p2, 0x4

    .line 26
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x5

    .line 27
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x6

    .line 28
    aget-byte v13, v1, v13

    add-int/lit8 v15, p2, 0x7

    .line 29
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x8

    .line 30
    aget-byte v17, v1, v16

    add-int/lit8 v18, p2, 0x9

    .line 31
    aget-byte v19, v1, v18

    add-int/lit8 v20, p2, 0xa

    .line 32
    aget-byte v20, v1, v20

    add-int/lit8 v21, p2, 0xb

    .line 33
    aget-byte v4, v1, v21

    add-int/lit8 v21, p2, 0xc

    .line 34
    aget-byte v6, v1, v21

    add-int/lit8 v21, p2, 0xd

    .line 35
    aget-byte v3, v1, v21

    and-int/2addr v3, v10

    iput v3, v0, Lk0/nj;->u:I

    const/16 v3, 0xa

    new-array v10, v8, [I

    shr-int/lit8 v22, v2, 0x6

    and-int/lit8 v22, v22, 0x1

    aput v22, v10, v7

    .line 36
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v10, v8, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    aput v2, v10, v7

    .line 37
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v8, [I

    shr-int/lit8 v10, v5, 0x6

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v8, [I

    shr-int/lit8 v10, v5, 0x5

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_6

    move v3, v7

    goto :goto_0

    :cond_6
    move v3, v8

    :goto_0
    aput v3, v2, v7

    const/16 v3, 0xc

    .line 40
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v5, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 41
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v3, v8, [I

    shr-int/lit8 v10, v5, 0x1

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v5, 0x0

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0xb

    .line 43
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x49

    new-array v3, v8, [I

    shr-int/lit8 v5, v11, 0x6

    const/4 v10, 0x3

    and-int/2addr v5, v10

    aput v5, v3, v7

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v8, [I

    shr-int/lit8 v5, v11, 0x5

    and-int/2addr v5, v8

    aput v5, v3, v7

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v11, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0x41

    .line 46
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v11, 0x2

    const/4 v5, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v7

    const/16 v3, 0x1e

    .line 47
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v10, v11, 0x0

    and-int/2addr v10, v5

    aput v10, v3, v7

    .line 48
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    shr-int/lit8 v10, v12, 0x2

    and-int/2addr v10, v5

    aput v10, v3, v7

    .line 49
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v12, 0x0

    and-int/2addr v3, v5

    aput v3, v2, v7

    const/16 v3, 0x1f

    .line 50
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v13, 0xff

    if-eq v3, v8, :cond_b

    if-eq v3, v9, :cond_a

    if-eq v3, v5, :cond_9

    const/4 v2, 0x5

    if-eq v3, v2, :cond_8

    const/4 v2, 0x6

    if-eq v3, v2, :cond_7

    packed-switch v3, :pswitch_data_0

    move v2, v7

    move v3, v2

    :goto_1
    move v5, v3

    :goto_2
    move v9, v5

    goto :goto_3

    :pswitch_0
    move v2, v7

    move v3, v8

    goto :goto_1

    :pswitch_1
    move v2, v7

    move v5, v2

    move v3, v8

    move v9, v3

    goto :goto_3

    :pswitch_2
    move v2, v7

    move v3, v2

    move v5, v8

    goto :goto_2

    :cond_7
    move v2, v7

    move v5, v2

    move v9, v5

    move v3, v8

    goto :goto_3

    :cond_8
    move v2, v7

    move v9, v2

    move v3, v8

    move v5, v3

    goto :goto_3

    :cond_9
    move v2, v7

    move v3, v2

    move v9, v3

    move v5, v8

    goto :goto_3

    :cond_a
    :pswitch_3
    move v2, v7

    move v3, v2

    move v5, v3

    move v9, v8

    goto :goto_3

    :cond_b
    move v3, v7

    move v5, v3

    move v9, v5

    move v2, v8

    :goto_3
    const/16 v10, 0x31

    new-array v11, v8, [I

    aput v2, v11, v7

    .line 51
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v10, v8, [I

    aput v3, v10, v7

    .line 52
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v5, v3, v7

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    aput v9, v3, v7

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    const/16 v5, 0xff

    and-int/lit16 v9, v15, 0xff

    aput v9, v3, v7

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 56
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 57
    aget-byte v17, v1, v18

    .line 58
    aget-byte v19, v1, v16

    :cond_c
    move/from16 v1, v17

    move/from16 v2, v19

    and-int/2addr v1, v5

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_e

    if-eq v1, v5, :cond_d

    new-array v3, v8, [I

    const/4 v5, 0x5

    mul-int/2addr v1, v5

    aput v1, v3, v7

    const/16 v1, 0x1b

    .line 59
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    const/16 v1, 0x1b

    new-array v3, v8, [I

    const/4 v5, -0x3

    aput v5, v3, v7

    .line 60
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    const/16 v1, 0x1b

    new-array v3, v8, [I

    const/4 v5, -0x2

    aput v5, v3, v7

    .line 61
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v1, 0xff

    and-int/2addr v2, v1

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_10

    if-eq v2, v1, :cond_f

    new-array v1, v8, [I

    const/4 v3, 0x5

    mul-int/2addr v2, v3

    aput v2, v1, v7

    const/16 v2, 0x1c

    .line 62
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    const/16 v2, 0x1c

    new-array v1, v8, [I

    const/4 v3, -0x3

    aput v3, v1, v7

    .line 63
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    const/16 v2, 0x1c

    new-array v1, v8, [I

    const/4 v3, -0x2

    aput v3, v1, v7

    .line 64
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v1, 0x43

    new-array v2, v8, [I

    shr-int/lit8 v3, v20, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 65
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2a

    new-array v2, v8, [I

    const/4 v3, 0x6

    shr-int/lit8 v3, v20, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 66
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2c

    new-array v2, v8, [I

    const/16 v3, 0xff

    and-int/2addr v4, v3

    aput v4, v2, v7

    .line 67
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x28

    new-array v2, v8, [I

    and-int/2addr v3, v6

    aput v3, v2, v7

    .line 68
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 69
    iget v1, v0, Lk0/nj;->u:I

    invoke-virtual {v0, v1}, Lk0/nj;->q3(I)V

    goto/16 :goto_1d

    :cond_11
    const-string v2, "persist.fyt.hiworldbuttontype"

    .line 70
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_18

    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 72
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_15

    if-eq v2, v9, :cond_12

    goto/16 :goto_1d

    .line 73
    :cond_12
    iget v2, v0, Lk0/nj;->o:I

    if-eq v1, v2, :cond_5e

    if-le v1, v2, :cond_13

    move v2, v7

    .line 74
    :goto_6
    iget v3, v0, Lk0/nj;->o:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1f

    .line 75
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 76
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    if-ge v1, v2, :cond_14

    move v2, v7

    .line 77
    :goto_7
    iget v3, v0, Lk0/nj;->o:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1e

    .line 78
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 79
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 80
    :cond_14
    iput v1, v0, Lk0/nj;->o:I

    goto/16 :goto_1d

    .line 81
    :cond_15
    iget v2, v0, Lk0/nj;->n:I

    if-eq v1, v2, :cond_5e

    if-le v1, v2, :cond_16

    move v2, v7

    .line 82
    :goto_8
    iget v3, v0, Lk0/nj;->n:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_17

    const/4 v3, 0x7

    .line 83
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 84
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    if-ge v1, v2, :cond_17

    move v2, v7

    .line 85
    :goto_9
    iget v3, v0, Lk0/nj;->n:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_17

    .line 86
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 87
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 88
    :cond_17
    iput v1, v0, Lk0/nj;->n:I

    goto/16 :goto_1d

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 90
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_1d

    if-eq v2, v9, :cond_19

    goto/16 :goto_1d

    :cond_19
    if-lez v1, :cond_1b

    move v2, v7

    :goto_a
    if-ge v2, v1, :cond_1a

    const/16 v3, 0x1f

    .line 91
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    const/16 v3, 0x1f

    .line 92
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_1b
    if-gez v1, :cond_5e

    move v2, v7

    :goto_b
    rsub-int/lit8 v3, v1, 0x0

    if-ge v2, v3, :cond_1c

    const/16 v3, 0x1e

    .line 93
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    const/16 v3, 0x1e

    .line 94
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_1d
    if-lez v1, :cond_1f

    move v2, v7

    :goto_c
    if-ge v2, v1, :cond_1e

    const/4 v3, 0x7

    .line 95
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    const/4 v3, 0x7

    .line 96
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_1f
    if-gez v1, :cond_5e

    move v2, v7

    :goto_d
    rsub-int/lit8 v3, v1, 0x0

    if-ge v2, v3, :cond_20

    .line 97
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 98
    :cond_20
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_21
    const-string v2, "persist.fyt.hiworldbuttontype"

    .line 99
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_27

    add-int/lit8 v2, p2, 0x2

    .line 100
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/nj;->l:I

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v1, v1, v2

    move v2, v7

    .line 102
    :goto_e
    iget-object v3, v0, Lk0/nj;->p:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_23

    .line 103
    iget v4, v0, Lk0/nj;->l:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_22

    if-eqz v4, :cond_23

    .line 104
    iput v2, v0, Lk0/nj;->k:I

    goto :goto_f

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_23
    :goto_f
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_24

    .line 105
    iget v1, v0, Lk0/nj;->m:I

    if-nez v1, :cond_24

    .line 106
    array-length v1, v3

    if-ge v2, v1, :cond_5e

    .line 107
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 108
    iput v8, v0, Lk0/nj;->m:I

    goto/16 :goto_1d

    .line 109
    :cond_24
    iget v1, v0, Lk0/nj;->k:I

    array-length v2, v3

    if-ge v1, v2, :cond_25

    const/16 v2, 0xff

    if-eq v1, v2, :cond_26

    .line 110
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_25
    const/16 v2, 0xff

    .line 111
    :cond_26
    :goto_10
    iput v2, v0, Lk0/nj;->k:I

    .line 112
    iput v7, v0, Lk0/nj;->m:I

    goto/16 :goto_1d

    :cond_27
    const/16 v2, 0xff

    add-int/lit8 v3, p2, 0x2

    .line 113
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    iput v3, v0, Lk0/nj;->d:I

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 114
    aget-byte v1, v1, v2

    move v2, v7

    .line 115
    :goto_11
    iget-object v3, v0, Lk0/nj;->j:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 116
    iget v4, v0, Lk0/nj;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_28

    if-eqz v4, :cond_29

    .line 117
    iput v2, v0, Lk0/nj;->e:I

    goto :goto_12

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 118
    :cond_29
    :goto_12
    iget v4, v0, Lk0/nj;->d:I

    if-eqz v4, :cond_2e

    if-eq v4, v8, :cond_2d

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_2a

    .line 119
    array-length v1, v3

    if-ge v2, v1, :cond_5e

    .line 120
    iget-byte v1, v0, Lk0/nj;->F:B

    if-nez v1, :cond_5e

    add-int/2addr v1, v8

    int-to-byte v1, v1

    .line 121
    iput-byte v1, v0, Lk0/nj;->F:B

    .line 122
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 123
    iget-object v1, v0, Lk0/nj;->G:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 124
    :cond_2a
    iget v1, v0, Lk0/nj;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_2b

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2c

    .line 125
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 126
    iget-object v1, v0, Lk0/nj;->G:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 127
    iput-byte v7, v0, Lk0/nj;->F:B

    goto :goto_13

    :cond_2b
    const/16 v2, 0xff

    .line 128
    :cond_2c
    :goto_13
    iput v2, v0, Lk0/nj;->e:I

    goto/16 :goto_1d

    .line 129
    :cond_2d
    iget v2, v0, Lk0/nj;->g:I

    if-eq v2, v1, :cond_5e

    .line 130
    iput v1, v0, Lk0/nj;->g:I

    if-ne v1, v8, :cond_5e

    .line 131
    iget-object v1, v0, Lk0/nj;->I:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 132
    iget v1, v0, Lk0/nj;->d:I

    iput v1, v0, Lk0/nj;->h:I

    goto/16 :goto_1d

    .line 133
    :cond_2e
    iget v1, v0, Lk0/nj;->h:I

    if-eq v1, v8, :cond_31

    .line 134
    iget v1, v0, Lk0/nj;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_2f

    const/16 v2, 0xff

    if-eq v1, v2, :cond_30

    .line 135
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 136
    iget-object v1, v0, Lk0/nj;->G:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 137
    iput-byte v7, v0, Lk0/nj;->F:B

    goto :goto_14

    :cond_2f
    const/16 v2, 0xff

    .line 138
    :cond_30
    :goto_14
    iput v2, v0, Lk0/nj;->e:I

    goto :goto_15

    .line 139
    :cond_31
    iget-byte v1, v0, Lk0/nj;->H:B

    const/16 v2, 0x14

    if-ge v1, v2, :cond_33

    .line 140
    sget v1, Lu0/b;->f:I

    if-nez v1, :cond_32

    .line 141
    invoke-static {v8}, Lu0/d;->U1(I)V

    goto :goto_15

    :cond_32
    const/16 v1, 0xc

    .line 142
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 143
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 144
    :cond_33
    :goto_15
    iput-byte v7, v0, Lk0/nj;->H:B

    .line 145
    iput v7, v0, Lk0/nj;->g:I

    .line 146
    iput v7, v0, Lk0/nj;->h:I

    .line 147
    iget-object v1, v0, Lk0/nj;->I:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    :cond_34
    add-int/lit8 v2, p2, 0x4

    .line 148
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 149
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 150
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 151
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_35
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 152
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 153
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_16
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x3

    .line 154
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 155
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v2, v7

    const/4 v1, 0x5

    .line 156
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_36
    add-int/lit8 v2, p2, 0x4

    .line 157
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 158
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 159
    iput v2, v0, Lk0/nj;->c:I

    move v2, v7

    .line 160
    :goto_17
    iget-object v4, v0, Lk0/nj;->i:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_38

    .line 161
    iget v5, v0, Lk0/nj;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_37

    if-eqz v5, :cond_38

    .line 162
    iput v2, v0, Lk0/nj;->b:I

    goto :goto_18

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 163
    :cond_38
    :goto_18
    iget v5, v0, Lk0/nj;->c:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3d

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3b

    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-eqz v3, :cond_39

    .line 164
    array-length v3, v4

    if-ge v2, v3, :cond_3f

    .line 165
    iget-byte v3, v0, Lk0/nj;->F:B

    if-nez v3, :cond_3f

    add-int/2addr v3, v8

    int-to-byte v3, v3

    .line 166
    iput-byte v3, v0, Lk0/nj;->F:B

    .line 167
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 168
    iget-object v2, v0, Lk0/nj;->G:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 169
    :cond_39
    iget v2, v0, Lk0/nj;->b:I

    array-length v3, v4

    const/16 v5, 0xff

    if-ge v2, v3, :cond_3a

    if-eq v2, v5, :cond_3a

    .line 170
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 171
    iget-object v2, v0, Lk0/nj;->G:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 172
    iput-byte v7, v0, Lk0/nj;->F:B

    .line 173
    :cond_3a
    iput v5, v0, Lk0/nj;->b:I

    goto :goto_19

    :cond_3b
    const/16 v5, 0xff

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v8, :cond_3f

    const-string v2, "persist.fyt.canbus_key_next"

    .line 174
    invoke-static {v2, v7}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_3c

    .line 175
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x23e

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    goto :goto_19

    .line 176
    :cond_3c
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x23f

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    goto :goto_19

    :cond_3d
    const/16 v2, 0xff

    and-int/2addr v3, v2

    if-ne v3, v8, :cond_3f

    const-string v2, "persist.fyt.canbus_key_next"

    .line 177
    invoke-static {v2, v7}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_3e

    .line 178
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x23f

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    goto :goto_19

    .line 179
    :cond_3e
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x23e

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    :cond_3f
    :goto_19
    add-int/lit8 v2, p2, 0x9

    .line 180
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1d

    :cond_40
    move v3, v10

    add-int/lit8 v2, p2, 0x2

    .line 181
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 182
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 183
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 184
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 185
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v6, p2, 0x7

    .line 186
    aget-byte v7, v1, v6

    and-int/2addr v7, v3

    add-int/lit8 v9, p2, 0x8

    .line 187
    aget-byte v10, v1, v9

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x9

    .line 188
    aget-byte v12, v1, v11

    and-int/2addr v12, v3

    .line 189
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_41

    sget v3, Ll0/c0;->h:I

    if-ne v3, v7, :cond_41

    sget v3, Ll0/c0;->i:I

    if-ne v3, v10, :cond_41

    sget v3, Ll0/c0;->j:I

    if-eq v3, v12, :cond_42

    .line 190
    :cond_41
    sput v4, Ll0/c0;->g:I

    .line 191
    sput v7, Ll0/c0;->h:I

    .line 192
    sput v10, Ll0/c0;->i:I

    .line 193
    sput v12, Ll0/c0;->j:I

    .line 194
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_42

    .line 195
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 196
    sput v5, Ll0/c0;->k:I

    .line 197
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 198
    :cond_42
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 199
    aget-byte v2, v1, v6

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 200
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 201
    aget-byte v1, v1, v11

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/h0;->o(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1d

    .line 202
    :cond_43
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_44
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 203
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x2

    .line 204
    aget-byte v3, v1, v2

    const/4 v4, 0x3

    and-int/2addr v3, v4

    const/16 v5, 0x3f5

    if-ne v3, v9, :cond_45

    new-array v2, v8, [I

    aput v7, v2, v7

    .line 205
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    .line 206
    :cond_45
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    if-ne v2, v8, :cond_46

    new-array v2, v8, [I

    aput v9, v2, v7

    .line 207
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_46
    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    .line 208
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    .line 209
    :goto_1a
    sget v2, Lk0/nt;->a:I

    const v3, 0x1b01bb

    if-ne v2, v3, :cond_5e

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 210
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_47

    .line 211
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_1d

    .line 212
    :cond_47
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_1d

    :cond_48
    add-int/lit8 v2, p2, 0x2

    .line 213
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1d

    :pswitch_4
    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 214
    aget-byte v1, v1, v2

    if-eq v1, v8, :cond_4a

    if-eq v1, v9, :cond_49

    goto/16 :goto_1d

    .line 215
    :cond_49
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    .line 216
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_4a
    const/16 v1, 0x24

    .line 217
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 218
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 219
    :pswitch_5
    sget v2, Lu0/b;->D:I

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    invoke-static {v2, v1}, La/i;->I(II)V

    goto/16 :goto_1d

    :pswitch_6
    const/4 v3, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 220
    aget-byte v1, v1, v2

    if-eq v1, v8, :cond_4c

    if-eq v1, v9, :cond_4b

    goto/16 :goto_1d

    .line 221
    :cond_4b
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 222
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 223
    :cond_4c
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 224
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :pswitch_7
    const/4 v3, 0x3

    new-array v2, v9, [I

    const/4 v4, 0x7

    aput v4, v2, v7

    add-int/lit8 v3, p2, 0x3

    .line 225
    aget-byte v1, v1, v3

    aput v1, v2, v8

    const/16 v1, 0x1c

    invoke-static {v1, v2}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :pswitch_8
    add-int/lit8 v2, p2, 0x3

    .line 226
    aget-byte v2, v1, v2

    mul-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    add-int/2addr v2, v1

    .line 227
    sget v1, Lw0/d;->h:I

    const/high16 v3, 0x10000

    if-eq v1, v3, :cond_4e

    const v3, 0x10001

    if-eq v1, v3, :cond_4e

    const v3, 0x10002

    if-ne v1, v3, :cond_4d

    goto :goto_1b

    :cond_4d
    new-array v1, v8, [I

    const/16 v2, 0x1b

    aput v2, v1, v7

    const/16 v3, 0x1c

    .line 228
    invoke-static {v3, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :cond_4e
    :goto_1b
    const/16 v3, 0x1c

    new-array v1, v9, [I

    aput v14, v1, v7

    aput v2, v1, v8

    .line 229
    invoke-static {v3, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :pswitch_9
    add-int/lit8 v2, p2, 0x3

    .line 230
    aget-byte v2, v1, v2

    mul-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    add-int/2addr v2, v1

    .line 231
    sget v1, Lw0/d;->h:I

    if-eqz v1, :cond_50

    if-ne v1, v8, :cond_4f

    goto :goto_1c

    :cond_4f
    new-array v1, v8, [I

    const/16 v2, 0x1e

    aput v2, v1, v7

    const/16 v3, 0x1c

    .line 232
    invoke-static {v3, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :cond_50
    :goto_1c
    const/16 v3, 0x1c

    new-array v1, v9, [I

    aput v14, v1, v7

    aput v2, v1, v8

    .line 233
    invoke-static {v3, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :pswitch_a
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 234
    aget-byte v1, v1, v3

    if-eq v1, v8, :cond_59

    if-eq v1, v9, :cond_57

    if-eq v1, v2, :cond_55

    if-eq v1, v5, :cond_53

    const/4 v2, 0x5

    if-eq v1, v2, :cond_51

    goto/16 :goto_1d

    .line 235
    :cond_51
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_52

    .line 236
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_1d

    :cond_52
    new-array v1, v8, [I

    const/16 v2, 0x1d

    aput v2, v1, v7

    const/16 v2, 0x1c

    .line 237
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :cond_53
    const/16 v2, 0x1c

    .line 238
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_54

    .line 239
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_1d

    :cond_54
    new-array v1, v8, [I

    const/16 v3, 0x1f

    aput v3, v1, v7

    .line 240
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :cond_55
    const/16 v2, 0x1c

    .line 241
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_56

    .line 242
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_1d

    :cond_56
    new-array v1, v8, [I

    const/16 v3, 0x1e

    aput v3, v1, v7

    .line 243
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :cond_57
    const/16 v2, 0x1c

    .line 244
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_58

    .line 245
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_1d

    :cond_58
    new-array v1, v8, [I

    aput v2, v1, v7

    .line 246
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :cond_59
    const/16 v2, 0x1c

    .line 247
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_5a

    .line 248
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_1d

    :cond_5a
    new-array v1, v8, [I

    const/16 v3, 0x1b

    aput v3, v1, v7

    .line 249
    invoke-static {v2, v1}, Lw0/f;->J(I[I)V

    goto/16 :goto_1d

    :cond_5b
    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 250
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 251
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 252
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 253
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 254
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 255
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 256
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    .line 257
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_5c
    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 258
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_5d
    const/16 v2, 0x7b

    new-array v3, v8, [I

    const/4 v4, 0x3

    add-int/lit8 v6, p2, 0x3

    .line 259
    aget-byte v9, v1, v6

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    .line 260
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 261
    aget-byte v9, v1, v6

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    .line 262
    aget-byte v4, v1, v6

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    .line 263
    aget-byte v1, v1, v6

    const/4 v4, 0x5

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_5e
    :goto_1d
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nj;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/nj;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/nj;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/nj;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/nj;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/nj;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lk0/nj;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/nj;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/nj;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/nj;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/nj;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/nj;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/nj;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x81

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

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    const/16 v5, 0x11

    if-eq p1, v5, :cond_5

    const/16 v5, 0x3ed

    const/16 v6, -0xe

    if-eq p1, v5, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v3, p1, v2

    const/16 p4, -0x76

    aput p4, p1, v3

    .line 1
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_1
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v3, p1, v2

    const/16 p4, -0x53

    aput p4, p1, v3

    .line 2
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_2
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v4

    aput v1, p1, v2

    const/16 p4, 0x6f

    aput p4, p1, v3

    .line 3
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    aput v4, p1, v0

    const/4 p2, 0x6

    aput v4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_3
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v3, p1, v2

    const/16 p4, 0x6c

    aput p4, p1, v3

    .line 4
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_4
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v3, p1, v2

    aput v6, p1, v3

    .line 5
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_5
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v3, p1, v2

    const/16 p4, 0x6d

    aput p4, p1, v3

    .line 6
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_7

    .line 7
    array-length p1, p2

    if-lez p1, :cond_7

    .line 8
    aget p1, p2, v4

    const/16 p2, 0x3f5

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    if-ne p1, v3, :cond_2

    move p1, v4

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    new-array p2, v0, [I

    aput p4, p2, v4

    aput v3, p2, v2

    aput v6, p2, v3

    const/16 p4, 0x9

    aput p4, p2, p3

    aput p1, p2, v1

    .line 10
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_2

    .line 11
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, p2

    if-nez p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    new-array p2, v0, [I

    aput p4, p2, v4

    aput v3, p2, v2

    aput v6, p2, v3

    const/16 p4, 0x8

    aput p4, p2, p3

    aput p1, p2, v1

    .line 12
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_2

    :cond_5
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v3, p1, v2

    const/16 p4, 0x3d

    aput p4, p1, v3

    .line 13
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_6
    new-array p1, v0, [I

    aput p4, p1, v4

    aput v3, p1, v2

    const/16 p4, -0x66

    aput p4, p1, v3

    .line 14
    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, p3

    aget p2, p2, v2

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c3(I)V
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

.method public final p3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

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

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

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

.method public final q3(I)V
    .locals 1

    .line 1
    iget v0, p0, Lk0/nj;->t:I

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0x9

    add-int/lit16 p1, p1, 0x258

    const v0, 0x8000

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0x258

    .line 2
    :goto_0
    invoke-static {p1}, Lu0/d;->A3(I)V

    return-void
.end method

.method public final r3(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v0, 0x1e

    new-array v2, v0, [B

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    const/16 v4, 0x20

    .line 3
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 4
    aget-byte v4, p1, v3

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x1f

    new-array p1, p1, [I

    const/16 v3, -0x1d

    aput v3, p1, v0

    const/16 v3, 0x1b

    const/4 v4, 0x1

    aput v3, p1, v4

    const/4 v3, 0x2

    const/16 v5, -0x33

    aput v5, p1, v3

    .line 5
    sget v6, Lh0/c;->E:I

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x3

    packed-switch v6, :pswitch_data_0

    aput v5, p1, v9

    goto :goto_3

    :pswitch_0
    aput v8, p1, v9

    goto :goto_3

    :pswitch_1
    aput v7, p1, v9

    goto :goto_3

    :pswitch_2
    aput v4, p1, v9

    goto :goto_3

    :pswitch_3
    aput v3, p1, v9

    goto :goto_3

    :pswitch_4
    aput v0, p1, v9

    goto :goto_3

    :pswitch_5
    aput v8, p1, v9

    goto :goto_3

    :pswitch_6
    aput v8, p1, v9

    :goto_3
    aput v0, p1, v7

    .line 6
    sget-object v3, Lh0/c;->s:Ljava/lang/String;

    const/4 v4, 0x5

    if-nez v3, :cond_4

    aput v0, p1, v4

    goto :goto_4

    .line 7
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, p1, v4

    :goto_4
    if-ge v0, v1, :cond_5

    add-int/lit8 v3, v0, 0x6

    .line 8
    aget-byte v4, v2, v0

    aput v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9
    :cond_5
    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    nop

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
.end method
