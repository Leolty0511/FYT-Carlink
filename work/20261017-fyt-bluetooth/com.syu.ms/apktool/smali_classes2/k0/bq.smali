.class public Lk0/bq;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static q:I

.field public static r:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:I

.field public h:B

.field public i:Ljava/lang/Runnable;

.field public final j:I

.field public final k:I

.field public l:Lo1/g0;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/bq;->c:I

    const/16 v1, 0xa

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

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

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

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    iput-object v1, p0, Lk0/bq;->d:[[I

    const/16 v1, 0xff

    .line 4
    iput v1, p0, Lk0/bq;->e:I

    .line 5
    iput-boolean v0, p0, Lk0/bq;->f:Z

    .line 6
    iput v0, p0, Lk0/bq;->g:I

    .line 7
    iput-byte v0, p0, Lk0/bq;->h:B

    .line 8
    new-instance v1, Lk0/bq$a;

    invoke-direct {v1, p0}, Lk0/bq$a;-><init>(Lk0/bq;)V

    iput-object v1, p0, Lk0/bq;->i:Ljava/lang/Runnable;

    .line 9
    iput v4, p0, Lk0/bq;->j:I

    .line 10
    iput v2, p0, Lk0/bq;->k:I

    .line 11
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/bq;->l:Lo1/g0;

    .line 12
    new-instance v1, Lk0/bq$b;

    invoke-direct {v1, p0}, Lk0/bq$b;-><init>(Lk0/bq;)V

    iput-object v1, p0, Lk0/bq;->m:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lk0/bq;->n:I

    .line 14
    new-instance v0, Lk0/bq$c;

    invoke-direct {v0, p0}, Lk0/bq$c;-><init>(Lk0/bq;)V

    iput-object v0, p0, Lk0/bq;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/bq$d;

    invoke-direct {v0, p0}, Lk0/bq$d;-><init>(Lk0/bq;)V

    iput-object v0, p0, Lk0/bq;->p:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x3f
    .end array-data

    :array_7
    .array-data 4
        0x11
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x12
        0x19
    .end array-data

    :array_9
    .array-data 4
        0x13
        0xf
    .end array-data
.end method

.method public static synthetic a3(Lk0/bq;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bq;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic b3(Lk0/bq;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bq;->l:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/bq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/bq;->e3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/bq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/bq;->f3(I)V

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
    iget-object v0, p0, Lk0/bq;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bq;->o:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/bq;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iput v2, v0, Lk0/mt;->i:I

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v5, :cond_15

    const/16 v13, 0x7f

    const/16 v14, 0x7d

    const/16 v15, 0x41

    const/4 v6, 0x2

    if-eq v2, v15, :cond_14

    if-eq v2, v14, :cond_12

    if-eq v2, v13, :cond_11

    const/16 v13, 0x28

    if-eq v2, v13, :cond_f

    const/16 v13, 0x29

    if-eq v2, v13, :cond_e

    const/16 v13, 0x38

    if-eq v2, v13, :cond_d

    const/16 v13, 0x39

    if-eq v2, v13, :cond_c

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/16 v2, 0xa

    new-array v13, v12, [I

    add-int/lit8 v14, p2, 0x2

    .line 2
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v11

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v13, v12, [I

    .line 3
    aget-byte v16, v1, v14

    shr-int/lit8 v7, v16, 0x5

    and-int/2addr v7, v12

    aput v7, v13, v11

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v7, v12, [I

    .line 4
    aget-byte v13, v1, v14

    shr-int/2addr v13, v9

    and-int/2addr v13, v12

    aput v13, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v7, v12, [I

    .line 5
    aget-byte v13, v1, v14

    shr-int/2addr v13, v6

    and-int/2addr v13, v12

    aput v13, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 6
    aget-byte v7, v1, v14

    shr-int/2addr v7, v12

    and-int/2addr v7, v12

    aput v7, v2, v11

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 7
    aget-byte v4, v1, v14

    shr-int/2addr v4, v11

    and-int/2addr v4, v12

    aput v4, v2, v11

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    if-eq v2, v12, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_0

    move v2, v11

    move v4, v2

    :goto_0
    move v6, v4

    goto :goto_1

    :cond_0
    move v4, v11

    move v2, v12

    move v6, v2

    goto :goto_1

    :cond_1
    move v2, v11

    move v4, v2

    move v6, v12

    goto :goto_1

    :cond_2
    move v2, v11

    move v4, v12

    goto :goto_0

    :cond_3
    move v2, v11

    move v6, v2

    move v4, v12

    :goto_1
    new-array v7, v12, [I

    aput v2, v7, v11

    .line 9
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v12, [I

    aput v4, v3, v11

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v12, [I

    aput v6, v3, v11

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 13
    aget-byte v3, v1, v2

    and-int/2addr v3, v10

    add-int/lit8 v4, p2, 0x6

    .line 14
    aget-byte v6, v1, v4

    and-int/2addr v6, v10

    const-string v7, "persist.fyt.reversetemp"

    .line 15
    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 16
    aget-byte v3, v1, v4

    and-int/2addr v3, v10

    .line 17
    aget-byte v6, v1, v2

    and-int/2addr v6, v10

    :cond_4
    const/4 v7, -0x2

    const/16 v8, 0x1f

    const/16 v9, 0x1b

    if-ne v3, v8, :cond_5

    new-array v2, v12, [I

    aput v7, v2, v11

    .line 18
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    if-ne v3, v5, :cond_6

    new-array v2, v12, [I

    const/4 v3, -0x3

    aput v3, v2, v11

    .line 19
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v3, v12, [I

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    aput v2, v3, v11

    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x1c

    if-ne v6, v8, :cond_7

    new-array v3, v12, [I

    aput v7, v3, v11

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    if-ne v6, v5, :cond_8

    new-array v3, v12, [I

    const/4 v4, -0x3

    aput v4, v3, v11

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v3, v12, [I

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x44

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 24
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 25
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v3, v1, v2

    and-int/2addr v3, v10

    add-int/lit8 v4, p2, 0x3

    .line 27
    aget-byte v5, v1, v4

    and-int/2addr v5, v10

    add-int/lit8 v6, p2, 0x4

    .line 28
    aget-byte v9, v1, v6

    and-int/2addr v9, v10

    add-int/lit8 v7, p2, 0x5

    .line 29
    aget-byte v13, v1, v7

    and-int/2addr v13, v10

    if-nez v3, :cond_9

    if-nez v5, :cond_9

    if-nez v9, :cond_9

    if-nez v13, :cond_9

    .line 30
    invoke-static {v11}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 31
    :cond_9
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_a

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_a

    sget v11, Ll0/c0;->i:I

    if-ne v11, v9, :cond_a

    sget v11, Ll0/c0;->j:I

    if-eq v11, v13, :cond_b

    .line 32
    :cond_a
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_b

    .line 33
    invoke-static {v12}, Lu0/d;->C2(I)V

    .line 34
    sput v8, Ll0/c0;->k:I

    .line 35
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 36
    :cond_b
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 37
    sput v5, Ll0/c0;->h:I

    .line 38
    sput v9, Ll0/c0;->i:I

    .line 39
    sput v13, Ll0/c0;->j:I

    .line 40
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 41
    aget-byte v2, v1, v4

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 42
    aget-byte v2, v1, v6

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 43
    aget-byte v1, v1, v7

    and-int/2addr v1, v10

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 45
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 47
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_c
    const/16 v2, 0x6a

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 48
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v12, [I

    .line 49
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 50
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v12, [I

    .line 51
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    const/16 v2, 0x66

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 52
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 53
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 54
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 55
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 56
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 57
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x8

    .line 58
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x9

    .line 59
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v2, p2, 0x3

    .line 60
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x15b8

    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 62
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 63
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 64
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 65
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 66
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 67
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 68
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v2, v11

    .line 69
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 70
    :cond_11
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    if-eq v2, v12, :cond_13

    goto/16 :goto_9

    :cond_13
    add-int/lit8 v2, p2, 0x3

    .line 72
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v12

    aget-byte v4, v1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v12

    invoke-static {v3, v4, v11}, Ll0/c0;->a(III)V

    .line 73
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v6, [I

    const/16 v6, 0xb

    aput v6, v5, v11

    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    aput v1, v5, v12

    const/4 v1, 0x0

    invoke-static {v3, v4, v5, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    const/16 v2, 0x70

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 74
    aget-byte v5, v1, v4

    const/4 v15, 0x6

    shr-int/2addr v5, v15

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v12, [I

    .line 75
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v12, [I

    .line 76
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v12, [I

    .line 77
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v9

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x3

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x4

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 80
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v12, [I

    .line 81
    aget-byte v5, v1, v4

    const/4 v15, 0x6

    shr-int/2addr v5, v15

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v12, [I

    .line 82
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v12, [I

    .line 83
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v12, [I

    .line 84
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v12, [I

    .line 85
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v12, [I

    .line 86
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    .line 87
    aget-byte v3, v1, v4

    shr-int/2addr v3, v11

    and-int/2addr v3, v12

    aput v3, v2, v11

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v3, p2, 0x7

    .line 88
    aget-byte v1, v1, v3

    shr-int/2addr v1, v11

    and-int/2addr v1, v10

    aput v1, v2, v11

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 90
    aget-byte v1, v1, v5

    and-int/2addr v2, v10

    .line 91
    iput v2, v0, Lk0/bq;->c:I

    move v2, v11

    .line 92
    :goto_6
    iget-object v5, v0, Lk0/bq;->d:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_17

    .line 93
    iget v6, v0, Lk0/bq;->c:I

    aget-object v13, v5, v2

    aget v13, v13, v11

    if-ne v6, v13, :cond_16

    if-eqz v6, :cond_17

    .line 94
    iput v2, v0, Lk0/bq;->b:I

    .line 95
    iput v6, v0, Lk0/bq;->e:I

    goto :goto_7

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 96
    :cond_17
    :goto_7
    iget v6, v0, Lk0/bq;->c:I

    if-eqz v6, :cond_1f

    const/4 v13, 0x6

    if-eq v6, v13, :cond_1e

    if-eq v6, v9, :cond_1c

    if-eq v6, v8, :cond_1a

    and-int/2addr v1, v10

    if-ne v1, v12, :cond_18

    .line 97
    array-length v1, v5

    if-ge v2, v1, :cond_23

    .line 98
    aget-object v1, v5, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_18
    if-nez v1, :cond_23

    .line 99
    iget v1, v0, Lk0/bq;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_19

    if-eq v1, v10, :cond_19

    .line 100
    aget-object v1, v5, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 101
    :cond_19
    iput v10, v0, Lk0/bq;->b:I

    goto/16 :goto_9

    :cond_1a
    if-ne v1, v12, :cond_23

    .line 102
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_1b

    .line 103
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    .line 104
    invoke-static {v9, v12}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 105
    :cond_1b
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    .line 106
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1c
    if-ne v1, v12, :cond_23

    .line 107
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_1d

    if-eq v1, v8, :cond_1d

    if-eq v1, v7, :cond_1d

    .line 108
    invoke-static {v8, v11}, Ll0/b0;->l0(II)V

    .line 109
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1d
    const/16 v1, 0x1a

    .line 110
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 111
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 112
    :cond_1e
    iget v2, v0, Lk0/bq;->g:I

    if-eq v2, v1, :cond_23

    .line 113
    iput v1, v0, Lk0/bq;->g:I

    if-ne v1, v12, :cond_23

    .line 114
    iput-boolean v11, v0, Lk0/bq;->f:Z

    .line 115
    iput-byte v11, v0, Lk0/bq;->h:B

    .line 116
    iget-object v1, v0, Lk0/bq;->i:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 117
    :cond_1f
    iget v2, v0, Lk0/bq;->e:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_21

    and-int/2addr v1, v10

    if-nez v1, :cond_22

    .line 118
    iget v1, v0, Lk0/bq;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_20

    if-eq v1, v10, :cond_20

    .line 119
    aget-object v1, v5, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 120
    :cond_20
    iput v10, v0, Lk0/bq;->b:I

    goto :goto_8

    .line 121
    :cond_21
    iget-boolean v1, v0, Lk0/bq;->f:Z

    if-nez v1, :cond_22

    .line 122
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    .line 123
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    .line 124
    :cond_22
    :goto_8
    iget-object v1, v0, Lk0/bq;->i:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 125
    iput-boolean v11, v0, Lk0/bq;->f:Z

    .line 126
    iput-byte v11, v0, Lk0/bq;->h:B

    .line 127
    iput v11, v0, Lk0/bq;->g:I

    .line 128
    iput v11, v0, Lk0/bq;->e:I

    :cond_23
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/bq;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bq;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/bq;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/bq;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x80

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
    .locals 6

    const/4 p3, 0x3

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    const/4 v4, 0x5

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v4, [I

    aput p4, p1, v2

    const/16 p4, 0xa8

    aput p4, p1, v3

    aput v1, p1, v1

    .line 1
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 2
    :cond_1
    aget p1, p2, v2

    if-eq p1, v3, :cond_3

    const/16 v5, 0xff

    if-eq p1, v5, :cond_2

    new-array p1, v4, [I

    aput p4, p1, v2

    const/16 p4, 0xc8

    aput p4, p1, v3

    aput v1, p1, v1

    .line 3
    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_2
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/bq;->f3(I)V

    goto :goto_0

    .line 5
    :cond_3
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/bq;->e3(I)V

    goto :goto_0

    :cond_4
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0x90

    aput p4, p1, v3

    aput v3, p1, v1

    .line 6
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final e3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x6f

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc8

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    aput v0, v1, v3

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/bq;->q:I

    .line 4
    iget-object p1, p0, Lk0/bq;->l:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/bq;->q:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/bq;->l:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7e

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/bq;->r:I

    .line 3
    iget-object p1, p0, Lk0/bq;->l:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/bq;->r:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/bq;->l:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
