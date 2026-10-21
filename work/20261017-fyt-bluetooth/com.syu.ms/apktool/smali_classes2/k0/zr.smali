.class public Lk0/zr;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static A:I = 0x9

.field public static B:I = 0x9

.field public static C:I = 0x9

.field public static D:I = 0x9

.field public static E:I = 0x13

.field public static F:I = 0x0

.field public static G:I = 0x0

.field public static z:I = 0x9


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public final e:[B

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Lo1/g0;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public t:Ljava/lang/Runnable;

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:[I

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/zr;->c:I

    const/16 v1, 0x1c

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
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

    const/16 v11, 0xa

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v11, 0xb

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v11, 0xc

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v11, 0xd

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v11, 0xe

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v11, 0xf

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v11, 0x10

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v11, 0x11

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v11, 0x12

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v11, 0x13

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v11, 0x14

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v11, 0x15

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v11, 0x16

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v11, 0x17

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v11, 0x18

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v11, 0x19

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v11, 0x1a

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v11, 0x1b

    aput-object v3, v1, v11

    iput-object v1, p0, Lk0/zr;->d:[[I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 4
    iput-object v1, p0, Lk0/zr;->e:[B

    .line 5
    iput v0, p0, Lk0/zr;->f:I

    .line 6
    iput v0, p0, Lk0/zr;->g:I

    .line 7
    iput v0, p0, Lk0/zr;->h:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lk0/zr;->i:I

    .line 9
    new-instance v1, Lk0/zr$a;

    invoke-direct {v1, p0}, Lk0/zr$a;-><init>(Lk0/zr;)V

    iput-object v1, p0, Lk0/zr;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x20

    invoke-direct {v1, v3, v11}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/zr;->k:Lo1/g0;

    .line 11
    iput v4, p0, Lk0/zr;->l:I

    .line 12
    iput v2, p0, Lk0/zr;->m:I

    .line 13
    iput v5, p0, Lk0/zr;->n:I

    .line 14
    iput v6, p0, Lk0/zr;->o:I

    .line 15
    iput v7, p0, Lk0/zr;->p:I

    .line 16
    iput v8, p0, Lk0/zr;->q:I

    .line 17
    iput v9, p0, Lk0/zr;->r:I

    .line 18
    iput v10, p0, Lk0/zr;->s:I

    .line 19
    new-instance v1, Lk0/zr$b;

    invoke-direct {v1, p0}, Lk0/zr$b;-><init>(Lk0/zr;)V

    iput-object v1, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    .line 20
    iput v0, p0, Lk0/zr;->u:I

    .line 21
    new-instance v1, Lk0/zr$c;

    invoke-direct {v1, p0}, Lk0/zr$c;-><init>(Lk0/zr;)V

    iput-object v1, p0, Lk0/zr;->v:Ljava/lang/Runnable;

    .line 22
    new-instance v1, Lk0/zr$d;

    invoke-direct {v1, p0}, Lk0/zr$d;-><init>(Lk0/zr;)V

    iput-object v1, p0, Lk0/zr;->w:Ljava/lang/Runnable;

    new-array v1, v2, [I

    .line 23
    fill-array-data v1, :array_1c

    iput-object v1, p0, Lk0/zr;->x:[I

    .line 24
    iput v0, p0, Lk0/zr;->y:I

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x9
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x13
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x14
        0x1e
    .end array-data

    :array_12
    .array-data 4
        0x15
        0x18
    .end array-data

    :array_13
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x19
        0xd
    .end array-data

    :array_17
    .array-data 4
        0x1a
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x1b
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x1c
        0xb
    .end array-data

    :array_1a
    .array-data 4
        0x1d
        0x19
    .end array-data

    :array_1b
    .array-data 4
        0x1e
        0x10
    .end array-data

    :array_1c
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic b3(Lk0/zr;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/zr;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/zr;ZIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lk0/zr;->a3(ZIIIIIII)V

    return-void
.end method

.method public static d3([B)V
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

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
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
    iget-object v0, p0, Lk0/zr;->k:Lo1/g0;

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
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->b:I

    .line 8
    iput v2, v0, Lk0/mt;->c:I

    .line 9
    iput v2, v0, Lk0/mt;->d:I

    .line 10
    iput v2, v0, Lk0/mt;->o:I

    .line 11
    iput v2, v0, Lk0/mt;->h:I

    .line 12
    iput v2, v0, Lk0/mt;->q:I

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 14
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 15
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/zr;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    iget-object v0, p0, Lk0/zr;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/16 v12, 0xff

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v2, v11, :cond_22

    const/16 v9, 0xa

    const/16 v5, 0x7f

    const/16 v18, -0x3

    const/16 v19, -0x2

    const/16 v4, 0x1c

    const/4 v3, 0x6

    if-eq v2, v13, :cond_19

    if-eq v2, v3, :cond_17

    if-eq v2, v9, :cond_15

    const/16 v9, 0x35

    if-eq v2, v9, :cond_f

    const/16 v9, 0x38

    if-eq v2, v9, :cond_e

    const/16 v9, 0x55

    if-eq v2, v9, :cond_3

    if-eq v2, v5, :cond_2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    goto/16 :goto_14

    :cond_0
    const/16 v2, 0xa2

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v15, [I

    .line 3
    aget-byte v4, v1, v4

    shr-int/2addr v4, v14

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 4
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v15, [I

    .line 5
    aget-byte v4, v1, v4

    shr-int/2addr v4, v14

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x4

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 8
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x8

    .line 9
    aget-byte v4, v1, v4

    shl-int/2addr v4, v6

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v1, v1, v5

    and-int/2addr v1, v12

    or-int/2addr v1, v4

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1
    const/16 v2, 0x86

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 10
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v15, [I

    .line 11
    aget-byte v4, v1, v4

    shr-int/2addr v4, v14

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 12
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 13
    :cond_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 14
    :cond_3
    sget v2, Lk0/nt;->a:I

    const v5, 0xa301c7

    if-eq v2, v5, :cond_4

    const v5, 0xa401c7

    if-ne v2, v5, :cond_31

    :cond_4
    const-string v2, "persist.fyt.reversetemp"

    .line 15
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v5, 0x50

    if-eqz v2, :cond_9

    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v6, v1, v2

    and-int/2addr v6, v12

    if-ne v6, v7, :cond_5

    new-array v2, v15, [I

    aput v19, v2, v14

    .line 17
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 18
    :cond_5
    aget-byte v6, v1, v2

    and-int/2addr v6, v12

    if-ne v6, v5, :cond_6

    new-array v2, v15, [I

    aput v18, v2, v14

    .line 19
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v6, v15, [I

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v6, v14

    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v4, v1, v2

    and-int/2addr v4, v12

    if-ne v4, v7, :cond_7

    new-array v2, v15, [I

    aput v19, v2, v14

    const/16 v6, 0x1b

    .line 22
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    const/16 v6, 0x1b

    .line 23
    aget-byte v4, v1, v2

    and-int/2addr v4, v12

    if-ne v4, v5, :cond_8

    new-array v2, v15, [I

    aput v18, v2, v14

    .line 24
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v4, v15, [I

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v4, v14

    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    const/16 v6, 0x1b

    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v9, v1, v2

    and-int/2addr v9, v12

    if-ne v9, v7, :cond_a

    new-array v2, v15, [I

    aput v19, v2, v14

    .line 27
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 28
    :cond_a
    aget-byte v9, v1, v2

    and-int/2addr v9, v12

    if-ne v9, v5, :cond_b

    new-array v2, v15, [I

    aput v18, v2, v14

    .line 29
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    new-array v9, v15, [I

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v9, v14

    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v6, v1, v2

    and-int/2addr v6, v12

    if-ne v6, v7, :cond_c

    new-array v2, v15, [I

    aput v19, v2, v14

    .line 32
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 33
    :cond_c
    aget-byte v6, v1, v2

    and-int/2addr v6, v12

    if-ne v6, v5, :cond_d

    new-array v2, v15, [I

    aput v18, v2, v14

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array v5, v15, [I

    .line 35
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v5, v14

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v2, p2, 0x4

    .line 36
    aget-byte v4, v1, v2

    shr-int/2addr v4, v10

    and-int/lit8 v4, v4, 0xf

    packed-switch v4, :pswitch_data_0

    move v4, v14

    :goto_3
    move v5, v4

    :goto_4
    move v6, v5

    goto :goto_5

    :pswitch_0
    move v4, v15

    goto :goto_3

    :pswitch_1
    move v5, v14

    move v6, v5

    move v4, v15

    goto :goto_5

    :pswitch_2
    move v6, v14

    move v4, v15

    move v5, v4

    goto :goto_5

    :pswitch_3
    move v5, v14

    move v4, v15

    move v6, v4

    goto :goto_5

    :pswitch_4
    move v4, v14

    move v5, v4

    move v6, v15

    goto :goto_5

    :pswitch_5
    move v4, v14

    move v5, v15

    goto :goto_4

    :pswitch_6
    move v4, v14

    move v6, v4

    move v5, v15

    :goto_5
    const/16 v9, 0x12

    new-array v12, v15, [I

    aput v4, v12, v14

    .line 37
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v9, v15, [I

    aput v5, v9, v14

    .line 38
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v5, v15, [I

    aput v6, v5, v14

    .line 39
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4d

    new-array v5, v15, [I

    .line 40
    aget-byte v6, v1, v2

    shr-int/2addr v6, v10

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v14

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x15

    new-array v5, v15, [I

    .line 41
    aget-byte v2, v1, v2

    shr-int/2addr v2, v14

    and-int/lit8 v2, v2, 0xf

    aput v2, v5, v14

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v15, [I

    add-int/lit8 v5, p2, 0x5

    .line 42
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v13

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 43
    aget-byte v4, v1, v5

    shr-int/2addr v4, v11

    and-int/2addr v4, v13

    aput v4, v2, v14

    const/16 v4, 0x1f

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 44
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v13

    aput v4, v2, v14

    const/16 v4, 0x1e

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v15, [I

    .line 45
    aget-byte v5, v1, v5

    shr-int/2addr v5, v3

    and-int/2addr v5, v13

    aput v5, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 46
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v15

    aput v5, v2, v14

    const/16 v5, 0xd

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v5, v15, [I

    .line 47
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v15

    aput v6, v5, v14

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v5, v15, [I

    .line 48
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v15

    aput v6, v5, v14

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v5, v15, [I

    .line 49
    aget-byte v6, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v6, v9

    and-int/2addr v6, v15

    aput v6, v5, v14

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 50
    aget-byte v4, v1, v4

    shr-int/lit8 v3, v4, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v14

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x7

    .line 51
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v13

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_e
    const/16 v2, 0x62

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x2

    .line 52
    aget-byte v7, v1, v6

    shr-int/2addr v7, v8

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v15, [I

    .line 53
    aget-byte v7, v1, v6

    const/4 v9, 0x5

    shr-int/2addr v7, v9

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v15, [I

    .line 54
    aget-byte v7, v1, v6

    shr-int/2addr v7, v10

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v15, [I

    .line 55
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v15, [I

    .line 56
    aget-byte v7, v1, v6

    shr-int/2addr v7, v11

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v15, [I

    .line 57
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v13

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x3

    .line 58
    aget-byte v7, v1, v6

    shr-int/2addr v7, v3

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v15, [I

    .line 59
    aget-byte v7, v1, v6

    const/4 v9, 0x5

    shr-int/2addr v7, v9

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v15, [I

    .line 60
    aget-byte v7, v1, v6

    shr-int/2addr v7, v10

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v15, [I

    .line 61
    aget-byte v7, v1, v6

    shr-int/2addr v7, v15

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v15, [I

    .line 62
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x4

    .line 63
    aget-byte v7, v1, v6

    shr-int/2addr v7, v8

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v15, [I

    .line 64
    aget-byte v7, v1, v6

    shr-int/2addr v7, v3

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v15, [I

    .line 65
    aget-byte v7, v1, v6

    const/4 v9, 0x5

    shr-int/2addr v7, v9

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v15, [I

    .line 66
    aget-byte v7, v1, v6

    shr-int/2addr v7, v10

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v15, [I

    .line 67
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v15, [I

    .line 68
    aget-byte v7, v1, v6

    shr-int/2addr v7, v11

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v15, [I

    .line 69
    aget-byte v7, v1, v6

    shr-int/2addr v7, v15

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v15, [I

    .line 70
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x5

    .line 71
    aget-byte v7, v1, v6

    shr-int/2addr v7, v3

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v15, [I

    .line 72
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v15, [I

    .line 73
    aget-byte v7, v1, v6

    shr-int/2addr v7, v11

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v15, [I

    .line 74
    aget-byte v7, v1, v6

    shr-int/2addr v7, v15

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v4, v15, [I

    .line 75
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x6

    .line 76
    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x7

    .line 77
    aget-byte v7, v1, v6

    shr-int/2addr v7, v8

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v15, [I

    .line 78
    aget-byte v7, v1, v6

    shr-int/2addr v7, v3

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v15, [I

    .line 79
    aget-byte v7, v1, v6

    const/4 v9, 0x5

    shr-int/2addr v7, v9

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v15, [I

    .line 80
    aget-byte v6, v1, v6

    shr-int/2addr v6, v10

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x8

    .line 81
    aget-byte v7, v1, v6

    shr-int/2addr v7, v3

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v15, [I

    .line 82
    aget-byte v7, v1, v6

    shr-int/2addr v7, v10

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v15, [I

    .line 83
    aget-byte v7, v1, v6

    shr-int/2addr v7, v11

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v4, v15, [I

    .line 84
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v13

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0x9

    .line 85
    aget-byte v7, v1, v6

    shr-int/2addr v7, v3

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v4, v15, [I

    .line 86
    aget-byte v7, v1, v6

    shr-int/2addr v7, v10

    and-int/2addr v7, v13

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v4, v15, [I

    .line 87
    aget-byte v7, v1, v6

    shr-int/2addr v7, v11

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v4, v15, [I

    .line 88
    aget-byte v6, v1, v6

    shr-int/2addr v6, v15

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v4, v15, [I

    add-int/lit8 v6, p2, 0xa

    .line 89
    aget-byte v7, v1, v6

    shr-int/2addr v7, v8

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v15, [I

    .line 90
    aget-byte v7, v1, v6

    shr-int/2addr v7, v3

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v15, [I

    .line 91
    aget-byte v7, v1, v6

    const/4 v9, 0x5

    shr-int/2addr v7, v9

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v15, [I

    .line 92
    aget-byte v7, v1, v6

    shr-int/2addr v7, v10

    and-int/2addr v7, v15

    aput v7, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 93
    aget-byte v4, v1, v6

    shr-int/2addr v4, v13

    and-int/2addr v4, v15

    aput v4, v2, v14

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v4, v15, [I

    .line 94
    aget-byte v5, v1, v6

    shr-int/2addr v5, v11

    and-int/2addr v5, v15

    aput v5, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v15, [I

    .line 95
    aget-byte v5, v1, v6

    shr-int/2addr v5, v14

    and-int/2addr v5, v13

    aput v5, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v4, v15, [I

    add-int/lit8 v5, p2, 0xb

    .line 96
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v13

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v4, v15, [I

    .line 97
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v13

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v15, [I

    .line 98
    aget-byte v6, v1, v5

    shr-int/2addr v6, v13

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v4, v15, [I

    .line 99
    aget-byte v5, v1, v5

    shr-int/2addr v5, v15

    and-int/2addr v5, v13

    aput v5, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v15, [I

    add-int/lit8 v5, p2, 0xc

    .line 100
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v4, v15, [I

    .line 101
    aget-byte v6, v1, v5

    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v15

    aput v3, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v15, [I

    .line 102
    aget-byte v4, v1, v5

    const/4 v6, 0x5

    shr-int/2addr v4, v6

    and-int/2addr v4, v15

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v15, [I

    .line 103
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v15

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v15, [I

    .line 104
    aget-byte v4, v1, v5

    shr-int/2addr v4, v13

    and-int/2addr v4, v15

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v15, [I

    .line 105
    aget-byte v4, v1, v5

    shr-int/2addr v4, v15

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v15, [I

    const/16 v4, 0xd

    add-int/lit8 v4, p2, 0xd

    .line 106
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_f
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 107
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    add-int/lit8 v2, p2, 0x2

    .line 108
    aget-byte v3, v1, v2

    const/4 v4, 0x5

    shr-int/2addr v3, v4

    and-int/2addr v3, v15

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v15

    invoke-static {v3, v2, v14}, Ll0/c0;->b(III)V

    goto :goto_6

    :cond_10
    const/4 v4, 0x5

    add-int/lit8 v2, p2, 0x2

    .line 109
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v15

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v15

    invoke-static {v3, v2, v14}, Ll0/c0;->a(III)V

    :goto_6
    const/16 v2, 0x407

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 110
    aget-byte v5, v1, v4

    and-int/2addr v5, v12

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 111
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v5, v11, [I

    aput v15, v5, v14

    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v5, v15

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v3, v5, v4, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x8

    .line 112
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    if-eq v1, v12, :cond_14

    if-nez v1, :cond_11

    goto :goto_9

    .line 113
    :cond_11
    sget-object v2, Lk0/nt;->g:[I

    const/16 v3, 0x25

    aget v2, v2, v3

    if-eq v2, v15, :cond_13

    const-string v2, "persist.fyt.temperature"

    .line 114
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v15, :cond_12

    goto :goto_7

    :cond_12
    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    goto :goto_8

    :cond_13
    :goto_7
    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    .line 115
    :goto_8
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_14

    .line 116
    :cond_14
    :goto_9
    invoke-static {v14}, Lu0/d;->A3(I)V

    goto/16 :goto_14

    :cond_15
    add-int/lit8 v2, p2, 0x3

    .line 117
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    if-ne v1, v15, :cond_16

    goto :goto_a

    :cond_16
    move v14, v15

    :goto_a
    const/16 v1, 0x1e0

    invoke-static {v2, v3, v14, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_14

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 119
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 120
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 121
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_18
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 122
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 123
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 124
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 125
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v15

    aput v3, v2, v14

    const/4 v3, 0x5

    .line 126
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v15

    aput v1, v2, v14

    .line 127
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 128
    :cond_19
    sget v2, Lk0/nt;->a:I

    const v6, 0xa301c7

    if-eq v2, v6, :cond_31

    const v6, 0xa401c7

    if-ne v2, v6, :cond_1a

    goto/16 :goto_14

    :cond_1a
    new-array v2, v15, [I

    add-int/lit8 v6, p2, 0x2

    .line 129
    aget-byte v20, v1, v6

    shr-int/lit8 v20, v20, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v2, v14

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v9, v15, [I

    .line 130
    aget-byte v20, v1, v6

    shr-int/lit8 v20, v20, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v9, v14

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v9, v15, [I

    .line 131
    aget-byte v20, v1, v6

    const/16 v16, 0x5

    shr-int/lit8 v20, v20, 0x5

    and-int/lit8 v20, v20, 0x1

    aput v20, v9, v14

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 132
    aget-byte v9, v1, v6

    shr-int/2addr v9, v10

    and-int/2addr v9, v15

    aput v9, v2, v14

    const/16 v9, 0xd

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v9, v15, [I

    .line 133
    aget-byte v17, v1, v6

    shr-int/lit8 v17, v17, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v9, v14

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v9, v15, [I

    .line 134
    aget-byte v17, v1, v6

    shr-int/lit8 v17, v17, 0x1

    and-int/lit8 v17, v17, 0x1

    aput v17, v9, v14

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 135
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v15

    aput v6, v2, v14

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v6, v15, [I

    add-int/lit8 v7, p2, 0x3

    .line 136
    aget-byte v9, v1, v7

    shr-int/2addr v9, v8

    and-int/2addr v9, v15

    aput v9, v6, v14

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v15, [I

    .line 137
    aget-byte v9, v1, v7

    shr-int/2addr v9, v3

    and-int/2addr v9, v15

    aput v9, v6, v14

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v15, [I

    .line 138
    aget-byte v9, v1, v7

    const/16 v16, 0x5

    shr-int/lit8 v9, v9, 0x5

    and-int/2addr v9, v15

    aput v9, v6, v14

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v6, v15, [I

    .line 139
    aget-byte v9, v1, v7

    shr-int/lit8 v9, v9, 0x5

    and-int/2addr v9, v8

    aput v9, v6, v14

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v6, v15, [I

    .line 140
    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0xf

    aput v7, v6, v14

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 141
    aget-byte v6, v1, v2

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x5

    .line 142
    aget-byte v9, v1, v7

    and-int/2addr v9, v12

    const-string v11, "persist.fyt.reversetemp"

    .line 143
    invoke-static {v11, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 144
    aget-byte v6, v1, v7

    and-int/2addr v6, v12

    .line 145
    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    :cond_1b
    if-eqz v6, :cond_1e

    if-eq v6, v5, :cond_1d

    if-eq v6, v12, :cond_1c

    new-array v2, v15, [I

    aput v6, v2, v14

    const/16 v6, 0x1b

    .line 146
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1c
    const/16 v6, 0x1b

    new-array v2, v15, [I

    aput v18, v2, v14

    .line 147
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1d
    const/16 v6, 0x1b

    new-array v2, v15, [I

    const/4 v7, -0x1

    aput v7, v2, v14

    .line 148
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1e
    const/16 v6, 0x1b

    new-array v2, v15, [I

    aput v19, v2, v14

    .line 149
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    if-eqz v9, :cond_21

    if-eq v9, v5, :cond_20

    if-eq v9, v12, :cond_1f

    new-array v2, v15, [I

    aput v9, v2, v14

    .line 150
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1f
    new-array v2, v15, [I

    aput v18, v2, v14

    .line 151
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_20
    new-array v2, v15, [I

    const/4 v5, -0x1

    aput v5, v2, v14

    .line 152
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_21
    new-array v2, v15, [I

    aput v19, v2, v14

    .line 153
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_d
    const/16 v2, 0x35

    new-array v4, v15, [I

    add-int/lit8 v5, p2, 0x6

    .line 154
    aget-byte v6, v1, v5

    shr-int/2addr v6, v13

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v4, v15, [I

    .line 155
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v15

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v4, v15, [I

    .line 156
    aget-byte v5, v1, v5

    shr-int/2addr v5, v14

    and-int/2addr v5, v15

    aput v5, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    add-int/lit8 v4, p2, 0x7

    .line 157
    aget-byte v5, v1, v4

    shr-int/lit8 v3, v5, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v14

    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v15, [I

    .line 158
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v13

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v15, [I

    .line 159
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v13

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 160
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v13

    aput v1, v2, v14

    const/16 v1, 0x1e

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 161
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 162
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 163
    iput v2, v0, Lk0/zr;->c:I

    move v2, v14

    .line 164
    :goto_e
    iget-object v3, v0, Lk0/zr;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_24

    .line 165
    iget v4, v0, Lk0/zr;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v14

    if-ne v4, v5, :cond_23

    if-eqz v4, :cond_24

    .line 166
    iput v2, v0, Lk0/zr;->b:I

    goto :goto_f

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 167
    :cond_24
    :goto_f
    iget v4, v0, Lk0/zr;->c:I

    if-eq v4, v13, :cond_2f

    if-eq v4, v10, :cond_2d

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_2b

    packed-switch v4, :pswitch_data_1

    and-int/2addr v1, v12

    if-ne v1, v15, :cond_25

    .line 168
    array-length v1, v3

    if-ge v2, v1, :cond_31

    .line 169
    aget-object v1, v3, v2

    aget v1, v1, v15

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_25
    if-nez v1, :cond_31

    .line 170
    iget v1, v0, Lk0/zr;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_26

    if-eq v1, v12, :cond_26

    .line 171
    aget-object v1, v3, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    .line 172
    :cond_26
    iput v12, v0, Lk0/zr;->b:I

    goto/16 :goto_14

    :pswitch_7
    move v2, v14

    :goto_10
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_27

    const/16 v3, 0x1e

    .line 173
    invoke-static {v3, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_27
    const/16 v3, 0x1e

    .line 174
    invoke-static {v3, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_8
    move v2, v14

    :goto_11
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_28

    const/16 v3, 0x1f

    .line 175
    invoke-static {v3, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    const/16 v3, 0x1f

    .line 176
    invoke-static {v3, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :pswitch_9
    move v2, v14

    :goto_12
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_29

    .line 177
    invoke-static {v6, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 178
    :cond_29
    invoke-static {v6, v15}, Ll0/b0;->l0(II)V

    goto :goto_14

    :pswitch_a
    move v2, v14

    :goto_13
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_2a

    .line 179
    invoke-static {v8, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 180
    :cond_2a
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_2b
    and-int/2addr v1, v12

    if-ne v1, v15, :cond_31

    .line 181
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 182
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_14

    .line 183
    :cond_2c
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    .line 184
    invoke-static {v7, v15}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_2d
    and-int/2addr v1, v12

    if-ne v1, v15, :cond_31

    .line 185
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2e

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 186
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_14

    .line 187
    :cond_2e
    invoke-static {v13, v14}, Ll0/b0;->l0(II)V

    .line 188
    invoke-static {v13, v15}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_2f
    and-int/2addr v1, v12

    if-ne v1, v15, :cond_31

    .line 189
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_30

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 190
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_14

    .line 191
    :cond_30
    invoke-static {v10, v14}, Ll0/b0;->l0(II)V

    .line 192
    invoke-static {v10, v15}, Ll0/b0;->l0(II)V

    :cond_31
    :goto_14
    return-void

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

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x46
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x46
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x46
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/zr;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/zr;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/zr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/zr;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xac

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

    move-object/from16 v9, p0

    move/from16 v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    const/4 v7, 0x6

    if-eq v0, v4, :cond_3

    const/16 v8, 0x18

    if-eq v0, v8, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget v0, Lk0/nt;->a:I

    const v8, 0xa301c7

    const/16 v11, -0x56

    const/4 v12, 0x7

    const/16 v13, 0x25

    const/16 v14, 0x33

    const/16 v15, 0x2e

    const/16 v10, 0x9

    if-eq v0, v8, :cond_2

    const v8, 0xa401c7

    if-eq v0, v8, :cond_1

    goto/16 :goto_0

    :cond_1
    new-array v0, v10, [B

    aput-byte v15, v0, v6

    aput-byte v14, v0, v4

    aput-byte v3, v0, v5

    .line 2
    aget v8, p2, v6

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    iget-object v8, v9, Lk0/zr;->x:[I

    iget v2, v9, Lk0/zr;->y:I

    rem-int/2addr v2, v5

    aget v2, v8, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aput-byte v13, v0, v3

    aput-byte v5, v0, v7

    aput-byte v11, v0, v12

    const/16 v2, 0x8

    aput-byte v6, v0, v2

    invoke-static {v0}, Lk0/zr;->d3([B)V

    new-array v0, v10, [B

    aput-byte v15, v0, v6

    aput-byte v14, v0, v4

    aput-byte v3, v0, v5

    .line 3
    aget v2, p2, v6

    int-to-byte v2, v2

    const/4 v8, 0x3

    aput-byte v2, v0, v8

    iget-object v2, v9, Lk0/zr;->x:[I

    iget v8, v9, Lk0/zr;->y:I

    rem-int/2addr v8, v5

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aput-byte v13, v0, v3

    aput-byte v5, v0, v7

    aput-byte v11, v0, v12

    const/16 v2, 0x8

    aput-byte v6, v0, v2

    invoke-static {v0}, Lk0/zr;->d3([B)V

    new-array v0, v10, [B

    aput-byte v15, v0, v6

    aput-byte v14, v0, v4

    aput-byte v3, v0, v5

    .line 4
    aget v2, p2, v6

    int-to-byte v2, v2

    const/4 v8, 0x3

    aput-byte v2, v0, v8

    iget-object v2, v9, Lk0/zr;->x:[I

    iget v8, v9, Lk0/zr;->y:I

    rem-int/2addr v8, v5

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aput-byte v13, v0, v3

    aput-byte v5, v0, v7

    aput-byte v11, v0, v12

    const/16 v1, 0x8

    aput-byte v6, v0, v1

    invoke-static {v0}, Lk0/zr;->d3([B)V

    goto :goto_0

    :cond_2
    new-array v0, v10, [B

    aput-byte v15, v0, v6

    aput-byte v14, v0, v4

    aput-byte v3, v0, v5

    .line 5
    aget v2, p2, v6

    int-to-byte v2, v2

    const/4 v8, 0x3

    aput-byte v2, v0, v8

    iget-object v2, v9, Lk0/zr;->x:[I

    iget v8, v9, Lk0/zr;->y:I

    rem-int/2addr v8, v5

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aput-byte v13, v0, v3

    aput-byte v4, v0, v7

    aput-byte v11, v0, v12

    const/16 v2, 0x8

    aput-byte v6, v0, v2

    invoke-static {v0}, Lk0/zr;->d3([B)V

    new-array v0, v10, [B

    aput-byte v15, v0, v6

    aput-byte v14, v0, v4

    aput-byte v3, v0, v5

    .line 6
    aget v2, p2, v6

    int-to-byte v2, v2

    const/4 v8, 0x3

    aput-byte v2, v0, v8

    iget-object v2, v9, Lk0/zr;->x:[I

    iget v8, v9, Lk0/zr;->y:I

    rem-int/2addr v8, v5

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aput-byte v13, v0, v3

    aput-byte v4, v0, v7

    aput-byte v11, v0, v12

    const/16 v2, 0x8

    aput-byte v6, v0, v2

    invoke-static {v0}, Lk0/zr;->d3([B)V

    new-array v0, v10, [B

    aput-byte v15, v0, v6

    aput-byte v14, v0, v4

    aput-byte v3, v0, v5

    .line 7
    aget v2, p2, v6

    int-to-byte v2, v2

    const/4 v8, 0x3

    aput-byte v2, v0, v8

    iget-object v2, v9, Lk0/zr;->x:[I

    iget v8, v9, Lk0/zr;->y:I

    rem-int/2addr v8, v5

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aput-byte v13, v0, v3

    aput-byte v4, v0, v7

    aput-byte v11, v0, v12

    const/16 v1, 0x8

    aput-byte v6, v0, v1

    invoke-static {v0}, Lk0/zr;->d3([B)V

    .line 8
    :goto_0
    iget v0, v9, Lk0/zr;->y:I

    add-int/2addr v0, v4

    iput v0, v9, Lk0/zr;->y:I

    .line 9
    rem-int/2addr v0, v5

    iput v0, v9, Lk0/zr;->y:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 10
    aget v6, p2, v6

    aget v4, p2, v4

    aget v5, p2, v5

    const/4 v0, 0x3

    aget v8, p2, v0

    aget v10, p2, v1

    aget v11, p2, v3

    aget v12, p2, v7

    move-object/from16 v0, p0

    move v1, v2

    move v2, v6

    move v3, v4

    move v4, v5

    move v5, v8

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Lk0/zr;->a3(ZIIIIIII)V

    goto :goto_1

    :cond_4
    new-array v0, v3, [I

    const/16 v2, 0xe3

    aput v2, v0, v6

    const/16 v2, 0xc6

    aput v2, v0, v4

    aput v5, v0, v5

    .line 11
    aget v2, p2, v6

    const/4 v3, 0x3

    aput v2, v0, v3

    aget v2, p2, v4

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final a3(ZIIIIIII)V
    .locals 14

    move-object v0, p0

    .line 1
    sput p2, Lk0/zr;->E:I

    .line 2
    sput p3, Lk0/zr;->D:I

    .line 3
    sput p4, Lk0/zr;->C:I

    .line 4
    sput p5, Lk0/zr;->z:I

    .line 5
    sput p6, Lk0/zr;->A:I

    .line 6
    sput p7, Lk0/zr;->B:I

    shr-int/lit8 v1, p8, 0x7

    const/4 v2, 0x1

    and-int/2addr v1, v2

    .line 7
    sput v1, Lk0/zr;->F:I

    and-int/lit8 v1, p8, 0xf

    .line 8
    sput v1, Lk0/zr;->G:I

    const/16 v1, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/16 v9, 0x9

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    const/16 v11, 0xa

    new-array v11, v11, [I

    const/16 v12, 0xe3

    aput v12, v11, v10

    const/16 v12, 0xc7

    aput v12, v11, v2

    aput v8, v11, v7

    aput p2, v11, v6

    aput p3, v11, v5

    aput p4, v11, v4

    aput p5, v11, v3

    aput p6, v11, v8

    aput p7, v11, v1

    aput p8, v11, v9

    .line 9
    invoke-static {v11}, Lz/k;->s([I)V

    :cond_0
    const/16 v11, 0x89

    new-array v12, v2, [I

    .line 10
    sget v13, Lk0/zr;->E:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x8a

    new-array v12, v2, [I

    .line 11
    sget v13, Lk0/zr;->D:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x8b

    new-array v12, v2, [I

    .line 12
    sget v13, Lk0/zr;->C:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x8c

    new-array v12, v2, [I

    .line 13
    sget v13, Lk0/zr;->z:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x8d

    new-array v12, v2, [I

    .line 14
    sget v13, Lk0/zr;->A:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x8e

    new-array v12, v2, [I

    .line 15
    sget v13, Lk0/zr;->B:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x8f

    new-array v12, v2, [I

    .line 16
    sget v13, Lk0/zr;->F:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x90

    new-array v12, v2, [I

    .line 17
    sget v13, Lk0/zr;->G:I

    aput v13, v12, v10

    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    .line 18
    iget-object v11, v0, Lk0/zr;->k:Lo1/g0;

    const/16 v12, 0x13

    invoke-virtual {v11, v2, v12}, Lo1/g0;->b(II)I

    move-result v11

    sget v12, Lk0/zr;->E:I

    if-eq v11, v12, :cond_1

    .line 19
    iget-object v11, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v11, v2, v12}, Lo1/g0;->g(II)V

    .line 20
    :cond_1
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v7, v9}, Lo1/g0;->b(II)I

    move-result v2

    sget v11, Lk0/zr;->D:I

    if-eq v2, v11, :cond_2

    .line 21
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v7, v11}, Lo1/g0;->g(II)V

    .line 22
    :cond_2
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v6, v9}, Lo1/g0;->b(II)I

    move-result v2

    sget v7, Lk0/zr;->C:I

    if-eq v2, v7, :cond_3

    .line 23
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v6, v7}, Lo1/g0;->g(II)V

    .line 24
    :cond_3
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v5, v9}, Lo1/g0;->b(II)I

    move-result v2

    sget v6, Lk0/zr;->z:I

    if-eq v2, v6, :cond_4

    .line 25
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v5, v6}, Lo1/g0;->g(II)V

    .line 26
    :cond_4
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v4, v9}, Lo1/g0;->b(II)I

    move-result v2

    sget v5, Lk0/zr;->A:I

    if-eq v2, v5, :cond_5

    .line 27
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v4, v5}, Lo1/g0;->g(II)V

    .line 28
    :cond_5
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v3, v9}, Lo1/g0;->b(II)I

    move-result v2

    sget v4, Lk0/zr;->B:I

    if-eq v2, v4, :cond_6

    .line 29
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v3, v4}, Lo1/g0;->g(II)V

    .line 30
    :cond_6
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v8, v10}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/zr;->F:I

    if-eq v2, v3, :cond_7

    .line 31
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v8, v3}, Lo1/g0;->g(II)V

    .line 32
    :cond_7
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v1, v10}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/zr;->G:I

    if-eq v2, v3, :cond_8

    .line 33
    iget-object v2, v0, Lk0/zr;->k:Lo1/g0;

    invoke-virtual {v2, v1, v3}, Lo1/g0;->g(II)V

    :cond_8
    return-void
.end method

.method public b([B)V
    .locals 7

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

    goto/16 :goto_6

    .line 3
    :cond_1
    iget v1, p0, Lk0/zr;->f:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/zr;->f:I

    .line 5
    iput v0, p0, Lk0/zr;->g:I

    .line 6
    iput v0, p0, Lk0/zr;->h:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/zr;->e:[B

    iget v2, p0, Lk0/zr;->f:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/zr;->f:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/zr;->f:I

    .line 9
    iget p1, p0, Lk0/zr;->h:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/zr;->e:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/zr;->h:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/zr;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/zr;->e:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/zr;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/zr;->h:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/zr;->g:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/zr;->g:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/zr;->h:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/zr;->f:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/zr;->g:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/zr;->e:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/zr;->h:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/zr;->h:I

    .line 23
    iget v6, p0, Lk0/zr;->f:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/zr;->h:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/zr;->h:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/zr;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/zr;->e:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/zr;->g:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/zr;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/zr;->h:I

    iput v1, p0, Lk0/zr;->g:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/zr;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/zr;->g:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/zr;->h:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/zr;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/zr;->g:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/zr;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/zr;->f:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/zr;->e:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/zr;->g:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method
