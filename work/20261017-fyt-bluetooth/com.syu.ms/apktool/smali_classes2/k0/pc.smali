.class public Lk0/pc;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static E:I = 0xff

.field public static F:I = 0xff

.field public static G:I = 0xff

.field public static H:Ljava/lang/Runnable;

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Lo1/g0;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public u:Ljava/lang/Runnable;

.field public v:B

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:F

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/pc$a;

    invoke-direct {v0}, Lk0/pc$a;-><init>()V

    sput-object v0, Lk0/pc;->H:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 2
    sput v0, Lk0/pc;->I:I

    .line 3
    sput v0, Lk0/pc;->J:I

    .line 4
    sput v0, Lk0/pc;->K:I

    .line 5
    sput v0, Lk0/pc;->L:I

    .line 6
    sput v0, Lk0/pc;->M:I

    .line 7
    sput v0, Lk0/pc;->N:I

    .line 8
    sput v0, Lk0/pc;->O:I

    .line 9
    sput v0, Lk0/pc;->P:I

    .line 10
    sput v0, Lk0/pc;->Q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/pc;->b:I

    const/16 v1, 0xff

    .line 3
    iput v1, p0, Lk0/pc;->f:I

    const/16 v2, 0x10

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v13, 0xb

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v13, 0xc

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v13, 0xd

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v13, 0xe

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v13, 0xf

    aput-object v4, v2, v13

    iput-object v2, p0, Lk0/pc;->g:[[I

    .line 5
    iput v0, p0, Lk0/pc;->h:I

    .line 6
    iput v0, p0, Lk0/pc;->i:I

    .line 7
    iput-boolean v0, p0, Lk0/pc;->j:Z

    .line 8
    new-instance v2, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x20

    invoke-direct {v2, v4, v13}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lk0/pc;->k:Lo1/g0;

    .line 9
    iput v5, p0, Lk0/pc;->l:I

    .line 10
    iput v3, p0, Lk0/pc;->m:I

    .line 11
    iput v6, p0, Lk0/pc;->n:I

    .line 12
    iput v7, p0, Lk0/pc;->o:I

    .line 13
    iput v8, p0, Lk0/pc;->p:I

    .line 14
    iput v9, p0, Lk0/pc;->q:I

    .line 15
    iput v10, p0, Lk0/pc;->r:I

    .line 16
    iput v11, p0, Lk0/pc;->s:I

    .line 17
    iput v12, p0, Lk0/pc;->t:I

    .line 18
    new-instance v2, Lk0/pc$b;

    invoke-direct {v2, p0}, Lk0/pc$b;-><init>(Lk0/pc;)V

    iput-object v2, p0, Lk0/pc;->u:Ljava/lang/Runnable;

    .line 19
    iput-byte v8, p0, Lk0/pc;->v:B

    .line 20
    new-instance v2, Lk0/pc$c;

    invoke-direct {v2, p0}, Lk0/pc$c;-><init>(Lk0/pc;)V

    iput-object v2, p0, Lk0/pc;->w:Ljava/lang/Runnable;

    .line 21
    new-instance v2, Lk0/pc$d;

    invoke-direct {v2, p0}, Lk0/pc$d;-><init>(Lk0/pc;)V

    iput-object v2, p0, Lk0/pc;->x:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 22
    iput v2, p0, Lk0/pc;->y:F

    .line 23
    iput v1, p0, Lk0/pc;->z:I

    .line 24
    iput v1, p0, Lk0/pc;->A:I

    .line 25
    new-instance v1, Lk0/pc$e;

    invoke-direct {v1, p0}, Lk0/pc$e;-><init>(Lk0/pc;)V

    iput-object v1, p0, Lk0/pc;->B:Ljava/lang/Runnable;

    .line 26
    new-instance v1, Lk0/pc$f;

    invoke-direct {v1, p0}, Lk0/pc$f;-><init>(Lk0/pc;)V

    iput-object v1, p0, Lk0/pc;->C:Ljava/lang/Runnable;

    .line 27
    iput v0, p0, Lk0/pc;->D:I

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
        0x20
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x21
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xfe
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xfd
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_c
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_e
    .array-data 4
        0xb1
        0x19
    .end array-data

    :array_f
    .array-data 4
        0xb2
        0x1d
    .end array-data
.end method

.method public static a3()V
    .locals 20

    const/16 v0, 0x27

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    aput v0, v1, v2

    const/16 v0, 0x95

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 2
    invoke-static {}, Lk0/pc;->b3()I

    move-result v0

    const/4 v4, 0x2

    aput v0, v1, v4

    .line 3
    sget v0, Lu0/b;->f:I

    const/16 v5, 0x41

    const/16 v6, 0x64

    const/16 v7, 0x14

    const/16 v8, 0x12

    const/16 v9, 0x10

    const/16 v10, 0xe

    const/16 v11, 0xc

    const/16 v12, 0x20

    const/4 v13, 0x6

    const/16 v14, 0x8

    const/4 v15, 0x4

    const/16 v16, 0xa

    if-ne v0, v3, :cond_14

    .line 4
    invoke-static {}, Lk0/pc;->b3()I

    move-result v0

    aput v0, v1, v4

    .line 5
    sget v0, Lu0/b;->D:I

    const/16 v17, 0x18

    const/16 v18, 0x16

    const/16 v19, 0x4d

    if-eq v0, v3, :cond_a

    if-eq v0, v4, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    const/16 v2, 0x44

    if-eq v0, v15, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    if-eq v0, v14, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    aput v2, v1, v15

    const/16 v0, 0x56

    aput v0, v1, v13

    aput v2, v1, v14

    goto/16 :goto_6

    :cond_2
    aput v19, v1, v15

    const/16 v0, 0x50

    aput v0, v1, v13

    const/16 v0, 0x34

    aput v0, v1, v14

    aput v12, v1, v16

    aput v12, v1, v11

    .line 6
    sget v0, Lu0/b;->t3:I

    div-int/lit8 v2, v0, 0x3c

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    .line 7
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    const/16 v2, 0x3a

    aput v2, v1, v8

    .line 8
    rem-int/lit8 v2, v0, 0x3c

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v7

    .line 9
    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v18

    aput v12, v1, v17

    goto/16 :goto_6

    :cond_3
    aput v19, v1, v15

    const/16 v0, 0x50

    aput v0, v1, v13

    const/16 v0, 0x33

    aput v0, v1, v14

    aput v12, v1, v16

    aput v12, v1, v11

    .line 10
    sget v0, Lu0/b;->t3:I

    div-int/lit8 v2, v0, 0x3c

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    .line 11
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    const/16 v2, 0x3a

    aput v2, v1, v8

    .line 12
    rem-int/lit8 v2, v0, 0x3c

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v7

    .line 13
    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v18

    aput v12, v1, v17

    goto/16 :goto_6

    :cond_4
    aput v5, v1, v15

    const/16 v0, 0x55

    aput v0, v1, v13

    const/16 v0, 0x58

    aput v0, v1, v14

    goto/16 :goto_6

    .line 14
    :cond_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v3, :cond_6

    aput v2, v1, v15

    const/16 v0, 0x56

    aput v0, v1, v13

    aput v2, v1, v14

    goto :goto_1

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x53

    aput v0, v1, v15

    aput v2, v1, v13

    aput v12, v1, v14

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    const/16 v0, 0x55

    aput v0, v1, v15

    const/16 v0, 0x53

    aput v0, v1, v13

    const/16 v0, 0x42

    aput v0, v1, v14

    :cond_8
    :goto_1
    aput v12, v1, v16

    .line 15
    sget v0, Lo0/e;->r:I

    div-int/lit8 v2, v0, 0x3c

    div-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 16
    div-int/lit8 v2, v0, 0x3c

    div-int/lit8 v2, v2, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    .line 17
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    const/16 v2, 0x3a

    aput v2, v1, v8

    .line 18
    rem-int/lit8 v2, v0, 0x3c

    div-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v7

    .line 19
    rem-int/lit8 v2, v0, 0x3c

    div-int/lit8 v2, v2, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v18

    .line 20
    rem-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v17

    goto/16 :goto_6

    :cond_9
    const/16 v0, 0x42

    aput v0, v1, v15

    aput v12, v1, v13

    const/16 v0, 0x54

    aput v0, v1, v14

    goto/16 :goto_6

    .line 21
    :cond_a
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v6, v0, v2

    if-nez v6, :cond_b

    const/16 v5, 0x46

    aput v5, v1, v15

    aput v19, v1, v13

    const/16 v5, 0x31

    aput v5, v1, v14

    goto :goto_2

    :cond_b
    sub-int v6, v0, v2

    if-ne v3, v6, :cond_c

    const/16 v5, 0x46

    aput v5, v1, v15

    aput v19, v1, v13

    const/16 v5, 0x32

    aput v5, v1, v14

    goto :goto_2

    :cond_c
    sub-int v6, v0, v2

    if-ne v4, v6, :cond_d

    const/16 v5, 0x46

    aput v5, v1, v15

    aput v19, v1, v13

    const/16 v5, 0x33

    aput v5, v1, v14

    goto :goto_2

    :cond_d
    add-int/lit8 v6, v0, 0x0

    if-nez v6, :cond_e

    aput v5, v1, v15

    aput v19, v1, v13

    const/16 v5, 0x31

    aput v5, v1, v14

    goto :goto_2

    :cond_e
    add-int/lit8 v6, v0, 0x0

    if-ne v3, v6, :cond_f

    aput v5, v1, v15

    aput v19, v1, v13

    const/16 v5, 0x32

    aput v5, v1, v14

    :cond_f
    :goto_2
    aput v12, v1, v16

    sub-int v5, v0, v2

    if-eqz v5, :cond_12

    sub-int v5, v0, v2

    if-eq v3, v5, :cond_12

    sub-int/2addr v0, v2

    if-ne v4, v0, :cond_10

    goto :goto_4

    .line 22
    :cond_10
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x3e8

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_11

    aput v12, v1, v11

    goto :goto_3

    .line 23
    :cond_11
    div-int/lit16 v2, v0, 0x3e8

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 24
    :goto_3
    div-int/lit8 v2, v0, 0x64

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    .line 25
    div-int/lit8 v2, v0, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    .line 26
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v8

    const/16 v0, 0x4b

    aput v0, v1, v7

    const/16 v0, 0x68

    aput v0, v1, v18

    const/16 v0, 0x7a

    aput v0, v1, v17

    goto :goto_6

    .line 27
    :cond_12
    :goto_4
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x2710

    if-nez v2, :cond_13

    aput v12, v1, v11

    goto :goto_5

    .line 28
    :cond_13
    div-int/lit16 v2, v0, 0x2710

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v11

    .line 29
    :goto_5
    div-int/lit16 v2, v0, 0x3e8

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    .line 30
    div-int/lit8 v2, v0, 0x64

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    const/16 v2, 0x2e

    aput v2, v1, v8

    .line 31
    div-int/lit8 v2, v0, 0xa

    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v7

    .line 32
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v18

    aput v19, v1, v17

    const/16 v0, 0x1a

    const/16 v2, 0x68

    aput v2, v1, v0

    const/16 v0, 0x1c

    const/16 v2, 0x7a

    aput v2, v1, v0

    goto :goto_6

    .line 33
    :cond_14
    invoke-static {}, Lk0/pc;->b3()I

    move-result v0

    aput v0, v1, v4

    aput v5, v1, v15

    const/16 v0, 0x75

    aput v0, v1, v13

    aput v6, v1, v14

    const/16 v0, 0x69

    aput v0, v1, v16

    const/16 v0, 0x6f

    aput v0, v1, v11

    aput v12, v1, v10

    const/16 v0, 0x4f

    aput v0, v1, v9

    const/16 v0, 0x66

    aput v0, v1, v8

    aput v0, v1, v7

    :goto_6
    const/16 v0, 0x28

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0x27

    :goto_7
    if-ge v3, v2, :cond_15

    add-int/lit8 v4, v3, 0x1

    .line 34
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v0, v4

    move v3, v4

    goto :goto_7

    .line 35
    :cond_15
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()I
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/16 v3, 0xff

    const/4 v4, 0x1

    const/16 v5, 0xd

    const/4 v6, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v2, v3

    goto :goto_1

    .line 2
    :pswitch_1
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    const/16 v2, 0xe

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xa

    goto :goto_1

    .line 3
    :pswitch_3
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v2, v0, v2

    if-gt v2, v1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v6

    if-gt v0, v4, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_1

    :pswitch_4
    const/16 v2, 0xc

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v5

    .line 4
    :cond_5
    :goto_1
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v6, v2

    :goto_2
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static c3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public static e3(I)I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_4

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method public static f3(I)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :cond_2
    :goto_0
    return v1
.end method

.method public static g3(I)I
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static h3(I)V
    .locals 3

    const-string v0, "persist.fyt.temperature"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    sget v1, Lk0/pc;->E:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0x5

    add-int/lit16 p0, p0, 0x258

    goto :goto_1

    :cond_1
    :goto_0
    mul-int/lit8 p0, p0, 0x9

    add-int/lit16 p0, p0, 0x258

    const/high16 v0, 0x10000000

    or-int/2addr p0, v0

    and-int/lit8 p0, p0, -0x1

    .line 3
    :goto_1
    invoke-static {p0}, Lu0/d;->B3(I)V

    return-void
.end method

.method public static i3(II)V
    .locals 4

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/16 v0, 0xe3

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    const/4 v2, 0x3

    aput v2, p1, v0

    const/4 v0, 0x2

    const/16 v3, 0xaf

    aput v3, p1, v0

    aput p0, p1, v2

    const/4 p0, 0x4

    aput v1, p1, p0

    const/4 p0, 0x5

    aput v1, p1, p0

    .line 1
    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public static synthetic k3(Lk0/pc;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pc;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic l3(Lk0/pc;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pc;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic m3(Lk0/pc;IIIIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p10}, Lk0/pc;->j3(IIIIIIIIII)V

    return-void
.end method

.method public static synthetic n3(Lk0/pc;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/pc;->y:F

    return p0
.end method

.method public static synthetic o3(Lk0/pc;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/pc;->y:F

    return p1
.end method

.method public static synthetic p3(Lk0/pc;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/pc;->y:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/pc;->y:F

    return v0
.end method

.method public static synthetic q3(Lk0/pc;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pc;->A:I

    return p0
.end method

.method public static synthetic r3(Lk0/pc;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pc;->A:I

    return p1
.end method

.method public static synthetic s3(Lk0/pc;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pc;->z:I

    return p0
.end method

.method public static synthetic t3(Lk0/pc;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pc;->z:I

    return p1
.end method


# virtual methods
.method public K2()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

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
    invoke-virtual {p0, p1}, Lk0/pc;->d3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v3}, Lk0/pc;->d3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v4}, Lk0/pc;->d3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xe

    .line 8
    invoke-virtual {p0, p1}, Lk0/pc;->d3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v5}, Lk0/pc;->d3(I)V

    goto/16 :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v2}, Lk0/pc;->d3(I)V

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
    invoke-virtual {p0, v1}, Lk0/pc;->d3(I)V

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
    invoke-virtual {p0, v1}, Lk0/pc;->d3(I)V

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
    invoke-virtual {p0, v0}, Lk0/pc;->d3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lk0/pc;->d3(I)V

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
    invoke-virtual {p0, v0}, Lk0/pc;->d3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lk0/pc;->d3(I)V

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
    invoke-virtual {p0, v0}, Lk0/pc;->d3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_a

    .line 32
    invoke-virtual {p0, v0}, Lk0/pc;->d3(I)V

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
    invoke-virtual {p0, v1}, Lk0/pc;->d3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_a

    .line 37
    invoke-virtual {p0, v1}, Lk0/pc;->d3(I)V

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
    invoke-virtual {p0, v6}, Lk0/pc;->d3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_a

    .line 42
    invoke-virtual {p0, v6}, Lk0/pc;->d3(I)V

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
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/pc;->B:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pc;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lk0/pc;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lk0/pc;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Lk0/pc;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Lk0/pc;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lk0/mt;->f:I

    .line 11
    iput v1, v0, Lk0/mt;->i:I

    .line 12
    iput v1, v0, Lk0/mt;->g:I

    .line 13
    iput v1, v0, Lk0/mt;->b:I

    .line 14
    iput v1, v0, Lk0/mt;->c:I

    .line 15
    iput v1, v0, Lk0/mt;->d:I

    .line 16
    iput v1, v0, Lk0/mt;->l:I

    .line 17
    iput v2, v0, Lk0/mt;->o:I

    .line 18
    sget v3, Lk0/nt;->c:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    const/16 v4, 0x16

    if-eq v3, v4, :cond_0

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    .line 19
    iput v2, v0, Lk0/mt;->f:I

    .line 20
    iput v2, v0, Lk0/mt;->g:I

    .line 21
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 22
    :cond_0
    iput v2, v0, Lk0/mt;->l:I

    .line 23
    iput v2, v0, Lk0/mt;->f:I

    .line 24
    iput v2, v0, Lk0/mt;->g:I

    .line 25
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lk0/pc;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->f:I

    .line 28
    iput v2, v0, Lk0/mt;->g:I

    .line 29
    iput v2, v0, Lk0/mt;->i:I

    .line 30
    :cond_2
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, v0, Lk0/mt;->m:[I

    .line 31
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 32
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 33
    invoke-static {}, La/f;->w()I

    move-result v0

    const/16 v1, 0x438

    if-ne v0, v1, :cond_3

    .line 34
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_3
    return-void

    nop

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
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v5, 0x11

    const v6, 0xffff

    const/16 v7, 0xc

    const v11, 0xff00

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x4

    const/4 v4, 0x3

    const/16 v8, 0x8

    const/16 v10, 0xff

    const/4 v3, 0x0

    const/4 v9, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_13

    :sswitch_0
    const/16 v2, 0xc4

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 2
    aget-byte v6, v1, v6

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    add-int/lit8 v7, p2, 0xc

    aget-byte v7, v1, v7

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 3
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    add-int/lit8 v10, p2, 0xd

    aget-byte v11, v1, v10

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe2

    new-array v5, v9, [I

    .line 4
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v13

    and-int/2addr v11, v4

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v5, v9, [I

    .line 5
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v4

    and-int/2addr v11, v4

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v5, v9, [I

    .line 6
    aget-byte v7, v1, v6

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v14

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xea

    new-array v5, v9, [I

    .line 7
    aget-byte v6, v1, v6

    shr-int/2addr v6, v4

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    aget-byte v7, v1, v10

    shr-int/2addr v7, v9

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 8
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    add-int/lit8 v10, p2, 0xe

    aget-byte v11, v1, v10

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v5, v9, [I

    .line 9
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v12

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v5, v9, [I

    .line 10
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v13

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xeb

    new-array v5, v9, [I

    .line 11
    aget-byte v7, v1, v6

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xec

    new-array v5, v9, [I

    .line 12
    aget-byte v6, v1, v6

    shr-int/2addr v6, v4

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    aget-byte v7, v1, v10

    shr-int/2addr v7, v4

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 13
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    add-int/lit8 v10, p2, 0xf

    aget-byte v11, v1, v10

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v5, v9, [I

    .line 14
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v12

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v5, v9, [I

    .line 15
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v13

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v5, v9, [I

    .line 16
    aget-byte v7, v1, v6

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v5, v9, [I

    .line 17
    aget-byte v7, v1, v6

    shr-int/2addr v7, v4

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v4

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v5, v9, [I

    .line 18
    aget-byte v7, v1, v6

    shr-int/2addr v7, v14

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v14

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v5, v9, [I

    .line 19
    aget-byte v6, v1, v6

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    aget-byte v7, v1, v10

    shr-int/2addr v7, v9

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 20
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v4

    shl-int/2addr v7, v8

    add-int/lit8 v10, p2, 0x10

    aget-byte v11, v1, v10

    shr-int/2addr v11, v12

    and-int/2addr v11, v4

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd0

    new-array v5, v9, [I

    .line 21
    aget-byte v6, v1, v6

    shr-int/2addr v6, v15

    and-int/2addr v6, v4

    shl-int/2addr v6, v8

    aget-byte v7, v1, v10

    shr-int/2addr v7, v15

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd1

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x7

    .line 22
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    add-int/lit8 v10, p2, 0x11

    aget-byte v11, v1, v10

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v5, v9, [I

    .line 23
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    aget-byte v11, v1, v10

    shr-int/2addr v11, v12

    and-int/2addr v11, v9

    or-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v5, v9, [I

    .line 24
    aget-byte v6, v1, v6

    shr-int/2addr v6, v13

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    aget-byte v7, v1, v10

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xed

    new-array v5, v9, [I

    .line 25
    aget-byte v6, v1, v10

    shr-int/2addr v6, v15

    and-int/2addr v6, v9

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xee

    new-array v5, v9, [I

    .line 26
    aget-byte v6, v1, v10

    shr-int/2addr v6, v4

    and-int/2addr v6, v9

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xef

    new-array v5, v9, [I

    .line 27
    aget-byte v6, v1, v10

    shr-int/2addr v6, v14

    and-int/2addr v6, v9

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf0

    new-array v5, v9, [I

    .line 28
    aget-byte v6, v1, v10

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf1

    new-array v5, v9, [I

    .line 29
    aget-byte v6, v1, v10

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf2

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x12

    .line 30
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf3

    new-array v5, v9, [I

    .line 31
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf4

    new-array v5, v9, [I

    .line 32
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf5

    new-array v5, v9, [I

    .line 33
    aget-byte v7, v1, v6

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf6

    new-array v5, v9, [I

    .line 34
    aget-byte v7, v1, v6

    shr-int/lit8 v4, v7, 0x3

    and-int/2addr v4, v9

    aput v4, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf7

    new-array v4, v9, [I

    .line 35
    aget-byte v5, v1, v6

    shr-int/2addr v5, v14

    and-int/2addr v5, v9

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v4, v9, [I

    .line 36
    aget-byte v1, v1, v6

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 37
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 38
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x4

    .line 39
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x5

    .line 40
    aget-byte v1, v1, v7

    const/16 v7, 0x9e

    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v5, 0x4

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    aput v11, v10, v3

    .line 41
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb2

    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v5, 0x6

    and-int/2addr v12, v4

    or-int/2addr v12, v11

    aput v12, v10, v3

    .line 42
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb3

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/lit8 v14, v5, 0x5

    and-int/2addr v14, v9

    or-int/2addr v12, v14

    aput v12, v10, v3

    .line 43
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x9f

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/lit8 v14, v6, 0x6

    and-int/2addr v14, v4

    or-int/2addr v12, v14

    aput v12, v10, v3

    .line 44
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x72

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/lit8 v14, v6, 0x4

    and-int/2addr v14, v4

    or-int/2addr v12, v14

    aput v12, v10, v3

    .line 45
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x73

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x1

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/lit8 v14, v6, 0x2

    and-int/2addr v14, v4

    or-int/2addr v12, v14

    aput v12, v10, v3

    .line 46
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x74

    new-array v10, v9, [I

    shr-int/lit8 v12, v2, 0x0

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/2addr v6, v3

    and-int/2addr v4, v6

    or-int/2addr v4, v12

    aput v4, v10, v3

    .line 47
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x8b

    new-array v6, v9, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v9

    shl-int/2addr v2, v8

    shr-int/lit8 v7, v1, 0x5

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v2, v7

    aput v2, v6, v3

    .line 48
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v9, [I

    shr-int/lit8 v6, v5, 0x3

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/lit8 v7, v1, 0x4

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v4, v3

    .line 49
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v9, [I

    shr-int/lit8 v6, v5, 0x2

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/lit8 v7, v1, 0x3

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v4, v3

    .line 50
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v4, v9, [I

    shr-int/lit8 v6, v1, 0x2

    and-int/2addr v6, v9

    or-int/2addr v6, v11

    aput v6, v4, v3

    .line 51
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v9, [I

    shr-int/lit8 v6, v5, 0x1

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/lit8 v7, v1, 0x1

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v4, v3

    .line 52
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v9, [I

    shr-int/2addr v5, v3

    and-int/2addr v5, v9

    shl-int/2addr v5, v8

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    or-int/2addr v1, v5

    aput v1, v4, v3

    .line 53
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 55
    aget-byte v1, v1, v5

    const/16 v5, 0xda

    new-array v6, v9, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v9

    aput v7, v6, v3

    .line 56
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xa3

    new-array v6, v9, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    shr-int/lit8 v10, v1, 0x7

    and-int/2addr v10, v9

    or-int/2addr v7, v10

    aput v7, v6, v3

    .line 57
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x9d

    new-array v6, v9, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    shr-int/lit8 v10, v1, 0x5

    and-int/2addr v4, v10

    or-int/2addr v4, v7

    aput v4, v6, v3

    .line 58
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7e

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/lit8 v7, v1, 0x4

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    .line 59
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7f

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/lit8 v7, v1, 0x3

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    .line 60
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x80

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/lit8 v7, v1, 0x2

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    .line 61
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x81

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/lit8 v7, v1, 0x1

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v5, v3

    .line 62
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x82

    new-array v5, v9, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    shl-int/2addr v2, v8

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    or-int/2addr v1, v2

    aput v1, v5, v3

    .line 63
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_3
    const/16 v2, 0x110

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 64
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x111

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 65
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x112

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 66
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x113

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 67
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x114

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 68
    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 69
    :sswitch_4
    sget v2, Lk0/nt;->c:I

    if-ne v2, v5, :cond_3c

    const/16 v2, 0xd4

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 70
    aget-byte v13, v1, v5

    and-int/2addr v13, v10

    aput v13, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 71
    iget v2, v0, Lk0/pc;->D:I

    aget-byte v4, v1, v5

    shr-int/2addr v4, v12

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_0

    .line 72
    aget-byte v2, v1, v5

    shr-int/2addr v2, v12

    and-int/2addr v2, v9

    iput v2, v0, Lk0/pc;->D:I

    if-ne v2, v9, :cond_0

    .line 73
    invoke-virtual/range {p0 .. p0}, Lk0/pc;->u3()V

    :cond_0
    const/16 v2, 0xd5

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 74
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v12, p2, 0x9

    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    or-int/2addr v5, v12

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 75
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v12, p2, 0xa

    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    or-int/2addr v5, v12

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 76
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v12, p2, 0xb

    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    or-int/2addr v5, v12

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 77
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v7, p2, 0xc

    aget-byte v1, v1, v7

    and-int/2addr v1, v10

    or-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 79
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x4

    .line 80
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x5

    .line 81
    aget-byte v7, v1, v7

    add-int/lit8 v10, p2, 0x6

    .line 82
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x7

    .line 83
    aget-byte v1, v1, v11

    const/16 v11, 0xa5

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v7, 0x6

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 84
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xa6

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v7, 0x4

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 85
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xa7

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v7, 0x2

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 86
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xa8

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/2addr v7, v3

    and-int/2addr v7, v4

    or-int/2addr v7, v13

    aput v7, v12, v3

    .line 87
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xa9

    new-array v11, v9, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/lit8 v13, v10, 0x7

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    aput v12, v11, v3

    .line 88
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xaa

    new-array v11, v9, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/lit8 v13, v10, 0x6

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    aput v12, v11, v3

    .line 89
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xab

    new-array v11, v9, [I

    shr-int/lit8 v12, v2, 0x1

    and-int/2addr v12, v9

    shl-int/2addr v12, v8

    shr-int/lit8 v13, v10, 0x5

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    aput v12, v11, v3

    .line 90
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x10f

    new-array v11, v9, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    shl-int/2addr v2, v8

    shr-int/2addr v10, v15

    and-int/2addr v10, v9

    or-int/2addr v2, v10

    aput v2, v11, v3

    .line 91
    invoke-static {v7, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v7, v9, [I

    shr-int/lit8 v10, v5, 0x7

    and-int/2addr v10, v9

    shl-int/2addr v10, v8

    shr-int/lit8 v11, v1, 0x7

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    aput v10, v7, v3

    .line 92
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v7, v9, [I

    shr-int/lit8 v10, v5, 0x6

    and-int/2addr v10, v9

    shl-int/2addr v10, v8

    shr-int/lit8 v11, v1, 0x6

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    aput v10, v7, v3

    .line 93
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v7, v9, [I

    shr-int/lit8 v10, v5, 0x5

    and-int/2addr v10, v9

    shl-int/2addr v10, v8

    shr-int/lit8 v11, v1, 0x4

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    aput v10, v7, v3

    .line 94
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v7, v9, [I

    shr-int/lit8 v10, v5, 0x4

    and-int/2addr v10, v9

    shl-int/2addr v10, v8

    shr-int/lit8 v11, v1, 0x3

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    aput v10, v7, v3

    .line 95
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v7, v9, [I

    shr-int/lit8 v10, v5, 0x2

    and-int/2addr v10, v9

    shl-int/2addr v10, v8

    shr-int/lit8 v11, v1, 0x1

    and-int/2addr v4, v11

    or-int/2addr v4, v10

    aput v4, v7, v3

    .line 96
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe9

    new-array v4, v9, [I

    shr-int/lit8 v7, v5, 0x1

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    or-int/2addr v1, v7

    aput v1, v4, v3

    .line 97
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x107

    new-array v2, v9, [I

    shr-int/lit8 v4, v5, 0x0

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 98
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x108

    new-array v2, v9, [I

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 99
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x109

    new-array v2, v9, [I

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 100
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10a

    new-array v2, v9, [I

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 101
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10b

    new-array v2, v9, [I

    shr-int/lit8 v4, v6, 0x3

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 102
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10c

    new-array v2, v9, [I

    shr-int/lit8 v4, v6, 0x2

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 103
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10d

    new-array v2, v9, [I

    shr-int/lit8 v4, v6, 0x1

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 104
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10e

    new-array v2, v9, [I

    shr-int/lit8 v4, v6, 0x0

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 105
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 107
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x4

    .line 108
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x5

    .line 109
    aget-byte v7, v1, v7

    add-int/lit8 v10, p2, 0x6

    .line 110
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x7

    .line 111
    aget-byte v1, v1, v11

    const/16 v11, 0xdc

    new-array v12, v9, [I

    shr-int/lit8 v13, v5, 0x7

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v6, 0x5

    and-int/2addr v14, v9

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 112
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x62

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v7, 0x6

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 113
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x63

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v7, 0x4

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 114
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x64

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v7, 0x2

    and-int/2addr v14, v4

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 115
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x65

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v9

    shl-int/2addr v13, v8

    shr-int/lit8 v14, v7, 0x1

    and-int/2addr v14, v9

    or-int/2addr v13, v14

    aput v13, v12, v3

    .line 116
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x66

    new-array v12, v9, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    shl-int/2addr v2, v8

    shr-int/2addr v7, v3

    and-int/2addr v7, v9

    or-int/2addr v2, v7

    aput v2, v12, v3

    .line 117
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v7, v9, [I

    shr-int/lit8 v11, v5, 0x6

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v10, 0x7

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    aput v11, v7, v3

    .line 118
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v7, v9, [I

    shr-int/lit8 v11, v5, 0x5

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v10, 0x6

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    aput v11, v7, v3

    .line 119
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v7, v9, [I

    shr-int/lit8 v11, v5, 0x4

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v10, 0x5

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    aput v11, v7, v3

    .line 120
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v7, v9, [I

    shr-int/lit8 v11, v5, 0x3

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v10, 0x4

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    aput v11, v7, v3

    .line 121
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v7, v9, [I

    shr-int/lit8 v11, v5, 0x2

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v10, 0x3

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    aput v11, v7, v3

    .line 122
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v7, v9, [I

    shr-int/lit8 v11, v5, 0x1

    and-int/2addr v11, v9

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v10, 0x2

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    aput v11, v7, v3

    .line 123
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v7, v9, [I

    shr-int/2addr v5, v3

    and-int/2addr v5, v9

    shl-int/2addr v5, v8

    shr-int/2addr v10, v3

    and-int/2addr v10, v4

    or-int/2addr v5, v10

    aput v5, v7, v3

    .line 124
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v5, v9, [I

    shr-int/lit8 v7, v6, 0x4

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    shr-int/lit8 v10, v1, 0x6

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    aput v7, v5, v3

    .line 125
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v5, v9, [I

    shr-int/lit8 v7, v6, 0x3

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    shr-int/lit8 v10, v1, 0x5

    and-int/2addr v10, v9

    or-int/2addr v7, v10

    aput v7, v5, v3

    .line 126
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v5, v9, [I

    shr-int/lit8 v7, v6, 0x2

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    shr-int/lit8 v10, v1, 0x4

    and-int/2addr v10, v9

    or-int/2addr v7, v10

    aput v7, v5, v3

    .line 127
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v5, v9, [I

    shr-int/lit8 v7, v6, 0x1

    and-int/2addr v7, v9

    shl-int/2addr v7, v8

    shr-int/lit8 v10, v1, 0x2

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    aput v7, v5, v3

    .line 128
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v5, v9, [I

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    shl-int/2addr v6, v8

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v5, v3

    .line 129
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 130
    :sswitch_7
    sget v2, Lk0/nt;->c:I

    if-ne v2, v5, :cond_4

    add-int/lit8 v2, p2, 0x2

    .line 131
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 132
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 133
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 134
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 135
    aget-byte v4, v1, v2

    and-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x7

    .line 136
    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    .line 137
    aget-byte v7, v1, v5

    and-int/2addr v7, v10

    const/16 v8, 0x9

    add-int/lit8 v8, p2, 0x9

    .line 138
    aget-byte v11, v1, v8

    and-int/2addr v11, v10

    if-nez v4, :cond_1

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    if-nez v11, :cond_1

    .line 139
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 140
    :cond_1
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_2

    sget v3, Ll0/c0;->h:I

    if-ne v3, v6, :cond_2

    sget v3, Ll0/c0;->i:I

    if-ne v3, v7, :cond_2

    sget v3, Ll0/c0;->j:I

    if-eq v3, v11, :cond_3

    .line 141
    :cond_2
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_3

    .line 142
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 143
    sput v15, Ll0/c0;->k:I

    .line 144
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 145
    :cond_3
    :goto_0
    sput v4, Ll0/c0;->g:I

    .line 146
    sput v6, Ll0/c0;->h:I

    .line 147
    sput v7, Ll0/c0;->i:I

    .line 148
    sput v11, Ll0/c0;->j:I

    .line 149
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 150
    aget-byte v2, v1, v5

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 151
    aget-byte v2, v1, v5

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 152
    aget-byte v1, v1, v8

    and-int/2addr v1, v10

    invoke-static {v1}, Lk0/pc;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 153
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->f3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 154
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->g3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 155
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->g3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 156
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->f3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 157
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->f3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 158
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 159
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Lk0/pc;->e3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 160
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    invoke-static {v1}, Lk0/pc;->f3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :sswitch_8
    const/16 v2, 0xb4

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 161
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 162
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 163
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 164
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xd

    .line 165
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xe

    .line 166
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xf

    .line 167
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x10

    .line 168
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x15

    .line 169
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x16

    .line 170
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x17

    .line 171
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x18

    .line 172
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x19

    .line 173
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x1a

    .line 174
    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_9
    const/16 v2, 0x9c

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 175
    aget-byte v6, v1, v5

    shl-int/2addr v6, v8

    and-int/2addr v6, v11

    add-int/lit8 v7, p2, 0x5

    aget-byte v12, v1, v7

    and-int/2addr v12, v10

    or-int/2addr v6, v12

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v4, v9, [I

    .line 176
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    aget-byte v6, v1, v7

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 177
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x8

    .line 178
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xa

    .line 179
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xb

    .line 180
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xc

    .line 181
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0xd

    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0xe

    .line 182
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v4, v9, [I

    const/16 v5, 0xf

    add-int/lit8 v5, p2, 0xf

    .line 183
    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 184
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 185
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x4

    .line 186
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x6

    .line 187
    aget-byte v8, v1, v8

    add-int/lit8 v11, p2, 0x7

    .line 188
    aget-byte v11, v1, v11

    add-int/lit8 v15, p2, 0x8

    .line 189
    aget-byte v19, v1, v15

    add-int/lit8 v20, p2, 0x9

    .line 190
    aget-byte v21, v1, v20

    new-array v12, v9, [I

    shr-int/lit8 v22, v2, 0x6

    and-int/lit8 v22, v22, 0x1

    aput v22, v12, v3

    const/16 v13, 0xa

    .line 191
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x35

    new-array v13, v9, [I

    shr-int/lit8 v23, v2, 0x5

    and-int/lit8 v23, v23, 0x1

    aput v23, v13, v3

    .line 192
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x2a

    new-array v13, v9, [I

    shr-int/lit8 v23, v2, 0x4

    and-int/lit8 v23, v23, 0x1

    aput v23, v13, v3

    .line 193
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v12, v9, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v9

    aput v13, v12, v3

    const/16 v13, 0xd

    .line 194
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x3e

    new-array v13, v9, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v9

    aput v2, v13, v3

    .line 195
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v12, v5, 0x6

    and-int/2addr v12, v9

    aput v12, v2, v3

    const/16 v12, 0xb

    .line 196
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v12, v9, [I

    shr-int/lit8 v13, v5, 0x5

    and-int/2addr v13, v9

    aput v13, v12, v3

    .line 197
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v12, v5, 0x4

    and-int/2addr v12, v9

    aput v12, v2, v3

    .line 198
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v12, v9, [I

    shr-int/lit8 v13, v5, 0x1

    and-int/2addr v13, v9

    aput v13, v12, v3

    .line 199
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v12, v9, [I

    shr-int/2addr v5, v3

    and-int/2addr v5, v9

    aput v5, v12, v3

    .line 200
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v5, v9, [I

    shr-int/lit8 v12, v6, 0x7

    and-int/2addr v12, v9

    aput v12, v5, v3

    .line 201
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v5, v9, [I

    shr-int/lit8 v12, v6, 0x4

    and-int/2addr v12, v9

    aput v12, v5, v3

    .line 202
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v9

    aput v5, v2, v3

    const/16 v5, 0x10

    .line 203
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v5, v9, [I

    shr-int/lit8 v12, v6, 0x0

    and-int/2addr v12, v4

    aput v12, v5, v3

    .line 204
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v5, v9, [I

    shr-int/2addr v6, v14

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 205
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 206
    aget-byte v12, v1, v6

    shr-int/2addr v12, v3

    and-int/2addr v12, v4

    aput v12, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v5, v9, [I

    .line 207
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v4

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v8, 0xff

    if-eq v2, v9, :cond_a

    if-eq v2, v4, :cond_9

    const/4 v5, 0x5

    if-eq v2, v5, :cond_8

    const/4 v5, 0x6

    if-eq v2, v5, :cond_7

    const/16 v5, 0xb

    if-eq v2, v5, :cond_6

    if-eq v2, v7, :cond_5

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v12, v8

    move v13, v12

    move/from16 v16, v13

    :goto_1
    move/from16 v17, v16

    goto/16 :goto_2

    :cond_5
    move v5, v3

    move v7, v5

    move v8, v7

    move v12, v8

    move/from16 v16, v12

    move v6, v9

    move v13, v6

    move/from16 v17, v13

    goto/16 :goto_2

    :cond_6
    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v12, v8

    move/from16 v16, v12

    move/from16 v17, v16

    move v13, v9

    goto :goto_2

    :cond_7
    move v5, v3

    move v6, v5

    move v8, v6

    move v12, v8

    move v13, v12

    move/from16 v17, v13

    move v7, v9

    move/from16 v16, v7

    goto :goto_2

    :cond_8
    move v5, v3

    move v6, v5

    move v7, v6

    move v12, v7

    move v13, v12

    move v8, v9

    move/from16 v16, v8

    goto :goto_1

    :cond_9
    move v6, v3

    move v7, v6

    move v8, v7

    move v12, v8

    move v13, v12

    move/from16 v16, v13

    move v5, v9

    move/from16 v17, v5

    goto :goto_2

    :cond_a
    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v13, v8

    move/from16 v16, v13

    move/from16 v17, v16

    move v12, v9

    :goto_2
    const/16 v4, 0x4d

    new-array v14, v9, [I

    aput v2, v14, v3

    .line 208
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v9, [I

    aput v5, v4, v3

    .line 209
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v9, [I

    aput v6, v4, v3

    .line 210
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v9, [I

    aput v7, v4, v3

    .line 211
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v9, [I

    aput v8, v4, v3

    .line 212
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v4, v9, [I

    aput v12, v4, v3

    .line 213
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v9, [I

    aput v13, v4, v3

    .line 214
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v9, [I

    aput v16, v4, v3

    .line 215
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v9, [I

    aput v17, v4, v3

    .line 216
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v11, 0xff

    const/16 v4, 0x15

    new-array v5, v9, [I

    aput v2, v5, v3

    .line 217
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 218
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 219
    aget-byte v19, v1, v20

    .line 220
    aget-byte v21, v1, v15

    :cond_b
    move/from16 v2, v19

    move/from16 v4, v21

    and-int/2addr v2, v10

    const/16 v5, 0xfe

    if-eq v2, v5, :cond_d

    if-eq v2, v10, :cond_c

    const/16 v6, 0x1b

    new-array v7, v9, [I

    const/4 v8, 0x5

    mul-int/2addr v2, v8

    aput v2, v7, v3

    .line 221
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    const/16 v2, 0x1b

    new-array v6, v9, [I

    const/4 v7, -0x3

    aput v7, v6, v3

    .line 222
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    const/16 v2, 0x1b

    new-array v6, v9, [I

    const/4 v7, -0x2

    aput v7, v6, v3

    .line 223
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v2, v4, 0xff

    if-eq v2, v5, :cond_f

    if-eq v2, v10, :cond_e

    const/16 v4, 0x1c

    new-array v6, v9, [I

    mul-int/lit8 v7, v2, 0x5

    aput v7, v6, v3

    .line 224
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    const/16 v4, 0x1c

    new-array v6, v9, [I

    const/4 v7, -0x3

    aput v7, v6, v3

    .line 225
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    const/16 v4, 0x1c

    new-array v6, v9, [I

    const/4 v7, -0x2

    aput v7, v6, v3

    .line 226
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v4, p2, 0xa

    .line 227
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    if-eq v4, v9, :cond_12

    const/4 v6, 0x2

    if-eq v4, v6, :cond_11

    const/4 v6, 0x3

    if-eq v4, v6, :cond_10

    move v4, v3

    :goto_5
    move v6, v4

    goto :goto_6

    :cond_10
    move v4, v9

    goto :goto_5

    :cond_11
    move v6, v3

    move v4, v9

    goto :goto_6

    :cond_12
    move v4, v3

    move v6, v9

    :goto_6
    const/16 v7, 0x2e

    new-array v8, v9, [I

    aput v4, v8, v3

    .line 228
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2f

    new-array v7, v9, [I

    aput v6, v7, v3

    .line 229
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2c

    new-array v6, v9, [I

    add-int/lit8 v7, p2, 0xb

    .line 230
    aget-byte v7, v1, v7

    and-int/2addr v7, v10

    aput v7, v6, v3

    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v4, p2, 0xc

    .line 231
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    if-eq v4, v5, :cond_14

    if-eq v4, v10, :cond_13

    const/16 v4, 0x28

    new-array v5, v9, [I

    const/4 v6, 0x5

    mul-int/2addr v2, v6

    aput v2, v5, v3

    .line 232
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    const/16 v2, 0x28

    new-array v4, v9, [I

    const/4 v5, -0x3

    aput v5, v4, v3

    .line 233
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    const/16 v2, 0x28

    new-array v4, v9, [I

    const/4 v5, -0x2

    aput v5, v4, v3

    .line 234
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 235
    :goto_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0xd

    add-int/lit8 v2, p2, 0xd

    .line 236
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    iput v1, v0, Lk0/pc;->b:I

    .line 237
    invoke-static {v1}, Lk0/pc;->h3(I)V

    goto/16 :goto_13

    .line 238
    :sswitch_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 239
    aget-byte v4, v1, v2

    and-int/2addr v4, v10

    if-ne v4, v9, :cond_18

    .line 240
    sget v4, Lk0/pc;->F:I

    add-int/lit8 v5, p2, 0x3

    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    if-eq v4, v6, :cond_18

    .line 241
    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    if-ne v6, v10, :cond_15

    if-nez v4, :cond_15

    .line 242
    invoke-static {}, Lu0/d;->M1()V

    goto :goto_8

    .line 243
    :cond_15
    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    if-nez v6, :cond_16

    if-ne v4, v10, :cond_16

    .line 244
    invoke-static {}, Lu0/d;->O1()V

    goto :goto_8

    .line 245
    :cond_16
    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    if-ge v4, v6, :cond_17

    .line 246
    invoke-static {}, Lu0/d;->O1()V

    goto :goto_8

    .line 247
    :cond_17
    invoke-static {}, Lu0/d;->M1()V

    .line 248
    :goto_8
    aget-byte v4, v1, v5

    and-int/2addr v4, v10

    sput v4, Lk0/pc;->F:I

    .line 249
    :cond_18
    aget-byte v4, v1, v2

    and-int/2addr v4, v10

    const/4 v5, 0x2

    if-eq v4, v5, :cond_19

    aget-byte v4, v1, v2

    and-int/2addr v4, v10

    const/4 v5, 0x3

    if-eq v4, v5, :cond_19

    aget-byte v4, v1, v2

    and-int/2addr v4, v10

    if-eq v4, v15, :cond_19

    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3c

    .line 250
    :cond_19
    sget v2, Lk0/pc;->G:I

    const/4 v4, 0x3

    add-int/lit8 v5, p2, 0x3

    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    if-eq v2, v6, :cond_3c

    .line 251
    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    if-ne v6, v10, :cond_1b

    if-nez v2, :cond_1b

    .line 252
    sget v2, Lu0/b;->D:I

    const/16 v6, 0xd

    if-ne v2, v6, :cond_1a

    .line 253
    invoke-static {v4, v9}, Lk0/pc;->i3(II)V

    goto :goto_9

    .line 254
    :cond_1a
    invoke-static {v3}, Ll0/b0;->w(I)V

    goto :goto_9

    .line 255
    :cond_1b
    aget-byte v4, v1, v5

    and-int/2addr v4, v10

    if-nez v4, :cond_1d

    if-ne v2, v10, :cond_1d

    .line 256
    sget v2, Lu0/b;->D:I

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1c

    .line 257
    invoke-static {v15, v9}, Lk0/pc;->i3(II)V

    goto :goto_9

    .line 258
    :cond_1c
    invoke-static {v3}, Ll0/b0;->R(I)V

    goto :goto_9

    :cond_1d
    const/16 v4, 0xd

    .line 259
    aget-byte v6, v1, v5

    and-int/2addr v6, v10

    if-ge v2, v6, :cond_1f

    .line 260
    sget v2, Lu0/b;->D:I

    if-ne v2, v4, :cond_1e

    .line 261
    invoke-static {v15, v9}, Lk0/pc;->i3(II)V

    goto :goto_9

    .line 262
    :cond_1e
    invoke-static {v3}, Ll0/b0;->R(I)V

    goto :goto_9

    .line 263
    :cond_1f
    sget v2, Lu0/b;->D:I

    if-ne v2, v4, :cond_20

    const/4 v2, 0x3

    .line 264
    invoke-static {v2, v9}, Lk0/pc;->i3(II)V

    goto :goto_9

    .line 265
    :cond_20
    invoke-static {v3}, Ll0/b0;->w(I)V

    .line 266
    :goto_9
    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    sput v1, Lk0/pc;->G:I

    goto/16 :goto_13

    .line 267
    :sswitch_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 268
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lk0/pc;->e:I

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 269
    aget-byte v1, v1, v2

    move v2, v3

    .line 270
    :goto_a
    iget-object v4, v0, Lk0/pc;->g:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_22

    .line 271
    iget v5, v0, Lk0/pc;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v3

    if-ne v5, v6, :cond_21

    if-eqz v5, :cond_22

    .line 272
    iput v2, v0, Lk0/pc;->f:I

    goto :goto_b

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    :goto_b
    and-int/2addr v1, v10

    if-eqz v1, :cond_23

    .line 273
    array-length v1, v4

    if-ge v2, v1, :cond_3c

    .line 274
    aget-object v1, v4, v2

    aget v1, v1, v9

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 275
    :cond_23
    iget v1, v0, Lk0/pc;->f:I

    array-length v2, v4

    if-ge v1, v2, :cond_24

    if-eq v1, v10, :cond_24

    .line 276
    aget-object v1, v4, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 277
    :cond_24
    iput v10, v0, Lk0/pc;->f:I

    goto/16 :goto_13

    :sswitch_d
    const/16 v2, 0xf9

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 278
    aget-byte v5, v1, v5

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v9

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 279
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 280
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 281
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfd

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 282
    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 283
    :sswitch_e
    sget v2, Lk0/nt;->c:I

    if-ne v2, v5, :cond_3c

    const/4 v2, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 284
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v9

    .line 285
    aget-byte v6, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    shl-int/2addr v5, v2

    and-int/lit8 v2, v5, 0x8

    shl-int/lit8 v5, v6, 0x4

    const/16 v6, 0x10

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    .line 286
    sget v5, Lu0/b;->w:I

    shl-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v2, v5

    .line 287
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v6, 0x419

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/16 v8, 0xb

    aput v8, v7, v3

    aput v2, v7, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v6, v7, v2, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 288
    aget-byte v2, v1, v4

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v9

    aget-byte v3, v1, v4

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    and-int/2addr v3, v9

    aget-byte v1, v1, v4

    const/4 v4, 0x3

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    invoke-static {v2, v3, v1}, Ll0/c0;->N1(III)V

    goto/16 :goto_13

    :sswitch_f
    add-int/lit8 v2, p2, 0x4

    .line 289
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 290
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_25

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 291
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v3

    const/4 v4, 0x2

    .line 292
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_25
    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 293
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v9

    aput v4, v2, v3

    const/4 v4, 0x2

    .line 294
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v9

    aput v4, v2, v3

    const/4 v4, 0x3

    .line 295
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v9

    aput v4, v2, v3

    .line 296
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v9

    aput v4, v2, v3

    const/4 v4, 0x5

    .line 297
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    const/4 v4, 0x2

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    aput v1, v2, v3

    .line 298
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 299
    :sswitch_10
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " DataCustomer.sCustomerId  =====   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Ln0/j4;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 300
    sget v2, Ln0/j4;->b:I

    const/16 v4, 0xf

    if-eq v4, v2, :cond_26

    sget v2, Lk0/nt;->c:I

    if-ne v5, v2, :cond_2a

    .line 301
    :cond_26
    iget v2, v0, Lk0/pc;->h:I

    add-int/lit8 v4, p2, 0x2

    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v9

    if-eq v2, v5, :cond_2a

    .line 302
    aget-byte v2, v1, v4

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v9

    iput v2, v0, Lk0/pc;->h:I

    .line 303
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_2a

    if-eqz v2, :cond_28

    .line 304
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "com.syu.fourcamera2"

    .line 305
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 306
    iput-boolean v9, v0, Lk0/pc;->j:Z

    .line 307
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v4, 0x266

    invoke-virtual {v2, v4}, Lc/e;->c(I)Z

    .line 308
    :cond_27
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_d

    .line 309
    :cond_28
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 310
    invoke-static {}, Lk0/qt;->f()V

    .line 311
    iget-boolean v2, v0, Lk0/pc;->j:Z

    if-eqz v2, :cond_29

    const-string v2, "com.syu.fourcamera2"

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 312
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v4, 0x24f

    invoke-virtual {v2, v4}, Lc/e;->c(I)Z

    .line 313
    :cond_29
    iput-boolean v3, v0, Lk0/pc;->j:Z

    .line 314
    :cond_2a
    :goto_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x4

    .line 315
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x5

    .line 316
    aget-byte v4, v1, v4

    and-int/2addr v2, v10

    .line 317
    iput v2, v0, Lk0/pc;->d:I

    move v2, v3

    .line 318
    :goto_e
    iget-object v5, v0, Lk0/pc;->g:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_2c

    .line 319
    iget v6, v0, Lk0/pc;->d:I

    aget-object v7, v5, v2

    aget v7, v7, v3

    if-ne v6, v7, :cond_2b

    if-eqz v6, :cond_2c

    .line 320
    iput v2, v0, Lk0/pc;->c:I

    goto :goto_f

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 321
    :cond_2c
    :goto_f
    iget v6, v0, Lk0/pc;->d:I

    if-eq v6, v8, :cond_35

    const/16 v7, 0x9

    if-eq v6, v7, :cond_33

    const/16 v7, 0x18

    if-eq v6, v7, :cond_31

    const/16 v7, 0xfd

    if-eq v6, v7, :cond_2f

    and-int/2addr v4, v10

    if-ne v4, v9, :cond_2d

    .line 322
    array-length v4, v5

    if-ge v2, v4, :cond_37

    .line 323
    aget-object v2, v5, v2

    aget v2, v2, v9

    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :cond_2d
    if-nez v4, :cond_37

    .line 324
    iget v2, v0, Lk0/pc;->c:I

    array-length v3, v5

    if-ge v2, v3, :cond_2e

    if-eq v2, v10, :cond_2e

    .line 325
    aget-object v2, v5, v2

    aget v2, v2, v9

    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 326
    :cond_2e
    iput v10, v0, Lk0/pc;->c:I

    goto :goto_10

    :cond_2f
    and-int/lit16 v2, v4, 0xff

    if-ne v2, v9, :cond_37

    .line 327
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_30

    .line 328
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto :goto_10

    .line 329
    :cond_30
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto :goto_10

    :cond_31
    and-int/lit16 v2, v4, 0xff

    if-ne v2, v9, :cond_37

    .line 330
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 331
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_10

    :cond_32
    const/4 v2, 0x6

    .line 332
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 333
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_33
    and-int/lit16 v2, v4, 0xff

    if-ne v2, v9, :cond_37

    .line 334
    sget v2, Lu0/b;->D:I

    const/16 v5, 0xd

    if-ne v2, v5, :cond_34

    .line 335
    invoke-static {v15, v9}, Lk0/pc;->i3(II)V

    goto :goto_10

    .line 336
    :cond_34
    invoke-static {v15, v3}, Ll0/b0;->l0(II)V

    .line 337
    invoke-static {v15, v9}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_35
    const/16 v5, 0xd

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v9, :cond_37

    .line 338
    sget v2, Lu0/b;->D:I

    if-ne v2, v5, :cond_36

    const/4 v2, 0x3

    .line 339
    invoke-static {v2, v9}, Lk0/pc;->i3(II)V

    goto :goto_10

    :cond_36
    const/4 v2, 0x3

    .line 340
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 341
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    :cond_37
    :goto_10
    add-int/lit8 v2, p2, 0x9

    .line 342
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v10

    const/16 v3, 0x21c

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_13

    .line 343
    :sswitch_11
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 344
    :sswitch_12
    sget v2, Lk0/nt;->c:I

    if-ne v2, v5, :cond_3c

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 345
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    if-eqz v1, :cond_38

    .line 346
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_13

    .line 347
    :cond_38
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto/16 :goto_13

    :sswitch_13
    add-int/lit8 v2, p2, 0x2

    .line 348
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 349
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 350
    aget-byte v5, v1, v5

    const/4 v6, 0x5

    add-int/lit8 v6, p2, 0x5

    .line 351
    aget-byte v1, v1, v6

    const/16 v6, 0xd9

    new-array v7, v9, [I

    shr-int/lit8 v8, v2, 0x6

    const/4 v11, 0x3

    and-int/2addr v8, v11

    aput v8, v7, v3

    .line 352
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xa4

    new-array v7, v9, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v11

    aput v8, v7, v3

    .line 353
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x8d

    new-array v7, v9, [I

    const/16 v8, 0xf

    and-int/2addr v2, v8

    aput v2, v7, v3

    .line 354
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v6, v9, [I

    and-int/2addr v4, v10

    aput v4, v6, v3

    .line 355
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v6, v9, [I

    and-int/2addr v5, v10

    aput v5, v6, v3

    .line 356
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v5, v9, [I

    and-int/2addr v1, v10

    aput v1, v5, v3

    .line 357
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 358
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_3c

    if-ne v4, v9, :cond_39

    .line 359
    sput v9, Lk0/pc;->E:I

    goto :goto_11

    :cond_39
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3a

    .line 360
    sput v1, Lk0/pc;->E:I

    .line 361
    :cond_3a
    :goto_11
    iget v1, v0, Lk0/pc;->b:I

    invoke-static {v1}, Lk0/pc;->h3(I)V

    goto/16 :goto_13

    :sswitch_14
    add-int/lit8 v2, p2, 0x2

    .line 362
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 363
    aget-byte v4, v1, v4

    add-int/lit8 v4, p2, 0x4

    .line 364
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 365
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 366
    aget-byte v7, v1, v7

    add-int/lit8 v12, p2, 0x7

    .line 367
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x8

    .line 368
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x9

    .line 369
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0xa

    .line 370
    aget-byte v15, v1, v15

    add-int/lit8 v17, p2, 0xb

    .line 371
    aget-byte v17, v1, v17

    add-int/lit8 v18, p2, 0xc

    .line 372
    aget-byte v11, v1, v18

    add-int/lit8 v18, p2, 0xd

    .line 373
    aget-byte v18, v1, v18

    add-int/lit8 v20, p2, 0xe

    .line 374
    aget-byte v1, v1, v20

    const/16 v6, 0x95

    new-array v8, v9, [I

    and-int/2addr v2, v9

    aput v2, v8, v3

    .line 375
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v6, v9, [I

    and-int/2addr v4, v9

    aput v4, v6, v3

    .line 376
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v6, v9, [I

    aput v4, v6, v3

    .line 377
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v9, [I

    and-int/2addr v5, v10

    aput v5, v4, v3

    .line 378
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v9, [I

    shr-int/lit8 v5, v7, 0x1

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 379
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v4, v9, [I

    and-int/lit8 v5, v7, 0x1

    aput v5, v4, v3

    .line 380
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v12, 0xff

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    and-int/lit16 v5, v13, 0xff

    or-int/2addr v2, v5

    const v5, 0xffff

    and-int/2addr v2, v5

    and-int/lit16 v6, v14, 0xff

    shl-int/2addr v6, v4

    and-int/lit16 v4, v15, 0xff

    or-int/2addr v4, v6

    and-int/2addr v4, v5

    const/16 v5, 0x93

    new-array v6, v9, [I

    const/16 v7, 0x10

    shl-int/2addr v4, v7

    or-int/2addr v2, v4

    aput v2, v6, v3

    .line 381
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v9, [I

    const/16 v5, 0x8

    shl-int/lit8 v6, v17, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    and-int/lit16 v8, v11, 0xff

    or-int/2addr v6, v8

    aput v6, v4, v3

    .line 382
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v4, v9, [I

    shl-int/lit8 v5, v18, 0x8

    and-int/2addr v5, v7

    and-int/2addr v1, v10

    or-int/2addr v1, v5

    aput v1, v4, v3

    .line 383
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :sswitch_15
    add-int/lit8 v2, p2, 0x8

    .line 384
    aget-byte v2, v1, v2

    const/16 v4, 0xbe

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 385
    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xbf

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 386
    aget-byte v6, v1, v6

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc0

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 387
    aget-byte v6, v1, v6

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc1

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 388
    aget-byte v6, v1, v6

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc2

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 389
    aget-byte v6, v1, v6

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc3

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x7

    .line 390
    aget-byte v1, v1, v6

    aput v1, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x84

    new-array v4, v9, [I

    shr-int/lit8 v5, v2, 0x1

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v3

    .line 391
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x85

    new-array v4, v9, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    aput v2, v4, v3

    .line 392
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :sswitch_16
    add-int/lit8 v2, p2, 0x2

    .line 393
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 394
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 395
    aget-byte v5, v1, v5

    and-int/2addr v2, v10

    const v6, 0xff00

    and-int/2addr v4, v6

    and-int/2addr v5, v10

    or-int/2addr v4, v5

    and-int/2addr v4, v10

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, p2, 0x5

    add-int v7, p2, p3

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    :goto_12
    if-ge v6, v7, :cond_3b

    .line 397
    aget-byte v8, v1, v6

    and-int/2addr v8, v10

    const/16 v11, 0x8

    shl-int/2addr v8, v11

    add-int/lit8 v12, v6, 0x1

    aget-byte v12, v1, v12

    and-int/2addr v12, v10

    or-int/2addr v8, v12

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    goto :goto_12

    :cond_3b
    const/16 v1, 0x90

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v2, v6, v3

    aput v4, v6, v9

    .line 398
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto :goto_13

    :sswitch_17
    move v2, v4

    add-int/lit8 v2, p2, 0x3

    .line 399
    aget-byte v1, v1, v2

    const/16 v2, 0x86

    new-array v4, v9, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v4, v3

    .line 400
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :cond_3c
    :goto_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_17
        -0x5b -> :sswitch_16
        -0x5a -> :sswitch_15
        -0x52 -> :sswitch_14
        -0x3f -> :sswitch_13
        -0x18 -> :sswitch_12
        -0x10 -> :sswitch_11
        0x11 -> :sswitch_10
        0x12 -> :sswitch_f
        0x18 -> :sswitch_e
        0x1f -> :sswitch_d
        0x21 -> :sswitch_c
        0x22 -> :sswitch_b
        0x31 -> :sswitch_a
        0x32 -> :sswitch_9
        0x34 -> :sswitch_8
        0x41 -> :sswitch_7
        0x43 -> :sswitch_6
        0x45 -> :sswitch_5
        0x48 -> :sswitch_4
        0x5e -> :sswitch_3
        0x60 -> :sswitch_2
        0x62 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/pc;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/pc;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lk0/pc;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Lk0/pc;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Lk0/pc;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pc;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/pc;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/pc;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x115

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

    move-object/from16 v11, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x24

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/16 v5, 0xe3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    const/16 v13, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v2, [I

    aput v5, v0, v9

    aput v4, v0, v10

    const/16 v2, 0x2c

    aput v2, v0, v12

    .line 1
    aget v2, v1, v9

    aput v2, v0, v8

    aget v2, v1, v10

    aput v2, v0, v7

    aget v2, v1, v12

    aput v2, v0, v6

    aget v2, v1, v8

    aput v2, v0, v4

    aget v2, v1, v7

    aput v2, v0, v3

    aget v1, v1, v6

    aput v1, v0, v13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    aget v5, v1, v9

    aget v9, v1, v10

    aget v10, v1, v12

    aget v8, v1, v8

    aget v7, v1, v7

    aget v6, v1, v6

    aget v12, v1, v4

    aget v14, v1, v3

    aget v13, v1, v13

    aget v15, v1, v2

    move-object/from16 v0, p0

    move v1, v5

    move v2, v9

    move v3, v10

    move v4, v8

    move v5, v7

    move v7, v12

    move v8, v14

    move v9, v13

    move v10, v15

    invoke-virtual/range {v0 .. v10}, Lk0/pc;->j3(IIIIIIIIII)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0xa

    aput v2, v0, v12

    aput v10, v0, v8

    .line 3
    aget v1, v1, v9

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0x9a

    aput v2, v0, v12

    aput v10, v0, v8

    .line 4
    aget v1, v1, v9

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-virtual {v11, v1, v10}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0x9d

    aput v2, v0, v12

    aput v12, v0, v8

    .line 6
    aget v2, v1, v9

    aput v2, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    :pswitch_5
    if-eqz v1, :cond_3

    .line 7
    array-length v0, v1

    if-le v0, v12, :cond_3

    new-array v0, v4, [I

    aput v5, v0, v9

    aput v8, v0, v10

    const/16 v2, 0xaf

    aput v2, v0, v12

    .line 8
    aget v2, v1, v9

    aput v2, v0, v8

    aget v2, v1, v10

    aput v2, v0, v7

    aget v1, v1, v12

    aput v1, v0, v6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :pswitch_6
    invoke-virtual {v11, v1, v10}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v7, [I

    aput v5, v0, v9

    aput v10, v0, v10

    const/16 v2, 0x9b

    aput v2, v0, v12

    .line 10
    aget v1, v1, v9

    aput v1, v0, v8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 11
    :pswitch_7
    invoke-virtual {v11, v1, v12}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0xad

    aput v2, v0, v12

    .line 12
    aget v2, v1, v9

    aput v2, v0, v8

    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :pswitch_8
    invoke-virtual {v11, v1, v12}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0xca

    aput v2, v0, v12

    .line 14
    aget v2, v1, v9

    aput v2, v0, v8

    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 15
    :pswitch_9
    invoke-virtual {v11, v1, v12}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0x61

    aput v2, v0, v12

    .line 16
    aget v2, v1, v9

    aput v2, v0, v8

    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 17
    :pswitch_a
    invoke-virtual {v11, v1, v12}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0x63

    aput v2, v0, v12

    .line 18
    aget v2, v1, v9

    aput v2, v0, v8

    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :pswitch_b
    invoke-virtual {v11, v1, v12}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    const/16 v2, 0x44

    aput v2, v0, v12

    .line 20
    aget v2, v1, v9

    aput v2, v0, v8

    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :pswitch_c
    invoke-virtual {v11, v1, v12}, Lk0/lt;->T2([II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "persist.fyt.reversetemp"

    .line 22
    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x3d

    if-eqz v0, :cond_1

    .line 23
    aget v0, v1, v9

    packed-switch v0, :pswitch_data_1

    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    aput v2, v0, v12

    .line 24
    aget v2, v1, v9

    aput v2, v0, v8

    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    aput v2, v0, v12

    const/16 v2, 0xe

    aput v2, v0, v8

    .line 25
    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    aput v2, v0, v12

    const/16 v2, 0xd

    aput v2, v0, v8

    .line 26
    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    aput v2, v0, v12

    const/16 v2, 0x10

    aput v2, v0, v8

    .line 27
    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    aput v2, v0, v12

    const/16 v2, 0xf

    aput v2, v0, v8

    .line 28
    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v6, [I

    aput v5, v0, v9

    aput v12, v0, v10

    aput v2, v0, v12

    .line 29
    aget v2, v1, v9

    aput v2, v0, v8

    aget v1, v1, v10

    aput v1, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [I

    aput v5, v0, v9

    aput v7, v0, v10

    const/16 v2, 0x5f

    aput v2, v0, v12

    .line 30
    aget v2, v1, v9

    aput v2, v0, v8

    aget v2, v1, v10

    aput v2, v0, v7

    aget v2, v1, v12

    aput v2, v0, v6

    aget v1, v1, v8

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final d3(I)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput v3, v1, v3

    const/4 v4, 0x0

    .line 1
    invoke-virtual {p0, v2, v1, v4, v4}, Lk0/pc;->Z0(I[I[F[Ljava/lang/String;)V

    new-array v0, v0, [I

    aput p1, v0, v2

    aput v2, v0, v3

    .line 2
    invoke-virtual {p0, v2, v0, v4, v4}, Lk0/pc;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public final j3(IIIIIIIIII)V
    .locals 14

    move-object v0, p0

    .line 1
    sput p1, Lk0/pc;->I:I

    .line 2
    sput p2, Lk0/pc;->J:I

    .line 3
    sput p3, Lk0/pc;->K:I

    .line 4
    sput p4, Lk0/pc;->L:I

    .line 5
    sput p5, Lk0/pc;->M:I

    .line 6
    sput p7, Lk0/pc;->N:I

    .line 7
    sput p8, Lk0/pc;->O:I

    .line 8
    sput p9, Lk0/pc;->P:I

    .line 9
    sput p10, Lk0/pc;->Q:I

    const/16 v1, 0xd

    new-array v1, v1, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0xa

    aput v4, v1, v2

    const/16 v5, 0x6e

    const/4 v6, 0x2

    aput v5, v1, v6

    const/4 v5, 0x3

    aput p1, v1, v5

    const/4 v7, 0x4

    aput p2, v1, v7

    const/4 v8, 0x5

    aput p3, v1, v8

    const/4 v9, 0x6

    aput p4, v1, v9

    const/4 v10, 0x7

    aput p5, v1, v10

    const/16 v11, 0x8

    aput p6, v1, v11

    const/16 v12, 0x9

    aput p7, v1, v12

    aput p8, v1, v4

    const/16 v4, 0xb

    aput p9, v1, v4

    const/16 v4, 0xc

    aput p10, v1, v4

    .line 10
    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v2, [I

    .line 11
    sget v4, Lk0/pc;->I:I

    aput v4, v1, v3

    const/16 v4, 0xfe

    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    .line 12
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->I:I

    if-eq v1, v4, :cond_0

    .line 13
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v2, v4}, Lo1/g0;->g(II)V

    :cond_0
    const/16 v1, 0xff

    new-array v4, v2, [I

    .line 14
    sget v13, Lk0/pc;->J:I

    aput v13, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 15
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v6, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->J:I

    if-eq v1, v4, :cond_1

    .line 16
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v6, v4}, Lo1/g0;->g(II)V

    :cond_1
    const/16 v1, 0x100

    new-array v4, v2, [I

    .line 17
    sget v6, Lk0/pc;->K:I

    aput v6, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 18
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v5, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->K:I

    if-eq v1, v4, :cond_2

    .line 19
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v5, v4}, Lo1/g0;->g(II)V

    :cond_2
    const/16 v1, 0x101

    new-array v4, v2, [I

    .line 20
    sget v5, Lk0/pc;->L:I

    aput v5, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 21
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v7, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->L:I

    if-eq v1, v4, :cond_3

    .line 22
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v7, v4}, Lo1/g0;->g(II)V

    :cond_3
    const/16 v1, 0x102

    new-array v4, v2, [I

    .line 23
    sget v5, Lk0/pc;->M:I

    aput v5, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 24
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v8, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->M:I

    if-eq v1, v4, :cond_4

    .line 25
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v8, v4}, Lo1/g0;->g(II)V

    :cond_4
    const/16 v1, 0x103

    new-array v4, v2, [I

    .line 26
    sget v5, Lk0/pc;->N:I

    aput v5, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 27
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v9, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->N:I

    if-eq v1, v4, :cond_5

    .line 28
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v9, v4}, Lo1/g0;->g(II)V

    :cond_5
    const/16 v1, 0x104

    new-array v4, v2, [I

    .line 29
    sget v5, Lk0/pc;->O:I

    aput v5, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 30
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v10, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->O:I

    if-eq v1, v4, :cond_6

    .line 31
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v10, v4}, Lo1/g0;->g(II)V

    :cond_6
    const/16 v1, 0x105

    new-array v4, v2, [I

    .line 32
    sget v5, Lk0/pc;->P:I

    aput v5, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    .line 33
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v11, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v4, Lk0/pc;->P:I

    if-eq v1, v4, :cond_7

    .line 34
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v11, v4}, Lo1/g0;->g(II)V

    :cond_7
    const/16 v1, 0x106

    new-array v2, v2, [I

    .line 35
    sget v4, Lk0/pc;->Q:I

    aput v4, v2, v3

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 36
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v12, v3}, Lo1/g0;->b(II)I

    move-result v1

    sget v2, Lk0/pc;->Q:I

    if-eq v1, v2, :cond_8

    .line 37
    iget-object v1, v0, Lk0/pc;->k:Lo1/g0;

    invoke-virtual {v1, v12, v2}, Lo1/g0;->g(II)V

    :cond_8
    return-void
.end method

.method public final u3()V
    .locals 3

    const-string v0, "com.syu.carinfo.wc.ziyouguang.Wc_372_TireAct"

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
