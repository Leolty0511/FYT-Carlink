.class public Lk0/jm;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Lo1/g0;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/jm;->c:I

    const/16 v2, 0xd

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

    iput-object v3, v0, Lk0/jm;->d:[[I

    .line 4
    iput v1, v0, Lk0/jm;->f:I

    const/16 v3, 0x21

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_d

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    const/16 v5, 0xe

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    const/16 v5, 0xf

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    const/16 v5, 0x10

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    const/16 v5, 0x11

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    const/16 v5, 0x12

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    const/16 v5, 0x13

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    const/16 v5, 0x14

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    const/16 v5, 0x15

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    const/16 v5, 0x16

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    const/16 v5, 0x17

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    const/16 v5, 0x18

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    const/16 v5, 0x19

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_27

    const/16 v5, 0x1a

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    const/16 v5, 0x1b

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    const/16 v5, 0x1c

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    const/16 v5, 0x1d

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v5, 0x1e

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v5, 0x1f

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v5, 0x20

    aput-object v2, v3, v5

    iput-object v3, v0, Lk0/jm;->g:[[I

    .line 6
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/jm;->h:Lo1/g0;

    .line 7
    iput v6, v0, Lk0/jm;->i:I

    .line 8
    iput v4, v0, Lk0/jm;->j:I

    .line 9
    iput v7, v0, Lk0/jm;->k:I

    .line 10
    iput v8, v0, Lk0/jm;->l:I

    .line 11
    iput v9, v0, Lk0/jm;->m:I

    .line 12
    iput v10, v0, Lk0/jm;->n:I

    .line 13
    new-instance v2, Lk0/jm$a;

    invoke-direct {v2, v0}, Lk0/jm$a;-><init>(Lk0/jm;)V

    iput-object v2, v0, Lk0/jm;->o:Ljava/lang/Runnable;

    .line 14
    iput v1, v0, Lk0/jm;->p:I

    .line 15
    new-instance v1, Lk0/jm$b;

    invoke-direct {v1, v0}, Lk0/jm$b;-><init>(Lk0/jm;)V

    iput-object v1, v0, Lk0/jm;->q:Ljava/lang/Runnable;

    .line 16
    new-instance v1, Lk0/jm$c;

    invoke-direct {v1, v0}, Lk0/jm$c;-><init>(Lk0/jm;)V

    iput-object v1, v0, Lk0/jm;->r:Ljava/lang/Runnable;

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
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x1f
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x15
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x36
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x7
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x9
        0x6
    .end array-data

    :array_15
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_16
    .array-data 4
        0xb
        0x26
    .end array-data

    :array_17
    .array-data 4
        0xc
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xd
        0x37
    .end array-data

    :array_19
    .array-data 4
        0xe
        0x8
    .end array-data

    :array_1a
    .array-data 4
        0xf
        0x7
    .end array-data

    :array_1b
    .array-data 4
        0x10
        0x1e
    .end array-data

    :array_1c
    .array-data 4
        0x11
        0x1f
    .end array-data

    :array_1d
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_1f
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_20
    .array-data 4
        0x15
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x16
        0xb
    .end array-data

    :array_22
    .array-data 4
        0x30
        0x31
    .end array-data

    :array_23
    .array-data 4
        0x31
        0x28
    .end array-data

    :array_24
    .array-data 4
        0x32
        0x29
    .end array-data

    :array_25
    .array-data 4
        0x33
        0x2a
    .end array-data

    :array_26
    .array-data 4
        0x34
        0x2b
    .end array-data

    :array_27
    .array-data 4
        0x35
        0x2c
    .end array-data

    :array_28
    .array-data 4
        0x36
        0x2d
    .end array-data

    :array_29
    .array-data 4
        0x37
        0x2e
    .end array-data

    :array_2a
    .array-data 4
        0x38
        0x2f
    .end array-data

    :array_2b
    .array-data 4
        0x39
        0x30
    .end array-data

    :array_2c
    .array-data 4
        0x3a
        0x32
    .end array-data

    :array_2d
    .array-data 4
        0x3b
        0x33
    .end array-data
.end method

.method public static synthetic a3(Lk0/jm;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/jm;->h:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/jm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jm;->m3(I)V

    return-void
.end method

.method public static synthetic c3(Lk0/jm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jm;->h3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/jm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jm;->i3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/jm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jm;->j3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/jm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jm;->k3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/jm;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jm;->l3(I)V

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
    iget-object v0, p0, Lk0/jm;->h:Lo1/g0;

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
    iput v2, v0, Lk0/mt;->l:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 11
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/jm;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v0, p0, Lk0/jm;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x25

    const/16 v4, 0x10

    const/16 v7, 0xb

    const/16 v9, 0x8

    const/16 v11, 0xf

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/4 v10, 0x3

    const/16 v12, 0xff

    const/4 v8, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x28

    if-eq v2, v3, :cond_19

    const/16 v3, 0x29

    const/16 v6, 0x1f

    if-eq v2, v3, :cond_10

    const/16 v3, 0x38

    if-eq v2, v3, :cond_e

    const/16 v3, 0x39

    if-eq v2, v3, :cond_b

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_11

    .line 2
    :pswitch_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_11

    :pswitch_1
    const/16 v2, 0x8b

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0x5

    .line 3
    aget-byte v6, v1, v6

    shl-int/lit8 v4, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    shl-int/2addr v6, v9

    const v10, 0xff00

    and-int/2addr v6, v10

    or-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    or-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xa

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    and-int/2addr v1, v12

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :pswitch_2
    const/16 v2, 0x8a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 5
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x3

    .line 7
    aget-byte v6, v1, v4

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x4

    .line 8
    aget-byte v9, v1, v7

    and-int/2addr v9, v12

    add-int/lit8 v10, p2, 0x5

    .line 9
    aget-byte v11, v1, v10

    and-int/2addr v11, v12

    if-nez v3, :cond_0

    if-nez v6, :cond_0

    if-nez v9, :cond_0

    if-nez v11, :cond_0

    .line 10
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 11
    :cond_0
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_1

    sget v8, Ll0/c0;->h:I

    if-ne v8, v6, :cond_1

    sget v8, Ll0/c0;->i:I

    if-ne v8, v9, :cond_1

    sget v8, Ll0/c0;->j:I

    if-eq v8, v11, :cond_2

    .line 12
    :cond_1
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_2

    .line 13
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 14
    sput v13, Ll0/c0;->k:I

    .line 15
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 16
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 17
    sput v6, Ll0/c0;->h:I

    .line 18
    sput v9, Ll0/c0;->i:I

    .line 19
    sput v11, Ll0/c0;->j:I

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 21
    aget-byte v2, v1, v4

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 22
    aget-byte v2, v1, v7

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 23
    aget-byte v1, v1, v10

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_11

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 27
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_11

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 29
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 30
    iput v2, v0, Lk0/jm;->c:I

    move v2, v8

    .line 31
    :goto_1
    iget-object v3, v0, Lk0/jm;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 32
    iget v4, v0, Lk0/jm;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v8

    if-ne v4, v7, :cond_3

    if-eqz v4, :cond_4

    .line 33
    iput v2, v0, Lk0/jm;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_4
    :goto_2
    iget v4, v0, Lk0/jm;->c:I

    const/16 v7, 0x13

    if-eq v4, v7, :cond_9

    const/16 v7, 0x14

    if-eq v4, v7, :cond_7

    and-int/2addr v1, v12

    if-ne v1, v5, :cond_5

    .line 35
    array-length v1, v3

    if-ge v2, v1, :cond_27

    .line 36
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :cond_5
    if-nez v1, :cond_27

    .line 37
    iget v1, v0, Lk0/jm;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_6

    if-eq v1, v12, :cond_6

    .line 38
    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 39
    :cond_6
    iput v12, v0, Lk0/jm;->b:I

    goto/16 :goto_11

    :cond_7
    move v2, v8

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_8

    const/16 v3, 0x1e

    .line 40
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    const/16 v3, 0x1e

    .line 41
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :cond_9
    move v2, v8

    :goto_4
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_a

    .line 42
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 43
    :cond_a
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v3, v1, v2

    if-nez v3, :cond_c

    const/16 v2, 0x97

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 45
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    .line 46
    :cond_c
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_d

    const/16 v2, 0x98

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 47
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    .line 48
    :cond_d
    aget-byte v2, v1, v2

    if-ne v2, v15, :cond_27

    const/16 v2, 0x99

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 49
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_e
    const/16 v2, 0x62

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 50
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 51
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 52
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 53
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 54
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 55
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 56
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x9

    .line 57
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xa

    .line 58
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xb

    .line 59
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xc

    .line 60
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xd

    .line 61
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xe

    .line 62
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xf

    .line 63
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x10

    .line 64
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x11

    .line 65
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x12

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x13

    .line 67
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x14

    .line 68
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x15

    .line 69
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x16

    .line 70
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x17

    .line 71
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v5, [I

    .line 72
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v5, [I

    .line 73
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v5, [I

    .line 74
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v5, [I

    .line 75
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v5, [I

    .line 76
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x18

    .line 77
    aget-byte v6, v1, v4

    const/4 v7, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v5, [I

    .line 78
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v5, [I

    .line 79
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v5, [I

    .line 80
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v5, [I

    .line 81
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v5, [I

    .line 82
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v5, [I

    .line 83
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x19

    .line 84
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v5, [I

    .line 85
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v5, [I

    .line 86
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v5, [I

    .line 87
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v5, [I

    .line 88
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3f5

    new-array v3, v5, [I

    .line 89
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v5, [I

    .line 90
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 91
    aget-byte v2, v1, v4

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_f

    .line 92
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_5

    .line 93
    :cond_f
    invoke-static {v8}, Lk0/qt;->a(I)V

    :goto_5
    const/16 v2, 0x8d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x1a

    .line 94
    aget-byte v6, v1, v4

    const/4 v7, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v5, [I

    .line 95
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v5, [I

    .line 96
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v5, [I

    .line 97
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v5, [I

    .line 98
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v5, [I

    .line 99
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v5, [I

    .line 100
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v5, [I

    .line 101
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v5, [I

    const/16 v4, 0x1b

    add-int/lit8 v4, p2, 0x1b

    .line 102
    aget-byte v1, v1, v4

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 104
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 105
    iput v2, v0, Lk0/jm;->f:I

    move v2, v8

    .line 106
    :goto_6
    iget-object v3, v0, Lk0/jm;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 107
    iget v4, v0, Lk0/jm;->f:I

    aget-object v7, v3, v2

    aget v7, v7, v8

    if-ne v4, v7, :cond_11

    if-eqz v4, :cond_12

    .line 108
    iput v2, v0, Lk0/jm;->e:I

    goto :goto_7

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 109
    :cond_12
    :goto_7
    iget v4, v0, Lk0/jm;->f:I

    packed-switch v4, :pswitch_data_2

    and-int/2addr v1, v12

    if-ne v1, v5, :cond_17

    .line 110
    array-length v1, v3

    if-ge v2, v1, :cond_27

    .line 111
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :pswitch_6
    move v2, v8

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_13

    .line 112
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 113
    :cond_13
    invoke-static {v6, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :pswitch_7
    move v2, v8

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1e

    .line 114
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    const/16 v3, 0x1e

    .line 115
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :pswitch_8
    move v2, v8

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_15

    const/4 v3, 0x7

    .line 116
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v3, 0x7

    .line 117
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :pswitch_9
    move v2, v8

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    .line 118
    invoke-static {v9, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 119
    :cond_16
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    :cond_17
    if-nez v1, :cond_27

    .line 120
    iget v1, v0, Lk0/jm;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_18

    if-eq v1, v12, :cond_18

    .line 121
    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 122
    :cond_18
    iput v12, v0, Lk0/jm;->e:I

    goto/16 :goto_11

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 123
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 124
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1a

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 125
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 126
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1a
    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 127
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 128
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 129
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 130
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v8

    .line 131
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v5

    aput v1, v2, v8

    .line 132
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 133
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_11

    :cond_1c
    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x2

    .line 134
    aget-byte v6, v1, v3

    const/16 v16, 0x7

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v5

    aput v6, v2, v8

    const/16 v6, 0xa

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 135
    aget-byte v6, v1, v3

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v5

    aput v6, v2, v8

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v6, v5, [I

    .line 136
    aget-byte v7, v1, v3

    shr-int/2addr v7, v14

    and-int/2addr v7, v5

    aput v7, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v6, v5, [I

    .line 137
    aget-byte v7, v1, v3

    shr-int/2addr v7, v10

    and-int/2addr v7, v5

    aput v7, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v6, v5, [I

    .line 138
    aget-byte v3, v1, v3

    shr-int/2addr v3, v15

    and-int/2addr v3, v5

    aput v3, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 139
    aget-byte v7, v1, v6

    const/4 v10, 0x7

    shr-int/2addr v7, v10

    and-int/2addr v7, v5

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 140
    aget-byte v3, v1, v6

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v8

    const/16 v3, 0x13

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 141
    aget-byte v3, v1, v6

    shr-int/2addr v3, v14

    and-int/2addr v3, v5

    aput v3, v2, v8

    const/16 v3, 0x14

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 142
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v6, -0x2

    const/16 v7, 0x1c

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x4

    .line 143
    aget-byte v10, v1, v2

    and-int/2addr v10, v12

    if-nez v10, :cond_1d

    new-array v2, v5, [I

    aput v6, v2, v8

    .line 144
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    .line 145
    :cond_1d
    aget-byte v10, v1, v2

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_1e

    new-array v2, v5, [I

    aput v3, v2, v8

    .line 146
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1e
    new-array v10, v5, [I

    .line 147
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v10, v8

    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    :goto_d
    add-int/lit8 v2, p2, 0x5

    .line 148
    aget-byte v7, v1, v2

    and-int/2addr v7, v12

    if-nez v7, :cond_1f

    new-array v2, v5, [I

    aput v6, v2, v8

    const/16 v10, 0x1b

    .line 149
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_1f
    const/16 v10, 0x1b

    .line 150
    aget-byte v6, v1, v2

    and-int/2addr v6, v12

    if-ne v6, v12, :cond_20

    new-array v2, v5, [I

    aput v3, v2, v8

    .line 151
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_20
    new-array v3, v5, [I

    .line 152
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v3, v8

    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_21
    const/16 v10, 0x1b

    add-int/lit8 v2, p2, 0x4

    .line 153
    aget-byte v15, v1, v2

    and-int/2addr v15, v12

    if-nez v15, :cond_22

    new-array v2, v5, [I

    aput v6, v2, v8

    .line 154
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 155
    :cond_22
    aget-byte v15, v1, v2

    and-int/2addr v15, v12

    if-ne v15, v12, :cond_23

    new-array v2, v5, [I

    aput v3, v2, v8

    .line 156
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_23
    new-array v15, v5, [I

    .line 157
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v15, v8

    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    :goto_e
    add-int/lit8 v2, p2, 0x5

    .line 158
    aget-byte v10, v1, v2

    and-int/2addr v10, v12

    if-nez v10, :cond_24

    new-array v2, v5, [I

    aput v6, v2, v8

    .line 159
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    .line 160
    :cond_24
    aget-byte v6, v1, v2

    and-int/2addr v6, v12

    if-ne v6, v12, :cond_25

    new-array v2, v5, [I

    aput v3, v2, v8

    .line 161
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_25
    new-array v3, v5, [I

    .line 162
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    aput v2, v3, v8

    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_f
    const/16 v2, 0x41

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0x6

    .line 163
    aget-byte v7, v1, v6

    const/4 v10, 0x7

    shr-int/2addr v7, v10

    and-int/2addr v7, v5

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 164
    aget-byte v3, v1, v6

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v8

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 165
    aget-byte v3, v1, v6

    shr-int/2addr v3, v14

    and-int/2addr v3, v5

    aput v3, v2, v8

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v5, [I

    .line 166
    aget-byte v4, v1, v6

    shr-int/2addr v4, v8

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 167
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_26

    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x7

    .line 168
    aget-byte v4, v1, v3

    shr-int/2addr v4, v13

    and-int/2addr v4, v11

    aput v4, v2, v8

    const/16 v4, 0x1e

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v5, [I

    .line 169
    aget-byte v3, v1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_26
    const/16 v2, 0x1d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 170
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v11

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 171
    aget-byte v3, v1, v4

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aput v3, v2, v8

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_10
    const/16 v2, 0x15

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 172
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_27
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jm;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/jm;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/jm;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x9f

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

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_9

    .line 1
    array-length p1, p2

    if-lez p1, :cond_9

    .line 2
    aget p1, p2, v2

    const/16 p2, 0x10

    if-eq p1, p2, :cond_2

    const/16 p2, 0x11

    if-eq p1, p2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_2
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    const-wide/16 p1, 0x64

    .line 5
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v0, [I

    .line 6
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xc7

    aput p4, p1, v4

    aput v3, p1, v3

    .line 7
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_4
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x86

    aput p4, p1, v4

    aput v3, p1, v3

    .line 8
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_5
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x82

    aput p4, p1, v4

    aput v3, p1, v3

    .line 9
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 10
    :cond_6
    aget p1, p2, v2

    const/16 v5, 0xc6

    const/4 v6, 0x6

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-array p1, v6, [I

    aput p4, p1, v2

    aput v5, p1, v4

    aput v1, p1, v3

    .line 11
    aget p4, p2, v2

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 12
    :pswitch_1
    aget p1, p2, v4

    if-ne p1, v4, :cond_7

    .line 13
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/jm;->k3(I)V

    goto :goto_0

    .line 14
    :cond_7
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/jm;->l3(I)V

    .line 15
    :goto_0
    aget p1, p2, v3

    if-eqz p1, :cond_9

    new-array p1, v6, [I

    aput p4, p1, v2

    aput v5, p1, v4

    aput v1, p1, v3

    .line 16
    aget p4, p2, v2

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 17
    :pswitch_2
    aget p1, p2, v4

    if-ne p1, v4, :cond_8

    .line 18
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/jm;->i3(I)V

    goto :goto_1

    .line 19
    :cond_8
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/jm;->j3(I)V

    .line 20
    :goto_1
    aget p1, p2, v3

    if-eqz p1, :cond_9

    new-array p1, v6, [I

    aput p4, p1, v2

    aput v5, p1, v4

    aput v1, p1, v3

    .line 21
    aget p4, p2, v2

    aput p4, p1, v1

    aget p4, p2, v4

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 22
    :pswitch_3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/jm;->h3(I)V

    goto :goto_2

    .line 23
    :pswitch_4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/jm;->m3(I)V

    :cond_9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc7
        0x2
        0x26
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc7
        0x2
        0x26
        0x0
    .end array-data
.end method

.method public final h3(I)V
    .locals 6

    .line 1
    sput p1, Lk0/jm;->t:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc6

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/4 v4, 0x3

    aput v4, v0, v1

    const/16 v5, 0x38

    aput v5, v0, v4

    const/4 v4, 0x4

    aput p1, v0, v4

    const/4 v4, 0x5

    aput v2, v0, v4

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    aput p1, v0, v2

    const/16 p1, 0x9a

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/jm;->t:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final i3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/jm;->u:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x9b

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jm;->u:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final j3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/jm;->v:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x9c

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jm;->v:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/jm;->w:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x9d

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jm;->w:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/jm;->x:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x9e

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jm;->x:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final m3(I)V
    .locals 5

    .line 1
    sput p1, Lk0/jm;->s:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc6

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/4 v4, 0x3

    aput v4, v0, v1

    const/16 v1, 0x36

    aput v1, v0, v4

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    aput p1, v0, v2

    const/16 p1, 0x96

    .line 3
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/jm;->s:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/jm;->h:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
