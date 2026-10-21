.class public Lmodule/canbus/r;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/r$n;
    }
.end annotation


# static fields
.field public static U:I = 0xff

.field public static V:I

.field public static W:I

.field public static final X:[I

.field public static final Y:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/r$n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:F

.field public B:I

.field public C:I

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:I

.field public G:Z

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:I

.field public L:Ljava/lang/Runnable;

.field public M:I

.field public N:Ljava/lang/Runnable;

.field public O:Ljava/lang/Runnable;

.field public P:Ljava/lang/Runnable;

.field public Q:Ljava/lang/Runnable;

.field public R:Ljava/lang/Runnable;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/Runnable;

.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:[[I

.field public k:I

.field public l:I

.field public m:[[I

.field public final n:[B

.field public o:I

.field public p:I

.field public q:I

.field public r:B

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/r;->X:[I

    .line 2
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/r;->Y:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x18
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x30
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x5

    new-array v2, v1, [[I

    .line 2
    iput-object v2, v0, Lmodule/canbus/r;->b:[[I

    const/16 v2, 0x1e

    new-array v2, v2, [[I

    .line 3
    iput-object v2, v0, Lmodule/canbus/r;->c:[[I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lmodule/canbus/r;->d:I

    const/16 v3, 0xff

    .line 5
    iput v3, v0, Lmodule/canbus/r;->f:I

    .line 6
    iput v3, v0, Lmodule/canbus/r;->g:I

    .line 7
    iput-boolean v2, v0, Lmodule/canbus/r;->h:Z

    .line 8
    iput v2, v0, Lmodule/canbus/r;->i:I

    const/16 v4, 0xe

    new-array v5, v4, [[I

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 9
    fill-array-data v7, :array_0

    aput-object v7, v5, v2

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

    iput-object v5, v0, Lmodule/canbus/r;->j:[[I

    .line 10
    iput v3, v0, Lmodule/canbus/r;->l:I

    const/16 v5, 0x1a

    new-array v5, v5, [[I

    new-array v7, v6, [I

    .line 11
    fill-array-data v7, :array_e

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_f

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_10

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_11

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_12

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_13

    aput-object v7, v5, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_14

    aput-object v1, v5, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_15

    aput-object v1, v5, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_16

    aput-object v1, v5, v13

    new-array v1, v6, [I

    fill-array-data v1, :array_17

    aput-object v1, v5, v14

    new-array v1, v6, [I

    fill-array-data v1, :array_18

    aput-object v1, v5, v15

    new-array v1, v6, [I

    fill-array-data v1, :array_19

    aput-object v1, v5, v16

    new-array v1, v6, [I

    fill-array-data v1, :array_1a

    aput-object v1, v5, v17

    new-array v1, v6, [I

    fill-array-data v1, :array_1b

    aput-object v1, v5, v18

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0xf

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x10

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x11

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x12

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x13

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x14

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_23

    const/16 v4, 0x15

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_24

    const/16 v4, 0x16

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_25

    const/16 v4, 0x17

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_26

    const/16 v4, 0x18

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_27

    const/16 v4, 0x19

    aput-object v1, v5, v4

    iput-object v5, v0, Lmodule/canbus/r;->m:[[I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 12
    iput-object v1, v0, Lmodule/canbus/r;->n:[B

    .line 13
    iput v2, v0, Lmodule/canbus/r;->o:I

    .line 14
    iput v2, v0, Lmodule/canbus/r;->p:I

    .line 15
    iput v2, v0, Lmodule/canbus/r;->q:I

    .line 16
    iput-byte v2, v0, Lmodule/canbus/r;->r:B

    .line 17
    new-instance v1, Lmodule/canbus/r$e;

    invoke-direct {v1, v0}, Lmodule/canbus/r$e;-><init>(Lmodule/canbus/r;)V

    iput-object v1, v0, Lmodule/canbus/r;->s:Ljava/lang/Runnable;

    const-string v1, ""

    .line 18
    iput-object v1, v0, Lmodule/canbus/r;->t:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Lmodule/canbus/r;->u:Ljava/lang/String;

    .line 20
    iput v2, v0, Lmodule/canbus/r;->v:I

    .line 21
    iput v2, v0, Lmodule/canbus/r;->w:I

    .line 22
    iput v2, v0, Lmodule/canbus/r;->x:I

    .line 23
    iput v2, v0, Lmodule/canbus/r;->y:I

    const/4 v4, -0x1

    .line 24
    iput v4, v0, Lmodule/canbus/r;->z:I

    const/4 v4, 0x0

    .line 25
    iput v4, v0, Lmodule/canbus/r;->A:F

    .line 26
    iput v3, v0, Lmodule/canbus/r;->B:I

    .line 27
    iput v3, v0, Lmodule/canbus/r;->C:I

    .line 28
    new-instance v3, Lmodule/canbus/r$f;

    invoke-direct {v3, v0}, Lmodule/canbus/r$f;-><init>(Lmodule/canbus/r;)V

    iput-object v3, v0, Lmodule/canbus/r;->D:Ljava/lang/Runnable;

    .line 29
    new-instance v3, Lmodule/canbus/r$g;

    invoke-direct {v3, v0}, Lmodule/canbus/r$g;-><init>(Lmodule/canbus/r;)V

    iput-object v3, v0, Lmodule/canbus/r;->E:Ljava/lang/Runnable;

    .line 30
    iput v2, v0, Lmodule/canbus/r;->F:I

    .line 31
    iput-boolean v2, v0, Lmodule/canbus/r;->G:Z

    .line 32
    new-instance v3, Lmodule/canbus/r$h;

    invoke-direct {v3, v0}, Lmodule/canbus/r$h;-><init>(Lmodule/canbus/r;)V

    iput-object v3, v0, Lmodule/canbus/r;->H:Ljava/lang/Runnable;

    .line 33
    new-instance v3, Lmodule/canbus/r$i;

    invoke-direct {v3, v0}, Lmodule/canbus/r$i;-><init>(Lmodule/canbus/r;)V

    iput-object v3, v0, Lmodule/canbus/r;->I:Ljava/lang/Runnable;

    .line 34
    new-instance v3, Lmodule/canbus/r$j;

    invoke-direct {v3, v0}, Lmodule/canbus/r$j;-><init>(Lmodule/canbus/r;)V

    iput-object v3, v0, Lmodule/canbus/r;->J:Ljava/lang/Runnable;

    const/16 v3, 0xc8

    .line 35
    iput v3, v0, Lmodule/canbus/r;->K:I

    .line 36
    new-instance v3, Lmodule/canbus/r$k;

    invoke-direct {v3, v0}, Lmodule/canbus/r$k;-><init>(Lmodule/canbus/r;)V

    iput-object v3, v0, Lmodule/canbus/r;->L:Ljava/lang/Runnable;

    .line 37
    iput v2, v0, Lmodule/canbus/r;->M:I

    .line 38
    new-instance v2, Lmodule/canbus/r$l;

    invoke-direct {v2, v0}, Lmodule/canbus/r$l;-><init>(Lmodule/canbus/r;)V

    iput-object v2, v0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    .line 39
    new-instance v2, Lmodule/canbus/r$m;

    invoke-direct {v2, v0}, Lmodule/canbus/r$m;-><init>(Lmodule/canbus/r;)V

    iput-object v2, v0, Lmodule/canbus/r;->O:Ljava/lang/Runnable;

    .line 40
    new-instance v2, Lmodule/canbus/r$a;

    invoke-direct {v2, v0}, Lmodule/canbus/r$a;-><init>(Lmodule/canbus/r;)V

    iput-object v2, v0, Lmodule/canbus/r;->P:Ljava/lang/Runnable;

    .line 41
    new-instance v2, Lmodule/canbus/r$b;

    invoke-direct {v2, v0}, Lmodule/canbus/r$b;-><init>(Lmodule/canbus/r;)V

    iput-object v2, v0, Lmodule/canbus/r;->Q:Ljava/lang/Runnable;

    .line 42
    new-instance v2, Lmodule/canbus/r$c;

    invoke-direct {v2, v0}, Lmodule/canbus/r$c;-><init>(Lmodule/canbus/r;)V

    iput-object v2, v0, Lmodule/canbus/r;->R:Ljava/lang/Runnable;

    .line 43
    iput-object v1, v0, Lmodule/canbus/r;->S:Ljava/lang/String;

    .line 44
    new-instance v1, Lmodule/canbus/r$d;

    invoke-direct {v1, v0}, Lmodule/canbus/r$d;-><init>(Lmodule/canbus/r;)V

    iput-object v1, v0, Lmodule/canbus/r;->T:Ljava/lang/Runnable;

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
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x35
    .end array-data

    :array_13
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_14
    .array-data 4
        0xa
        0x1d
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x3a
    .end array-data

    :array_17
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_1a
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_1b
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_1e
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_1f
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_20
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_21
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_22
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_23
    .array-data 4
        0x3b
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_25
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_26
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_27
    .array-data 4
        0x61
        0x3e
    .end array-data
.end method

.method public static K3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 3
    aget-byte v2, p0, v2

    :goto_0
    if-gt v1, v0, :cond_0

    .line 4
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p0, v0

    .line 6
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
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

    const/16 v4, 0x91

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 2
    invoke-static {}, Lmodule/canbus/r;->c3()I

    move-result v4

    const/4 v6, 0x2

    aput v4, v1, v6

    .line 3
    sget v4, Lu0/b;->D:I

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    sget v4, Lw0/d;->h:I

    const/high16 v7, 0x10000

    sub-int v8, v4, v7

    const/16 v9, 0xe

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/16 v14, 0xa

    if-eqz v8, :cond_3

    sub-int v8, v4, v7

    if-eq v5, v8, :cond_3

    sub-int/2addr v4, v7

    if-ne v6, v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget v4, Lw0/d;->j:I

    div-int/lit8 v6, v4, 0xa

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v13

    .line 6
    rem-int/2addr v4, v14

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 7
    sget v4, Lw0/d;->i:I

    div-int/lit16 v5, v4, 0x2710

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 8
    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 9
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v10

    .line 10
    rem-int/lit8 v5, v4, 0x64

    div-int/2addr v5, v14

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v3

    .line 11
    rem-int/2addr v4, v14

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    sget v4, Lw0/d;->j:I

    and-int/lit16 v4, v4, 0xff

    .line 13
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v13

    .line 14
    rem-int/2addr v4, v14

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    .line 15
    sget v4, Lw0/d;->i:I

    const v5, 0x186a0

    rem-int v5, v4, v5

    div-int/lit16 v5, v5, 0x2710

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 16
    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v11

    .line 17
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v10

    const/16 v5, 0x2e

    aput v5, v1, v3

    .line 18
    rem-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v14

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    :goto_2
    const/16 v3, 0x10

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

.method public static c3()I
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
    const/16 v1, 0xff

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xfe

    goto :goto_1

    :cond_0
    :pswitch_3
    move v1, v2

    goto :goto_1

    :pswitch_4
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xc

    goto :goto_1

    .line 2
    :pswitch_7
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x85

    goto :goto_1

    :pswitch_9
    const/16 v1, 0xa

    goto :goto_1

    .line 3
    :pswitch_a
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic e3(Lmodule/canbus/r;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/r;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lmodule/canbus/r;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/r;->A:F

    return p0
.end method

.method public static synthetic g3(Lmodule/canbus/r;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/r;->B3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic h3(Lmodule/canbus/r;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/r;->A:F

    return p1
.end method

.method public static synthetic i3(Lmodule/canbus/r;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/r;->S:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j3(Lmodule/canbus/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/r;->S:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic k3(Lmodule/canbus/r;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/r;->J3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l3(Lmodule/canbus/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/r;->C:I

    return p0
.end method

.method public static synthetic m3(Lmodule/canbus/r;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/r;->C:I

    return p1
.end method

.method public static synthetic n3(Lmodule/canbus/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/r;->B:I

    return p0
.end method

.method public static synthetic o3(Lmodule/canbus/r;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/r;->B:I

    return p1
.end method

.method public static synthetic p3(Lmodule/canbus/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/r;->K:I

    return p0
.end method

.method public static synthetic q3(Lmodule/canbus/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/r;->M:I

    return p0
.end method

.method public static synthetic r3(Lmodule/canbus/r;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/r;->M:I

    return p1
.end method

.method public static synthetic s3(Lmodule/canbus/r;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/r;->M:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/r;->M:I

    return v0
.end method

.method public static synthetic t3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/r;->W:I

    return v0
.end method

.method public static synthetic u3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/r;->W:I

    return p0
.end method

.method public static synthetic v3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/r;->X:[I

    return-object v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/r;->V:I

    return v0
.end method

.method public static synthetic x3(Lmodule/canbus/r;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/r;->H3()V

    return-void
.end method

.method public static y3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/r;->Y:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/r$n;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/r$n;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A3()Ljava/lang/String;
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

.method public final B3(BLjava/lang/String;)V
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

.method public final C3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/r;->Z2(I)V

    return-void
.end method

.method public final D3()V
    .locals 3

    const-string v0, "com.syu.carinfo.wccamry.Wc09LexusESCarCDActi"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lmodule/canbus/r;->A3()Ljava/lang/String;

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

.method public final E3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/r;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wccamry.Wc09LexusESCarRadioActi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final F3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public G3([BII)V
    .locals 11

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0x7f0126

    if-eq v0, v1, :cond_0

    const v1, 0x870126

    if-eq v0, v1, :cond_0

    goto/16 :goto_b

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte v0, p1, v0

    const/16 v1, -0x5a

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_13

    const/16 v1, -0x10

    const/4 v5, 0x2

    if-eq v0, v1, :cond_12

    const/16 p3, 0x31

    if-eq v0, p3, :cond_1

    goto/16 :goto_b

    :cond_1
    add-int/lit8 p3, p2, 0xd

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/lit8 v0, p2, 0x2

    .line 4
    aget-byte v1, p1, v0

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    const/4 v6, 0x5

    if-nez p3, :cond_2

    .line 5
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_3

    mul-int/lit8 p3, p3, 0x9

    add-int/lit16 p3, p3, 0x258

    const/high16 v1, 0x10000000

    or-int/2addr p3, v1

    and-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    mul-int/2addr p3, v6

    add-int/lit16 p3, p3, 0x258

    .line 6
    :goto_0
    invoke-static {p3}, Lu0/d;->B3(I)V

    :goto_1
    new-array p3, v4, [I

    .line 7
    aget-byte v1, p1, v0

    const/4 v7, 0x6

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    aput v1, p3, v3

    const/16 v1, 0xa

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x35

    new-array v1, v4, [I

    .line 8
    aget-byte v8, p1, v0

    shr-int/2addr v8, v6

    and-int/2addr v8, v4

    aput v8, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2a

    new-array v1, v4, [I

    .line 9
    aget-byte v8, p1, v0

    shr-int/lit8 v8, v8, 0x4

    and-int/2addr v8, v4

    aput v8, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 10
    aget-byte v1, p1, v0

    const/4 v8, 0x3

    shr-int/2addr v1, v8

    and-int/2addr v1, v4

    aput v1, p3, v3

    const/16 v1, 0xd

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x5c

    new-array v1, v4, [I

    .line 11
    aget-byte v9, p1, v0

    shr-int/2addr v9, v4

    and-int/2addr v9, v4

    aput v9, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x25

    new-array v1, v4, [I

    .line 12
    aget-byte v0, p1, v0

    shr-int/2addr v0, v3

    and-int/2addr v0, v4

    aput v0, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x43

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 13
    aget-byte v9, p1, v1

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    .line 14
    aget-byte v0, p1, v1

    shr-int/2addr v0, v7

    and-int/2addr v0, v4

    aput v0, p3, v3

    const/16 v0, 0xb

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v4, [I

    .line 15
    aget-byte v9, p1, v1

    shr-int/lit8 v9, v9, 0x4

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x36

    new-array v0, v4, [I

    .line 16
    aget-byte v9, p1, v1

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v0, v4, [I

    .line 17
    aget-byte v9, p1, v1

    shr-int/2addr v9, v5

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x34

    new-array v0, v4, [I

    .line 18
    aget-byte v9, p1, v1

    shr-int/2addr v9, v4

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x22

    new-array v0, v4, [I

    .line 19
    aget-byte v1, p1, v1

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2b

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 20
    aget-byte v9, p1, v1

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v0, v4, [I

    .line 21
    aget-byte v9, p1, v1

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v0, v4, [I

    .line 22
    aget-byte v9, p1, v1

    shr-int/lit8 v9, v9, 0x4

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1e

    new-array v0, v4, [I

    .line 23
    aget-byte v9, p1, v1

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1d

    new-array v0, v4, [I

    .line 24
    aget-byte v1, p1, v1

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x20

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 25
    aget-byte v9, p1, v1

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1f

    new-array v0, v4, [I

    .line 26
    aget-byte v9, p1, v1

    shr-int/lit8 v9, v9, 0x4

    and-int/2addr v9, v8

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x11

    new-array v0, v4, [I

    .line 27
    aget-byte v9, p1, v1

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4b

    new-array v0, v4, [I

    .line 28
    aget-byte v9, p1, v1

    shr-int/2addr v9, v5

    and-int/2addr v9, v4

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x50

    new-array v0, v4, [I

    .line 29
    aget-byte v1, p1, v1

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 30
    aget-byte v9, p1, v1

    shr-int/2addr v9, v3

    and-int/lit8 v9, v9, 0xf

    aput v9, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 31
    aget-byte p3, p1, v1

    shr-int/2addr p3, v3

    and-int/lit8 p3, p3, 0xf

    if-eq p3, v8, :cond_6

    if-eq p3, v6, :cond_5

    if-eq p3, v7, :cond_4

    packed-switch p3, :pswitch_data_0

    move p3, v3

    :goto_2
    move v0, p3

    :goto_3
    move v1, v0

    goto :goto_4

    :pswitch_0
    move p3, v4

    goto :goto_2

    :pswitch_1
    move p3, v3

    move v0, v4

    goto :goto_3

    :pswitch_2
    move v0, v3

    move p3, v4

    move v1, p3

    goto :goto_4

    :cond_4
    move p3, v3

    move v1, p3

    move v0, v4

    goto :goto_4

    :cond_5
    move v1, v3

    move p3, v4

    move v0, p3

    goto :goto_4

    :cond_6
    move v0, v3

    move v1, v0

    move p3, v4

    :goto_4
    const/16 v7, 0x14

    new-array v9, v4, [I

    aput p3, v9, v3

    .line 32
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v7, v4, [I

    aput v0, v7, v3

    .line 33
    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v4, [I

    aput v1, v0, v3

    .line 34
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x7

    .line 35
    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 36
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_7

    add-int/lit8 p3, p2, 0x8

    .line 37
    aget-byte p3, p1, p3

    goto :goto_5

    :cond_7
    add-int/lit8 p3, p2, 0x9

    .line 38
    aget-byte p3, p1, p3

    :goto_5
    and-int/2addr p3, v2

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v7, 0x1b

    const/16 v9, 0xfe

    if-ne p3, v9, :cond_8

    new-array p3, v4, [I

    aput v1, p3, v3

    .line 39
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_8
    if-ne p3, v2, :cond_9

    new-array p3, v4, [I

    aput v0, p3, v3

    .line 40
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_9
    new-array v10, v4, [I

    mul-int/2addr p3, v6

    aput p3, v10, v3

    .line 41
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    :goto_6
    const-string p3, "persist.fyt.reversetemp"

    .line 42
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_a

    add-int/lit8 p3, p2, 0x9

    .line 43
    aget-byte p3, p1, p3

    goto :goto_7

    :cond_a
    add-int/lit8 p3, p2, 0x8

    .line 44
    aget-byte p3, p1, p3

    :goto_7
    and-int/2addr p3, v2

    const/16 v7, 0x1c

    if-ne p3, v9, :cond_b

    new-array p3, v4, [I

    aput v1, p3, v3

    .line 45
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_b
    if-ne p3, v2, :cond_c

    new-array p3, v4, [I

    aput v0, p3, v3

    .line 46
    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_c
    new-array v10, v4, [I

    mul-int/2addr p3, v6

    aput p3, v10, v3

    .line 47
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    :goto_8
    add-int/lit8 p3, p2, 0xa

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    if-eq p3, v4, :cond_f

    if-eq p3, v5, :cond_e

    if-eq p3, v8, :cond_d

    move p3, v3

    :goto_9
    move v5, p3

    goto :goto_a

    :cond_d
    move p3, v4

    goto :goto_9

    :cond_e
    move p3, v3

    move v5, v4

    goto :goto_a

    :cond_f
    move v5, v3

    move p3, v4

    :goto_a
    const/16 v7, 0x2f

    new-array v8, v4, [I

    aput p3, v8, v3

    .line 49
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2e

    new-array v7, v4, [I

    aput v5, v7, v3

    .line 50
    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2c

    new-array v5, v4, [I

    add-int/lit8 v7, p2, 0xb

    .line 51
    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0xf

    aput v7, v5, v3

    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0xc

    .line 52
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x28

    if-ne p1, v9, :cond_10

    new-array p1, v4, [I

    aput v1, p1, v3

    .line 53
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_10
    if-ne p1, v2, :cond_11

    new-array p1, v4, [I

    aput v0, p1, v3

    .line 54
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_11
    new-array p3, v4, [I

    mul-int/2addr p1, v6

    aput p1, p3, v3

    .line 55
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 56
    :cond_12
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lmodule/canbus/r;->t:Ljava/lang/String;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lmodule/canbus/r;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "__"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmodule/canbus/r;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 58
    :cond_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_14

    add-int/lit8 p3, p2, 0x2

    .line 59
    aget-byte v0, p1, p3

    and-int/2addr v0, v2

    const/16 v1, 0x3f

    .line 60
    invoke-static {v0, v3, v1}, Lo1/o0;->a(III)I

    move-result v0

    sput v0, Lmodule/canbus/r;->V:I

    const/16 v0, 0xa1

    new-array v1, v4, [I

    .line 61
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    aput p3, v1, v3

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9d

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 62
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9c

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x4

    .line 63
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9e

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x5

    .line 64
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa0

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x6

    .line 65
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9f

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x7

    .line 66
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7e

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x8

    .line 67
    aget-byte v1, p1, p2

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7f

    new-array v0, v4, [I

    .line 68
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_14
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized H3()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget v1, Lmodule/canbus/r;->V:I

    .line 3
    sget v2, Lmodule/canbus/r;->W:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    const/4 v0, -0x1

    .line 4
    :cond_2
    :goto_0
    invoke-static {v3, v0}, Lmodule/canbus/r;->y3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final I3(BBB)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x6a

    aput v3, v0, v1

    aput p1, v0, v2

    const/4 p1, 0x4

    aput p2, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final J3(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    const/16 v1, -0x1d

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x1b

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, -0x33

    aput v3, v0, v1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/r;->z3()B

    move-result v3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v4, 0x7

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 4
    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x6

    and-int/lit16 v1, v1, 0xff

    .line 5
    aput v1, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 13

    if-eqz p1, :cond_18

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x29

    const/16 v4, 0xd

    if-eq v2, v3, :cond_16

    const/16 v3, 0x2a

    const/16 v5, 0x10

    if-eq v2, v3, :cond_14

    const/16 v3, 0x44

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/16 v8, 0xa

    const/4 v9, 0x4

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/4 v12, 0x6

    if-eq v2, v3, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v11}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v10}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget v1, p1, v0

    if-ne v1, v0, :cond_2

    .line 8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_18

    .line 9
    invoke-virtual {p0, v6}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    aget p1, p1, v0

    if-nez p1, :cond_18

    .line 11
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v0, :cond_18

    .line 12
    invoke-virtual {p0, v6}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    aget p1, p1, v0

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_18

    .line 15
    invoke-virtual {p0, v12}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 16
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v0, :cond_18

    .line 17
    invoke-virtual {p0, v12}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_3
    aget p1, p1, v0

    const/16 v1, 0x41

    if-eqz p1, :cond_4

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_18

    .line 20
    invoke-virtual {p0, v7}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_18

    .line 22
    invoke-virtual {p0, v7}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_4
    aget p1, p1, v0

    if-eqz p1, :cond_5

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_18

    .line 25
    invoke-virtual {p0, v9}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 26
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v0, :cond_18

    .line 27
    invoke-virtual {p0, v9}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 28
    :pswitch_5
    aget p1, p1, v0

    if-eqz p1, :cond_6

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-nez p1, :cond_18

    .line 30
    invoke-virtual {p0, v1}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 31
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    if-ne p1, v0, :cond_18

    .line 32
    invoke-virtual {p0, v1}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 33
    :pswitch_6
    aget p1, p1, v0

    if-eqz p1, :cond_7

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-nez p1, :cond_18

    .line 35
    invoke-virtual {p0, v9}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 36
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-ne p1, v0, :cond_18

    .line 37
    invoke-virtual {p0, v0}, Lmodule/canbus/r;->a3(I)V

    goto/16 :goto_0

    .line 38
    :cond_8
    aget v2, p1, v0

    if-ne v2, v0, :cond_9

    new-array p1, v12, [I

    .line 39
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 40
    :cond_9
    aget v2, p1, v0

    if-ne v2, v1, :cond_a

    new-array p1, v12, [I

    .line 41
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 42
    :cond_a
    aget v1, p1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    new-array p1, v12, [I

    .line 43
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 44
    :cond_b
    aget v1, p1, v0

    if-ne v1, v9, :cond_c

    new-array p1, v12, [I

    .line 45
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 46
    :cond_c
    aget v1, p1, v0

    if-ne v1, v7, :cond_d

    new-array p1, v12, [I

    .line 47
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 48
    :cond_d
    aget v1, p1, v0

    if-ne v1, v12, :cond_e

    new-array p1, v12, [I

    .line 49
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 50
    :cond_e
    aget v1, p1, v0

    if-ne v1, v6, :cond_f

    new-array p1, v12, [I

    .line 51
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 52
    :cond_f
    aget v1, p1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    new-array p1, v12, [I

    .line 53
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 54
    :cond_10
    aget v1, p1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_11

    new-array p1, v12, [I

    .line 55
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 56
    :cond_11
    aget v1, p1, v0

    if-ne v1, v8, :cond_12

    new-array p1, v12, [I

    .line 57
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 58
    :cond_12
    aget v1, p1, v0

    if-ne v1, v11, :cond_13

    new-array p1, v12, [I

    .line 59
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 60
    :cond_13
    aget p1, p1, v0

    if-ne p1, v10, :cond_18

    new-array p1, v12, [I

    .line 61
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 62
    :cond_14
    aget p1, p1, v0

    if-eqz p1, :cond_15

    const/16 p1, 0xf

    .line 63
    invoke-virtual {p0, p1}, Lmodule/canbus/r;->a3(I)V

    goto :goto_0

    .line 64
    :cond_15
    invoke-virtual {p0, v5}, Lmodule/canbus/r;->a3(I)V

    goto :goto_0

    .line 65
    :cond_16
    aget p1, p1, v0

    if-eqz p1, :cond_17

    .line 66
    invoke-virtual {p0, v4}, Lmodule/canbus/r;->a3(I)V

    goto :goto_0

    :cond_17
    const/16 p1, 0xe

    .line 67
    invoke-virtual {p0, p1}, Lmodule/canbus/r;->a3(I)V

    :cond_18
    :goto_0
    return-void

    nop

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
        0x3
        0x6a
        0x6
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x4
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x4
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x8
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x8
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x10
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0x10
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0xf
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x3
        0x6a
        0x6
        0xf
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 2
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->h:I

    .line 9
    iput v2, v0, Lk0/mt;->b:I

    .line 10
    sget v0, Lk0/nt;->a:I

    const v3, 0x810126

    if-eq v0, v3, :cond_1

    .line 11
    iget-object v0, p0, Lmodule/canbus/r;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    :cond_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/r;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v3, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v3, Lw0/e;->a:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v3, Lw0/e;->e:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v3, Ly0/g;->d:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->O:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v3, Ly0/g;->e:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->O:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v3, Lu0/c;->o:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->P:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v3, Lu0/c;->p:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->Q:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v3, Lu0/c;->q:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->R:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v3, Lh0/d;->c:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->T:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v3, Lh0/d;->a:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->T:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v3, Lo1/h;->a:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/r;->D:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_2

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x29

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x31

    if-eq v3, v4, :cond_2

    const/16 v4, 0x33

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x80

    if-eq v3, v4, :cond_3

    .line 26
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v3, Lk0/mt;->h:I

    goto :goto_0

    .line 27
    :cond_2
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v4, 0x2

    iput v4, v3, Lk0/mt;->h:I

    goto :goto_0

    .line 28
    :cond_3
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v3, Lk0/mt;->b:I

    .line 29
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 30
    invoke-virtual {p0}, Lmodule/canbus/r;->init()V

    .line 31
    iget-object v3, p0, Lmodule/canbus/r;->L:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {p0}, Lmodule/canbus/r;->C3()V

    .line 33
    :cond_4
    :goto_0
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x18

    if-eq v3, v4, :cond_5

    const/16 v4, 0x19

    if-eq v3, v4, :cond_5

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_5

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    const/16 v4, 0x89

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 34
    :cond_5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v1, :cond_6

    .line 35
    iget-object v3, p0, Lmodule/canbus/r;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 36
    :cond_6
    :goto_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_7

    .line 37
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 38
    :cond_7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 39
    :goto_2
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_8

    goto :goto_3

    .line 40
    :cond_8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 41
    :goto_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->q:I

    const/16 v1, 0xd

    new-array v1, v1, [I

    .line 42
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

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
        0x44
        0x43
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v0, v2

    const/16 v8, 0xa

    const/16 v9, 0xfe

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/4 v3, 0x5

    const/4 v7, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v11, 0x0

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_34

    :sswitch_0
    const/16 v2, 0xee

    new-array v8, v10, [I

    add-int/lit8 v12, p2, 0x2

    .line 2
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xef

    new-array v8, v10, [I

    .line 3
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x3

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf0

    new-array v8, v10, [I

    .line 4
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf1

    new-array v8, v10, [I

    .line 5
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf2

    new-array v8, v10, [I

    .line 6
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf3

    new-array v8, v10, [I

    .line 7
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf4

    new-array v8, v10, [I

    .line 8
    aget-byte v12, v0, v12

    shr-int/2addr v12, v11

    and-int/2addr v12, v10

    aput v12, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf5

    new-array v8, v10, [I

    add-int/lit8 v12, p2, 0x3

    .line 9
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf6

    new-array v8, v10, [I

    .line 10
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x3

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf7

    new-array v8, v10, [I

    .line 11
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x3

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v8, v10, [I

    .line 12
    aget-byte v12, v0, v12

    shr-int/2addr v12, v11

    and-int/2addr v12, v5

    aput v12, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf9

    new-array v8, v10, [I

    add-int/lit8 v12, p2, 0x4

    .line 13
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v8, v10, [I

    .line 14
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v8, v10, [I

    .line 15
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v8, v10, [I

    .line 16
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfd

    new-array v8, v10, [I

    .line 17
    aget-byte v16, v0, v12

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 18
    aget-byte v8, v0, v12

    shr-int/2addr v8, v4

    and-int/2addr v8, v10

    aput v8, v2, v11

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 19
    aget-byte v8, v0, v12

    shr-int/2addr v8, v11

    and-int/2addr v8, v5

    aput v8, v2, v11

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x100

    new-array v6, v10, [I

    add-int/lit8 v8, p2, 0x5

    .line 20
    aget-byte v9, v0, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x101

    new-array v6, v10, [I

    .line 21
    aget-byte v9, v0, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x102

    new-array v6, v10, [I

    .line 22
    aget-byte v9, v0, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x103

    new-array v6, v10, [I

    .line 23
    aget-byte v9, v0, v8

    shr-int/2addr v9, v5

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x104

    new-array v6, v10, [I

    .line 24
    aget-byte v8, v0, v8

    shr-int/2addr v8, v4

    and-int/2addr v8, v10

    aput v8, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x105

    new-array v6, v10, [I

    add-int/lit8 v8, p2, 0x6

    .line 25
    aget-byte v9, v0, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x106

    new-array v6, v10, [I

    .line 26
    aget-byte v9, v0, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x107

    new-array v6, v10, [I

    .line 27
    aget-byte v9, v0, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x108

    new-array v6, v10, [I

    .line 28
    aget-byte v9, v0, v8

    shr-int/2addr v9, v5

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x109

    new-array v6, v10, [I

    .line 29
    aget-byte v9, v0, v8

    shr-int/2addr v9, v10

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10a

    new-array v6, v10, [I

    .line 30
    aget-byte v8, v0, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v10

    aput v8, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10b

    new-array v6, v10, [I

    add-int/lit8 v8, p2, 0x7

    .line 31
    aget-byte v9, v0, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10c

    new-array v6, v10, [I

    .line 32
    aget-byte v9, v0, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10d

    new-array v6, v10, [I

    .line 33
    aget-byte v9, v0, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10e

    new-array v6, v10, [I

    .line 34
    aget-byte v8, v0, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v5

    aput v8, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10f

    new-array v6, v10, [I

    add-int/lit8 v8, p2, 0x8

    .line 35
    aget-byte v9, v0, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x110

    new-array v6, v10, [I

    .line 36
    aget-byte v9, v0, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x111

    new-array v6, v10, [I

    .line 37
    aget-byte v9, v0, v8

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v10

    aput v3, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x112

    new-array v3, v10, [I

    .line 38
    aget-byte v6, v0, v8

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x113

    new-array v3, v10, [I

    .line 39
    aget-byte v0, v0, v8

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v0, v2

    const/16 v3, 0x77

    new-array v9, v10, [I

    and-int/lit16 v12, v2, 0x80

    aput v12, v9, v11

    .line 41
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x70

    shr-int/2addr v12, v7

    aput v12, v9, v11

    .line 42
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7a

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0xc

    shr-int/2addr v12, v4

    aput v12, v9, v11

    .line 43
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7b

    new-array v9, v10, [I

    and-int/2addr v2, v5

    aput v2, v9, v11

    .line 44
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 45
    aget-byte v2, v0, v2

    const/16 v3, 0x67

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x40

    aput v12, v9, v11

    .line 46
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x71

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x20

    if-eqz v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    aput v12, v9, v11

    .line 47
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x10

    aput v12, v9, v11

    .line 48
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x8

    aput v12, v9, v11

    .line 49
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x4

    aput v12, v9, v11

    .line 50
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x2

    aput v12, v9, v11

    .line 51
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v9, v10, [I

    and-int/2addr v2, v10

    aput v2, v9, v11

    .line 52
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 53
    aget-byte v2, v0, v2

    const/16 v3, 0x70

    new-array v9, v10, [I

    and-int/lit16 v12, v2, 0x80

    aput v12, v9, v11

    .line 54
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x40

    aput v12, v9, v11

    .line 55
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x72

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x20

    aput v12, v9, v11

    .line 56
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x10

    aput v12, v9, v11

    .line 57
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xaa

    new-array v9, v10, [I

    shr-int/lit8 v12, v2, 0x1

    and-int/2addr v12, v14

    aput v12, v9, v11

    .line 58
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbf

    new-array v9, v10, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v10

    aput v2, v9, v11

    .line 59
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 60
    aget-byte v2, v0, v2

    const/16 v3, 0x6d

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x7

    aput v12, v9, v11

    .line 61
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v9, v10, [I

    and-int/lit8 v12, v2, 0x18

    shr-int/2addr v12, v5

    aput v12, v9, v11

    .line 62
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x83

    new-array v9, v10, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v5

    aput v12, v9, v11

    .line 63
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xab

    new-array v9, v10, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v10

    aput v2, v9, v11

    .line 64
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 65
    aget-byte v2, v0, v2

    const/16 v3, 0xac

    new-array v9, v10, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v14

    aput v12, v9, v11

    .line 66
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xad

    new-array v9, v10, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v14

    aput v12, v9, v11

    .line 67
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xae

    new-array v9, v10, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v5

    aput v2, v9, v11

    .line 68
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v10, [I

    add-int/lit8 v9, p2, 0x7

    .line 69
    aget-byte v9, v0, v9

    and-int/2addr v6, v9

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x8

    .line 70
    aget-byte v9, v0, v6

    shr-int/2addr v9, v15

    and-int/2addr v9, v5

    aput v9, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v10, [I

    .line 71
    aget-byte v9, v0, v6

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v10, [I

    .line 72
    aget-byte v9, v0, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v10

    aput v9, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v10, [I

    .line 73
    aget-byte v9, v0, v6

    shr-int/2addr v9, v4

    and-int/2addr v9, v10

    aput v9, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xeb

    new-array v3, v10, [I

    .line 74
    aget-byte v6, v0, v6

    shr-int/2addr v6, v10

    and-int/2addr v6, v10

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x9

    .line 75
    aget-byte v9, v0, v6

    shr-int/2addr v9, v7

    and-int/lit8 v9, v9, 0xf

    aput v9, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v10, [I

    .line 76
    aget-byte v6, v0, v6

    shr-int/2addr v6, v11

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xec

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0xa

    .line 77
    aget-byte v8, v0, v6

    shr-int/2addr v8, v15

    and-int/2addr v8, v5

    aput v8, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xed

    new-array v3, v10, [I

    .line 78
    aget-byte v8, v0, v6

    shr-int/lit8 v7, v8, 0x4

    and-int/2addr v7, v5

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v10, [I

    .line 79
    aget-byte v7, v0, v6

    shr-int/lit8 v4, v7, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v10, [I

    .line 80
    aget-byte v0, v0, v6

    shr-int/2addr v0, v11

    and-int/2addr v0, v5

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_2
    const/16 v2, 0xca

    new-array v6, v10, [I

    add-int/lit8 v8, p2, 0x2

    .line 81
    aget-byte v9, v0, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v6, v10, [I

    .line 82
    aget-byte v9, v0, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v6, v10, [I

    .line 83
    aget-byte v9, v0, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v6, v10, [I

    .line 84
    aget-byte v8, v0, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v5

    aput v8, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v6, v10, [I

    add-int/lit8 v8, p2, 0x3

    .line 85
    aget-byte v9, v0, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v6, v10, [I

    .line 86
    aget-byte v9, v0, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd0

    new-array v6, v10, [I

    .line 87
    aget-byte v9, v0, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd1

    new-array v6, v10, [I

    .line 88
    aget-byte v9, v0, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v10

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v6, v10, [I

    .line 89
    aget-byte v8, v0, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v10

    aput v8, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v6, v10, [I

    add-int/lit8 v8, p2, 0x4

    .line 90
    aget-byte v9, v0, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v6, v10, [I

    .line 91
    aget-byte v9, v0, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v6, v10, [I

    .line 92
    aget-byte v9, v0, v8

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v5

    aput v4, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe9

    new-array v4, v10, [I

    .line 93
    aget-byte v6, v0, v8

    shr-int/2addr v6, v10

    and-int/2addr v6, v10

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xea

    new-array v4, v10, [I

    .line 94
    aget-byte v6, v0, v8

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v4, v10, [I

    add-int/lit8 v3, p2, 0x5

    .line 95
    aget-byte v6, v0, v3

    shr-int/2addr v6, v15

    and-int/2addr v6, v5

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v4, v10, [I

    .line 96
    aget-byte v6, v0, v3

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x114

    new-array v4, v10, [I

    .line 97
    aget-byte v6, v0, v3

    shr-int/lit8 v5, v6, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v4, v10, [I

    .line 98
    aget-byte v0, v0, v3

    shr-int/2addr v0, v11

    and-int/2addr v0, v10

    aput v0, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_3
    const/16 v2, 0xd6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 99
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 100
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 101
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 102
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 103
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_4
    const/16 v2, 0xda

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 104
    aget-byte v5, v0, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v10

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v3, v10, [I

    .line 105
    aget-byte v4, v0, v4

    shr-int/2addr v4, v15

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 106
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 107
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 108
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 109
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 110
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 111
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe2

    new-array v3, v10, [I

    .line 112
    aget-byte v4, v0, v4

    shr-int/2addr v4, v11

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 113
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v3, v10, [I

    .line 114
    aget-byte v0, v0, v4

    shr-int/2addr v0, v11

    and-int/lit8 v0, v0, 0xf

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_5
    const/16 v2, 0x84

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 115
    aget-byte v14, v0, v5

    shr-int/2addr v14, v15

    and-int/2addr v14, v10

    aput v14, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 116
    aget-byte v2, v0, v5

    shr-int/2addr v2, v15

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_1

    .line 117
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    const/16 v5, 0x419

    invoke-static {v2, v5, v3, v12, v12}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x419

    .line 118
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-static {v2, v5, v3, v12, v12}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x85

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 119
    aget-byte v14, v0, v5

    shl-int/2addr v14, v13

    const v15, 0xff00

    and-int/2addr v14, v15

    add-int/lit8 v15, p2, 0x9

    aget-byte v8, v0, v15

    and-int/2addr v8, v6

    or-int/2addr v8, v14

    const v14, 0xffff

    and-int/2addr v8, v14

    aput v8, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x5

    .line 120
    aget-byte v14, v0, v8

    shl-int/2addr v14, v13

    const v16, 0xff00

    and-int v14, v14, v16

    add-int/lit8 v16, p2, 0xa

    aget-byte v7, v0, v16

    and-int/2addr v7, v6

    or-int/2addr v7, v14

    const v14, 0xffff

    and-int/2addr v7, v14

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    add-int/lit8 v7, p2, 0x6

    .line 121
    aget-byte v14, v0, v7

    shl-int/2addr v14, v13

    const v17, 0xff00

    and-int v14, v14, v17

    add-int/lit8 v17, p2, 0xb

    aget-byte v12, v0, v17

    and-int/2addr v12, v6

    or-int/2addr v12, v14

    const v14, 0xffff

    and-int/2addr v12, v14

    aput v12, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 122
    aget-byte v14, v0, v12

    shl-int/2addr v14, v13

    const v18, 0xff00

    and-int v14, v14, v18

    const/16 v18, 0xc

    add-int/lit8 v18, p2, 0xc

    aget-byte v10, v0, v18

    and-int/2addr v10, v6

    or-int/2addr v10, v14

    const v14, 0xffff

    and-int/2addr v10, v14

    aput v10, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 123
    aget-byte v2, v0, v5

    and-int/2addr v2, v6

    aget-byte v3, v0, v15

    and-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 124
    aget-byte v3, v0, v8

    and-int/2addr v3, v6

    aget-byte v5, v0, v16

    and-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 125
    aget-byte v5, v0, v7

    and-int/2addr v5, v6

    aget-byte v7, v0, v17

    and-int/2addr v7, v6

    add-int/2addr v5, v7

    .line 126
    aget-byte v7, v0, v12

    and-int/2addr v7, v6

    aget-byte v0, v0, v18

    and-int/2addr v0, v6

    add-int/2addr v7, v0

    if-ne v2, v9, :cond_2

    move v2, v6

    :cond_2
    if-ne v3, v9, :cond_3

    move v3, v6

    :cond_3
    if-ne v5, v9, :cond_4

    move v5, v6

    :cond_4
    if-ne v7, v9, :cond_5

    move v7, v6

    :cond_5
    if-ne v2, v6, :cond_6

    .line 127
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v4, [I

    aput v13, v2, v11

    const/16 v8, 0x21ff

    const/4 v9, 0x1

    aput v8, v2, v9

    const/16 v8, 0x419

    const/4 v10, 0x0

    invoke-static {v0, v8, v2, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/16 v8, 0x419

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 128
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v12, v4, [I

    aput v13, v12, v11

    const/16 v14, 0x2100

    const/4 v15, 0x4

    mul-int/2addr v2, v15

    const/16 v15, 0xa

    div-int/2addr v2, v15

    or-int/2addr v2, v14

    aput v2, v12, v9

    invoke-static {v0, v8, v12, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_2
    if-ne v3, v6, :cond_7

    .line 129
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v4, [I

    aput v13, v2, v11

    const/16 v3, 0x22ff

    aput v3, v2, v9

    invoke-static {v0, v8, v2, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_3

    .line 130
    :cond_7
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v4, [I

    aput v13, v2, v11

    const/16 v12, 0x2200

    const/4 v14, 0x4

    mul-int/2addr v3, v14

    const/16 v14, 0xa

    div-int/2addr v3, v14

    or-int/2addr v3, v12

    aput v3, v2, v9

    invoke-static {v0, v8, v2, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_3
    if-ne v5, v6, :cond_8

    .line 131
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v4, [I

    aput v13, v2, v11

    const/16 v3, 0x23ff

    aput v3, v2, v9

    invoke-static {v0, v8, v2, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_4

    .line 132
    :cond_8
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v4, [I

    aput v13, v2, v11

    const/16 v3, 0x2300

    const/4 v12, 0x4

    mul-int/2addr v5, v12

    const/16 v12, 0xa

    div-int/2addr v5, v12

    or-int/2addr v3, v5

    aput v3, v2, v9

    invoke-static {v0, v8, v2, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_4
    if-ne v7, v6, :cond_9

    .line 133
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v4, [I

    aput v13, v2, v11

    const/16 v3, 0x24ff

    aput v3, v2, v9

    invoke-static {v0, v8, v2, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_34

    .line 134
    :cond_9
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v4, [I

    aput v13, v2, v11

    const/16 v3, 0x2400

    const/4 v4, 0x4

    mul-int/2addr v7, v4

    const/16 v4, 0xa

    div-int/2addr v7, v4

    or-int/2addr v3, v7

    aput v3, v2, v9

    invoke-static {v0, v8, v2, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_34

    :sswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 135
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 136
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    .line 137
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_1

    add-int/lit8 v2, p2, 0x4

    .line 138
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    goto :goto_5

    :sswitch_7
    add-int/lit8 v2, p2, 0x4

    .line 139
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    :goto_5
    add-int/lit8 v2, p2, 0x5

    .line 140
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 141
    aget-byte v3, v0, v2

    and-int/2addr v3, v6

    add-int/lit8 v5, p2, 0x7

    .line 142
    aget-byte v7, v0, v5

    and-int/2addr v7, v6

    add-int/lit8 v8, p2, 0x8

    .line 143
    aget-byte v9, v0, v8

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x9

    .line 144
    aget-byte v11, v0, v10

    and-int/2addr v11, v6

    .line 145
    sget v12, Lu0/b;->o:I

    if-nez v12, :cond_d

    .line 146
    sget v12, Ll0/c0;->g:I

    if-ne v12, v3, :cond_a

    sget v12, Ll0/c0;->h:I

    if-ne v12, v7, :cond_a

    sget v12, Ll0/c0;->i:I

    if-ne v12, v9, :cond_a

    sget v12, Ll0/c0;->j:I

    if-eq v12, v11, :cond_c

    :cond_a
    if-ne v3, v6, :cond_b

    if-ne v7, v6, :cond_b

    if-ne v9, v6, :cond_b

    if-ne v11, v6, :cond_b

    .line 147
    sget v12, Lu0/b;->p:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 148
    sput v4, Ll0/c0;->k:I

    .line 149
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_b
    const/4 v13, 0x1

    .line 150
    invoke-static {v13}, Lu0/d;->C2(I)V

    .line 151
    :cond_c
    :goto_6
    sput v3, Ll0/c0;->g:I

    .line 152
    sput v7, Ll0/c0;->h:I

    .line 153
    sput v9, Ll0/c0;->i:I

    .line 154
    sput v11, Ll0/c0;->j:I

    .line 155
    :cond_d
    sput v3, Ll0/c0;->g:I

    .line 156
    sput v7, Ll0/c0;->h:I

    .line 157
    sput v9, Ll0/c0;->i:I

    .line 158
    sput v11, Ll0/c0;->j:I

    .line 159
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 160
    aget-byte v2, v0, v5

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 161
    aget-byte v2, v0, v8

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 162
    aget-byte v0, v0, v10

    and-int/2addr v0, v6

    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_34

    .line 163
    :sswitch_8
    sget v2, Lk0/nt;->c:I

    const/16 v7, 0x15

    if-eq v2, v7, :cond_64

    const/16 v2, 0x57

    const/4 v7, 0x1

    new-array v8, v7, [I

    add-int/lit8 v7, p2, 0x2

    .line 164
    aget-byte v10, v0, v7

    and-int/2addr v10, v6

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    .line 165
    aget-byte v2, v0, v7

    and-int/2addr v2, v6

    if-eq v2, v5, :cond_11

    const/16 v7, 0xc

    if-eq v2, v7, :cond_10

    if-eq v2, v3, :cond_f

    if-eq v2, v15, :cond_e

    move v2, v11

    move v7, v2

    move v8, v7

    goto :goto_9

    :cond_e
    move v2, v11

    move v7, v2

    goto :goto_7

    :cond_f
    move v2, v11

    const/4 v7, 0x1

    :goto_7
    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    move v8, v11

    const/4 v2, 0x1

    goto :goto_8

    :cond_11
    move v2, v11

    move v8, v2

    :goto_8
    const/4 v7, 0x1

    :goto_9
    const/16 v10, 0x16

    const/4 v12, 0x1

    new-array v13, v12, [I

    aput v2, v13, v11

    .line 166
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v7, v2, v11

    const/16 v7, 0x18

    .line 167
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v7, v12, [I

    aput v8, v7, v11

    .line 168
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 169
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    const-string v7, "persist.fyt.reversetemp"

    .line 170
    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_14

    if-ne v2, v9, :cond_12

    const/16 v2, 0x29

    const/4 v7, 0x1

    new-array v6, v7, [I

    const/4 v8, -0x2

    aput v8, v6, v11

    .line 171
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_12
    const/4 v7, 0x1

    if-ne v2, v6, :cond_13

    const/16 v2, 0x29

    new-array v6, v7, [I

    const/4 v8, -0x3

    aput v8, v6, v11

    .line 172
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_13
    const/16 v6, 0x29

    new-array v8, v7, [I

    mul-int/2addr v2, v3

    aput v2, v8, v11

    .line 173
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_14
    const/4 v7, 0x1

    if-ne v2, v9, :cond_15

    new-array v2, v7, [I

    const/4 v6, -0x2

    aput v6, v2, v11

    const/16 v8, 0x28

    .line 174
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_15
    const/16 v8, 0x28

    if-ne v2, v6, :cond_16

    new-array v2, v7, [I

    const/4 v6, -0x3

    aput v6, v2, v11

    .line 175
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_16
    new-array v6, v7, [I

    mul-int/2addr v2, v3

    aput v2, v6, v11

    .line 176
    invoke-static {v8, v6}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v2, 0x58

    new-array v6, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 177
    aget-byte v9, v0, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v5

    aput v9, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x59

    new-array v6, v7, [I

    .line 178
    aget-byte v9, v0, v8

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v5

    aput v4, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5a

    new-array v4, v7, [I

    .line 179
    aget-byte v6, v0, v8

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5b

    new-array v4, v7, [I

    .line 180
    aget-byte v6, v0, v8

    shr-int/2addr v6, v15

    and-int/2addr v5, v6

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 181
    sget v2, Lk0/nt;->c:I

    const/16 v4, 0x8d

    if-ne v2, v4, :cond_64

    const/16 v2, 0x4b

    new-array v4, v7, [I

    add-int/lit8 v3, p2, 0x5

    .line 182
    aget-byte v5, v0, v3

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v4, v7, [I

    .line 183
    aget-byte v0, v0, v3

    shr-int/2addr v0, v14

    and-int/2addr v0, v7

    aput v0, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_9
    move v7, v10

    const/16 v2, 0xc7

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 184
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 185
    aget-byte v4, v0, v4

    shl-int/2addr v4, v13

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xf

    aget-byte v0, v0, v5

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    .line 186
    :sswitch_a
    sget v2, Lk0/nt;->c:I

    const/16 v7, 0x7f

    if-eq v2, v7, :cond_64

    const/16 v7, 0x87

    if-ne v2, v7, :cond_17

    goto/16 :goto_34

    :cond_17
    const/4 v2, 0x1

    .line 187
    iput-boolean v2, v1, Lmodule/canbus/r;->G:Z

    add-int/lit8 v7, p2, 0xd

    .line 188
    aget-byte v7, v0, v7

    and-int/2addr v7, v6

    add-int/lit8 v8, p2, 0x2

    .line 189
    aget-byte v10, v0, v8

    shr-int/2addr v10, v11

    and-int/2addr v10, v2

    if-nez v7, :cond_18

    .line 190
    invoke-static {v11}, Lu0/d;->A3(I)V

    goto :goto_c

    :cond_18
    if-ne v10, v2, :cond_19

    mul-int/lit8 v7, v7, 0x9

    add-int/lit16 v7, v7, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v2, v7

    and-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_19
    mul-int/2addr v7, v3

    add-int/lit16 v2, v7, 0x258

    .line 191
    :goto_b
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v7

    sget-object v10, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HandlerMain.tempOut2 == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 192
    invoke-static {v2}, Lu0/d;->B3(I)V

    const/4 v2, 0x1

    :goto_c
    new-array v7, v2, [I

    .line 193
    aget-byte v10, v0, v8

    shr-int/2addr v10, v15

    and-int/2addr v10, v2

    aput v10, v7, v11

    const/16 v10, 0xa

    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x35

    new-array v10, v2, [I

    .line 194
    aget-byte v12, v0, v8

    shr-int/2addr v12, v3

    and-int/2addr v12, v2

    aput v12, v10, v11

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x2a

    new-array v10, v2, [I

    .line 195
    aget-byte v12, v0, v8

    const/4 v13, 0x4

    shr-int/2addr v12, v13

    and-int/2addr v12, v2

    aput v12, v10, v11

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v10, v2, [I

    .line 196
    aget-byte v12, v0, v8

    shr-int/2addr v12, v5

    and-int/2addr v12, v2

    aput v12, v10, v11

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x5c

    new-array v10, v2, [I

    .line 197
    aget-byte v12, v0, v8

    shr-int/2addr v12, v2

    and-int/2addr v12, v2

    aput v12, v10, v11

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x25

    new-array v10, v2, [I

    .line 198
    aget-byte v8, v0, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v2

    aput v8, v10, v11

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x43

    new-array v8, v2, [I

    add-int/lit8 v10, p2, 0x3

    .line 199
    aget-byte v12, v0, v10

    shr-int/2addr v12, v14

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    new-array v7, v2, [I

    .line 200
    aget-byte v8, v0, v10

    shr-int/2addr v8, v15

    and-int/2addr v8, v2

    aput v8, v7, v11

    const/16 v8, 0xb

    invoke-static {v8, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v2, [I

    .line 201
    aget-byte v8, v0, v10

    const/4 v12, 0x4

    shr-int/2addr v8, v12

    and-int/2addr v8, v2

    aput v8, v7, v11

    const/16 v8, 0xc

    invoke-static {v8, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x36

    new-array v8, v2, [I

    .line 202
    aget-byte v12, v0, v10

    shr-int/2addr v12, v5

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v8, v2, [I

    .line 203
    aget-byte v12, v0, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x34

    new-array v8, v2, [I

    .line 204
    aget-byte v12, v0, v10

    shr-int/2addr v12, v2

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x22

    new-array v8, v2, [I

    .line 205
    aget-byte v10, v0, v10

    shr-int/2addr v10, v11

    and-int/2addr v10, v2

    aput v10, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x2b

    new-array v8, v2, [I

    add-int/lit8 v10, p2, 0x4

    .line 206
    aget-byte v12, v0, v10

    shr-int/2addr v12, v14

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x10

    new-array v8, v2, [I

    .line 207
    aget-byte v12, v0, v10

    shr-int/2addr v12, v3

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x41

    new-array v8, v2, [I

    .line 208
    aget-byte v12, v0, v10

    const/4 v13, 0x4

    shr-int/2addr v12, v13

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x1e

    new-array v8, v2, [I

    .line 209
    aget-byte v12, v0, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v5

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x1d

    new-array v8, v2, [I

    .line 210
    aget-byte v10, v0, v10

    shr-int/2addr v10, v11

    and-int/2addr v10, v5

    aput v10, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x20

    new-array v8, v2, [I

    add-int/lit8 v10, p2, 0x5

    .line 211
    aget-byte v12, v0, v10

    shr-int/2addr v12, v15

    and-int/2addr v12, v5

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x1f

    new-array v8, v2, [I

    .line 212
    aget-byte v12, v0, v10

    const/4 v13, 0x4

    shr-int/2addr v12, v13

    and-int/2addr v12, v5

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x11

    new-array v8, v2, [I

    .line 213
    aget-byte v12, v0, v10

    shr-int/2addr v12, v5

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x3f

    new-array v8, v2, [I

    .line 214
    aget-byte v12, v0, v10

    shr-int/2addr v12, v4

    and-int/2addr v12, v2

    aput v12, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x4c

    new-array v8, v2, [I

    .line 215
    aget-byte v10, v0, v10

    shr-int/2addr v10, v2

    and-int/2addr v10, v2

    aput v10, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x4d

    new-array v8, v2, [I

    add-int/lit8 v2, p2, 0x6

    .line 216
    aget-byte v10, v0, v2

    shr-int/2addr v10, v11

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    .line 217
    aget-byte v7, v0, v2

    shr-int/2addr v7, v11

    and-int/lit8 v7, v7, 0xf

    if-eq v7, v5, :cond_1c

    if-eq v7, v3, :cond_1b

    if-eq v7, v15, :cond_1a

    packed-switch v7, :pswitch_data_0

    move v7, v11

    move v8, v7

    move v10, v8

    goto :goto_10

    :pswitch_0
    const/4 v7, 0x1

    goto :goto_d

    :pswitch_1
    move v7, v11

    :goto_d
    const/4 v8, 0x1

    goto :goto_e

    :pswitch_2
    move v8, v11

    const/4 v7, 0x1

    :goto_e
    const/4 v10, 0x1

    goto :goto_10

    :cond_1a
    move v7, v11

    move v10, v7

    goto :goto_f

    :cond_1b
    move v10, v11

    const/4 v7, 0x1

    :goto_f
    const/4 v8, 0x1

    goto :goto_10

    :cond_1c
    move v8, v11

    move v10, v8

    const/4 v7, 0x1

    :goto_10
    const/16 v12, 0x14

    const/4 v13, 0x1

    new-array v14, v13, [I

    aput v7, v14, v11

    .line 218
    invoke-static {v12, v14}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x13

    new-array v12, v13, [I

    aput v8, v12, v11

    .line 219
    invoke-static {v7, v12}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x12

    new-array v8, v13, [I

    aput v10, v8, v11

    .line 220
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    .line 221
    sget v7, Lk0/nt;->c:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_20

    const/16 v7, 0x57

    new-array v8, v13, [I

    .line 222
    aget-byte v10, v0, v2

    const/4 v12, 0x4

    shr-int/2addr v10, v12

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v11

    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    .line 223
    aget-byte v2, v0, v2

    shr-int/2addr v2, v12

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v5, :cond_1f

    if-eq v2, v3, :cond_1e

    if-eq v2, v15, :cond_1d

    packed-switch v2, :pswitch_data_1

    move v2, v11

    move v7, v2

    move/from16 v19, v7

    :goto_11
    const/4 v8, 0x1

    goto :goto_14

    :pswitch_3
    const/4 v2, 0x1

    goto :goto_12

    :pswitch_4
    move/from16 v19, v11

    const/4 v2, 0x1

    const/4 v7, 0x1

    goto :goto_11

    :pswitch_5
    move v2, v11

    :goto_12
    const/4 v7, 0x1

    goto :goto_13

    :cond_1d
    move v7, v11

    move/from16 v19, v7

    const/4 v2, 0x1

    goto :goto_11

    :cond_1e
    move v7, v11

    const/4 v2, 0x1

    goto :goto_13

    :cond_1f
    move v2, v11

    move v7, v2

    :goto_13
    const/4 v8, 0x1

    const/16 v19, 0x1

    :goto_14
    new-array v10, v8, [I

    aput v19, v10, v11

    const/16 v12, 0x18

    .line 224
    invoke-static {v12, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x17

    new-array v12, v8, [I

    aput v2, v12, v11

    .line 225
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v10, v8, [I

    aput v7, v10, v11

    .line 226
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_20
    move v8, v13

    :goto_15
    const/16 v2, 0x15

    new-array v7, v8, [I

    add-int/lit8 v8, p2, 0x7

    .line 227
    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0xf

    aput v8, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 228
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_21

    add-int/lit8 v2, p2, 0x8

    .line 229
    aget-byte v2, v0, v2

    goto :goto_16

    :cond_21
    add-int/lit8 v2, p2, 0x9

    .line 230
    aget-byte v2, v0, v2

    :goto_16
    and-int/2addr v2, v6

    if-ne v2, v9, :cond_22

    const/16 v2, 0x1b

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v10, -0x2

    aput v10, v8, v11

    .line 231
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_22
    const/4 v7, 0x1

    if-ne v2, v6, :cond_23

    const/16 v2, 0x1b

    new-array v8, v7, [I

    const/4 v10, -0x3

    aput v10, v8, v11

    .line 232
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_23
    const/16 v8, 0x1b

    new-array v10, v7, [I

    mul-int/2addr v2, v3

    aput v2, v10, v11

    .line 233
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    :goto_17
    const-string v2, "persist.fyt.reversetemp"

    .line 234
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_24

    add-int/lit8 v2, p2, 0x9

    .line 235
    aget-byte v2, v0, v2

    goto :goto_18

    :cond_24
    add-int/lit8 v2, p2, 0x8

    .line 236
    aget-byte v2, v0, v2

    :goto_18
    and-int/2addr v2, v6

    if-ne v2, v9, :cond_25

    const/16 v2, 0x1c

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v10, -0x2

    aput v10, v8, v11

    .line 237
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_25
    const/4 v7, 0x1

    if-ne v2, v6, :cond_26

    const/16 v2, 0x1c

    new-array v8, v7, [I

    const/4 v10, -0x3

    aput v10, v8, v11

    .line 238
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_26
    const/16 v8, 0x1c

    new-array v10, v7, [I

    mul-int/2addr v2, v3

    aput v2, v10, v11

    .line 239
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    :goto_19
    add-int/lit8 v2, p2, 0xa

    .line 240
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    if-eq v2, v7, :cond_29

    if-eq v2, v4, :cond_28

    if-eq v2, v5, :cond_27

    move v2, v11

    :goto_1a
    move/from16 v19, v2

    goto :goto_1b

    :cond_27
    move v2, v7

    goto :goto_1a

    :cond_28
    move v2, v7

    move/from16 v19, v11

    goto :goto_1b

    :cond_29
    move/from16 v19, v7

    move v2, v11

    :goto_1b
    const/16 v4, 0x2f

    new-array v5, v7, [I

    aput v19, v5, v11

    .line 241
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2e

    new-array v5, v7, [I

    aput v2, v5, v11

    .line 242
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xb

    .line 243
    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    add-int/lit8 v2, p2, 0xc

    .line 244
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    const-string v2, "persist.fyt.reversetemp"

    .line 245
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2c

    if-ne v0, v9, :cond_2a

    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, -0x2

    aput v2, v0, v11

    const/16 v4, 0x28

    .line 246
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :cond_2a
    const/4 v2, 0x1

    const/16 v4, 0x28

    if-ne v0, v6, :cond_2b

    new-array v0, v2, [I

    const/4 v2, -0x3

    aput v2, v0, v11

    .line 247
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :cond_2b
    new-array v2, v2, [I

    mul-int/2addr v0, v3

    aput v0, v2, v11

    .line 248
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :cond_2c
    const/4 v2, 0x1

    if-ne v0, v9, :cond_2d

    const/16 v0, 0x29

    new-array v2, v2, [I

    const/4 v3, -0x2

    aput v3, v2, v11

    .line 249
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :cond_2d
    if-ne v0, v6, :cond_2e

    const/16 v0, 0x29

    new-array v2, v2, [I

    const/4 v3, -0x3

    aput v3, v2, v11

    .line 250
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :cond_2e
    const/16 v4, 0x29

    new-array v2, v2, [I

    mul-int/2addr v0, v3

    aput v0, v2, v11

    .line 251
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_b
    move v2, v10

    const/16 v3, 0xba

    new-array v2, v2, [I

    add-int/lit8 v4, p2, 0x2

    .line 252
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v2, v11

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 253
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 254
    aget-byte v0, v0, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_34

    if-eq v2, v4, :cond_2f

    goto/16 :goto_34

    .line 255
    :cond_2f
    iget v2, v1, Lmodule/canbus/r;->y:I

    if-eq v0, v2, :cond_64

    if-le v0, v2, :cond_31

    move v2, v11

    .line 256
    :goto_1c
    iget v3, v1, Lmodule/canbus/r;->y:I

    sub-int v3, v0, v3

    if-ge v2, v3, :cond_30

    const/16 v3, 0x1f

    .line 257
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_30
    const/16 v2, 0x1f

    const/4 v3, 0x1

    .line 258
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto :goto_1e

    :cond_31
    if-ge v0, v2, :cond_33

    move v2, v11

    .line 259
    :goto_1d
    iget v3, v1, Lmodule/canbus/r;->y:I

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_32

    const/16 v3, 0x1e

    .line 260
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_32
    const/16 v2, 0x1e

    const/4 v3, 0x1

    .line 261
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 262
    :cond_33
    :goto_1e
    iput v0, v1, Lmodule/canbus/r;->y:I

    goto/16 :goto_34

    .line 263
    :cond_34
    iget v2, v1, Lmodule/canbus/r;->x:I

    if-eq v0, v2, :cond_64

    if-le v0, v2, :cond_36

    move v2, v11

    .line 264
    :goto_1f
    iget v3, v1, Lmodule/canbus/r;->x:I

    sub-int v3, v0, v3

    if-ge v2, v3, :cond_35

    .line 265
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_35
    const/4 v3, 0x1

    .line 266
    invoke-static {v14, v3}, Ll0/b0;->l0(II)V

    goto :goto_21

    :cond_36
    const/4 v3, 0x1

    if-ge v0, v2, :cond_38

    move v2, v11

    .line 267
    :goto_20
    iget v4, v1, Lmodule/canbus/r;->x:I

    sub-int/2addr v4, v0

    if-ge v2, v4, :cond_37

    .line 268
    invoke-static {v13, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 269
    :cond_37
    invoke-static {v13, v3}, Ll0/b0;->l0(II)V

    .line 270
    :cond_38
    :goto_21
    iput v0, v1, Lmodule/canbus/r;->x:I

    goto/16 :goto_34

    :sswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 271
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    iput v2, v1, Lmodule/canbus/r;->l:I

    add-int/lit8 v2, p2, 0x3

    .line 272
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    move v2, v11

    .line 273
    :goto_22
    iget-object v3, v1, Lmodule/canbus/r;->m:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3a

    .line 274
    iget v4, v1, Lmodule/canbus/r;->l:I

    aget-object v5, v3, v2

    aget v5, v5, v11

    if-ne v4, v5, :cond_39

    if-eqz v4, :cond_3a

    .line 275
    iput v2, v1, Lmodule/canbus/r;->k:I

    goto :goto_23

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_3a
    :goto_23
    and-int/2addr v0, v6

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3b

    .line 276
    array-length v0, v3

    if-ge v2, v0, :cond_64

    .line 277
    aget-object v0, v3, v2

    aget v0, v0, v4

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_34

    :cond_3b
    if-nez v0, :cond_64

    .line 278
    iget v0, v1, Lmodule/canbus/r;->k:I

    array-length v2, v3

    if-ge v0, v2, :cond_3c

    if-eq v0, v6, :cond_3c

    .line 279
    aget-object v0, v3, v0

    aget v0, v0, v4

    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    .line 280
    :cond_3c
    iput v6, v1, Lmodule/canbus/r;->k:I

    goto/16 :goto_34

    :sswitch_e
    move v4, v10

    const/16 v2, 0x80

    new-array v3, v4, [I

    add-int/lit8 v7, p2, 0x2

    .line 281
    aget-byte v8, v0, v7

    shr-int/2addr v8, v14

    and-int/2addr v8, v4

    aput v8, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v4, [I

    .line 282
    aget-byte v7, v0, v7

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v4, [I

    add-int/lit8 v4, p2, 0x3

    .line 283
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    .line 284
    :sswitch_f
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v4, [I

    const/16 v4, 0xc

    aput v4, v3, v11

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    aget-byte v0, v0, v4

    shr-int/2addr v0, v14

    const/4 v7, 0x1

    and-int/2addr v0, v7

    aput v0, v3, v7

    const/16 v0, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_34

    :sswitch_10
    move v7, v10

    add-int/lit8 v2, p2, 0x3

    .line 285
    aget-byte v3, v0, v2

    shr-int/2addr v3, v14

    and-int/2addr v3, v7

    .line 286
    aget-byte v8, v0, v2

    shr-int/2addr v8, v15

    and-int/2addr v8, v7

    shl-int/2addr v3, v5

    and-int/2addr v3, v13

    const/4 v7, 0x4

    shl-int/lit8 v7, v8, 0x4

    and-int/lit8 v7, v7, 0x10

    or-int/2addr v3, v7

    .line 287
    sget v7, Lu0/b;->w:I

    shl-int/2addr v7, v15

    and-int/lit8 v7, v7, 0x40

    or-int/2addr v3, v7

    .line 288
    sget-object v7, Lk0/nt;->f:[Lo1/x;

    new-array v4, v4, [I

    const/16 v8, 0xb

    aput v8, v4, v11

    const/4 v8, 0x1

    aput v3, v4, v8

    const/16 v3, 0x419

    const/4 v9, 0x0

    invoke-static {v7, v3, v4, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 289
    aget-byte v3, v0, v2

    shr-int/2addr v3, v14

    and-int/2addr v3, v8

    aget-byte v4, v0, v2

    shr-int/2addr v4, v15

    and-int/2addr v4, v8

    aget-byte v2, v0, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    invoke-static {v3, v4, v2}, Ll0/c0;->N1(III)V

    const/16 v2, 0xc2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 290
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 291
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 292
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 293
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v8, [I

    const/16 v4, 0xb

    add-int/lit8 v4, p2, 0xb

    .line 294
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_11
    add-int/lit8 v2, p2, 0x3e

    .line 295
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    const/16 v3, 0x18

    shl-int/2addr v2, v3

    move v3, v11

    :goto_24
    const/16 v7, 0x1e

    if-ge v3, v7, :cond_64

    new-array v7, v4, [I

    aput v3, v7, v11

    mul-int/lit8 v8, v3, 0x2

    add-int v8, p2, v8

    add-int/lit8 v9, v8, 0x2

    .line 296
    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    shl-int/2addr v9, v13

    add-int/2addr v8, v5

    aget-byte v8, v0, v8

    and-int/2addr v8, v6

    or-int/2addr v8, v9

    or-int/2addr v8, v2

    const/4 v9, 0x1

    aput v8, v7, v9

    const/16 v8, 0x75

    .line 297
    iget-object v9, v1, Lmodule/canbus/r;->c:[[I

    aget-object v9, v9, v3

    invoke-static {v8, v7, v9}, Lk0/qt;->C0(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 298
    iget-object v8, v1, Lmodule/canbus/r;->c:[[I

    aput-object v7, v8, v3

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :sswitch_12
    add-int/lit8 v2, p2, 0xe

    .line 299
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    const/16 v5, 0x18

    shl-int/2addr v2, v5

    const/16 v5, 0x73

    const/4 v7, 0x1

    new-array v8, v7, [I

    add-int/lit8 v7, p2, 0x2

    .line 300
    aget-byte v7, v0, v7

    and-int/2addr v7, v6

    shl-int/2addr v7, v13

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v7, v9

    or-int/2addr v7, v2

    aput v7, v8, v11

    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    move v5, v11

    :goto_25
    if-ge v5, v3, :cond_64

    new-array v7, v4, [I

    aput v5, v7, v11

    mul-int/lit8 v8, v5, 0x2

    add-int v8, p2, v8

    add-int/lit8 v9, v8, 0x4

    .line 301
    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    shl-int/2addr v9, v13

    add-int/2addr v8, v3

    aget-byte v8, v0, v8

    and-int/2addr v8, v6

    or-int/2addr v8, v9

    or-int/2addr v8, v2

    const/4 v9, 0x1

    aput v8, v7, v9

    const/16 v8, 0x74

    .line 302
    iget-object v9, v1, Lmodule/canbus/r;->b:[[I

    aget-object v9, v9, v5

    invoke-static {v8, v7, v9}, Lk0/qt;->C0(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 303
    iget-object v8, v1, Lmodule/canbus/r;->b:[[I

    aput-object v7, v8, v5

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :sswitch_13
    add-int/lit8 v2, p2, 0xc

    .line 304
    aget-byte v3, v0, v2

    and-int/2addr v3, v6

    const/16 v4, 0x18

    shl-int/2addr v3, v4

    add-int/lit8 v5, p2, 0xd

    .line 305
    aget-byte v7, v0, v5

    and-int/2addr v7, v6

    shl-int/lit8 v4, v7, 0x18

    const/16 v7, 0x62

    const/4 v8, 0x1

    new-array v9, v8, [I

    add-int/lit8 v8, p2, 0x2

    .line 306
    aget-byte v8, v0, v8

    and-int/2addr v8, v6

    shl-int/2addr v8, v13

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v0, v10

    and-int/2addr v10, v6

    or-int/2addr v8, v10

    or-int/2addr v8, v3

    aput v8, v9, v11

    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x63

    const/4 v8, 0x1

    new-array v9, v8, [I

    add-int/lit8 v8, p2, 0x4

    .line 307
    aget-byte v8, v0, v8

    and-int/2addr v8, v6

    shl-int/2addr v8, v13

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v0, v10

    and-int/2addr v10, v6

    or-int/2addr v8, v10

    or-int/2addr v4, v8

    aput v4, v9, v11

    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x76

    const/4 v7, 0x1

    new-array v8, v7, [I

    add-int/lit8 v7, p2, 0x6

    .line 308
    aget-byte v7, v0, v7

    and-int/2addr v7, v6

    shl-int/2addr v7, v13

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v7, v9

    or-int/2addr v3, v7

    aput v3, v8, v11

    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    const/4 v4, 0x1

    new-array v7, v4, [I

    add-int/lit8 v4, p2, 0x8

    .line 309
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v0, v8

    and-int/2addr v8, v6

    or-int/2addr v4, v8

    aput v4, v7, v11

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    const/4 v4, 0x1

    new-array v7, v4, [I

    add-int/lit8 v4, p2, 0xa

    .line 310
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v13

    const/16 v8, 0xb

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v0, v8

    and-int/2addr v8, v6

    or-int/2addr v4, v8

    aput v4, v7, v11

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbd

    const/4 v4, 0x1

    new-array v7, v4, [I

    .line 311
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    aput v2, v7, v11

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v4, [I

    .line 312
    aget-byte v0, v0, v5

    and-int/2addr v0, v6

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    .line 313
    :sswitch_14
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_64

    add-int/lit8 v2, p2, 0x2

    .line 314
    aget-byte v0, v0, v2

    shr-int/2addr v0, v14

    const/4 v2, 0x1

    and-int/2addr v0, v2

    .line 315
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_64

    if-eqz v0, :cond_3f

    .line 316
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 317
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_34

    .line 318
    :cond_3f
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 319
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_34

    :sswitch_15
    add-int/lit8 v2, p2, 0x2

    .line 320
    aget-byte v2, v0, v2

    shr-int/2addr v2, v14

    const/4 v7, 0x1

    and-int/2addr v2, v7

    .line 321
    iget v8, v1, Lmodule/canbus/r;->v:I

    if-eq v8, v2, :cond_42

    if-eqz v2, :cond_40

    .line 322
    sget v8, Ly0/f;->i:I

    if-eq v8, v7, :cond_41

    const/16 v9, 0xc

    .line 323
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    .line 324
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    goto :goto_26

    :cond_40
    const/16 v9, 0xc

    if-ne v8, v7, :cond_41

    if-nez v2, :cond_41

    .line 325
    sget v8, Ly0/f;->i:I

    if-ne v8, v7, :cond_41

    .line 326
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    .line 327
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    .line 328
    :cond_41
    :goto_26
    iput v2, v1, Lmodule/canbus/r;->v:I

    :cond_42
    add-int/lit8 v2, p2, 0x6

    .line 329
    aget-byte v2, v0, v2

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v7

    aput v9, v8, v11

    .line 330
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v7

    aput v9, v8, v11

    .line 331
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v11

    .line 332
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v7

    aput v9, v8, v11

    const/4 v9, 0x4

    .line 333
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    const-string v8, "persist.syu.reversefrontdoor"

    .line 334
    invoke-static {v8, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_43

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v11

    .line 335
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v7

    aput v2, v8, v11

    .line 336
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_27

    :cond_43
    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v11

    .line 337
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v7

    aput v2, v8, v11

    .line 338
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    :goto_27
    add-int/lit8 v2, p2, 0x4

    .line 339
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    iput v2, v1, Lmodule/canbus/r;->f:I

    add-int/lit8 v2, p2, 0x5

    .line 340
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    move v7, v11

    .line 341
    :goto_28
    iget-object v8, v1, Lmodule/canbus/r;->j:[[I

    array-length v9, v8

    if-ge v7, v9, :cond_45

    .line 342
    iget v9, v1, Lmodule/canbus/r;->f:I

    aget-object v10, v8, v7

    aget v10, v10, v11

    if-ne v9, v10, :cond_44

    if-eqz v9, :cond_45

    .line 343
    iput v7, v1, Lmodule/canbus/r;->e:I

    .line 344
    iput v9, v1, Lmodule/canbus/r;->g:I

    goto :goto_29

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 345
    :cond_45
    :goto_29
    iget v9, v1, Lmodule/canbus/r;->f:I

    if-eqz v9, :cond_4b

    if-eq v9, v3, :cond_49

    const/16 v4, 0xc

    if-eq v9, v4, :cond_48

    and-int/2addr v2, v6

    const/4 v4, 0x1

    if-ne v2, v4, :cond_46

    .line 346
    array-length v2, v8

    if-ge v7, v2, :cond_4f

    .line 347
    aget-object v2, v8, v7

    aget v2, v2, v4

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_2c

    :cond_46
    if-nez v2, :cond_4f

    .line 348
    iget v2, v1, Lmodule/canbus/r;->e:I

    array-length v3, v8

    if-ge v2, v3, :cond_47

    if-eq v2, v6, :cond_47

    .line 349
    aget-object v2, v8, v2

    aget v2, v2, v4

    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 350
    :cond_47
    iput v6, v1, Lmodule/canbus/r;->e:I

    goto :goto_2c

    :cond_48
    const/4 v4, 0x1

    .line 351
    iget v3, v1, Lmodule/canbus/r;->i:I

    if-eq v3, v2, :cond_4f

    .line 352
    iput v2, v1, Lmodule/canbus/r;->i:I

    if-ne v2, v4, :cond_4f

    .line 353
    iput-boolean v11, v1, Lmodule/canbus/r;->h:Z

    .line 354
    iput-byte v11, v1, Lmodule/canbus/r;->r:B

    .line 355
    iget-object v2, v1, Lmodule/canbus/r;->s:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_2c

    :cond_49
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4f

    .line 356
    sget v2, Lh0/c;->E:I

    if-eq v2, v5, :cond_4a

    if-eq v2, v3, :cond_4a

    const/16 v2, 0x12

    .line 357
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 358
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_2c

    :cond_4a
    const/16 v2, 0x1a

    .line 359
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 360
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_2c

    .line 361
    :cond_4b
    iget v3, v1, Lmodule/canbus/r;->g:I

    const/16 v5, 0xc

    if-eq v3, v5, :cond_4d

    and-int/2addr v2, v6

    if-nez v2, :cond_4e

    .line 362
    iget v2, v1, Lmodule/canbus/r;->e:I

    array-length v3, v8

    if-ge v2, v3, :cond_4c

    if-eq v2, v6, :cond_4c

    .line 363
    aget-object v2, v8, v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto :goto_2a

    :cond_4c
    const/4 v3, 0x1

    .line 364
    :goto_2a
    iput v6, v1, Lmodule/canbus/r;->e:I

    goto :goto_2b

    :cond_4d
    const/4 v3, 0x1

    .line 365
    iget-boolean v2, v1, Lmodule/canbus/r;->h:Z

    if-nez v2, :cond_4e

    .line 366
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    .line 367
    invoke-static {v4, v3}, Ll0/b0;->l0(II)V

    .line 368
    :cond_4e
    :goto_2b
    iget-object v2, v1, Lmodule/canbus/r;->s:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 369
    iput-boolean v11, v1, Lmodule/canbus/r;->h:Z

    .line 370
    iput-byte v11, v1, Lmodule/canbus/r;->r:B

    .line 371
    iput v11, v1, Lmodule/canbus/r;->i:I

    .line 372
    iput v11, v1, Lmodule/canbus/r;->g:I

    :cond_4f
    :goto_2c
    add-int/lit8 v2, p2, 0x9

    .line 373
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x8

    aget-byte v0, v0, v3

    and-int/2addr v0, v6

    const/16 v3, 0x21c

    const/4 v4, 0x1

    invoke-static {v2, v0, v4, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_34

    .line 374
    :sswitch_16
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v1, Lmodule/canbus/r;->u:Ljava/lang/String;

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lmodule/canbus/r;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lmodule/canbus/r;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 376
    :sswitch_17
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_51

    add-int/lit8 v2, p2, 0x5

    .line 377
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    .line 378
    invoke-static {v0}, Lk0/qt;->a(I)V

    goto/16 :goto_34

    .line 379
    :cond_50
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_34

    .line 380
    :cond_51
    iget v2, v1, Lmodule/canbus/r;->w:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v4, v0, v3

    and-int/2addr v4, v6

    if-eq v2, v4, :cond_64

    .line 381
    aget-byte v0, v0, v3

    and-int/2addr v0, v6

    iput v0, v1, Lmodule/canbus/r;->w:I

    if-nez v0, :cond_52

    .line 382
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x266

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_34

    .line 383
    :cond_52
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x24e

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_34

    .line 384
    :sswitch_18
    iget v2, v1, Lmodule/canbus/r;->z:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v0, v3

    if-eq v2, v4, :cond_64

    .line 385
    aget-byte v2, v0, v3

    iput v2, v1, Lmodule/canbus/r;->z:I

    .line 386
    aget-byte v0, v0, v3

    packed-switch v0, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_34

    :pswitch_7
    const/16 v0, 0x35

    .line 387
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    const/4 v2, 0x1

    .line 388
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_34

    .line 389
    :pswitch_8
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xd

    if-eq v0, v2, :cond_64

    .line 390
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/r;->D3()V

    goto/16 :goto_34

    :pswitch_9
    const/4 v2, 0x1

    const/16 v0, 0x34

    .line 391
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 392
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_34

    :pswitch_a
    const/4 v2, 0x1

    const/16 v0, 0x4c

    .line 393
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 394
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_34

    :pswitch_b
    const/4 v2, 0x1

    const/16 v0, 0x36

    .line 395
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 396
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_34

    .line 397
    :pswitch_c
    sget v0, Lk0/nt;->c:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_54

    const/16 v2, 0x19

    if-eq v0, v2, :cond_54

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_54

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_54

    const/16 v2, 0x89

    if-eq v0, v2, :cond_54

    const/16 v2, 0xe

    if-ne v0, v2, :cond_53

    goto :goto_2d

    :cond_53
    const/16 v0, 0x4a

    .line 398
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    const/4 v2, 0x1

    .line 399
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_34

    .line 400
    :cond_54
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/r;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.wccamry.Wc09LexusESCarRadioActi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 401
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/r;->E3()V

    goto/16 :goto_34

    .line 402
    :pswitch_d
    sget v0, Lk0/nt;->c:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_56

    const/16 v2, 0x19

    if-eq v0, v2, :cond_56

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_56

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_56

    const/16 v2, 0x89

    if-eq v0, v2, :cond_56

    const/16 v2, 0xe

    if-ne v0, v2, :cond_55

    goto :goto_2e

    :cond_55
    const/16 v0, 0x4b

    .line 403
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    const/4 v2, 0x1

    .line 404
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto/16 :goto_34

    .line 405
    :cond_56
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/r;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.wccamry.Wc09LexusESCarRadioActi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 406
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/r;->E3()V

    goto/16 :goto_34

    .line 407
    :sswitch_19
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x20

    const-string v5, "UTF-16LE"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v4, 0x9b

    const/4 v5, 0x1

    new-array v5, v5, [I

    .line 408
    aget-byte v0, v0, v3

    aput v0, v5, v11

    invoke-static {v4, v5, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_34

    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_34

    .line 410
    :sswitch_1a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_64

    add-int/lit8 v2, p2, 0x2

    .line 411
    aget-byte v3, v0, v2

    and-int/2addr v3, v6

    const/16 v4, 0x3f

    .line 412
    invoke-static {v3, v11, v4}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lmodule/canbus/r;->V:I

    const/16 v3, 0xa1

    const/4 v7, 0x1

    new-array v4, v7, [I

    .line 413
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    aput v2, v4, v11

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 414
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 415
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 416
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 417
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 418
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 419
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    .line 420
    aget-byte v0, v0, v4

    and-int/2addr v0, v7

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_1b
    move v7, v10

    const/16 v2, 0x8a

    new-array v8, v7, [I

    add-int/lit8 v9, p2, 0x2

    .line 421
    aget-byte v9, v0, v9

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/lit8 v9, v9, 0xf

    aput v9, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v8, v7, [I

    add-int/lit8 v9, p2, 0x3

    .line 422
    aget-byte v10, v0, v9

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v8, v7, [I

    .line 423
    aget-byte v10, v0, v9

    shr-int/2addr v10, v7

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v8, v7, [I

    .line 424
    aget-byte v10, v0, v9

    shr-int/2addr v10, v4

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v8, v7, [I

    .line 425
    aget-byte v10, v0, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v8, v7, [I

    .line 426
    aget-byte v10, v0, v9

    const/4 v12, 0x4

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v8, v7, [I

    .line 427
    aget-byte v9, v0, v9

    shr-int/2addr v9, v3

    and-int/2addr v9, v7

    aput v9, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v8, v7, [I

    add-int/lit8 v9, p2, 0x8

    .line 428
    aget-byte v10, v0, v9

    shr-int/2addr v10, v14

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v8, v7, [I

    .line 429
    aget-byte v10, v0, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v8, v7, [I

    .line 430
    aget-byte v10, v0, v9

    shr-int/lit8 v3, v10, 0x5

    and-int/2addr v3, v7

    aput v3, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    .line 431
    aget-byte v8, v0, v9

    const/4 v10, 0x4

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v7, [I

    .line 432
    aget-byte v8, v0, v9

    shr-int/lit8 v5, v8, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    .line 433
    aget-byte v5, v0, v9

    shr-int/lit8 v4, v5, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 434
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 435
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 436
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 437
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_1c
    move v7, v10

    const/16 v2, 0xb0

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 438
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 439
    aget-byte v4, v0, v4

    shl-int/2addr v4, v13

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    const/4 v7, 0x1

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 440
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 441
    aget-byte v5, v0, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v7, [I

    .line 442
    aget-byte v4, v0, v4

    shr-int/2addr v4, v15

    and-int/2addr v4, v7

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 443
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_34

    :sswitch_1d
    move v7, v10

    .line 444
    iget-boolean v2, v1, Lmodule/canbus/r;->G:Z

    if-eqz v2, :cond_57

    goto/16 :goto_34

    :cond_57
    new-array v2, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 445
    aget-byte v9, v0, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v7

    aput v9, v2, v11

    const/16 v9, 0xa

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v9, v7, [I

    .line 446
    aget-byte v10, v0, v8

    shr-int/2addr v10, v3

    and-int/2addr v10, v7

    aput v10, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v9, v7, [I

    .line 447
    aget-byte v10, v0, v8

    const/4 v12, 0x4

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v9, v7, [I

    .line 448
    aget-byte v10, v0, v8

    shr-int/2addr v10, v5

    and-int/2addr v10, v7

    aput v10, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v9, v7, [I

    .line 449
    aget-byte v8, v0, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v8, v7, [I

    add-int/lit8 v9, p2, 0x3

    .line 450
    aget-byte v10, v0, v9

    shr-int/2addr v10, v14

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 451
    aget-byte v8, v0, v9

    shr-int/2addr v8, v15

    and-int/2addr v8, v7

    aput v8, v2, v11

    const/16 v8, 0xb

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v8, v7, [I

    .line 452
    aget-byte v10, v0, v9

    const/4 v12, 0x4

    shr-int/2addr v10, v12

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v8, v7, [I

    .line 453
    aget-byte v10, v0, v9

    shr-int/2addr v10, v3

    and-int/2addr v10, v7

    aput v10, v8, v11

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 454
    aget-byte v8, v0, v9

    shr-int/lit8 v5, v8, 0x3

    and-int/2addr v5, v7

    aput v5, v2, v11

    const/16 v5, 0xc

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v5, v7, [I

    .line 455
    aget-byte v8, v0, v9

    shr-int/lit8 v4, v8, 0x2

    and-int/2addr v4, v7

    aput v4, v5, v11

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v4, v7, [I

    .line 456
    aget-byte v5, v0, v9

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v4, v7, [I

    .line 457
    aget-byte v5, v0, v9

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 458
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    if-ne v2, v7, :cond_58

    const/16 v2, 0x1b

    new-array v4, v7, [I

    const/4 v5, -0x2

    aput v5, v4, v11

    .line 459
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_30

    :cond_58
    if-ne v2, v6, :cond_59

    const/16 v2, 0x1b

    new-array v4, v7, [I

    const/4 v5, -0x3

    aput v5, v4, v11

    .line 460
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_30

    :cond_59
    if-eqz v2, :cond_5b

    const/16 v4, 0x74

    if-lt v2, v4, :cond_5b

    const/16 v4, 0x90

    if-le v2, v4, :cond_5a

    goto :goto_2f

    :cond_5a
    const/16 v4, 0x1b

    new-array v5, v7, [I

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x190

    aput v2, v5, v11

    .line 461
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_30

    :cond_5b
    :goto_2f
    const/16 v2, 0x1b

    new-array v4, v7, [I

    const/4 v5, -0x1

    aput v5, v4, v11

    .line 462
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_30
    add-int/lit8 v2, p2, 0x5

    .line 463
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    if-ne v2, v7, :cond_5c

    const/16 v2, 0x1c

    new-array v4, v7, [I

    const/4 v5, -0x2

    aput v5, v4, v11

    .line 464
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_32

    :cond_5c
    if-ne v2, v6, :cond_5d

    const/16 v2, 0x1c

    new-array v4, v7, [I

    const/4 v5, -0x3

    aput v5, v4, v11

    .line 465
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_32

    :cond_5d
    if-eqz v2, :cond_5f

    const/16 v4, 0x74

    if-lt v2, v4, :cond_5f

    const/16 v4, 0x90

    if-le v2, v4, :cond_5e

    goto :goto_31

    :cond_5e
    const/16 v4, 0x1c

    new-array v5, v7, [I

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x190

    aput v2, v5, v11

    .line 466
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_32

    :cond_5f
    :goto_31
    const/16 v2, 0x1c

    new-array v4, v7, [I

    const/4 v5, -0x1

    aput v5, v4, v11

    .line 467
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_32
    const/16 v2, 0x14

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 468
    aget-byte v8, v0, v5

    shr-int/2addr v8, v15

    and-int/2addr v8, v7

    aput v8, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v7, [I

    .line 469
    aget-byte v8, v0, v5

    shr-int/2addr v8, v3

    and-int/2addr v8, v7

    aput v8, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v7, [I

    .line 470
    aget-byte v8, v0, v5

    const/4 v9, 0x4

    shr-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    .line 471
    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 472
    aget-byte v8, v0, v5

    shr-int/2addr v8, v7

    and-int/2addr v8, v7

    aput v8, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v7, [I

    .line 473
    aget-byte v5, v0, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v7

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 474
    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 475
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-ne v0, v7, :cond_60

    new-array v0, v7, [I

    const/4 v2, -0x2

    aput v2, v0, v11

    const/16 v2, 0x28

    .line 476
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_34

    :cond_60
    const/16 v2, 0x28

    if-ne v0, v6, :cond_61

    new-array v0, v7, [I

    const/4 v3, -0x3

    aput v3, v0, v11

    .line 477
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_34

    :cond_61
    if-eqz v0, :cond_63

    const/16 v2, 0x74

    if-lt v0, v2, :cond_63

    const/16 v2, 0x90

    if-le v0, v2, :cond_62

    goto :goto_33

    :cond_62
    new-array v2, v7, [I

    mul-int/2addr v0, v3

    add-int/lit16 v0, v0, -0x190

    aput v0, v2, v11

    const/16 v0, 0x28

    .line 478
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_34

    :cond_63
    :goto_33
    const/16 v0, 0x28

    new-array v2, v7, [I

    const/4 v3, -0x1

    aput v3, v2, v11

    .line 479
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :cond_64
    :goto_34
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e -> :sswitch_1d
        -0x7c -> :sswitch_1c
        -0x7a -> :sswitch_1b
        -0x5a -> :sswitch_1a
        -0x58 -> :sswitch_19
        -0x20 -> :sswitch_18
        -0x18 -> :sswitch_17
        -0x10 -> :sswitch_16
        0x11 -> :sswitch_15
        0x12 -> :sswitch_14
        0x13 -> :sswitch_13
        0x16 -> :sswitch_12
        0x17 -> :sswitch_11
        0x18 -> :sswitch_10
        0x1a -> :sswitch_f
        0x1f -> :sswitch_e
        0x21 -> :sswitch_d
        0x22 -> :sswitch_c
        0x23 -> :sswitch_b
        0x31 -> :sswitch_a
        0x32 -> :sswitch_9
        0x37 -> :sswitch_8
        0x41 -> :sswitch_6
        0x48 -> :sswitch_5
        0x52 -> :sswitch_4
        0x5e -> :sswitch_3
        0x61 -> :sswitch_2
        0x62 -> :sswitch_1
        0x63 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x280126 -> :sswitch_7
        0x290126 -> :sswitch_7
        0x2a0126 -> :sswitch_7
        0x2b0126 -> :sswitch_7
        0x380126 -> :sswitch_7
        0x390126 -> :sswitch_7
        0x820126 -> :sswitch_7
        0x860126 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0x1e
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1e
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/r;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v2, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v2, Lw0/e;->e:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/r;->N:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v2, p0, Lmodule/canbus/r;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->P:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->Q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->R:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v1, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->O:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->O:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v1, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/r;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    iget-object v1, p0, Lmodule/canbus/r;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lmodule/canbus/r;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lmodule/canbus/r;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/r;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x115

    if-ge p2, p3, :cond_2

    const/16 p3, 0x74

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x75

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
    const/16 p3, 0x1e

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lmodule/canbus/r;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lmodule/canbus/r;->b:[[I

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

    const/16 v3, 0x3eb

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eq v1, v3, :cond_18

    const/16 v3, 0x3ed

    const/16 v6, 0xff

    const/16 v7, 0xe3

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v1, v3, :cond_17

    const/16 v3, 0x405

    const/4 v14, 0x7

    if-eq v1, v3, :cond_15

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v3, -0x5b

    const/16 v6, 0x5a

    const v15, 0x870126

    const v13, 0x7f0126

    const/16 v16, 0x3d

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_0
    new-array v1, v14, [I

    aput v7, v1, v5

    aput v9, v1, v12

    const/16 v3, 0x6f

    aput v3, v1, v11

    .line 1
    aget v3, v2, v5

    aput v3, v1, v10

    aget v3, v2, v12

    aput v3, v1, v9

    aget v3, v2, v11

    aput v3, v1, v8

    aget v2, v2, v10

    aput v2, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_1
    new-array v1, v14, [I

    aput v7, v1, v5

    aput v9, v1, v12

    const/16 v3, 0x5f

    aput v3, v1, v11

    .line 2
    aget v3, v2, v5

    aput v3, v1, v10

    aget v3, v2, v12

    aput v3, v1, v9

    aget v3, v2, v11

    aput v3, v1, v8

    aget v2, v2, v10

    aput v2, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_2
    const/16 v1, 0xc8

    new-array v3, v12, [I

    .line 3
    aget v2, v2, v5

    aput v2, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    .line 4
    :pswitch_3
    aget v1, v2, v5

    if-ne v1, v12, :cond_0

    .line 5
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 6
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/r;->F3()V

    goto/16 :goto_3

    .line 7
    :cond_0
    aget v1, v2, v5

    if-nez v1, :cond_19

    const/16 v1, 0x3e

    .line 8
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 9
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_3

    .line 10
    :pswitch_4
    sget v1, Lk0/nt;->a:I

    if-eq v1, v13, :cond_1

    if-eq v1, v15, :cond_1

    new-array v1, v8, [I

    aput v7, v1, v5

    aput v11, v1, v12

    aput v16, v1, v11

    .line 11
    aget v3, v2, v5

    aput v3, v1, v10

    aget v2, v2, v12

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_1
    new-array v1, v14, [B

    aput-byte v6, v1, v5

    aput-byte v3, v1, v12

    aput-byte v11, v1, v11

    aput-byte v16, v1, v10

    .line 12
    aget v3, v2, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    aget v2, v2, v12

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    aput-byte v5, v1, v4

    invoke-static {v1}, Lmodule/canbus/r;->K3([B)V

    goto/16 :goto_3

    :pswitch_5
    new-array v1, v8, [I

    aput v7, v1, v5

    aput v11, v1, v12

    const/16 v3, -0x66

    aput v3, v1, v11

    .line 13
    aget v3, v2, v5

    aput v3, v1, v10

    aget v2, v2, v12

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_6
    new-array v1, v8, [I

    aput v7, v1, v5

    aput v11, v1, v12

    const/16 v3, 0x2a

    aput v3, v1, v11

    .line 14
    aget v3, v2, v5

    aput v3, v1, v10

    aget v2, v2, v12

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_7
    new-array v1, v8, [I

    aput v7, v1, v5

    aput v11, v1, v12

    const/16 v3, -0xe

    aput v3, v1, v11

    .line 15
    aget v3, v2, v5

    aput v3, v1, v10

    aget v2, v2, v12

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_8
    new-array v1, v4, [I

    aput v7, v1, v5

    aput v10, v1, v12

    const/16 v3, 0x6a

    aput v3, v1, v11

    .line 16
    aget v3, v2, v5

    int-to-byte v3, v3

    aput v3, v1, v10

    aget v3, v2, v12

    int-to-byte v3, v3

    aput v3, v1, v9

    aget v2, v2, v11

    int-to-byte v2, v2

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_9
    new-array v1, v8, [I

    aput v7, v1, v5

    aput v11, v1, v12

    const/16 v7, -0x53

    aput v7, v1, v11

    .line 17
    aget v4, v2, v5

    int-to-byte v4, v4

    aput v4, v1, v10

    aget v4, v2, v12

    int-to-byte v4, v4

    aput v4, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    .line 18
    sget v1, Lk0/nt;->a:I

    if-eq v1, v13, :cond_2

    if-eq v1, v15, :cond_2

    goto/16 :goto_3

    :cond_2
    new-array v1, v14, [B

    aput-byte v6, v1, v5

    aput-byte v3, v1, v12

    aput-byte v11, v1, v11

    aput-byte v7, v1, v10

    .line 19
    aget v3, v2, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    aget v2, v2, v12

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    const/4 v2, 0x6

    aput-byte v5, v1, v2

    invoke-static {v1}, Lmodule/canbus/r;->K3([B)V

    goto/16 :goto_3

    .line 20
    :pswitch_a
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v8, [I

    aput v7, v1, v5

    aput v11, v1, v12

    aput v16, v1, v11

    .line 22
    aget v3, v2, v5

    int-to-byte v3, v3

    aput v3, v1, v10

    aget v2, v2, v12

    int-to-byte v2, v2

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 23
    :cond_3
    aget v1, v2, v5

    packed-switch v1, :pswitch_data_3

    goto :goto_0

    :pswitch_b
    const/16 v1, 0xe

    .line 24
    aput v1, v2, v5

    goto :goto_0

    :pswitch_c
    const/16 v1, 0xd

    .line 25
    aput v1, v2, v5

    goto :goto_0

    :pswitch_d
    const/16 v1, 0x10

    .line 26
    aput v1, v2, v5

    goto :goto_0

    :pswitch_e
    const/16 v1, 0xf

    .line 27
    aput v1, v2, v5

    :goto_0
    new-array v1, v8, [I

    aput v7, v1, v5

    aput v11, v1, v12

    aput v16, v1, v11

    .line 28
    aget v3, v2, v5

    int-to-byte v3, v3

    aput v3, v1, v10

    aget v2, v2, v12

    int-to-byte v2, v2

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_f
    const/16 v1, 0xa

    .line 29
    aget v2, v2, v5

    int-to-byte v2, v2

    invoke-virtual {v0, v12, v1, v2}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    .line 30
    :pswitch_10
    aget v1, v2, v5

    int-to-byte v1, v1

    const/16 v2, 0x9

    invoke-virtual {v0, v12, v2, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    .line 31
    :pswitch_11
    aget v1, v2, v5

    int-to-byte v1, v1

    const/16 v2, 0x8

    invoke-virtual {v0, v12, v2, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    .line 32
    :pswitch_12
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v10, v10, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_13
    if-eqz v2, :cond_19

    .line 33
    array-length v1, v2

    if-lez v1, :cond_19

    .line 34
    aget v1, v2, v5

    if-eqz v1, :cond_4

    .line 35
    aput v12, v2, v5

    .line 36
    :cond_4
    aget v1, v2, v5

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lmodule/canbus/r;->d3(II)V

    goto/16 :goto_3

    :pswitch_14
    if-eqz v2, :cond_19

    .line 37
    array-length v1, v2

    if-lez v1, :cond_19

    .line 38
    aget v1, v2, v5

    if-eqz v1, :cond_5

    .line 39
    aput v12, v2, v5

    .line 40
    :cond_5
    aget v1, v2, v5

    invoke-virtual {v0, v14, v1}, Lmodule/canbus/r;->d3(II)V

    goto/16 :goto_3

    .line 41
    :pswitch_15
    invoke-virtual {v0, v9, v11, v12}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    .line 42
    :pswitch_16
    invoke-virtual {v0, v9, v11, v11}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    .line 43
    :pswitch_17
    invoke-virtual {v0, v9, v12, v12}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    .line 44
    :pswitch_18
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v10, v11, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_19
    if-eqz v2, :cond_19

    .line 45
    array-length v1, v2

    if-lez v1, :cond_19

    .line 46
    aget v1, v2, v5

    if-gez v1, :cond_6

    .line 47
    aput v5, v2, v5

    goto :goto_1

    .line 48
    :cond_6
    aget v1, v2, v5

    if-le v1, v10, :cond_7

    .line 49
    aput v10, v2, v5

    .line 50
    :cond_7
    :goto_1
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v10, v11, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_1a
    if-eqz v2, :cond_19

    .line 51
    array-length v1, v2

    if-lez v1, :cond_19

    .line 52
    aget v1, v2, v5

    if-gez v1, :cond_8

    .line 53
    aput v5, v2, v5

    goto :goto_2

    .line 54
    :cond_8
    aget v1, v2, v5

    if-le v1, v9, :cond_9

    .line 55
    aput v9, v2, v5

    .line 56
    :cond_9
    :goto_2
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v10, v12, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_1b
    if-eqz v2, :cond_19

    .line 57
    array-length v1, v2

    if-lez v1, :cond_19

    .line 58
    aget v1, v2, v5

    if-eqz v1, :cond_a

    .line 59
    aput v12, v2, v5

    .line 60
    :cond_a
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v12, v14, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_1c
    if-eqz v2, :cond_19

    .line 61
    array-length v1, v2

    if-lez v1, :cond_19

    .line 62
    aget v1, v2, v5

    if-eqz v1, :cond_b

    .line 63
    aput v12, v2, v5

    .line 64
    :cond_b
    aget v1, v2, v5

    int-to-byte v1, v1

    const/4 v2, 0x6

    invoke-virtual {v0, v12, v2, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_1d
    if-eqz v2, :cond_19

    .line 65
    array-length v1, v2

    if-lez v1, :cond_19

    .line 66
    aget v1, v2, v5

    if-eqz v1, :cond_c

    .line 67
    aput v12, v2, v5

    .line 68
    :cond_c
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v11, v9, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_1e
    if-eqz v2, :cond_19

    .line 69
    array-length v1, v2

    if-lez v1, :cond_19

    .line 70
    aget v1, v2, v5

    if-eqz v1, :cond_d

    .line 71
    aput v12, v2, v5

    .line 72
    :cond_d
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v11, v10, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_1f
    if-eqz v2, :cond_19

    .line 73
    array-length v1, v2

    if-lez v1, :cond_19

    .line 74
    aget v1, v2, v5

    if-eqz v1, :cond_e

    .line 75
    aput v12, v2, v5

    .line 76
    :cond_e
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v11, v11, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_20
    if-eqz v2, :cond_19

    .line 77
    array-length v1, v2

    if-lez v1, :cond_19

    .line 78
    aget v1, v2, v5

    if-eqz v1, :cond_f

    .line 79
    aput v12, v2, v5

    .line 80
    :cond_f
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v11, v12, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_21
    if-eqz v2, :cond_19

    .line 81
    array-length v1, v2

    if-lez v1, :cond_19

    .line 82
    aget v1, v2, v5

    if-eqz v1, :cond_10

    .line 83
    aput v12, v2, v5

    .line 84
    :cond_10
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v12, v8, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_22
    if-eqz v2, :cond_19

    .line 85
    array-length v1, v2

    if-lez v1, :cond_19

    .line 86
    aget v1, v2, v5

    if-eqz v1, :cond_11

    .line 87
    aput v12, v2, v5

    .line 88
    :cond_11
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v12, v9, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_23
    if-eqz v2, :cond_19

    .line 89
    array-length v1, v2

    if-lez v1, :cond_19

    .line 90
    aget v1, v2, v5

    if-eqz v1, :cond_12

    .line 91
    aput v12, v2, v5

    .line 92
    :cond_12
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v12, v10, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_24
    if-eqz v2, :cond_19

    .line 93
    array-length v1, v2

    if-lez v1, :cond_19

    .line 94
    aget v1, v2, v5

    if-eqz v1, :cond_13

    .line 95
    aput v12, v2, v5

    .line 96
    :cond_13
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v12, v11, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    :pswitch_25
    if-eqz v2, :cond_19

    .line 97
    array-length v1, v2

    if-lez v1, :cond_19

    .line 98
    aget v1, v2, v5

    if-eqz v1, :cond_14

    .line 99
    aput v12, v2, v5

    .line 100
    :cond_14
    aget v1, v2, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v12, v12, v1}, Lmodule/canbus/r;->I3(BBB)V

    goto/16 :goto_3

    .line 101
    :cond_15
    aget v1, v2, v12

    mul-int/lit16 v1, v1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 102
    aget v3, v2, v11

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v4

    div-int/2addr v3, v4

    .line 103
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v4

    sget-object v13, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "touch_state = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v2, v5

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "__touch_x = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "__touch_y =="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "__ObjApp.getHeight()"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/f;->i()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 104
    sget v4, Lk0/nt;->c:I

    const/16 v13, 0x7e

    const/16 v14, 0x2c

    if-ne v4, v13, :cond_16

    .line 105
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v4, 0x9

    new-array v4, v4, [I

    aput v7, v4, v5

    const/4 v7, 0x6

    aput v7, v4, v12

    aput v14, v4, v11

    .line 106
    aget v2, v2, v5

    int-to-byte v2, v2

    aput v2, v4, v10

    shr-int/lit8 v2, v1, 0x8

    and-int/2addr v2, v6

    aput v2, v4, v9

    and-int/2addr v1, v6

    aput v1, v4, v8

    shr-int/lit8 v1, v3, 0x8

    and-int/2addr v1, v6

    const/4 v2, 0x6

    aput v1, v4, v2

    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x7

    aput v1, v4, v2

    const/16 v1, 0x8

    aput v5, v4, v1

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 107
    :cond_16
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 108
    aget v2, v2, v5

    if-nez v2, :cond_19

    const/16 v2, 0x9

    new-array v2, v2, [I

    aput v7, v2, v5

    const/4 v4, 0x6

    aput v4, v2, v12

    aput v14, v2, v11

    aput v12, v2, v10

    shr-int/lit8 v4, v1, 0x8

    and-int/2addr v4, v6

    aput v4, v2, v9

    and-int/2addr v1, v6

    aput v1, v2, v8

    shr-int/lit8 v1, v3, 0x8

    and-int/2addr v1, v6

    const/4 v4, 0x6

    aput v1, v2, v4

    and-int/lit16 v1, v3, 0xff

    const/4 v3, 0x7

    aput v1, v2, v3

    const/16 v1, 0x8

    aput v5, v2, v1

    .line 109
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_3

    :cond_17
    new-array v1, v4, [I

    aput v7, v1, v5

    aput v10, v1, v12

    const/16 v3, 0xfa

    aput v3, v1, v11

    aput v6, v1, v10

    .line 110
    aget v3, v2, v5

    add-int/2addr v3, v12

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_3

    .line 111
    :cond_18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FinalCanbus.C_CHANGE_PANORAMA == ints[0] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 112
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    const-wide/16 v2, 0x64

    .line 113
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v1, v1, [I

    .line 114
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_19
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x3
        0xfa
        0xff
        0x6
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        0xfa
        0xff
        0x6
        0x0
    .end array-data
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/r;->X:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/r;->W:I

    :cond_0
    return-void
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

.method public b([B)V
    .locals 6

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0x810126

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
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

    .line 3
    sget v1, Lk0/nt;->a:I

    const v2, 0x7f0126

    if-eq v1, v2, :cond_1

    const v2, 0x870126

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    array-length v1, p1

    new-array v1, v1, [I

    .line 5
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 6
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x41c

    invoke-static {v2, v3, v1}, Lo1/x;->B([Lo1/x;I[I)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_11

    .line 8
    array-length v1, p1

    if-gtz v1, :cond_4

    goto/16 :goto_9

    .line 9
    :cond_4
    iget v1, p0, Lmodule/canbus/r;->o:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_5

    .line 10
    iput v0, p0, Lmodule/canbus/r;->o:I

    .line 11
    iput v0, p0, Lmodule/canbus/r;->p:I

    .line 12
    iput v0, p0, Lmodule/canbus/r;->q:I

    .line 13
    :cond_5
    iget-object v1, p0, Lmodule/canbus/r;->n:[B

    iget v2, p0, Lmodule/canbus/r;->o:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v1, p0, Lmodule/canbus/r;->o:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lmodule/canbus/r;->o:I

    .line 15
    iget p1, p0, Lmodule/canbus/r;->q:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_9

    if-lt p1, v1, :cond_6

    return-void

    .line 16
    :cond_6
    iget-object p1, p0, Lmodule/canbus/r;->n:[B

    aget-byte p1, p1, v3

    move v1, v2

    .line 17
    :goto_2
    iget v4, p0, Lmodule/canbus/r;->q:I

    if-ge v1, v4, :cond_7

    .line 18
    iget-object v4, p0, Lmodule/canbus/r;->n:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 p1, p1, -0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 19
    iget-object v1, p0, Lmodule/canbus/r;->n:[B

    aget-byte v4, v1, v4

    if-ne p1, v4, :cond_8

    .line 20
    aget-byte p1, v1, v3

    invoke-virtual {p0, v1, v3, p1}, Lmodule/canbus/r;->G3([BII)V

    .line 21
    iget p1, p0, Lmodule/canbus/r;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmodule/canbus/r;->p:I

    goto :goto_3

    .line 22
    :cond_8
    iput v3, p0, Lmodule/canbus/r;->p:I

    .line 23
    :goto_3
    iput v0, p0, Lmodule/canbus/r;->q:I

    .line 24
    :cond_9
    iget p1, p0, Lmodule/canbus/r;->o:I

    sub-int/2addr p1, v2

    :goto_4
    iget v1, p0, Lmodule/canbus/r;->p:I

    if-ge v1, p1, :cond_f

    .line 25
    iget-object v2, p0, Lmodule/canbus/r;->n:[B

    aget-byte v4, v2, v1

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_e

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x5b

    if-ne v4, v5, :cond_e

    .line 26
    iget v4, p0, Lmodule/canbus/r;->q:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_a

    .line 27
    iput v0, p0, Lmodule/canbus/r;->q:I

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v1, 0x2

    .line 28
    aget-byte v4, v2, v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lmodule/canbus/r;->q:I

    .line 29
    iget v5, p0, Lmodule/canbus/r;->o:I

    if-lt v4, v5, :cond_b

    sub-int/2addr v4, v1

    .line 30
    iput v4, p0, Lmodule/canbus/r;->q:I

    goto :goto_8

    :cond_b
    add-int/lit8 v4, v1, 0x2

    .line 31
    aget-byte v2, v2, v4

    add-int/lit8 v1, v1, 0x3

    .line 32
    :goto_5
    iget v4, p0, Lmodule/canbus/r;->q:I

    if-ge v1, v4, :cond_c

    .line 33
    iget-object v4, p0, Lmodule/canbus/r;->n:[B

    aget-byte v4, v4, v1

    add-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 34
    iget-object v2, p0, Lmodule/canbus/r;->n:[B

    aget-byte v4, v2, v4

    if-ne v1, v4, :cond_d

    .line 35
    iget v1, p0, Lmodule/canbus/r;->p:I

    add-int/lit8 v4, v1, 0x2

    add-int/2addr v1, v3

    aget-byte v1, v2, v1

    invoke-virtual {p0, v2, v4, v1}, Lmodule/canbus/r;->G3([BII)V

    .line 36
    iget v1, p0, Lmodule/canbus/r;->q:I

    iput v1, p0, Lmodule/canbus/r;->p:I

    goto :goto_6

    .line 37
    :cond_d
    iget v1, p0, Lmodule/canbus/r;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmodule/canbus/r;->p:I

    .line 38
    :goto_6
    iput v0, p0, Lmodule/canbus/r;->q:I

    .line 39
    :cond_e
    :goto_7
    iget v1, p0, Lmodule/canbus/r;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmodule/canbus/r;->p:I

    goto :goto_4

    :cond_f
    :goto_8
    if-eqz v1, :cond_11

    .line 40
    iget p1, p0, Lmodule/canbus/r;->o:I

    sub-int/2addr p1, v1

    iput p1, p0, Lmodule/canbus/r;->o:I

    if-eqz p1, :cond_10

    .line 41
    iget-object v2, p0, Lmodule/canbus/r;->n:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :cond_10
    iput v0, p0, Lmodule/canbus/r;->p:I

    :cond_11
    :goto_9
    return-void
.end method

.method public final d3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0x53

    aput v1, v0, v2

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

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/r;->Y:Lo1/f;

    new-instance v1, Lmodule/canbus/r$n;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/r$n;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final z3()B
    .locals 3

    .line 1
    sget v0, Lh0/c;->E:I

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x7

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x6

    return v0
.end method
