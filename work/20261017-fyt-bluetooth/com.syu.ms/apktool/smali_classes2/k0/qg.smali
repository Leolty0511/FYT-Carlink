.class public Lk0/qg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:J

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:B

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qg;->c:I

    .line 3
    iput v0, p0, Lk0/qg;->d:I

    const/16 v1, 0xa

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

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/qg;->e:[[I

    .line 5
    iput v0, p0, Lk0/qg;->f:I

    .line 6
    iput v0, p0, Lk0/qg;->g:I

    .line 7
    iput v0, p0, Lk0/qg;->h:I

    .line 8
    new-instance v0, Lk0/qg$a;

    invoke-direct {v0, p0}, Lk0/qg$a;-><init>(Lk0/qg;)V

    iput-object v0, p0, Lk0/qg;->i:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lk0/qg;->j:J

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/qg;->k:I

    .line 11
    new-instance v0, Lk0/qg$b;

    invoke-direct {v0, p0}, Lk0/qg$b;-><init>(Lk0/qg;)V

    iput-object v0, p0, Lk0/qg;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/qg$c;

    invoke-direct {v0, p0}, Lk0/qg$c;-><init>(Lk0/qg;)V

    iput-object v0, p0, Lk0/qg;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/qg$d;

    invoke-direct {v0, p0}, Lk0/qg$d;-><init>(Lk0/qg;)V

    iput-object v0, p0, Lk0/qg;->n:Ljava/lang/Runnable;

    .line 14
    iput-byte v4, p0, Lk0/qg;->o:B

    .line 15
    new-instance v0, Lk0/qg$e;

    invoke-direct {v0, p0}, Lk0/qg$e;-><init>(Lk0/qg;)V

    iput-object v0, p0, Lk0/qg;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/qg$f;

    invoke-direct {v0, p0}, Lk0/qg$f;-><init>(Lk0/qg;)V

    iput-object v0, p0, Lk0/qg;->q:Ljava/lang/Runnable;

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
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x16
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x17
        0x1
    .end array-data
.end method

.method public static synthetic b3(Lk0/qg;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/qg;->j:J

    return-wide v0
.end method

.method public static synthetic c3(Lk0/qg;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/qg;->j:J

    return-wide p1
.end method

.method public static synthetic d3(Lk0/qg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/qg;->k:I

    return p0
.end method

.method public static synthetic e3(Lk0/qg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/qg;->k:I

    return p1
.end method

.method public static synthetic f3(Lk0/qg;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/qg;->j3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g3(Lk0/qg;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/qg;->i3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic h3(Lk0/qg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/qg;->q:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x1

    iput v1, v0, Lk0/mt;->q:I

    .line 2
    sget v2, Lk0/nt;->a:I

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    const v5, 0x2701c4

    if-ne v2, v5, :cond_0

    .line 3
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v1, v0, Lk0/mt;->n:I

    const/4 v2, 0x2

    .line 5
    iput v2, v0, Lk0/mt;->h:I

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v0, Lk0/mt;->n:I

    .line 10
    iput v4, v0, Lk0/mt;->h:I

    .line 11
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 12
    iput v1, v0, Lk0/mt;->f:I

    .line 13
    iput v4, v0, Lk0/mt;->l:I

    .line 14
    iput v1, v0, Lk0/mt;->g:I

    .line 15
    iput v1, v0, Lk0/mt;->o:I

    .line 16
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/qg;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v0, p0, Lk0/qg;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/qg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/qg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    iget-object v0, p0, Lk0/qg;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/qg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/qg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x28

    const v4, 0xff00

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x30

    const/4 v9, 0x2

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x50

    const/16 v10, 0xb

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x51

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x5

    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v6, v1, v2

    const-string v10, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    new-array v10, v8, [I

    shr-int/lit8 v11, v6, 0x6

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 4
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v8, [I

    shr-int/lit8 v11, v6, 0x7

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 5
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v10, v8, [I

    shr-int/lit8 v11, v6, 0x7

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 6
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v8, [I

    shr-int/lit8 v11, v6, 0x6

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 7
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v10, v8, [I

    shr-int/lit8 v11, v6, 0x4

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 8
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v8, [I

    shr-int/lit8 v11, v6, 0x5

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 9
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v10, v6, 0x3

    and-int/2addr v10, v8

    aput v10, v4, v7

    .line 10
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v6, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 11
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    .line 12
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Ll0/c0;->p:Z

    if-nez v3, :cond_7

    .line 13
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    .line 14
    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    if-nez v3, :cond_1

    if-ne v1, v8, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v7

    :goto_1
    if-ne v3, v8, :cond_2

    if-nez v1, :cond_2

    move v4, v8

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    if-ne v3, v8, :cond_3

    if-ne v1, v8, :cond_3

    move v1, v8

    goto :goto_3

    :cond_3
    move v1, v7

    .line 15
    :goto_3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v5, 0x1000

    invoke-virtual {v3, v5, v2}, Lu0/i;->g4(IZ)V

    if-eqz v2, :cond_4

    .line 16
    sput v8, Ll0/c0;->t:I

    goto :goto_4

    .line 17
    :cond_4
    sput v7, Ll0/c0;->t:I

    .line 18
    :goto_4
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3, v4}, Lu0/i;->g4(IZ)V

    if-eqz v4, :cond_5

    .line 19
    sput v8, Ll0/c0;->r:I

    goto :goto_5

    .line 20
    :cond_5
    sput v7, Ll0/c0;->r:I

    :goto_5
    const/16 v2, 0x8b

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 21
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    if-eqz v1, :cond_6

    .line 22
    sput v8, Ll0/c0;->v:I

    goto/16 :goto_e

    .line 23
    :cond_6
    sput v7, Ll0/c0;->v:I

    goto/16 :goto_e

    .line 24
    :cond_7
    sget v2, Lk0/nt;->a:I

    const v3, 0x2701c4

    if-ne v2, v3, :cond_1f

    .line 25
    iget v2, v0, Lk0/qg;->g:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    if-eq v2, v4, :cond_1f

    .line 26
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    iput v1, v0, Lk0/qg;->g:I

    if-ne v1, v8, :cond_8

    .line 27
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    .line 28
    :cond_8
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v5, v1, v2

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x3

    .line 30
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x4

    .line 31
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    add-int/lit8 v3, p2, 0x5

    .line 32
    aget-byte v13, v1, v3

    and-int/2addr v13, v6

    if-nez v5, :cond_9

    if-nez v10, :cond_9

    if-nez v12, :cond_9

    if-nez v13, :cond_9

    .line 33
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_6

    .line 34
    :cond_9
    sget v7, Ll0/c0;->g:I

    if-ne v7, v5, :cond_a

    sget v7, Ll0/c0;->h:I

    if-ne v7, v10, :cond_a

    sget v7, Ll0/c0;->i:I

    if-ne v7, v12, :cond_a

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_b

    .line 35
    :cond_a
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_b

    .line 36
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 37
    sput v4, Ll0/c0;->k:I

    .line 38
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 39
    :cond_b
    :goto_6
    sput v5, Ll0/c0;->g:I

    .line 40
    sput v10, Ll0/c0;->h:I

    .line 41
    sput v12, Ll0/c0;->i:I

    .line 42
    sput v13, Ll0/c0;->j:I

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/qg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 44
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/qg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 45
    aget-byte v2, v1, v11

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/qg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 46
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lk0/qg;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/qg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/qg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 49
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/qg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 50
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lk0/qg;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 51
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 52
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 53
    aget-byte v5, v1, v4

    add-int/lit8 v11, p2, 0x5

    .line 54
    aget-byte v12, v1, v11

    add-int/lit8 v13, p2, 0x6

    .line 55
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x7

    .line 56
    aget-byte v14, v1, v14

    new-array v15, v8, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    const/16 v6, 0xa

    .line 57
    invoke-static {v6, v15}, Lk0/qt;->y0(I[I)V

    new-array v15, v8, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 58
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xc

    new-array v15, v8, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 59
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x10

    new-array v15, v8, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 60
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v15, v8, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 61
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xe

    new-array v15, v8, [I

    shr-int/lit8 v17, v2, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 62
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    new-array v10, v8, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v10, v7

    const/16 v2, 0xf

    .line 63
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x12

    new-array v15, v8, [I

    shr-int/lit8 v17, v3, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 64
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x13

    new-array v15, v8, [I

    shr-int/lit8 v17, v3, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v15, v7

    .line 65
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x14

    new-array v15, v8, [I

    shr-int/lit8 v17, v3, 0x5

    and-int/lit8 v18, v17, 0x1

    aput v18, v15, v7

    .line 66
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x4d

    new-array v15, v8, [I

    and-int/lit8 v17, v17, 0x7

    aput v17, v15, v7

    .line 67
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x15

    new-array v15, v8, [I

    and-int/2addr v2, v3

    aput v2, v15, v7

    .line 68
    invoke-static {v10, v15}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 69
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 70
    aget-byte v5, v1, v11

    .line 71
    aget-byte v12, v1, v4

    :cond_c
    const/4 v1, -0x3

    const/4 v2, -0x2

    const/16 v3, 0x7f

    const/16 v4, 0x1b

    if-nez v5, :cond_d

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 72
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_d
    if-ne v5, v3, :cond_e

    new-array v5, v8, [I

    aput v1, v5, v7

    .line 73
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_e
    new-array v10, v8, [I

    aput v5, v10, v7

    .line 74
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v4, 0x1c

    if-nez v12, :cond_f

    new-array v1, v8, [I

    aput v2, v1, v7

    .line 75
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_f
    if-ne v12, v3, :cond_10

    new-array v2, v8, [I

    aput v1, v2, v7

    .line 76
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_10
    new-array v1, v8, [I

    aput v12, v1, v7

    .line 77
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v1, 0x25

    new-array v2, v8, [I

    shr-int/lit8 v3, v13, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 78
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v8, [I

    shr-int/lit8 v3, v13, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 79
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v8, [I

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 80
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xff

    and-int/lit16 v2, v14, 0xff

    if-ne v2, v1, :cond_11

    .line 81
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_11
    and-int/lit16 v1, v2, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_12

    rsub-int v1, v2, 0x100

    mul-int/2addr v1, v6

    rsub-int v1, v1, 0x3e8

    goto :goto_9

    :cond_12
    mul-int/2addr v2, v6

    add-int/lit16 v1, v2, 0x3e8

    .line 82
    :goto_9
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 83
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 84
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 85
    iput v2, v0, Lk0/qg;->c:I

    move v2, v7

    .line 86
    :goto_a
    iget-object v4, v0, Lk0/qg;->e:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_14

    .line 87
    iget v5, v0, Lk0/qg;->c:I

    aget-object v4, v4, v2

    aget v4, v4, v7

    if-ne v5, v4, :cond_13

    if-eqz v5, :cond_14

    .line 88
    iput v2, v0, Lk0/qg;->b:I

    goto :goto_b

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 89
    :cond_14
    :goto_b
    iget v4, v0, Lk0/qg;->d:I

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-eq v4, v1, :cond_16

    .line 90
    iput v1, v0, Lk0/qg;->d:I

    if-ne v1, v8, :cond_16

    .line 91
    iget v4, v0, Lk0/qg;->c:I

    const/16 v5, 0x16

    if-eq v4, v5, :cond_15

    goto :goto_c

    :cond_15
    new-array v3, v3, [I

    .line 92
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_16
    :goto_c
    if-ne v1, v8, :cond_17

    .line 93
    iget-object v1, v0, Lk0/qg;->e:[[I

    array-length v3, v1

    if-ge v2, v3, :cond_1f

    .line 94
    aget-object v1, v1, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_17
    if-nez v1, :cond_1f

    .line 95
    iget v1, v0, Lk0/qg;->b:I

    iget-object v2, v0, Lk0/qg;->e:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_18

    const/16 v3, 0xff

    if-eq v1, v3, :cond_19

    .line 96
    aget-object v1, v2, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_18
    const/16 v3, 0xff

    .line 97
    :cond_19
    :goto_d
    iput v3, v0, Lk0/qg;->b:I

    goto/16 :goto_e

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v1, v1, v2

    iput v1, v0, Lk0/qg;->f:I

    goto/16 :goto_e

    :cond_1b
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 99
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 100
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 101
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v4

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xa

    .line 102
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 103
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 104
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    .line 105
    :cond_1c
    iput-byte v7, v0, Lk0/qg;->o:B

    .line 106
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 107
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_e

    :cond_1e
    add-int/lit8 v2, p2, 0x4

    .line 108
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x408

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1f
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/qg;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/qg;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/qg;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/qg;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/qg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/qg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/qg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/qg;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x68

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

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0xe3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-eqz v0, :cond_8

    const/16 v9, 0x3eb

    if-eq v0, v9, :cond_6

    const/16 v9, 0x3ed

    const/16 v10, 0xff

    if-eq v0, v9, :cond_3

    const/16 v9, 0x405

    if-eq v0, v9, :cond_0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 1
    iget v9, v0, Lk0/qg;->f:I

    if-nez v9, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    aget v9, v1, v7

    mul-int/lit16 v9, v9, 0x320

    div-int/lit16 v9, v9, 0x320

    .line 3
    aget v11, v1, v5

    mul-int/lit16 v11, v11, 0x1e0

    div-int/lit16 v11, v11, 0x1e0

    .line 4
    sget v12, Lu0/b;->o:I

    if-ne v12, v7, :cond_2

    .line 5
    aget v9, v1, v7

    mul-int/lit16 v9, v9, 0x320

    invoke-static {}, La/f;->w()I

    move-result v11

    div-int/2addr v9, v11

    .line 6
    aget v1, v1, v5

    mul-int/lit16 v1, v1, 0x1e0

    invoke-static {}, La/f;->i()I

    move-result v11

    div-int v11, v1, v11

    :cond_2
    const/16 v1, 0x8

    new-array v12, v1, [I

    aput v4, v12, v6

    const/16 v13, -0x30

    aput v13, v12, v7

    aput v8, v12, v5

    aput v7, v12, v3

    and-int/lit16 v14, v9, 0xff

    aput v14, v12, v2

    shr-int/2addr v9, v1

    and-int/2addr v9, v10

    aput v9, v12, v8

    and-int/lit16 v15, v11, 0xff

    const/16 v16, 0x6

    aput v15, v12, v16

    shr-int/2addr v11, v1

    and-int/2addr v10, v11

    const/4 v11, 0x7

    aput v10, v12, v11

    .line 7
    invoke-static {v12}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput v4, v1, v6

    aput v13, v1, v7

    aput v8, v1, v5

    aput v6, v1, v3

    aput v14, v1, v2

    aput v9, v1, v8

    aput v15, v1, v16

    aput v10, v1, v11

    .line 8
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    .line 9
    aget v1, v1, v6

    and-int/2addr v1, v10

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_5

    if-eq v1, v10, :cond_4

    goto :goto_0

    :cond_4
    new-array v1, v8, [I

    .line 10
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array v1, v8, [I

    .line 11
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    if-eqz v1, :cond_9

    .line 12
    array-length v2, v1

    if-lez v2, :cond_9

    .line 13
    aget v2, v1, v6

    if-nez v2, :cond_7

    new-array v1, v8, [I

    .line 14
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :cond_7
    aget v1, v1, v6

    if-ne v1, v7, :cond_9

    new-array v1, v8, [I

    .line 16
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    new-array v8, v8, [I

    aput v4, v8, v6

    const/16 v4, 0xe8

    aput v4, v8, v7

    aput v5, v8, v5

    .line 17
    aget v4, v1, v6

    aput v4, v8, v3

    aget v1, v1, v7

    aput v1, v8, v2

    invoke-static {v8}, Lz/k;->s([I)V

    :cond_9
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x5
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public final a3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    :cond_3
    :goto_0
    return v1
.end method

.method public final i3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, "Unkown"

    :cond_0
    const/16 v0, 0x18

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xe3

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    const/4 p1, 0x2

    const/16 v0, 0x15

    aput v0, v1, p1

    const/4 p1, 0x3

    const/16 v0, 0x11

    aput v0, v1, p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x4

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 4
    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x5

    and-int/lit16 p1, p1, 0xff

    .line 5
    aput p1, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-nez p1, :cond_3

    new-array p1, v1, [I

    const/16 v1, 0xe3

    aput v1, p1, v5

    const/16 v1, 0xc5

    aput v1, p1, v6

    aput v4, p1, v4

    aput v0, p1, v3

    aput v6, p1, v2

    .line 2
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_5

    :cond_3
    const/16 v1, 0x16

    new-array v7, v1, [B

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 4
    array-length v8, p1

    if-le v8, v1, :cond_4

    move v8, v1

    goto :goto_1

    :cond_4
    array-length v8, p1

    :goto_1
    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_5

    .line 5
    aget-byte v10, p1, v9

    aput-byte v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move p1, v8

    :goto_3
    if-ge p1, v1, :cond_6

    .line 6
    aput-byte v5, v7, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    const/16 p1, 0x1b

    new-array p1, p1, [I

    const/16 v1, -0x1d

    aput v1, p1, v5

    const/16 v1, -0x3b

    aput v1, p1, v6

    const/16 v1, 0x18

    aput v1, p1, v4

    aput v0, p1, v3

    aput v6, p1, v2

    :goto_4
    if-ge v5, v8, :cond_7

    add-int/lit8 v0, v5, 0x5

    .line 7
    aget-byte v1, v7, v5

    aput v1, p1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 8
    :cond_7
    invoke-static {p1}, Lz/k;->s([I)V

    :goto_5
    return-void
.end method
