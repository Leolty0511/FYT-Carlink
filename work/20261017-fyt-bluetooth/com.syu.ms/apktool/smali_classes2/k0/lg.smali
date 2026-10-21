.class public Lk0/lg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:F

.field public p:I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:J

.field public u:B

.field public v:I

.field public w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/lg;->c:I

    const/16 v2, 0xf

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

    iput-object v3, v0, Lk0/lg;->d:[[I

    .line 4
    iput v1, v0, Lk0/lg;->f:I

    const/16 v3, 0x1a

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_f

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    aput-object v5, v3, v7

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

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    const/16 v5, 0x10

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    const/16 v5, 0x11

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    const/16 v5, 0x12

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    const/16 v5, 0x13

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    const/16 v5, 0x14

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    const/16 v5, 0x15

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    const/16 v5, 0x16

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    const/16 v5, 0x17

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_27

    const/16 v5, 0x18

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    const/16 v4, 0x19

    aput-object v2, v3, v4

    iput-object v3, v0, Lk0/lg;->g:[[I

    const/4 v2, -0x1

    .line 6
    iput v2, v0, Lk0/lg;->h:I

    .line 7
    iput v1, v0, Lk0/lg;->i:I

    .line 8
    iput v1, v0, Lk0/lg;->j:I

    .line 9
    new-instance v3, Lk0/lg$a;

    invoke-direct {v3, v0}, Lk0/lg$a;-><init>(Lk0/lg;)V

    iput-object v3, v0, Lk0/lg;->k:Ljava/lang/Runnable;

    .line 10
    iput v1, v0, Lk0/lg;->l:I

    .line 11
    new-instance v1, Lk0/lg$b;

    invoke-direct {v1, v0}, Lk0/lg$b;-><init>(Lk0/lg;)V

    iput-object v1, v0, Lk0/lg;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/lg$c;

    invoke-direct {v1, v0}, Lk0/lg$c;-><init>(Lk0/lg;)V

    iput-object v1, v0, Lk0/lg;->n:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lk0/lg;->o:F

    const/16 v1, 0xff

    .line 14
    iput v1, v0, Lk0/lg;->p:I

    .line 15
    iput v1, v0, Lk0/lg;->q:I

    .line 16
    new-instance v1, Lk0/lg$d;

    invoke-direct {v1, v0}, Lk0/lg$d;-><init>(Lk0/lg;)V

    iput-object v1, v0, Lk0/lg;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Lk0/lg$e;

    invoke-direct {v1, v0}, Lk0/lg$e;-><init>(Lk0/lg;)V

    iput-object v1, v0, Lk0/lg;->s:Ljava/lang/Runnable;

    const-wide/16 v3, -0x1

    .line 18
    iput-wide v3, v0, Lk0/lg;->t:J

    .line 19
    iput-byte v2, v0, Lk0/lg;->u:B

    .line 20
    iput v2, v0, Lk0/lg;->v:I

    .line 21
    new-instance v1, Lk0/lg$f;

    invoke-direct {v1, v0}, Lk0/lg$f;-><init>(Lk0/lg;)V

    iput-object v1, v0, Lk0/lg;->w:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x22
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x23
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x21
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
        0x9
    .end array-data

    :array_f
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_11
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_12
    .array-data 4
        0xf
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_14
    .array-data 4
        0x11
        0x1a
    .end array-data

    :array_15
    .array-data 4
        0x12
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x13
        0x36
    .end array-data

    :array_17
    .array-data 4
        0x14
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x15
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x16
        0x4b
    .end array-data

    :array_1a
    .array-data 4
        0x17
        0x4a
    .end array-data

    :array_1b
    .array-data 4
        0x18
        0x18
    .end array-data

    :array_1c
    .array-data 4
        0x19
        0x16
    .end array-data

    :array_1d
    .array-data 4
        0x1a
        0x35
    .end array-data

    :array_1e
    .array-data 4
        0x1b
        0x40
    .end array-data

    :array_1f
    .array-data 4
        0x1c
        0x26
    .end array-data

    :array_20
    .array-data 4
        0x1d
        0x3a
    .end array-data

    :array_21
    .array-data 4
        0x1e
        0x3f
    .end array-data

    :array_22
    .array-data 4
        0x1f
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x20
        0x3e
    .end array-data

    :array_24
    .array-data 4
        0x2f
        0x1
    .end array-data

    :array_25
    .array-data 4
        0x30
        0x26
    .end array-data

    :array_26
    .array-data 4
        0x31
        0x4
    .end array-data

    :array_27
    .array-data 4
        0x32
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x33
        0x5
    .end array-data
.end method

.method public static synthetic a3(Lk0/lg;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/lg;->o:F

    return p0
.end method

.method public static synthetic b3(Lk0/lg;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/lg;->o:F

    return p1
.end method

.method public static synthetic c3(Lk0/lg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/lg;->q:I

    return p0
.end method

.method public static synthetic d3(Lk0/lg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/lg;->q:I

    return p1
.end method

.method public static synthetic e3(Lk0/lg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/lg;->p:I

    return p0
.end method

.method public static synthetic f3(Lk0/lg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/lg;->p:I

    return p1
.end method

.method public static synthetic g3(Lk0/lg;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/lg;->t:J

    return-wide v0
.end method

.method public static synthetic h3(Lk0/lg;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/lg;->t:J

    return-wide p1
.end method

.method public static synthetic i3(Lk0/lg;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lk0/lg;->u:B

    return p0
.end method

.method public static synthetic j3(Lk0/lg;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lk0/lg;->u:B

    return p1
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 8
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->p:I

    .line 9
    iput v2, v0, Lk0/mt;->j:I

    .line 10
    iput v2, v0, Lk0/mt;->o:I

    .line 11
    iput v2, v0, Lk0/mt;->r:I

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/lg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/lg;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v0, p0, Lk0/lg;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/lg;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/lg;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_37

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    if-eq v2, v11, :cond_2c

    if-eq v2, v4, :cond_2a

    const/16 v14, 0xd

    const/16 v3, 0xb

    const/16 v13, 0x9

    const/4 v15, 0x6

    if-eq v2, v5, :cond_1b

    if-eq v2, v15, :cond_17

    if-eq v2, v12, :cond_16

    if-eq v2, v13, :cond_15

    const/16 v13, 0x40

    if-eq v2, v13, :cond_12

    const/16 v13, 0x60

    if-eq v2, v13, :cond_8

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_7

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_3

    const/16 v5, 0x70

    if-eq v2, v5, :cond_1

    const/16 v5, 0x71

    if-eq v2, v5, :cond_0

    const v5, 0xffff

    const v6, 0xff00

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    const/16 v2, 0x72

    new-array v4, v9, [I

    add-int/lit8 v11, p2, 0x2

    .line 2
    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v9, [I

    add-int/lit8 v11, p2, 0x3

    .line 3
    aget-byte v12, v1, v11

    shr-int/2addr v12, v9

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v9, [I

    .line 4
    aget-byte v11, v1, v11

    shr-int/2addr v11, v8

    and-int/2addr v11, v9

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v9, [I

    add-int/lit8 v11, p2, 0x4

    .line 5
    aget-byte v11, v1, v11

    shl-int/2addr v11, v10

    and-int/2addr v11, v6

    add-int/lit8 v12, p2, 0x5

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v11, v12

    and-int/2addr v11, v5

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v9, [I

    add-int/lit8 v11, p2, 0x6

    .line 6
    aget-byte v11, v1, v11

    shl-int/2addr v11, v10

    and-int/2addr v11, v6

    add-int/lit8 v12, p2, 0x7

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v11, v12

    and-int/2addr v11, v5

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v9, [I

    add-int/lit8 v11, p2, 0x8

    .line 7
    aget-byte v11, v1, v11

    shl-int/2addr v11, v10

    and-int/2addr v11, v6

    add-int/lit8 v12, p2, 0x9

    aget-byte v12, v1, v12

    and-int/2addr v12, v7

    or-int/2addr v11, v12

    and-int/2addr v11, v5

    aput v11, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v9, [I

    add-int/lit8 v9, p2, 0xa

    .line 8
    aget-byte v9, v1, v9

    shl-int/2addr v9, v10

    and-int/2addr v6, v9

    add-int/lit8 v3, p2, 0xb

    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    or-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_1
    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 9
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 10
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v6

    add-int/lit8 v11, p2, 0x4

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v4, v11

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 11
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v6

    add-int/lit8 v11, p2, 0x6

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v4, v11

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 12
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v6

    add-int/lit8 v11, p2, 0x8

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v4, v11

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 13
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v6

    add-int/lit8 v11, p2, 0xa

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v4, v11

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 14
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v6

    add-int/lit8 v11, p2, 0xc

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v4, v11

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xd

    .line 15
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xe

    aget-byte v1, v1, v6

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_2
    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v11, p2, 0x2

    .line 16
    aget-byte v13, v1, v11

    shr-int/2addr v13, v12

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 17
    aget-byte v11, v1, v11

    shr-int/2addr v11, v8

    and-int/2addr v11, v12

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v9, p2, 0x3

    .line 18
    aget-byte v9, v1, v9

    shl-int/2addr v9, v10

    and-int/2addr v6, v9

    add-int/lit8 v4, p2, 0x4

    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    or-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 19
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 20
    :cond_1
    sget v2, Lu0/b;->Z:I

    if-nez v2, :cond_2

    const/16 v2, 0x7b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 21
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_2
    const/16 v2, 0x7c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 26
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 27
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v9, [I

    .line 28
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_3
    add-int/lit8 v2, p2, 0x4

    .line 29
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v5, p2, 0x5

    .line 30
    aget-byte v6, v1, v5

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x9

    .line 31
    aget-byte v11, v1, v10

    and-int/2addr v11, v7

    add-int/lit8 v13, p2, 0x8

    .line 32
    aget-byte v14, v1, v13

    and-int/2addr v7, v14

    if-nez v3, :cond_4

    if-nez v6, :cond_4

    if-nez v11, :cond_4

    if-nez v7, :cond_4

    .line 33
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 34
    :cond_4
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_5

    sget v8, Ll0/c0;->h:I

    if-ne v8, v6, :cond_5

    sget v8, Ll0/c0;->i:I

    if-ne v8, v11, :cond_5

    sget v8, Ll0/c0;->j:I

    if-eq v8, v7, :cond_6

    .line 35
    :cond_5
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_6

    .line 36
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 37
    sput v4, Ll0/c0;->k:I

    .line 38
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 39
    :cond_6
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 40
    sput v6, Ll0/c0;->h:I

    .line 41
    sput v11, Ll0/c0;->i:I

    .line 42
    sput v7, Ll0/c0;->j:I

    add-int/lit8 v3, p2, 0x2

    .line 43
    aget-byte v3, v1, v3

    invoke-static {v3}, Ll0/c0;->L0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->K2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 44
    aget-byte v3, v1, v3

    invoke-static {v3}, Ll0/c0;->L0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->I2(I)V

    .line 45
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 46
    aget-byte v2, v1, v5

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 47
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->Q2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 48
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->O2(I)V

    .line 49
    aget-byte v2, v1, v10

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 50
    aget-byte v1, v1, v13

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->J2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 52
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->H2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 53
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 54
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 55
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->P2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 56
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->N2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 57
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 58
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    .line 59
    :cond_8
    iget v2, v0, Lk0/lg;->h:I

    add-int/lit8 v4, p2, 0x2

    aget-byte v7, v1, v4

    and-int/2addr v7, v12

    if-eq v2, v7, :cond_d

    .line 60
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    iput v1, v0, Lk0/lg;->h:I

    if-eqz v1, :cond_c

    if-eq v1, v9, :cond_b

    if-eq v1, v11, :cond_a

    if-eq v1, v6, :cond_9

    goto/16 :goto_f

    .line 61
    :cond_9
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 62
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    .line 63
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v8}, Lu0/h;->c(I)V

    goto/16 :goto_f

    .line 64
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lk0/lg;->k3()V

    goto/16 :goto_f

    .line 65
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lk0/lg;->l3()V

    goto/16 :goto_f

    .line 66
    :cond_c
    sget v1, Lu0/b;->D:I

    if-eq v1, v14, :cond_40

    new-array v1, v5, [I

    .line 67
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_f

    .line 68
    :cond_d
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    if-eq v1, v9, :cond_11

    if-eq v1, v11, :cond_10

    if-eq v1, v6, :cond_e

    goto/16 :goto_f

    .line 69
    :cond_e
    sget v1, Lu0/b;->D:I

    if-eq v1, v14, :cond_f

    if-ne v1, v3, :cond_40

    .line 70
    :cond_f
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    .line 72
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v8}, Lu0/h;->c(I)V

    goto/16 :goto_f

    .line 73
    :cond_10
    sget v1, Lu0/b;->D:I

    if-eq v1, v14, :cond_40

    .line 74
    invoke-virtual/range {p0 .. p0}, Lk0/lg;->k3()V

    goto/16 :goto_f

    .line 75
    :cond_11
    sget v1, Lu0/b;->D:I

    if-eq v1, v3, :cond_40

    .line 76
    invoke-virtual/range {p0 .. p0}, Lk0/lg;->l3()V

    goto/16 :goto_f

    :cond_12
    const/16 v2, 0x83

    new-array v10, v9, [I

    add-int/lit8 v13, p2, 0x2

    .line 77
    aget-byte v14, v1, v13

    shr-int/2addr v14, v15

    and-int/2addr v14, v6

    aput v14, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v10, v9, [I

    .line 78
    aget-byte v13, v1, v13

    shr-int/2addr v13, v4

    and-int/2addr v13, v6

    aput v13, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v10, v9, [I

    add-int/lit8 v13, p2, 0x3

    .line 79
    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    aput v13, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v10, v9, [I

    add-int/lit8 v13, p2, 0x4

    .line 80
    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    aput v13, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v10, v9, [I

    add-int/lit8 v13, p2, 0x5

    .line 81
    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    aput v13, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v10, v9, [I

    add-int/lit8 v13, p2, 0x6

    .line 82
    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    aput v13, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v10, v9, [I

    add-int/lit8 v13, p2, 0x7

    .line 83
    aget-byte v13, v1, v13

    and-int/2addr v13, v7

    aput v13, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v10, v9, [I

    add-int/lit8 v13, p2, 0x8

    .line 84
    aget-byte v13, v1, v13

    and-int/2addr v7, v13

    aput v7, v10, v8

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v7, v9, [I

    add-int/lit8 v10, p2, 0x9

    .line 85
    aget-byte v13, v1, v10

    shr-int/2addr v13, v15

    and-int/2addr v13, v6

    aput v13, v7, v8

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v7, v9, [I

    .line 86
    aget-byte v13, v1, v10

    shr-int/2addr v13, v11

    and-int/2addr v13, v6

    aput v13, v7, v8

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v7, v9, [I

    .line 87
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v10, v6

    aput v10, v7, v8

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v7, v9, [I

    add-int/lit8 v10, p2, 0xa

    .line 88
    aget-byte v13, v1, v10

    shr-int/2addr v13, v15

    and-int/2addr v13, v6

    aput v13, v7, v8

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v7, v9, [I

    .line 89
    aget-byte v13, v1, v10

    shr-int/lit8 v11, v13, 0x2

    and-int/2addr v11, v6

    aput v11, v7, v8

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v7, v9, [I

    .line 90
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v6, v10

    aput v6, v7, v8

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v6, v9, [I

    add-int/lit8 v3, p2, 0xb

    .line 91
    aget-byte v7, v1, v3

    shr-int/2addr v7, v8

    and-int/2addr v7, v12

    aput v7, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    .line 92
    iget v2, v0, Lk0/lg;->j:I

    aget-byte v6, v1, v3

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    if-eq v2, v6, :cond_40

    .line 93
    aget-byte v1, v1, v3

    shr-int/2addr v1, v8

    and-int/2addr v1, v12

    iput v1, v0, Lk0/lg;->j:I

    if-eq v1, v9, :cond_14

    if-eq v1, v4, :cond_13

    if-eq v1, v5, :cond_13

    if-eq v1, v15, :cond_13

    if-eq v1, v12, :cond_13

    goto/16 :goto_f

    .line 94
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lk0/lg;->m3()V

    goto/16 :goto_f

    .line 95
    :cond_14
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.hechi.fordexplorer.HcFordExplorerSeatSet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 96
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    .line 97
    invoke-static {v15, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v1, v1, v2

    const/16 v2, 0x80

    const/16 v3, 0x7f

    invoke-static {v1, v8, v2, v9, v3}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_f

    :cond_16
    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 99
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 100
    aget-byte v5, v1, v5

    shr-int/2addr v5, v15

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 101
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 102
    aget-byte v1, v1, v4

    const/16 v4, 0xf

    and-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_17
    const/16 v2, 0x2a

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 103
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v9, [I

    .line 104
    aget-byte v7, v1, v6

    shr-int/lit8 v5, v7, 0x5

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v9, [I

    .line 105
    aget-byte v5, v1, v6

    shr-int/2addr v5, v8

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 106
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v9, [I

    .line 107
    aget-byte v5, v1, v5

    shr-int/2addr v5, v15

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 108
    aget-byte v1, v1, v2

    const/16 v2, 0xf

    and-int/2addr v1, v2

    const/16 v2, 0x28

    if-ne v1, v9, :cond_18

    new-array v1, v9, [I

    const/4 v3, -0x2

    aput v3, v1, v8

    .line 109
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_18
    if-ne v1, v13, :cond_19

    new-array v1, v9, [I

    const/4 v3, -0x3

    aput v3, v1, v8

    .line 110
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_19
    const/16 v3, 0xf

    if-ne v1, v3, :cond_1a

    new-array v1, v9, [I

    const/4 v3, -0x1

    aput v3, v1, v8

    .line 111
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1a
    new-array v3, v9, [I

    aput v1, v3, v8

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1b
    new-array v2, v9, [I

    add-int/lit8 v16, p2, 0x2

    .line 113
    aget-byte v17, v1, v16

    shr-int/lit8 v17, v17, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v2, v8

    const/16 v13, 0xa

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 114
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v2, v8

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v9, [I

    .line 115
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 116
    aget-byte v3, v1, v16

    shr-int/2addr v3, v4

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v9, [I

    .line 117
    aget-byte v14, v1, v16

    shr-int/2addr v14, v11

    and-int/2addr v6, v14

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v9, [I

    .line 118
    aget-byte v6, v1, v16

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v9, [I

    .line 119
    aget-byte v6, v1, v16

    shr-int/2addr v6, v8

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 120
    aget-byte v6, v1, v3

    shr-int/2addr v6, v12

    and-int/2addr v6, v9

    aput v6, v2, v8

    const/16 v6, 0xf

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v6, v9, [I

    .line 121
    aget-byte v14, v1, v3

    shr-int/2addr v14, v15

    and-int/2addr v14, v9

    aput v14, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v6, v9, [I

    .line 122
    aget-byte v14, v1, v3

    shr-int/2addr v14, v5

    and-int/2addr v14, v9

    aput v14, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v6, v9, [I

    .line 123
    aget-byte v14, v1, v3

    shr-int/2addr v14, v4

    and-int/2addr v14, v9

    aput v14, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v6, v9, [I

    .line 124
    aget-byte v3, v1, v3

    shr-int/2addr v3, v8

    const/16 v14, 0xf

    and-int/2addr v3, v14

    aput v3, v6, v8

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 125
    aget-byte v14, v1, v6

    shr-int/2addr v14, v12

    and-int/2addr v14, v9

    aput v14, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 126
    aget-byte v3, v1, v6

    shr-int/2addr v3, v15

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0x12

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    .line 127
    aget-byte v14, v1, v6

    shr-int/lit8 v4, v14, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    .line 128
    aget-byte v4, v1, v6

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v9, [I

    .line 129
    aget-byte v4, v1, v6

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 130
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    const-string v4, "persist.fyt.reversetemp"

    .line 131
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c

    add-int/lit8 v3, p2, 0x6

    .line 132
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    :cond_1c
    const/16 v4, 0x1b

    if-nez v3, :cond_1d

    new-array v3, v9, [I

    const/4 v14, -0x2

    aput v14, v3, v8

    .line 133
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1d
    const/16 v14, 0xfd

    if-ne v3, v14, :cond_1e

    new-array v3, v9, [I

    const/4 v14, -0x3

    aput v14, v3, v8

    .line 134
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1e
    if-ne v3, v7, :cond_1f

    new-array v3, v9, [I

    const/4 v14, -0x1

    aput v14, v3, v8

    .line 135
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1f
    new-array v14, v9, [I

    aput v3, v14, v8

    .line 136
    invoke-static {v4, v14}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v3, p2, 0x6

    .line 137
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    const-string v4, "persist.fyt.reversetemp"

    .line 138
    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 139
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :cond_20
    const/16 v2, 0x1c

    if-nez v3, :cond_21

    new-array v3, v9, [I

    const/4 v4, -0x2

    aput v4, v3, v8

    .line 140
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_21
    const/16 v4, 0xfd

    if-ne v3, v4, :cond_22

    new-array v3, v9, [I

    const/4 v4, -0x3

    aput v4, v3, v8

    .line 141
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_22
    if-ne v3, v7, :cond_23

    new-array v3, v9, [I

    const/4 v4, -0x1

    aput v4, v3, v8

    .line 142
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_23
    new-array v4, v9, [I

    aput v3, v4, v8

    .line 143
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v2, p2, 0x7

    .line 144
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_24

    const/16 v3, 0x20

    new-array v4, v9, [I

    .line 145
    aget-byte v14, v1, v2

    shr-int/lit8 v11, v14, 0x2

    and-int/2addr v11, v12

    aput v11, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1e

    new-array v4, v9, [I

    aput v8, v4, v8

    .line 146
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_24
    const/16 v3, 0x1e

    new-array v4, v9, [I

    .line 147
    aget-byte v14, v1, v2

    shr-int/lit8 v11, v14, 0x2

    and-int/2addr v11, v12

    aput v11, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x20

    new-array v4, v9, [I

    aput v8, v4, v8

    .line 148
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 149
    :goto_3
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_25

    const/16 v3, 0x1f

    new-array v4, v9, [I

    .line 150
    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v12

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v9, [I

    aput v8, v3, v8

    .line 151
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_25
    const/16 v3, 0x1f

    new-array v4, v9, [I

    aput v8, v4, v8

    .line 152
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1d

    new-array v4, v9, [I

    .line 153
    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v12

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 154
    :goto_4
    aget-byte v2, v1, v6

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x8

    .line 155
    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_29

    if-ne v1, v7, :cond_26

    goto :goto_7

    :cond_26
    if-nez v2, :cond_28

    const-string v2, "persist.fyt.temperature"

    .line 156
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_27

    const/16 v2, 0x9

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    const/4 v2, -0x1

    goto :goto_5

    :cond_27
    mul-int/2addr v1, v5

    add-int/lit16 v1, v1, 0x258

    goto :goto_6

    :cond_28
    const/4 v2, -0x1

    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    :goto_5
    and-int/2addr v1, v2

    .line 157
    :goto_6
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_f

    .line 158
    :cond_29
    :goto_7
    invoke-static {v8}, Lu0/d;->B3(I)V

    goto/16 :goto_f

    :cond_2a
    add-int/lit8 v2, p2, 0x3

    .line 159
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    const-string v2, "persist.syu.reversefrontdoor"

    .line 160
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2b

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 161
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 162
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_2b
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 163
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 164
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 165
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 166
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 167
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 168
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_2c
    add-int/lit8 v2, p2, 0x2

    .line 169
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 170
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 171
    iput v2, v0, Lk0/lg;->f:I

    move v2, v8

    .line 172
    :goto_9
    iget-object v3, v0, Lk0/lg;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2e

    .line 173
    iget v4, v0, Lk0/lg;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_2d

    if-eqz v4, :cond_2e

    .line 174
    iput v2, v0, Lk0/lg;->e:I

    goto :goto_a

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 175
    :cond_2e
    :goto_a
    iget v4, v0, Lk0/lg;->f:I

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_35

    const/16 v5, 0x50

    if-eq v4, v5, :cond_33

    const/16 v5, 0x51

    if-eq v4, v5, :cond_31

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_2f

    .line 176
    array-length v1, v3

    if-ge v2, v1, :cond_40

    .line 177
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_2f
    if-nez v1, :cond_40

    .line 178
    iget v1, v0, Lk0/lg;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_30

    if-eq v1, v7, :cond_30

    .line 179
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 180
    :cond_30
    iput v7, v0, Lk0/lg;->e:I

    goto/16 :goto_f

    :cond_31
    move v2, v8

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_32

    .line 181
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 182
    :cond_32
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_33
    move v2, v8

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_34

    .line 183
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 184
    :cond_34
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 185
    :cond_35
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_40

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_40

    const-string v1, "com.syu.fourcamera2"

    .line 186
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 187
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 188
    :cond_36
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :cond_37
    add-int/lit8 v2, p2, 0x2

    .line 189
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 190
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 191
    iput v2, v0, Lk0/lg;->c:I

    move v2, v8

    .line 192
    :goto_d
    iget-object v3, v0, Lk0/lg;->d:[[I

    array-length v10, v3

    if-ge v2, v10, :cond_39

    .line 193
    iget v10, v0, Lk0/lg;->c:I

    aget-object v11, v3, v2

    aget v11, v11, v8

    if-ne v10, v11, :cond_38

    if-eqz v10, :cond_39

    .line 194
    iput v2, v0, Lk0/lg;->b:I

    goto :goto_e

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 195
    :cond_39
    :goto_e
    iget v10, v0, Lk0/lg;->c:I

    if-eq v10, v6, :cond_3e

    if-eq v10, v4, :cond_3c

    and-int/2addr v1, v7

    if-eqz v1, :cond_3a

    .line 196
    array-length v1, v3

    if-ge v2, v1, :cond_40

    .line 197
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_f

    .line 198
    :cond_3a
    iget v1, v0, Lk0/lg;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_3b

    if-eq v1, v7, :cond_3b

    .line 199
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 200
    :cond_3b
    iput v7, v0, Lk0/lg;->b:I

    goto :goto_f

    :cond_3c
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_40

    .line 201
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_3d

    if-eq v1, v4, :cond_3d

    if-eq v1, v5, :cond_3d

    .line 202
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 203
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_3d
    const/16 v1, 0x12

    .line 204
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 205
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_3e
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_40

    .line 206
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_3f

    if-eq v1, v4, :cond_3f

    if-eq v1, v5, :cond_3f

    .line 207
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    .line 208
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_3f
    const/16 v1, 0x1a

    .line 209
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 210
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    :cond_40
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x4
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/lg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lg;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/lg;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lg;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/lg;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/lg;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x93

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
    .locals 5

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0xc0

    aput p3, p1, v3

    aput v2, p1, v2

    .line 1
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0xa

    new-array p1, p1, [I

    aput p3, p1, v4

    const/16 p3, 0x93

    aput p3, p1, v3

    const/4 p3, 0x7

    aput p3, p1, v2

    .line 2
    aget v4, p2, v4

    aput v4, p1, v0

    aget v3, p2, v3

    aput v3, p1, p4

    aget v2, p2, v2

    aput v2, p1, v1

    aget v0, p2, v0

    const/4 v2, 0x6

    aput v0, p1, v2

    aget p4, p2, p4

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p4, p2, v1

    aput p4, p1, p3

    const/16 p3, 0x9

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0x96

    aput p3, p1, v3

    aput v2, p1, v2

    .line 3
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0xa3

    aput p3, p1, v3

    aput v2, p1, v2

    .line 4
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 5
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0xa1

    aput p3, p1, v3

    aput v2, p1, v2

    .line 6
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0x97

    aput p3, p1, v3

    aput v2, p1, v2

    .line 7
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array p1, v1, [I

    aput p3, p1, v4

    const/16 p3, 0x95

    aput p3, p1, v3

    aput v2, p1, v2

    .line 8
    aget p3, p2, v4

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

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
.end method

.method public final k3()V
    .locals 3

    const-string v0, "com.syu.carinfo.hechi.fordexplorer.HcFordExplorerCd"

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

.method public final l3()V
    .locals 3

    const-string v0, "com.syu.carinfo.hechi.fordexplorer.HcFordExplorerRadio"

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

.method public final m3()V
    .locals 3

    const-string v0, "com.syu.carinfo.hechi.fordexplorer.HcFordExplorerSeatSet"

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
