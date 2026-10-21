.class public Lk0/yh;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static final Q:[I

.field public static R:I

.field public static S:I

.field public static T:I

.field public static U:I

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:F

.field public C:I

.field public D:I

.field public E:Ljava/lang/Runnable;

.field public F:Ljava/lang/Runnable;

.field public G:Lo1/g0;

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[I

.field public h:I

.field public i:I

.field public j:Z

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:B

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/Runnable;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/yh;->Q:[I

    const/4 v0, 0x0

    .line 2
    sput v0, Lk0/yh;->R:I

    const/16 v1, 0x12

    .line 3
    sput v1, Lk0/yh;->S:I

    const/16 v1, 0xa

    .line 4
    sput v1, Lk0/yh;->T:I

    .line 5
    sput v1, Lk0/yh;->U:I

    .line 6
    sput v1, Lk0/yh;->V:I

    .line 7
    sput v1, Lk0/yh;->W:I

    .line 8
    sput v1, Lk0/yh;->X:I

    const/4 v1, 0x1

    .line 9
    sput v1, Lk0/yh;->Y:I

    .line 10
    sput v0, Lk0/yh;->Z:I

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
        0x21
        0x23
        0x25
        0x26
        0x27
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/yh;->b:I

    iput v0, p0, Lk0/yh;->c:I

    .line 3
    iput v0, p0, Lk0/yh;->e:I

    const/16 v1, 0x33

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v11, 0x9

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v13, 0xb

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v13, 0xc

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v13, 0xd

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v13, 0xe

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v13, 0xf

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v13, 0x10

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v13, 0x11

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v13, 0x12

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v13, 0x13

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v13, 0x14

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v13, 0x15

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v13, 0x16

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v13, 0x17

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v13, 0x18

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v13, 0x19

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v13, 0x1a

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v13, 0x1b

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v13, 0x1c

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v13, 0x1d

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v13, 0x1e

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v13, 0x1f

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v13, 0x20

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v14, 0x21

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v14, 0x22

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v14, 0x23

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v14, 0x24

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v14, 0x25

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v14, 0x26

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v14, 0x27

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v14, 0x28

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v14, 0x29

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v14, 0x2a

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v14, 0x2b

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v14, 0x2c

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v14, 0x2d

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v14, 0x2e

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    const/16 v14, 0x2f

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    const/16 v14, 0x30

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    const/16 v14, 0x31

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/16 v14, 0x32

    aput-object v3, v1, v14

    iput-object v1, p0, Lk0/yh;->f:[[I

    new-array v1, v2, [I

    .line 5
    fill-array-data v1, :array_33

    iput-object v1, p0, Lk0/yh;->g:[I

    .line 6
    iput v0, p0, Lk0/yh;->h:I

    .line 7
    iput v0, p0, Lk0/yh;->i:I

    .line 8
    iput-boolean v0, p0, Lk0/yh;->j:Z

    .line 9
    iput v0, p0, Lk0/yh;->k:I

    .line 10
    new-instance v1, Lk0/yh$c;

    invoke-direct {v1, p0}, Lk0/yh$c;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->l:Ljava/lang/Runnable;

    .line 11
    iput v0, p0, Lk0/yh;->m:I

    .line 12
    new-instance v1, Lk0/yh$d;

    invoke-direct {v1, p0}, Lk0/yh$d;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->n:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lk0/yh;->o:I

    .line 14
    new-instance v1, Lk0/yh$e;

    invoke-direct {v1, p0}, Lk0/yh$e;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/yh$f;

    invoke-direct {v1, p0}, Lk0/yh$f;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->q:Ljava/lang/Runnable;

    .line 16
    iput-byte v12, p0, Lk0/yh;->r:B

    .line 17
    new-instance v1, Lk0/yh$g;

    invoke-direct {v1, p0}, Lk0/yh$g;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->s:Ljava/lang/Runnable;

    .line 18
    new-instance v1, Lk0/yh$h;

    invoke-direct {v1, p0}, Lk0/yh$h;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->t:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/yh$i;

    invoke-direct {v1, p0}, Lk0/yh$i;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->u:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lk0/yh;->v:I

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lk0/yh;->w:Ljava/lang/String;

    .line 22
    new-instance v1, Lk0/yh$j;

    invoke-direct {v1, p0}, Lk0/yh$j;-><init>(Lk0/yh;)V

    iput-object v1, p0, Lk0/yh;->x:Ljava/lang/Runnable;

    .line 23
    iput v0, p0, Lk0/yh;->y:I

    .line 24
    iput v0, p0, Lk0/yh;->z:I

    .line 25
    new-instance v0, Lk0/yh$k;

    invoke-direct {v0, p0}, Lk0/yh$k;-><init>(Lk0/yh;)V

    iput-object v0, p0, Lk0/yh;->A:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lk0/yh;->B:F

    const/16 v0, 0xff

    .line 27
    iput v0, p0, Lk0/yh;->C:I

    .line 28
    iput v0, p0, Lk0/yh;->D:I

    .line 29
    new-instance v0, Lk0/yh$a;

    invoke-direct {v0, p0}, Lk0/yh$a;-><init>(Lk0/yh;)V

    iput-object v0, p0, Lk0/yh;->E:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lk0/yh$b;

    invoke-direct {v0, p0}, Lk0/yh$b;-><init>(Lk0/yh;)V

    iput-object v0, p0, Lk0/yh;->F:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/yh;->G:Lo1/g0;

    .line 32
    iput v4, p0, Lk0/yh;->H:I

    .line 33
    iput v2, p0, Lk0/yh;->I:I

    .line 34
    iput v5, p0, Lk0/yh;->J:I

    .line 35
    iput v6, p0, Lk0/yh;->K:I

    .line 36
    iput v7, p0, Lk0/yh;->L:I

    .line 37
    iput v8, p0, Lk0/yh;->M:I

    .line 38
    iput v9, p0, Lk0/yh;->N:I

    .line 39
    iput v10, p0, Lk0/yh;->O:I

    .line 40
    iput v11, p0, Lk0/yh;->P:I

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xd
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xe
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x15
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x12
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x15
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x17
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x18
        0x9
    .end array-data

    :array_12
    .array-data 4
        0x19
        0x5
    .end array-data

    :array_13
    .array-data 4
        0x1a
        0x43
    .end array-data

    :array_14
    .array-data 4
        0x1b
        0x44
    .end array-data

    :array_15
    .array-data 4
        0x1c
        0x36
    .end array-data

    :array_16
    .array-data 4
        0x1d
        0x1d
    .end array-data

    :array_17
    .array-data 4
        0x20
        0x3e
    .end array-data

    :array_18
    .array-data 4
        0x21
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x40
        0x22
    .end array-data

    :array_1a
    .array-data 4
        0x41
        0x23
    .end array-data

    :array_1b
    .array-data 4
        0x42
        0x20
    .end array-data

    :array_1c
    .array-data 4
        0x43
        0x21
    .end array-data

    :array_1d
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_1e
    .array-data 4
        0x87
        0x15
    .end array-data

    :array_1f
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_20
    .array-data 4
        0xa1
        0x7
    .end array-data

    :array_21
    .array-data 4
        0xa2
        0x8
    .end array-data

    :array_22
    .array-data 4
        0xa9
        0x44
    .end array-data

    :array_23
    .array-data 4
        0xb0
        0x43
    .end array-data

    :array_24
    .array-data 4
        0xb1
        0x2
    .end array-data

    :array_25
    .array-data 4
        0xb2
        0x5
    .end array-data

    :array_26
    .array-data 4
        0xb3
        0x12
    .end array-data

    :array_27
    .array-data 4
        0xb4
        0x1a
    .end array-data

    :array_28
    .array-data 4
        0xb5
        0x37
    .end array-data

    :array_29
    .array-data 4
        0xb6
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0xb9
        0x3e
    .end array-data

    :array_2b
    .array-data 4
        0xba
        0x6
    .end array-data

    :array_2c
    .array-data 4
        0xbb
        0x41
    .end array-data

    :array_2d
    .array-data 4
        0xbc
        0x26
    .end array-data

    :array_2e
    .array-data 4
        0xc0
        0x22
    .end array-data

    :array_2f
    .array-data 4
        0xc1
        0x23
    .end array-data

    :array_30
    .array-data 4
        0xc2
        0x20
    .end array-data

    :array_31
    .array-data 4
        0xc3
        0x21
    .end array-data

    :array_32
    .array-data 4
        0xc4
        0x1d
    .end array-data

    :array_33
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic A3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->O3(I)V

    return-void
.end method

.method public static synthetic B3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->N3(I)V

    return-void
.end method

.method public static synthetic C3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->M3(I)V

    return-void
.end method

.method public static synthetic D3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->J3(I)V

    return-void
.end method

.method public static synthetic E3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->H3(I)V

    return-void
.end method

.method public static synthetic b3()I
    .locals 1

    .line 1
    sget v0, Lk0/yh;->S:I

    return v0
.end method

.method public static synthetic c3(Lk0/yh;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/yh;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic d3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->G3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->I3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->L3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/yh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/yh;->K3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/yh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yh;->v:I

    return p0
.end method

.method public static synthetic i3(Lk0/yh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yh;->v:I

    return p1
.end method

.method public static synthetic j3(Lk0/yh;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/yh;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k3(Lk0/yh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yh;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic l3(Lk0/yh;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/yh;->P3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic m3(Lk0/yh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yh;->z:I

    return p0
.end method

.method public static synthetic n3(Lk0/yh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yh;->z:I

    return p1
.end method

.method public static synthetic o3(Lk0/yh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yh;->y:I

    return p0
.end method

.method public static synthetic p3(Lk0/yh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yh;->y:I

    return p1
.end method

.method public static synthetic q3(Lk0/yh;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/yh;->B:F

    return p0
.end method

.method public static synthetic r3(Lk0/yh;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/yh;->B:F

    return p1
.end method

.method public static synthetic s3(Lk0/yh;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/yh;->B:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/yh;->B:F

    return v0
.end method

.method public static synthetic t3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/yh;->Q:[I

    return-object v0
.end method

.method public static synthetic u3(Lk0/yh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yh;->D:I

    return p0
.end method

.method public static synthetic v3(Lk0/yh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yh;->D:I

    return p1
.end method

.method public static synthetic w3(Lk0/yh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/yh;->C:I

    return p0
.end method

.method public static synthetic x3(Lk0/yh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/yh;->C:I

    return p1
.end method

.method public static synthetic y3(Lk0/yh;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/yh;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic z3(Lk0/yh;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/yh;->G:Lo1/g0;

    return-object p0
.end method


# virtual methods
.method public final F3()V
    .locals 3

    const-string v0, "com.syu.carinfo.rzc.havalh6.Oudi_0439_HavalH9SetAct"

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

.method public final G3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/yh;->W:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x86

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v4, [I

    .line 3
    sget v0, Lk0/yh;->W:I

    aput v0, p1, v3

    const/16 v0, 0x92

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/4 v0, 0x6

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yh;->W:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final H3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/yh;->V:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x86

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    const/4 v5, 0x4

    aput v5, v1, v2

    aput p1, v1, v5

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v4, [I

    .line 3
    sget v1, Lk0/yh;->V:I

    aput v1, p1, v3

    const/16 v1, 0x91

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yh;->V:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final I3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/yh;->X:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/4 v4, 0x6

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/yh;->X:I

    aput v0, p1, v2

    const/16 v0, 0x93

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/4 v0, 0x7

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yh;->X:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final J3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/yh;->U:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/yh;->U:I

    aput v0, p1, v2

    const/16 v0, 0x90

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/yh;->U:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final K3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/yh;->Z:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0x8

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/yh;->Z:I

    aput v0, p1, v2

    const/16 v0, 0x94

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yh;->Z:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final L3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/yh;->Y:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/4 v4, 0x7

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/yh;->Y:I

    aput v0, p1, v2

    const/16 v0, 0x95

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yh;->Y:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final M3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/yh;->T:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/yh;->T:I

    aput v0, p1, v2

    const/16 v0, 0x8f

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p1, v4, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/yh;->T:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public N2()V
    .locals 1

    .line 1
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x19

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b01b7 -> :sswitch_0
        0x2701b7 -> :sswitch_0
        0xb501c6 -> :sswitch_0
        0xef01b7 -> :sswitch_0
        0xf901c4 -> :sswitch_0
        0xfa01c4 -> :sswitch_0
        0xfb01c4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final N3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/yh;->S:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v4, 0x3

    aput v3, v0, v4

    const/4 v4, 0x4

    aput p1, v0, v4

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lk0/yh;->S:I

    aput v0, p1, v2

    const/16 v0, 0x8e

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    const/16 v0, 0x12

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/yh;->S:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_23

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_1

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

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "      value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    sget v5, Lk0/nt;->a:I

    const/4 v6, -0x1

    const/16 v7, 0xc

    const/16 v9, 0xd

    const/16 v10, 0xb

    const/16 v11, 0x1f

    const/16 v12, 0x10

    const/16 v13, 0x11

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 5
    :pswitch_1
    aget v1, v1, v8

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x21

    .line 7
    invoke-virtual {v0, v1}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    aget v1, v1, v8

    if-eqz v1, :cond_2

    const/16 v1, 0x1e

    .line 9
    invoke-virtual {v0, v1}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0, v11}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 11
    :pswitch_3
    aget v1, v1, v8

    if-ne v1, v6, :cond_3

    const/16 v1, 0x1c

    .line 12
    invoke-virtual {v0, v1}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x1d

    .line 13
    invoke-virtual {v0, v1}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 14
    :pswitch_4
    aget v1, v1, v8

    const/16 v2, 0x13

    if-eqz v1, :cond_4

    .line 15
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v7

    if-nez v1, :cond_23

    .line 16
    invoke-virtual {v0, v2}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 17
    :cond_4
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v7

    if-ne v1, v8, :cond_23

    .line 18
    invoke-virtual {v0, v2}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 19
    :pswitch_5
    aget v1, v1, v8

    const/16 v2, 0x15

    const/16 v3, 0x41

    if-eqz v1, :cond_5

    .line 20
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_23

    .line 21
    invoke-virtual {v0, v2}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 22
    :cond_5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v8, :cond_23

    .line 23
    invoke-virtual {v0, v2}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 24
    :pswitch_6
    aget v1, v1, v8

    const/16 v2, 0x12

    if-eqz v1, :cond_6

    .line 25
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v9

    if-nez v1, :cond_23

    .line 26
    invoke-virtual {v0, v2}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 27
    :cond_6
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v9

    if-ne v1, v8, :cond_23

    .line 28
    invoke-virtual {v0, v2}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 29
    :pswitch_7
    aget v1, v1, v8

    if-eqz v1, :cond_7

    .line 30
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v10

    if-nez v1, :cond_23

    .line 31
    invoke-virtual {v0, v13}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 32
    :cond_7
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v10

    if-ne v1, v8, :cond_23

    .line 33
    invoke-virtual {v0, v13}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 34
    :pswitch_8
    aget v1, v1, v8

    const/16 v2, 0xa

    if-eqz v1, :cond_8

    .line 35
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-nez v1, :cond_23

    .line 36
    invoke-virtual {v0, v12}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    .line 37
    :cond_8
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v2

    if-ne v1, v8, :cond_23

    .line 38
    invoke-virtual {v0, v12}, Lk0/yh;->a3(I)V

    goto/16 :goto_1

    :goto_0
    const/16 v5, 0x29

    const/4 v14, 0x5

    if-eq v4, v5, :cond_21

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x37

    const/16 v15, 0xe3

    const/4 v9, 0x4

    const/4 v11, 0x3

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x38

    if-eq v4, v5, :cond_19

    const/16 v5, 0x43

    const/4 v7, 0x6

    if-eq v4, v5, :cond_14

    const/16 v5, 0x44

    const/4 v10, 0x7

    if-eq v4, v5, :cond_a

    const/16 v5, 0x87

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 39
    :pswitch_9
    aget v1, v1, v8

    if-ne v1, v6, :cond_9

    new-array v1, v14, [I

    .line 40
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_9
    new-array v1, v14, [I

    .line 41
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_a
    new-array v4, v14, [I

    aput v15, v4, v2

    aput v5, v4, v8

    aput v3, v4, v3

    const/16 v2, 0xf

    aput v2, v4, v11

    .line 42
    aget v1, v1, v8

    aput v1, v4, v9

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_b
    new-array v4, v14, [I

    aput v15, v4, v2

    aput v5, v4, v8

    aput v3, v4, v3

    aput v13, v4, v11

    .line 43
    aget v1, v1, v8

    aput v1, v4, v9

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_c
    new-array v4, v14, [I

    aput v15, v4, v2

    aput v5, v4, v8

    aput v3, v4, v3

    aput v12, v4, v11

    .line 44
    aget v1, v1, v8

    aput v1, v4, v9

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_d
    new-array v4, v14, [I

    aput v15, v4, v2

    aput v5, v4, v8

    aput v3, v4, v3

    const/16 v2, 0xe

    aput v2, v4, v11

    .line 45
    aget v1, v1, v8

    aput v1, v4, v9

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_e
    new-array v4, v14, [I

    aput v15, v4, v2

    aput v5, v4, v8

    aput v3, v4, v3

    aput v10, v4, v11

    .line 46
    aget v1, v1, v8

    aput v1, v4, v9

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_f
    new-array v4, v14, [I

    aput v15, v4, v2

    aput v5, v4, v8

    aput v3, v4, v3

    aput v7, v4, v11

    .line 47
    aget v1, v1, v8

    aput v1, v4, v9

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 48
    :cond_a
    aget v2, v1, v8

    if-ne v2, v8, :cond_b

    new-array v1, v14, [I

    .line 49
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 50
    :cond_b
    aget v2, v1, v8

    if-ne v2, v3, :cond_c

    new-array v1, v14, [I

    .line 51
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 52
    :cond_c
    aget v2, v1, v8

    if-ne v2, v11, :cond_d

    new-array v1, v14, [I

    .line 53
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 54
    :cond_d
    aget v2, v1, v8

    if-ne v2, v9, :cond_e

    new-array v1, v14, [I

    .line 55
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 56
    :cond_e
    aget v2, v1, v8

    if-ne v2, v14, :cond_f

    new-array v1, v14, [I

    .line 57
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 58
    :cond_f
    aget v2, v1, v8

    if-ne v2, v7, :cond_10

    new-array v1, v14, [I

    .line 59
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 60
    :cond_10
    aget v2, v1, v8

    if-ne v2, v10, :cond_11

    new-array v1, v14, [I

    .line 61
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 62
    :cond_11
    aget v2, v1, v8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_12

    new-array v1, v14, [I

    .line 63
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 64
    :cond_12
    aget v2, v1, v8

    const/16 v3, 0xb

    if-ne v2, v3, :cond_13

    new-array v1, v14, [I

    .line 65
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 66
    :cond_13
    aget v1, v1, v8

    const/16 v2, 0xc

    if-ne v1, v2, :cond_23

    new-array v1, v14, [I

    .line 67
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 68
    :cond_14
    aget v1, v1, v8

    if-eq v1, v3, :cond_18

    if-eq v1, v11, :cond_17

    if-eq v1, v9, :cond_16

    if-eq v1, v14, :cond_15

    goto/16 :goto_1

    :cond_15
    new-array v1, v7, [I

    .line 69
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_16
    new-array v1, v7, [I

    .line 70
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_17
    new-array v1, v7, [I

    .line 71
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_18
    new-array v1, v7, [I

    .line 72
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 73
    :cond_19
    aget v4, v1, v8

    if-ge v4, v13, :cond_1a

    new-array v1, v14, [I

    .line 74
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 75
    :cond_1a
    aget v4, v1, v8

    if-lt v4, v13, :cond_1b

    aget v4, v1, v8

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1b

    .line 76
    aget v1, v1, v8

    sub-int/2addr v1, v12

    mul-int/2addr v1, v3

    new-array v4, v14, [I

    aput v15, v4, v2

    const/16 v2, -0x79

    aput v2, v4, v8

    aput v3, v4, v3

    const/16 v2, 0xd

    aput v2, v4, v11

    aput v1, v4, v9

    .line 77
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 78
    :cond_1b
    aget v1, v1, v8

    const/16 v2, 0x1f

    if-le v1, v2, :cond_23

    new-array v1, v14, [I

    .line 79
    fill-array-data v1, :array_11

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 80
    :cond_1c
    aget v4, v1, v8

    if-ge v4, v13, :cond_1d

    new-array v1, v14, [I

    .line 81
    fill-array-data v1, :array_12

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 82
    :cond_1d
    aget v4, v1, v8

    if-lt v4, v13, :cond_1e

    aget v4, v1, v8

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1e

    .line 83
    aget v1, v1, v8

    sub-int/2addr v1, v12

    mul-int/2addr v1, v3

    new-array v4, v14, [I

    aput v15, v4, v2

    const/16 v2, -0x79

    aput v2, v4, v8

    aput v3, v4, v3

    const/16 v2, 0xb

    aput v2, v4, v11

    aput v1, v4, v9

    .line 84
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_1

    .line 85
    :cond_1e
    aget v1, v1, v8

    const/16 v2, 0x1f

    if-le v1, v2, :cond_23

    new-array v1, v14, [I

    .line 86
    fill-array-data v1, :array_13

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 87
    :cond_1f
    aget v1, v1, v8

    if-eqz v1, :cond_20

    new-array v1, v14, [I

    .line 88
    fill-array-data v1, :array_14

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_20
    new-array v1, v14, [I

    .line 89
    fill-array-data v1, :array_15

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 90
    :cond_21
    aget v1, v1, v8

    if-eqz v1, :cond_22

    new-array v1, v14, [I

    .line 91
    fill-array-data v1, :array_16

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_22
    new-array v1, v14, [I

    .line 92
    fill-array-data v1, :array_17

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_23
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1501b7 -> :sswitch_0
        0x1b01b7 -> :sswitch_0
        0xb901c7 -> :sswitch_0
        0xba01c7 -> :sswitch_0
        0xee01b7 -> :sswitch_0
        0xef01b7 -> :sswitch_0
        0xf601c4 -> :sswitch_0
        0xf701c4 -> :sswitch_0
        0xf801c4 -> :sswitch_0
        0xf901c4 -> :sswitch_0
        0xfa01c4 -> :sswitch_0
        0xfb01c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x87
        0x2
        0x8
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x87
        0x2
        0x8
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x4
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x3
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x2
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x1
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0xff
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x0
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0xff
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x87
        0x2
        0xc
        0x1
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x87
        0x2
        0xc
        0x0
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x87
        0x2
        0xa
        0x1
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x87
        0x2
        0xa
        0x0
    .end array-data
.end method

.method public final O3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/yh;->R:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x73

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/yh;->R:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final P3(ILjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x6

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eqz p1, :cond_4

    if-eq p1, v8, :cond_3

    if-eq p1, v7, :cond_2

    if-eq p1, v3, :cond_1

    .line 6
    aput v4, v1, v8

    goto :goto_0

    .line 7
    :cond_1
    aput v7, v1, v8

    goto :goto_0

    .line 8
    :cond_2
    aput v5, v1, v8

    goto :goto_0

    .line 9
    :cond_3
    aput v6, v1, v8

    goto :goto_0

    .line 10
    :cond_4
    aput v2, v1, v8

    .line 11
    :goto_0
    aput v5, v1, v7

    .line 12
    array-length p1, v0

    if-lez p1, :cond_5

    .line 13
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_5

    add-int p1, v3, v4

    .line 14
    aget-char v2, v0, v4

    int-to-byte v2, v2

    aput v2, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/yh;->F:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/yh;->E:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/yh;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yh;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget v0, Lk0/nt;->a:I

    const-string v1, "com.syu.canbus"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 7
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v2, v0, Lk0/mt;->e:I

    .line 9
    iput v2, v0, Lk0/mt;->f:I

    .line 10
    iput v2, v0, Lk0/mt;->g:I

    .line 11
    iput v2, v0, Lk0/mt;->i:I

    .line 12
    iput v2, v0, Lk0/mt;->b:I

    .line 13
    iput v3, v0, Lk0/mt;->c:I

    .line 14
    iput v3, v0, Lk0/mt;->d:I

    .line 15
    iput v3, v0, Lk0/mt;->o:I

    .line 16
    iput v2, v0, Lk0/mt;->q:I

    .line 17
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/yh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v0, p0, Lk0/yh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 19
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 20
    iput v2, v0, Lk0/mt;->e:I

    .line 21
    iput v2, v0, Lk0/mt;->f:I

    .line 22
    iput v2, v0, Lk0/mt;->g:I

    .line 23
    iput v2, v0, Lk0/mt;->i:I

    .line 24
    iput v3, v0, Lk0/mt;->b:I

    .line 25
    iput v3, v0, Lk0/mt;->c:I

    .line 26
    iput v3, v0, Lk0/mt;->d:I

    .line 27
    iput v3, v0, Lk0/mt;->o:I

    .line 28
    iput v2, v0, Lk0/mt;->q:I

    .line 29
    iget-object v0, p0, Lk0/yh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 30
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 31
    iput v2, v0, Lk0/mt;->e:I

    .line 32
    iput v2, v0, Lk0/mt;->f:I

    .line 33
    iput v2, v0, Lk0/mt;->g:I

    .line 34
    iput v2, v0, Lk0/mt;->i:I

    .line 35
    iput v3, v0, Lk0/mt;->b:I

    .line 36
    iput v3, v0, Lk0/mt;->c:I

    .line 37
    iput v3, v0, Lk0/mt;->d:I

    .line 38
    iput v3, v0, Lk0/mt;->o:I

    .line 39
    iput v3, v0, Lk0/mt;->q:I

    .line 40
    iget-object v0, p0, Lk0/yh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 41
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/yh;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 42
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/yh;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 43
    :sswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 44
    iput v2, v0, Lk0/mt;->e:I

    .line 45
    iput v2, v0, Lk0/mt;->f:I

    .line 46
    iput v2, v0, Lk0/mt;->g:I

    .line 47
    iput v2, v0, Lk0/mt;->i:I

    .line 48
    iput v3, v0, Lk0/mt;->b:I

    .line 49
    iput v3, v0, Lk0/mt;->c:I

    .line 50
    iput v3, v0, Lk0/mt;->d:I

    .line 51
    iput v3, v0, Lk0/mt;->o:I

    .line 52
    iput v3, v0, Lk0/mt;->q:I

    goto/16 :goto_0

    .line 53
    :sswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 54
    iput v2, v0, Lk0/mt;->e:I

    .line 55
    iput v2, v0, Lk0/mt;->f:I

    .line 56
    iput v2, v0, Lk0/mt;->g:I

    .line 57
    iput v2, v0, Lk0/mt;->i:I

    .line 58
    iput v3, v0, Lk0/mt;->b:I

    .line 59
    iput v3, v0, Lk0/mt;->c:I

    .line 60
    iput v3, v0, Lk0/mt;->d:I

    .line 61
    iput v3, v0, Lk0/mt;->o:I

    .line 62
    iput v3, v0, Lk0/mt;->q:I

    goto/16 :goto_0

    .line 63
    :sswitch_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 64
    iput v2, v0, Lk0/mt;->e:I

    .line 65
    iput v2, v0, Lk0/mt;->f:I

    .line 66
    iput v2, v0, Lk0/mt;->g:I

    .line 67
    iput v2, v0, Lk0/mt;->i:I

    .line 68
    iput v3, v0, Lk0/mt;->b:I

    .line 69
    iput v3, v0, Lk0/mt;->c:I

    .line 70
    iput v3, v0, Lk0/mt;->d:I

    .line 71
    iput v3, v0, Lk0/mt;->o:I

    .line 72
    iput v3, v0, Lk0/mt;->q:I

    goto/16 :goto_0

    .line 73
    :sswitch_6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 74
    iput v2, v0, Lk0/mt;->e:I

    .line 75
    iput v2, v0, Lk0/mt;->f:I

    .line 76
    iput v2, v0, Lk0/mt;->g:I

    .line 77
    iput v2, v0, Lk0/mt;->i:I

    .line 78
    iput v2, v0, Lk0/mt;->b:I

    .line 79
    iput v3, v0, Lk0/mt;->c:I

    .line 80
    iput v3, v0, Lk0/mt;->d:I

    .line 81
    iput v3, v0, Lk0/mt;->o:I

    .line 82
    iput v2, v0, Lk0/mt;->q:I

    .line 83
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/yh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 84
    :sswitch_7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 85
    iput v2, v0, Lk0/mt;->e:I

    .line 86
    iput v2, v0, Lk0/mt;->f:I

    .line 87
    iput v2, v0, Lk0/mt;->g:I

    .line 88
    iput v2, v0, Lk0/mt;->i:I

    .line 89
    iput v3, v0, Lk0/mt;->b:I

    .line 90
    iput v3, v0, Lk0/mt;->c:I

    .line 91
    iput v3, v0, Lk0/mt;->d:I

    .line 92
    iput v3, v0, Lk0/mt;->o:I

    .line 93
    iput v2, v0, Lk0/mt;->q:I

    goto :goto_0

    .line 94
    :sswitch_8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 95
    iput v2, v0, Lk0/mt;->e:I

    .line 96
    iput v2, v0, Lk0/mt;->f:I

    .line 97
    iput v2, v0, Lk0/mt;->g:I

    .line 98
    iput v2, v0, Lk0/mt;->i:I

    .line 99
    iput v2, v0, Lk0/mt;->b:I

    .line 100
    iput v3, v0, Lk0/mt;->c:I

    .line 101
    iput v3, v0, Lk0/mt;->d:I

    .line 102
    iput v3, v0, Lk0/mt;->o:I

    .line 103
    iput v2, v0, Lk0/mt;->q:I

    .line 104
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/yh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 105
    :sswitch_9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 106
    iput v2, v0, Lk0/mt;->e:I

    .line 107
    iput v2, v0, Lk0/mt;->f:I

    .line 108
    iput v2, v0, Lk0/mt;->g:I

    .line 109
    iput v2, v0, Lk0/mt;->i:I

    .line 110
    iput v3, v0, Lk0/mt;->b:I

    .line 111
    iput v3, v0, Lk0/mt;->c:I

    .line 112
    iput v3, v0, Lk0/mt;->d:I

    .line 113
    iput v3, v0, Lk0/mt;->o:I

    .line 114
    iput v2, v0, Lk0/mt;->q:I

    .line 115
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->q:I

    .line 116
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 117
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    .line 118
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 119
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/yh;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1501b7 -> :sswitch_9
        0x1b01b7 -> :sswitch_8
        0x2601b7 -> :sswitch_7
        0x2701b7 -> :sswitch_6
        0x6c01b7 -> :sswitch_5
        0x6d01b7 -> :sswitch_4
        0x7401b7 -> :sswitch_3
        0x8401c4 -> :sswitch_7
        0xac01b7 -> :sswitch_2
        0xb401c6 -> :sswitch_7
        0xb501c6 -> :sswitch_6
        0xb901c7 -> :sswitch_1
        0xba01c7 -> :sswitch_0
        0xee01b7 -> :sswitch_9
        0xef01b7 -> :sswitch_8
        0xf601c4 -> :sswitch_1
        0xf701c4 -> :sswitch_1
        0xf801c4 -> :sswitch_1
        0xf901c4 -> :sswitch_0
        0xfa01c4 -> :sswitch_0
        0xfb01c4 -> :sswitch_0
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
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x40

    const/4 v5, 0x2

    if-eq v2, v4, :cond_48

    const/16 v4, 0x41

    const v6, 0xac01b7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v4, :cond_44

    const/16 v4, 0x7d

    const/4 v11, 0x3

    if-eq v2, v4, :cond_3f

    const/16 v4, 0x7f

    if-eq v2, v4, :cond_3e

    const v4, 0xb501c6

    const v13, 0xb401c6

    const/4 v14, -0x2

    const v10, 0x2701b7

    const v9, 0x8401c4

    const v12, 0x2601b7

    const/4 v15, 0x5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_20

    .line 2
    :pswitch_0
    sget v2, Lk0/nt;->a:I

    const v4, 0xb901c7

    if-eq v2, v4, :cond_4b

    const v4, 0xba01c7

    if-eq v2, v4, :cond_4b

    const v4, 0xf901c4

    if-ne v2, v4, :cond_0

    goto/16 :goto_20

    :cond_0
    const/16 v2, 0x8e

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 3
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 4
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 5
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 6
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 7
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 8
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 9
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x9

    .line 10
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_1
    const/16 v2, 0x7a

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 11
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 12
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 13
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 14
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 15
    :pswitch_2
    sget v2, Lk0/nt;->a:I

    if-eq v2, v12, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v10, :cond_1

    if-eq v2, v13, :cond_1

    if-eq v2, v4, :cond_1

    const v4, 0x6c01b7

    if-eq v2, v4, :cond_1

    const v4, 0x6d01b7

    if-eq v2, v4, :cond_1

    const v4, 0x7401b7

    if-eq v2, v4, :cond_1

    if-eq v2, v6, :cond_1

    goto/16 :goto_20

    :cond_1
    if-eq v2, v12, :cond_2

    if-eq v2, v9, :cond_2

    if-eq v2, v10, :cond_2

    const v4, 0x6c01b7

    if-eq v2, v4, :cond_2

    const v4, 0x6d01b7

    if-ne v2, v4, :cond_3

    :cond_2
    const-string v2, "persist.fyt.showduduair"

    .line 16
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 17
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v8, :cond_3

    .line 18
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x3e

    .line 19
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 20
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x1d

    new-array v5, v8, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v7

    .line 22
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x1e

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v7

    .line 23
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x58

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 24
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x1f

    new-array v5, v8, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v7

    .line 26
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x20

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v7

    .line 27
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x5d

    new-array v5, v8, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v7

    .line 29
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x5e

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v7

    .line 30
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 31
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const/16 v2, 0x5f

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x60

    new-array v3, v8, [I

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 34
    :pswitch_3
    sget v2, Lk0/nt;->a:I

    if-eq v2, v12, :cond_4

    if-eq v2, v9, :cond_4

    if-eq v2, v10, :cond_4

    if-eq v2, v13, :cond_4

    if-eq v2, v4, :cond_4

    goto/16 :goto_20

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 36
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x4

    .line 37
    aget-byte v6, v1, v6

    add-int/lit8 v9, p2, 0x5

    .line 38
    aget-byte v1, v1, v9

    const/16 v9, 0x2a

    new-array v10, v8, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v8

    aput v12, v10, v7

    .line 39
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x2b

    new-array v10, v8, [I

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v8

    aput v2, v10, v7

    .line 40
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    if-eq v2, v8, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v11, :cond_5

    move v2, v7

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v7

    move v4, v8

    goto :goto_1

    :cond_6
    move v2, v8

    goto :goto_0

    :cond_7
    move v4, v7

    move v2, v8

    :goto_1
    const/16 v5, 0x2e

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 41
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v5, v8, [I

    aput v4, v5, v7

    .line 42
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v8, [I

    and-int/lit8 v5, v6, 0xf

    aput v5, v4, v7

    .line 43
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/2addr v1, v3

    if-nez v1, :cond_8

    new-array v1, v8, [I

    aput v14, v1, v7

    const/16 v2, 0x28

    .line 44
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_8
    const/16 v2, 0x28

    if-ne v1, v3, :cond_9

    new-array v1, v8, [I

    const/4 v3, -0x3

    aput v3, v1, v7

    .line 45
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_9
    new-array v3, v8, [I

    aput v1, v3, v7

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v1, v1, v2

    .line 48
    iget v2, v0, Lk0/yh;->i:I

    if-eq v1, v2, :cond_4b

    if-le v1, v2, :cond_b

    move v2, v7

    .line 49
    :goto_2
    iget v3, v0, Lk0/yh;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_a

    const/4 v3, 0x7

    .line 50
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x7

    .line 51
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_b
    if-ge v1, v2, :cond_d

    move v2, v7

    .line 52
    :goto_3
    iget v3, v0, Lk0/yh;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_c

    const/16 v3, 0x8

    .line 53
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    const/16 v3, 0x8

    .line 54
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    .line 55
    :cond_d
    :goto_4
    iput v1, v0, Lk0/yh;->i:I

    goto/16 :goto_20

    :pswitch_5
    const/16 v2, 0x72

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 56
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_6
    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 57
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    .line 58
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 59
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    .line 60
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    .line 61
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    .line 62
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    .line 63
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 64
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    .line 65
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    .line 66
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 67
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    .line 68
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 69
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 70
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 71
    sget v2, Lk0/nt;->a:I

    const v3, 0x1501b7

    if-eq v2, v3, :cond_f

    const v3, 0x1b01b7

    if-eq v2, v3, :cond_f

    const v3, 0xee01b7

    if-eq v2, v3, :cond_f

    const v3, 0xef01b7

    if-eq v2, v3, :cond_f

    const v3, 0xf601c4

    if-eq v2, v3, :cond_f

    const v3, 0xf701c4    # 2.2684001E-38f

    if-eq v2, v3, :cond_f

    const v3, 0xf801c4

    if-eq v2, v3, :cond_f

    const v3, 0xf901c4

    if-eq v2, v3, :cond_f

    const v3, 0xfa01c4

    if-eq v2, v3, :cond_f

    const v3, 0xfb01c4

    if-eq v2, v3, :cond_f

    const v3, 0xb901c7

    if-eq v2, v3, :cond_f

    const v3, 0xba01c7

    if-ne v2, v3, :cond_e

    goto/16 :goto_5

    :cond_e
    const/16 v2, 0x81

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 72
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 73
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    .line 74
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    .line 75
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v8, [I

    .line 76
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    .line 77
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 78
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 79
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    .line 80
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v8, [I

    .line 81
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v8, [I

    .line 82
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    .line 83
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    .line 84
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 85
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    .line 86
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v8, [I

    .line 87
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    .line 88
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    .line 89
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    const/4 v6, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 90
    aget-byte v9, v1, v4

    shr-int/2addr v9, v6

    and-int/lit8 v6, v9, 0x1

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v8, [I

    .line 91
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v8, [I

    .line 92
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v8, [I

    .line 93
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x1f

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 94
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    .line 95
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    .line 96
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    .line 97
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v8, [I

    .line 98
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    .line 99
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 100
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v8, [I

    .line 101
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v8, [I

    .line 102
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v8, [I

    .line 103
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 104
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_f
    :goto_5
    const/16 v2, 0x81

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 105
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 106
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    .line 107
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    .line 108
    aget-byte v4, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 109
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 110
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    .line 111
    aget-byte v6, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v8, [I

    .line 112
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    .line 113
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    .line 114
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    const/4 v4, 0x7

    add-int/lit8 v5, p2, 0x7

    .line 115
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/lit8 v4, v6, 0x1

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    .line 116
    aget-byte v4, v1, v5

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v8, [I

    .line 117
    aget-byte v4, v1, v5

    shr-int/2addr v4, v15

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    .line 118
    aget-byte v4, v1, v5

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    .line 119
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    const/4 v4, 0x7

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 120
    aget-byte v4, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 121
    aget-byte v6, v1, v5

    const/16 v9, 0x8

    shl-int/2addr v4, v9

    const v9, 0xff00

    and-int/2addr v4, v9

    and-int/2addr v3, v6

    or-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x8c

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 122
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    .line 123
    iget-boolean v3, v0, Lk0/yh;->j:Z

    if-nez v3, :cond_4b

    .line 124
    aget-byte v3, v1, v5

    aget-byte v1, v1, v2

    const/16 v2, 0x157c

    invoke-static {v3, v1, v8, v2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_20

    :pswitch_8
    const/16 v2, 0x76

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 125
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 126
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 127
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 128
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 129
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 130
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 131
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 132
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_10
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 133
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 134
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x4

    .line 135
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 136
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 137
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 138
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 139
    aget-byte v5, v1, v2

    and-int/2addr v5, v3

    add-int/lit8 v11, p2, 0x3

    .line 140
    aget-byte v14, v1, v11

    and-int/2addr v14, v3

    add-int/lit8 v16, p2, 0x4

    .line 141
    aget-byte v6, v1, v16

    and-int/2addr v6, v3

    add-int/lit8 v15, p2, 0x5

    .line 142
    aget-byte v4, v1, v15

    and-int/2addr v4, v3

    if-nez v5, :cond_11

    if-nez v14, :cond_11

    if-nez v6, :cond_11

    if-nez v4, :cond_11

    .line 143
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 144
    :cond_11
    sget v7, Ll0/c0;->g:I

    if-ne v7, v5, :cond_12

    sget v7, Ll0/c0;->h:I

    if-ne v7, v14, :cond_12

    sget v7, Ll0/c0;->i:I

    if-ne v7, v6, :cond_12

    sget v7, Ll0/c0;->j:I

    if-eq v7, v4, :cond_13

    .line 145
    :cond_12
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_13

    .line 146
    invoke-static {v8}, Lu0/d;->C2(I)V

    const/4 v7, 0x4

    .line 147
    sput v7, Ll0/c0;->k:I

    .line 148
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 149
    :cond_13
    :goto_7
    sput v5, Ll0/c0;->g:I

    .line 150
    sput v14, Ll0/c0;->h:I

    .line 151
    sput v6, Ll0/c0;->i:I

    .line 152
    sput v4, Ll0/c0;->j:I

    .line 153
    sget v4, Lk0/nt;->a:I

    if-eq v4, v12, :cond_15

    if-eq v4, v9, :cond_15

    if-eq v4, v10, :cond_15

    if-eq v4, v13, :cond_15

    const v5, 0xb501c6

    if-eq v4, v5, :cond_15

    const v5, 0x6d01b7

    if-eq v4, v5, :cond_15

    const v5, 0x7401b7

    if-eq v4, v5, :cond_15

    const v5, 0xac01b7

    if-eq v4, v5, :cond_15

    const v5, 0x6c01b7

    if-ne v4, v5, :cond_14

    goto :goto_8

    .line 154
    :cond_14
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 155
    aget-byte v2, v1, v11

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 156
    aget-byte v2, v1, v16

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 157
    aget-byte v1, v1, v15

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_20

    .line 158
    :cond_15
    :goto_8
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 159
    aget-byte v2, v1, v11

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 160
    aget-byte v2, v1, v16

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 161
    aget-byte v1, v1, v15

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_20

    .line 162
    :pswitch_b
    sget v2, Lk0/nt;->a:I

    if-eq v2, v12, :cond_17

    if-eq v2, v9, :cond_17

    if-eq v2, v10, :cond_17

    if-eq v2, v13, :cond_17

    const v4, 0xb501c6

    if-eq v2, v4, :cond_17

    const v4, 0x6d01b7

    if-eq v2, v4, :cond_17

    const v4, 0x7401b7

    if-eq v2, v4, :cond_17

    const v4, 0xac01b7

    if-eq v2, v4, :cond_17

    const v4, 0x6c01b7

    if-ne v2, v4, :cond_16

    goto :goto_9

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 163
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 164
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 165
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 166
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_20

    :cond_17
    :goto_9
    add-int/lit8 v2, p2, 0x2

    .line 167
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 168
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 169
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 170
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_20

    .line 171
    :pswitch_c
    sget v2, Lk0/nt;->a:I

    const v4, 0x1501b7

    if-eq v2, v4, :cond_18

    const v4, 0x1b01b7

    if-eq v2, v4, :cond_18

    const v4, 0xee01b7

    if-eq v2, v4, :cond_18

    const v4, 0xef01b7

    if-eq v2, v4, :cond_18

    const v4, 0xf601c4

    if-eq v2, v4, :cond_18

    const v4, 0xf701c4    # 2.2684001E-38f

    if-eq v2, v4, :cond_18

    const v4, 0xf801c4

    if-eq v2, v4, :cond_18

    const v4, 0xf901c4

    if-eq v2, v4, :cond_18

    const v4, 0xfa01c4

    if-eq v2, v4, :cond_18

    const v4, 0xfb01c4

    if-eq v2, v4, :cond_18

    const v4, 0xb901c7

    if-eq v2, v4, :cond_18

    const v4, 0xba01c7

    if-eq v2, v4, :cond_18

    goto/16 :goto_20

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 172
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 173
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x4

    .line 174
    aget-byte v6, v1, v6

    add-int/lit8 v9, p2, 0x5

    .line 175
    aget-byte v9, v1, v9

    const/16 v10, 0x2a

    new-array v12, v8, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v8

    aput v13, v12, v7

    .line 176
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x2b

    new-array v12, v8, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    aput v2, v12, v7

    .line 177
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    if-eq v2, v8, :cond_1b

    if-eq v2, v5, :cond_1a

    if-eq v2, v11, :cond_19

    move v2, v7

    :goto_a
    move v4, v2

    goto :goto_b

    :cond_19
    move v2, v7

    move v4, v8

    goto :goto_b

    :cond_1a
    move v2, v8

    goto :goto_a

    :cond_1b
    move v4, v7

    move v2, v8

    :goto_b
    const/16 v5, 0x2e

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 178
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v5, v8, [I

    aput v4, v5, v7

    .line 179
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v8, [I

    and-int/lit8 v5, v6, 0xf

    aput v5, v4, v7

    .line 180
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v9, 0xff

    if-nez v2, :cond_1c

    new-array v2, v8, [I

    aput v14, v2, v7

    const/16 v4, 0x28

    .line 181
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1c
    const/16 v4, 0x28

    if-ne v2, v3, :cond_1d

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 182
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1d
    new-array v3, v8, [I

    aput v2, v3, v7

    .line 183
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v2, 0x58

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 184
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 185
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 186
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 187
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 188
    aget-byte v6, v1, v6

    add-int/lit8 v11, p2, 0x6

    .line 189
    aget-byte v11, v1, v11

    const/16 v13, 0xa

    new-array v10, v8, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v7

    .line 190
    invoke-static {v13, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xb

    new-array v13, v8, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v7

    .line 191
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xc

    new-array v13, v8, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v7

    .line 192
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x39

    new-array v13, v8, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v7

    .line 193
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v13, v8, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v7

    .line 194
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xe

    new-array v13, v8, [I

    shr-int/lit8 v17, v2, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v7

    .line 195
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x10

    new-array v13, v8, [I

    shr-int/lit8 v17, v2, 0x1

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v7

    .line 196
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x41

    new-array v13, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v13, v7

    .line 197
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    packed-switch v2, :pswitch_data_3

    move v2, v7

    :goto_d
    move v4, v2

    :goto_e
    move v10, v4

    goto :goto_f

    :pswitch_e
    move v2, v8

    goto :goto_d

    :pswitch_f
    move v10, v7

    move v2, v8

    move v4, v2

    goto :goto_f

    :pswitch_10
    move v4, v7

    move v10, v4

    move v2, v8

    goto :goto_f

    :pswitch_11
    move v4, v7

    move v2, v8

    move v10, v2

    goto :goto_f

    :pswitch_12
    move v2, v7

    move v4, v2

    move v10, v8

    goto :goto_f

    :pswitch_13
    move v2, v7

    move v4, v8

    goto :goto_e

    :pswitch_14
    move v2, v7

    move v10, v2

    move v4, v8

    :goto_f
    const/16 v13, 0x12

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 198
    invoke-static {v13, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 199
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    aput v10, v4, v7

    .line 200
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v5, 0xf

    const/16 v4, 0x8

    if-gt v2, v4, :cond_1e

    const/16 v4, 0x15

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 201
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :cond_1e
    const-string v2, "persist.fyt.reversetemp"

    .line 202
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v4, 0x1c

    if-nez v2, :cond_23

    and-int/lit16 v2, v6, 0xff

    if-nez v2, :cond_1f

    new-array v2, v8, [I

    aput v14, v2, v7

    const/16 v5, 0x1b

    .line 203
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_1f
    const/16 v5, 0x1b

    if-ne v2, v3, :cond_20

    new-array v2, v8, [I

    const/4 v6, -0x3

    aput v6, v2, v7

    .line 204
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_20
    new-array v6, v8, [I

    aput v2, v6, v7

    .line 205
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    :goto_10
    and-int/lit16 v2, v11, 0xff

    if-nez v2, :cond_21

    new-array v2, v8, [I

    aput v14, v2, v7

    .line 206
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_21
    if-ne v2, v3, :cond_22

    new-array v2, v8, [I

    const/4 v5, -0x3

    aput v5, v2, v7

    .line 207
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_22
    new-array v5, v8, [I

    aput v2, v5, v7

    .line 208
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_23
    and-int/lit16 v2, v6, 0xff

    if-nez v2, :cond_24

    new-array v2, v8, [I

    aput v14, v2, v7

    .line 209
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_24
    if-ne v2, v3, :cond_25

    new-array v2, v8, [I

    const/4 v5, -0x3

    aput v5, v2, v7

    .line 210
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_25
    new-array v5, v8, [I

    aput v2, v5, v7

    .line 211
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_11
    and-int/lit16 v2, v11, 0xff

    if-nez v2, :cond_26

    new-array v2, v8, [I

    aput v14, v2, v7

    const/16 v4, 0x1b

    .line 212
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_26
    const/16 v4, 0x1b

    if-ne v2, v3, :cond_27

    new-array v2, v8, [I

    const/4 v5, -0x3

    aput v5, v2, v7

    .line 213
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_27
    new-array v5, v8, [I

    aput v2, v5, v7

    .line 214
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_12
    add-int/lit8 v2, p2, 0x7

    .line 215
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_29

    if-nez v2, :cond_28

    goto :goto_13

    :cond_28
    mul-int/2addr v2, v15

    add-int/lit16 v2, v2, 0x258

    .line 216
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto :goto_14

    .line 217
    :cond_29
    :goto_13
    invoke-static {v7}, Lu0/d;->A3(I)V

    .line 218
    :goto_14
    sget v2, Lk0/nt;->a:I

    if-eq v2, v12, :cond_4b

    const v4, 0x8401c4

    if-eq v2, v4, :cond_4b

    const v4, 0x2701b7

    if-eq v2, v4, :cond_4b

    const v4, 0xb401c6

    if-eq v2, v4, :cond_4b

    const v4, 0xb501c6

    if-eq v2, v4, :cond_4b

    const v4, 0x6c01b7

    if-eq v2, v4, :cond_4b

    const v4, 0x6d01b7

    if-eq v2, v4, :cond_4b

    const v4, 0x7401b7

    if-eq v2, v4, :cond_4b

    const v4, 0xac01b7

    if-eq v2, v4, :cond_4b

    add-int/lit8 v2, p2, 0x8

    .line 219
    aget-byte v2, v1, v2

    const/16 v4, 0x1d

    new-array v5, v8, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v7

    .line 220
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x1e

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v7

    .line 221
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 222
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x1f

    new-array v5, v8, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v7

    .line 223
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x20

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v7

    .line 224
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 225
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x5d

    new-array v5, v8, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v7

    .line 226
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x5e

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v7

    .line 227
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 228
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const/16 v2, 0x5f

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    .line 229
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x60

    new-array v3, v8, [I

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    .line 230
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_15
    add-int/lit8 v2, p2, 0x2

    .line 231
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 232
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    if-ne v1, v8, :cond_2b

    packed-switch v2, :pswitch_data_4

    goto :goto_16

    :pswitch_16
    const-string v4, "persist.fyt.showduduair"

    .line 233
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2a

    const/16 v4, 0x3e

    .line 234
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 235
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto :goto_15

    :pswitch_17
    new-array v4, v15, [I

    .line 236
    fill-array-data v4, :array_0

    invoke-static {v4}, Lz/k;->s([I)V

    const-wide/16 v4, 0xc8

    .line 237
    invoke-static {v4, v5}, La/i;->a0(J)V

    new-array v4, v15, [I

    .line 238
    fill-array-data v4, :array_1

    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_15

    :pswitch_18
    new-array v4, v15, [I

    .line 239
    fill-array-data v4, :array_2

    invoke-static {v4}, Lz/k;->s([I)V

    const-wide/16 v4, 0xc8

    .line 240
    invoke-static {v4, v5}, La/i;->a0(J)V

    new-array v4, v15, [I

    .line 241
    fill-array-data v4, :array_3

    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2a
    :goto_15
    move v4, v8

    goto :goto_17

    :cond_2b
    :goto_16
    move v4, v7

    :goto_17
    if-nez v4, :cond_4b

    or-int/lit16 v2, v2, 0x80

    and-int/2addr v2, v3

    .line 242
    iput v2, v0, Lk0/yh;->e:I

    move v2, v7

    .line 243
    :goto_18
    iget-object v4, v0, Lk0/yh;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_2d

    .line 244
    iget v5, v0, Lk0/yh;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_2c

    if-eqz v5, :cond_2d

    .line 245
    iput v2, v0, Lk0/yh;->d:I

    goto :goto_19

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2d
    :goto_19
    if-eqz v1, :cond_2e

    .line 246
    array-length v1, v4

    if-ge v2, v1, :cond_4b

    .line 247
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    .line 248
    :cond_2e
    iget v1, v0, Lk0/yh;->d:I

    array-length v2, v4

    if-ge v1, v2, :cond_2f

    if-eq v1, v3, :cond_2f

    .line 249
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 250
    :cond_2f
    iput v3, v0, Lk0/yh;->d:I

    goto/16 :goto_20

    :pswitch_19
    add-int/lit8 v2, p2, 0x2

    .line 251
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 252
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 253
    iput v2, v0, Lk0/yh;->e:I

    move v2, v7

    .line 254
    :goto_1a
    iget-object v4, v0, Lk0/yh;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_31

    .line 255
    iget v5, v0, Lk0/yh;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_30

    if-eqz v5, :cond_31

    .line 256
    iput v2, v0, Lk0/yh;->d:I

    goto :goto_1b

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 257
    :cond_31
    :goto_1b
    iget v5, v0, Lk0/yh;->e:I

    const/16 v6, 0x12

    if-eq v5, v6, :cond_3c

    const/16 v6, 0x13

    if-eq v5, v6, :cond_3a

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_38

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_36

    const/16 v6, 0x20

    if-eq v5, v6, :cond_35

    const/16 v6, 0x21

    if-eq v5, v6, :cond_34

    and-int/2addr v1, v3

    if-ne v1, v8, :cond_32

    .line 258
    array-length v1, v4

    if-ge v2, v1, :cond_4b

    .line 259
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_32
    if-nez v1, :cond_4b

    .line 260
    iget v1, v0, Lk0/yh;->d:I

    array-length v2, v4

    if-ge v1, v2, :cond_33

    if-eq v1, v3, :cond_33

    .line 261
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 262
    :cond_33
    iput v3, v0, Lk0/yh;->d:I

    goto/16 :goto_20

    :cond_34
    if-ne v1, v8, :cond_4b

    .line 263
    invoke-virtual/range {p0 .. p0}, Lk0/yh;->F3()V

    goto/16 :goto_20

    :cond_35
    const-string v2, "persist.fyt.showduduair"

    .line 264
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 265
    sget v2, Lk0/nt;->a:I

    if-eq v2, v12, :cond_4b

    const v3, 0x8401c4

    if-eq v2, v3, :cond_4b

    const v3, 0x2701b7

    if-eq v2, v3, :cond_4b

    const v3, 0xb401c6

    if-eq v2, v3, :cond_4b

    const v3, 0xb501c6

    if-eq v2, v3, :cond_4b

    if-ne v1, v8, :cond_4b

    .line 266
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x80

    new-array v3, v8, [I

    aput v8, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_36
    move v2, v7

    :goto_1c
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_37

    const/16 v4, 0x1f

    .line 267
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_37
    const/16 v1, 0x1f

    .line 268
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_38
    move v2, v7

    :goto_1d
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_39

    const/16 v4, 0x1e

    .line 269
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_39
    const/16 v1, 0x1e

    .line 270
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_3a
    move v2, v7

    :goto_1e
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_3b

    const/16 v4, 0x8

    .line 271
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3b
    const/16 v4, 0x8

    .line 272
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_3c
    move v2, v7

    :goto_1f
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_3d

    const/4 v4, 0x7

    .line 273
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_3d
    const/4 v4, 0x7

    .line 274
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    .line 275
    :cond_3e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_3f
    add-int/lit8 v2, p2, 0x2

    .line 276
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v8, :cond_42

    if-eq v2, v11, :cond_41

    const/16 v4, 0x8

    if-eq v2, v4, :cond_40

    goto/16 :goto_20

    :cond_40
    add-int/lit8 v2, p2, 0x3

    .line 277
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 278
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 279
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 280
    iput-boolean v8, v0, Lk0/yh;->j:Z

    goto/16 :goto_20

    :cond_41
    add-int/lit8 v2, p2, 0x4

    .line 281
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 282
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 283
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v5, [I

    aput v8, v4, v7

    aput v1, v4, v8

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_42
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 284
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_43

    add-int/lit8 v2, p2, 0x3

    .line 285
    aget-byte v3, v1, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->b(III)V

    goto/16 :goto_20

    :cond_43
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x3

    .line 286
    aget-byte v4, v1, v3

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aget-byte v1, v1, v3

    shr-int/2addr v1, v2

    and-int/2addr v1, v8

    invoke-static {v4, v1, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_20

    :cond_44
    const/16 v2, 0x3f5

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 287
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 288
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    .line 289
    sget v2, Lk0/nt;->a:I

    const v3, 0xac01b7

    if-ne v2, v3, :cond_46

    if-eqz v1, :cond_45

    .line 290
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_20

    .line 291
    :cond_45
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_20

    .line 292
    :cond_46
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_4b

    if-eqz v1, :cond_47

    .line 293
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto :goto_20

    .line 294
    :cond_47
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_20

    .line 295
    :cond_48
    sget v2, Lk0/nt;->a:I

    const v4, 0x1501b7

    if-eq v2, v4, :cond_4b

    const v4, 0x1b01b7

    if-eq v2, v4, :cond_4b

    const v4, 0xee01b7

    if-eq v2, v4, :cond_4b

    const v4, 0xef01b7

    if-eq v2, v4, :cond_4b

    const v4, 0xf601c4

    if-eq v2, v4, :cond_4b

    const v4, 0xf701c4    # 2.2684001E-38f

    if-eq v2, v4, :cond_4b

    const v4, 0xf801c4

    if-eq v2, v4, :cond_4b

    const v4, 0xf901c4

    if-eq v2, v4, :cond_4b

    const v4, 0xfa01c4

    if-eq v2, v4, :cond_4b

    const v4, 0xfb01c4

    if-eq v2, v4, :cond_4b

    const v4, 0xb901c7

    if-eq v2, v4, :cond_4b

    const v4, 0xba01c7

    if-ne v2, v4, :cond_49

    goto :goto_20

    :cond_49
    add-int/lit8 v2, p2, 0x2

    .line 296
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    .line 297
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_4b

    if-eqz v1, :cond_4a

    .line 298
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 299
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_20

    .line 300
    :cond_4a
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 301
    invoke-static {}, Lk0/qt;->f()V

    :cond_4b
    :goto_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_19
        :pswitch_15
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x37
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x1d
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x1d
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x1c
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x1c
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/yh;->G:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/yh;->F:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/yh;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lk0/yh;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yh;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/yh;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/yh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/yh;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/yh;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/yh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/yh;->l:Ljava/lang/Runnable;

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

    move-object/from16 v2, p2

    const/16 v4, 0xe3

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_15

    const/4 v12, 0x6

    if-eq v1, v10, :cond_14

    if-eq v1, v8, :cond_13

    const v13, 0xb501c6

    const v14, 0xb401c6

    const v15, 0x2701b7

    const v3, 0x8401c4

    const v11, 0x2601b7

    if-eq v1, v7, :cond_10

    if-eq v1, v6, :cond_d

    if-eq v1, v5, :cond_c

    const/16 v5, 0x3ed

    if-eq v1, v5, :cond_5

    const/16 v3, 0x405

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch_x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\\\\\\touch_y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "touch_state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v10, :cond_16

    .line 4
    aget v1, v2, v10

    .line 5
    aget v3, v2, v8

    .line 6
    aget v2, v2, v9

    if-nez v2, :cond_16

    .line 7
    invoke-static {}, La/f;->w()I

    move-result v2

    invoke-static {}, La/f;->w()I

    move-result v4

    mul-int/lit8 v4, v4, 0x46

    div-int/lit16 v4, v4, 0x400

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_1

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0x46

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_1

    new-array v1, v12, [I

    .line 8
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 9
    :cond_1
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0x168

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_2

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x96

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_2

    new-array v1, v12, [I

    .line 10
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 11
    :cond_2
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_3

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x1c2

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_3

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0xc8

    div-int/lit16 v2, v2, 0x258

    if-le v3, v2, :cond_3

    new-array v1, v12, [I

    .line 12
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 13
    :cond_3
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0x1a4

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_4

    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0xdc

    div-int/lit16 v2, v2, 0x400

    if-le v1, v2, :cond_4

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x1c2

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_4

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0xc8

    div-int/lit16 v2, v2, 0x258

    if-le v3, v2, :cond_4

    new-array v1, v12, [I

    .line 14
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 15
    :cond_4
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0x104

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_16

    invoke-static {}, La/f;->i()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1e0

    div-int/lit16 v1, v1, 0x258

    if-le v3, v1, :cond_16

    new-array v1, v12, [I

    .line 16
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 17
    :cond_5
    sget v1, Lk0/nt;->a:I

    const/16 v5, 0xa

    if-eq v1, v11, :cond_b

    if-eq v1, v3, :cond_b

    if-eq v1, v15, :cond_b

    if-eq v1, v14, :cond_b

    if-eq v1, v13, :cond_b

    const v3, 0xac01b7

    if-eq v1, v3, :cond_b

    const v3, 0x6d01b7

    if-eq v1, v3, :cond_b

    const v3, 0x800f4

    if-ne v1, v3, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FinalCanbus.C_CAMERA_MODE == "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v2, v9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 19
    aget v1, v2, v9

    if-nez v1, :cond_7

    move v1, v10

    goto :goto_0

    .line 20
    :cond_7
    aget v1, v2, v9

    if-ne v1, v10, :cond_8

    move v1, v8

    goto :goto_0

    .line 21
    :cond_8
    aget v1, v2, v9

    if-ne v1, v8, :cond_9

    const/4 v1, 0x7

    goto :goto_0

    .line 22
    :cond_9
    aget v1, v2, v9

    if-ne v1, v7, :cond_a

    const/16 v1, 0x8

    goto :goto_0

    :cond_a
    move v1, v9

    :goto_0
    new-array v2, v12, [I

    aput v4, v2, v9

    const/16 v3, 0x83

    aput v3, v2, v10

    aput v7, v2, v8

    aput v5, v2, v7

    int-to-byte v1, v1

    aput v1, v2, v6

    const/16 v1, 0xff

    const/4 v3, 0x5

    aput v1, v2, v3

    .line 23
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_b
    :goto_1
    new-array v1, v12, [I

    aput v4, v1, v9

    const/16 v3, 0x83

    aput v3, v1, v10

    aput v7, v1, v8

    aput v5, v1, v7

    .line 24
    aget v2, v2, v9

    add-int/2addr v2, v10

    aput v2, v1, v6

    const/4 v3, 0x5

    aput v9, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_c
    move v3, v5

    if-eqz v2, :cond_16

    .line 25
    array-length v1, v2

    if-lt v1, v8, :cond_16

    new-array v1, v3, [I

    aput v4, v1, v9

    const/16 v3, 0x90

    aput v3, v1, v10

    aput v8, v1, v8

    .line 26
    aget v3, v2, v9

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :cond_d
    if-eqz v2, :cond_16

    .line 27
    array-length v1, v2

    if-lt v1, v8, :cond_16

    .line 28
    sget v1, Lk0/nt;->a:I

    const v3, 0xb901c7

    if-eq v1, v3, :cond_f

    const v3, 0xba01c7

    if-eq v1, v3, :cond_f

    const v3, 0xf901c4

    if-ne v1, v3, :cond_e

    goto :goto_2

    :cond_e
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v4, v1, v9

    const/16 v3, 0x86

    aput v3, v1, v10

    aput v8, v1, v8

    .line 29
    aget v3, v2, v9

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 30
    :cond_f
    :goto_2
    aget v1, v2, v9

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 31
    :pswitch_0
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->K3(I)V

    goto/16 :goto_4

    .line 32
    :pswitch_1
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->L3(I)V

    goto/16 :goto_4

    .line 33
    :pswitch_2
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->I3(I)V

    goto/16 :goto_4

    .line 34
    :pswitch_3
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->G3(I)V

    goto/16 :goto_4

    .line 35
    :pswitch_4
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->H3(I)V

    goto/16 :goto_4

    .line 36
    :pswitch_5
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->J3(I)V

    goto/16 :goto_4

    .line 37
    :pswitch_6
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->M3(I)V

    goto/16 :goto_4

    .line 38
    :pswitch_7
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lk0/yh;->N3(I)V

    goto/16 :goto_4

    :cond_10
    if-eqz v2, :cond_16

    .line 39
    array-length v1, v2

    if-lt v1, v8, :cond_16

    .line 40
    sget v1, Lk0/nt;->a:I

    if-eq v1, v11, :cond_12

    if-eq v1, v3, :cond_12

    if-eq v1, v15, :cond_12

    if-eq v1, v14, :cond_12

    if-ne v1, v13, :cond_11

    goto :goto_3

    :cond_11
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v4, v1, v9

    const/16 v3, -0x7b

    aput v3, v1, v10

    aput v8, v1, v8

    .line 41
    aget v3, v2, v9

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_12
    :goto_3
    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v4, v1, v9

    const/16 v3, -0x7c

    aput v3, v1, v10

    aput v8, v1, v8

    .line 42
    aget v3, v2, v9

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_13
    if-eqz v2, :cond_16

    .line 43
    array-length v1, v2

    if-lez v1, :cond_16

    .line 44
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/yh;->O3(I)V

    goto :goto_4

    :cond_14
    if-eqz v2, :cond_16

    .line 45
    array-length v1, v2

    if-lt v1, v8, :cond_16

    new-array v1, v12, [I

    aput v4, v1, v9

    const/16 v3, 0x83

    aput v3, v1, v10

    aput v7, v1, v8

    .line 46
    aget v3, v2, v9

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    const/4 v3, 0x5

    aput v9, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_15
    move v3, v5

    if-eqz v2, :cond_16

    .line 47
    array-length v1, v2

    if-lt v1, v8, :cond_16

    new-array v1, v3, [I

    aput v4, v1, v9

    const/16 v3, -0x7c

    aput v3, v1, v10

    aput v8, v1, v8

    .line 48
    aget v3, v2, v9

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_16
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        0x83
        0x3
        0xa
        0x5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x4
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x2
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

    const/16 v5, -0x7c

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
