.class public Lk0/gp;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gp;->c:I

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

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/gp;->d:[[I

    .line 4
    iput v0, p0, Lk0/gp;->e:I

    .line 5
    iput-boolean v0, p0, Lk0/gp;->f:Z

    .line 6
    new-instance v1, Lk0/gp$a;

    invoke-direct {v1, p0}, Lk0/gp$a;-><init>(Lk0/gp;)V

    iput-object v1, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/gp;->h:I

    .line 8
    new-instance v0, Lk0/gp$b;

    invoke-direct {v0, p0}, Lk0/gp$b;-><init>(Lk0/gp;)V

    iput-object v0, p0, Lk0/gp;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/gp$c;

    invoke-direct {v0, p0}, Lk0/gp$c;-><init>(Lk0/gp;)V

    iput-object v0, p0, Lk0/gp;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/gp$d;

    invoke-direct {v0, p0}, Lk0/gp$d;-><init>(Lk0/gp;)V

    iput-object v0, p0, Lk0/gp;->k:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_8
    .array-data 4
        0x22
        0x36
    .end array-data

    :array_9
    .array-data 4
        0x23
        0x1
    .end array-data
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

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

    iput v2, v0, Lk0/mt;->i:I

    .line 10
    :cond_0
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/gp;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/gp;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_16

    const/16 v3, 0x27

    const/16 v8, 0x10

    const/16 v9, 0x36

    const/4 v10, -0x1

    const/16 v11, 0x7f

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eq v2, v3, :cond_e

    const/16 v3, 0x29

    if-eq v2, v3, :cond_d

    const/16 v3, 0x30

    if-eq v2, v3, :cond_c

    const/16 v3, 0x35

    const v16, 0xff00

    if-eq v2, v3, :cond_8

    if-eq v2, v9, :cond_7

    const/16 v3, 0x38

    if-eq v2, v3, :cond_6

    const/16 v3, 0x39

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 4
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 6
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 10
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 11
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 14
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x5

    .line 15
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    if-nez v3, :cond_1

    if-nez v8, :cond_1

    if-nez v10, :cond_1

    if-nez v12, :cond_1

    .line 16
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_2

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_2

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_2

    sget v6, Ll0/c0;->j:I

    if-eq v6, v12, :cond_3

    .line 18
    :cond_2
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_3

    .line 19
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 20
    sput v14, Ll0/c0;->k:I

    .line 21
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 23
    sput v8, Ll0/c0;->h:I

    .line 24
    sput v10, Ll0/c0;->i:I

    .line 25
    sput v12, Ll0/c0;->j:I

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, v1, v11

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :cond_4
    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 34
    aget-byte v8, v1, v4

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 35
    iget v2, v0, Lk0/gp;->e:I

    aget-byte v3, v1, v4

    if-eq v2, v3, :cond_1b

    .line 36
    aget-byte v1, v1, v4

    iput v1, v0, Lk0/gp;->e:I

    if-eqz v1, :cond_5

    .line 37
    invoke-virtual/range {p0 .. p0}, Lk0/gp;->a3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.rzc.sanlin.LZGmAllOnstar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 38
    invoke-virtual/range {p0 .. p0}, Lk0/gp;->b3()V

    .line 39
    iput-boolean v7, v0, Lk0/gp;->f:Z

    goto/16 :goto_8

    .line 40
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lk0/gp;->a3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.rzc.sanlin.LZGmAllOnstar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lk0/gp;->f:Z

    if-eqz v1, :cond_1b

    .line 41
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    .line 42
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_6
    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 43
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    .line 44
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    .line 45
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    .line 46
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 47
    aget-byte v8, v1, v8

    shr-int/2addr v8, v12

    and-int/2addr v8, v4

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 48
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 49
    aget-byte v8, v1, v8

    shr-int/2addr v8, v4

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 50
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 51
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 52
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 53
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 54
    aget-byte v9, v1, v8

    shr-int/2addr v9, v13

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 55
    aget-byte v8, v1, v8

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x5

    .line 56
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 57
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 58
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 59
    aget-byte v9, v1, v8

    shr-int/2addr v9, v4

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 60
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    .line 61
    aget-byte v9, v1, v8

    shr-int/2addr v9, v13

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 62
    aget-byte v4, v1, v8

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 63
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 64
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_7
    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 65
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x4

    .line 66
    aget-byte v3, v1, v3

    aput v3, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 67
    aget-byte v4, v1, v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 68
    aget-byte v1, v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_8
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 69
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v7

    aget-byte v2, v1, v2

    shr-int/2addr v2, v14

    and-int/2addr v2, v7

    invoke-static {v3, v2, v6}, Ll0/c0;->b(III)V

    goto :goto_2

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v7

    aget-byte v2, v1, v2

    shr-int/2addr v2, v14

    and-int/2addr v2, v7

    invoke-static {v3, v2, v6}, Ll0/c0;->a(III)V

    :goto_2
    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 72
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v16

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 73
    aget-byte v4, v1, v4

    shl-int/2addr v4, v8

    const/high16 v8, 0xff0000

    and-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int v8, v8, v16

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 74
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 75
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 76
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 77
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    const-string v2, "persist.fyt.temperature"

    .line 78
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v1, :cond_a

    .line 79
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_8

    :cond_a
    if-ne v2, v7, :cond_b

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/2addr v1, v10

    goto :goto_3

    :cond_b
    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    .line 80
    :goto_3
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_8

    .line 81
    :cond_c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 82
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x1e78

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_e
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 83
    aget-byte v16, v1, v3

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v6

    const/16 v4, 0xa

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 84
    aget-byte v4, v1, v3

    shr-int/2addr v4, v12

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xb

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 85
    aget-byte v4, v1, v3

    shr-int/2addr v4, v13

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xc

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 86
    aget-byte v4, v1, v3

    shr-int/2addr v4, v14

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xd

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v7, [I

    .line 87
    aget-byte v17, v1, v3

    shr-int/lit8 v15, v17, 0x2

    and-int/2addr v15, v7

    aput v15, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 88
    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xf

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 89
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 90
    aget-byte v15, v1, v8

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    .line 91
    aget-byte v15, v1, v8

    shr-int/2addr v15, v12

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    .line 92
    aget-byte v15, v1, v8

    shr-int/2addr v15, v13

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v7, [I

    .line 93
    aget-byte v15, v1, v8

    shr-int/2addr v15, v13

    and-int/2addr v15, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    .line 94
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    and-int/2addr v8, v4

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 95
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v8, p2, 0x5

    .line 96
    aget-byte v15, v1, v8

    and-int/2addr v15, v5

    const-string v4, "persist.fyt.reversetemp"

    .line 97
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 98
    aget-byte v3, v1, v8

    and-int/2addr v3, v5

    .line 99
    aget-byte v2, v1, v2

    and-int/lit16 v15, v2, 0xff

    :cond_f
    const/16 v2, 0x1b

    if-eqz v3, :cond_12

    if-eq v3, v11, :cond_11

    if-eq v3, v5, :cond_10

    new-array v4, v7, [I

    aput v3, v4, v6

    .line 100
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v3, v7, [I

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v3, v7, [I

    aput v10, v3, v6

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    new-array v3, v7, [I

    const/4 v4, -0x2

    aput v4, v3, v6

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x1c

    if-eqz v15, :cond_15

    if-eq v15, v11, :cond_14

    if-eq v15, v5, :cond_13

    new-array v3, v7, [I

    aput v15, v3, v6

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_13
    new-array v3, v7, [I

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 105
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    new-array v3, v7, [I

    aput v10, v3, v6

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_15
    new-array v3, v7, [I

    const/4 v4, -0x2

    aput v4, v3, v6

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x6

    .line 108
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v7

    aput v4, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v4, v7, [I

    .line 109
    aget-byte v5, v1, v3

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4a

    new-array v4, v7, [I

    .line 110
    aget-byte v5, v1, v3

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v4, v7, [I

    .line 111
    aget-byte v5, v1, v3

    shr-int/2addr v5, v14

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v4, v7, [I

    .line 112
    aget-byte v3, v1, v3

    const/4 v5, 0x3

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 113
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    const/16 v8, 0xf

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    .line 114
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 115
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 116
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 117
    iput v2, v0, Lk0/gp;->c:I

    move v2, v6

    .line 118
    :goto_6
    iget-object v3, v0, Lk0/gp;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_18

    .line 119
    iget v4, v0, Lk0/gp;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_17

    if-eqz v4, :cond_18

    .line 120
    iput v2, v0, Lk0/gp;->b:I

    goto :goto_7

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    :goto_7
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_19

    .line 121
    array-length v1, v3

    if-ge v2, v1, :cond_1b

    .line 122
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_19
    if-nez v1, :cond_1b

    .line 123
    iget v1, v0, Lk0/gp;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1a

    if-eq v1, v5, :cond_1a

    .line 124
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 125
    :cond_1a
    iput v5, v0, Lk0/gp;->b:I

    :cond_1b
    :goto_8
    return-void

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gp;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/gp;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/gp;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/gp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x82

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xc8

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xc6

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public a3()Ljava/lang/String;
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

.method public final b3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0/gp;->a3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.rzc.sanlin.LZGmAllOnstar"

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
