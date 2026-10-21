.class public Lk0/bb;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:B

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/bb;->c:I

    const/16 v1, 0x16

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

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/bb;->d:[[I

    .line 4
    new-instance v1, Lk0/bb$a;

    invoke-direct {v1, p0}, Lk0/bb$a;-><init>(Lk0/bb;)V

    iput-object v1, p0, Lk0/bb;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/bb$b;

    invoke-direct {v1, p0}, Lk0/bb$b;-><init>(Lk0/bb;)V

    iput-object v1, p0, Lk0/bb;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lk0/bb;->g:I

    .line 7
    new-instance v0, Lk0/bb$c;

    invoke-direct {v0, p0}, Lk0/bb$c;-><init>(Lk0/bb;)V

    iput-object v0, p0, Lk0/bb;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/bb$d;

    invoke-direct {v0, p0}, Lk0/bb$d;-><init>(Lk0/bb;)V

    iput-object v0, p0, Lk0/bb;->i:Ljava/lang/Runnable;

    .line 9
    iput-byte v4, p0, Lk0/bb;->j:B

    .line 10
    new-instance v0, Lk0/bb$e;

    invoke-direct {v0, p0}, Lk0/bb$e;-><init>(Lk0/bb;)V

    iput-object v0, p0, Lk0/bb;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/bb$f;

    invoke-direct {v0, p0}, Lk0/bb$f;-><init>(Lk0/bb;)V

    iput-object v0, p0, Lk0/bb;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/bb$g;

    invoke-direct {v0, p0}, Lk0/bb$g;-><init>(Lk0/bb;)V

    iput-object v0, p0, Lk0/bb;->m:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1c
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x42
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x1b
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x41
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x43
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x44
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x4a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x16
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x4b
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x38
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x38
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x11
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x36
    .end array-data

    :array_12
    .array-data 4
        0x31
        0x7
    .end array-data

    :array_13
    .array-data 4
        0x32
        0x8
    .end array-data

    :array_14
    .array-data 4
        0x33
        0x21
    .end array-data

    :array_15
    .array-data 4
        0x34
        0x20
    .end array-data
.end method

.method public static a3()V
    .locals 14

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xe3

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_2

    const/16 v11, 0xa

    if-eq v0, v7, :cond_0

    if-eq v0, v11, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v0, 0x9

    new-array v12, v0, [I

    const/16 v13, 0x85

    aput v13, v12, v10

    aput v5, v12, v9

    aput v10, v12, v8

    aput v10, v12, v6

    .line 2
    sget v6, Lu0/b;->t3:I

    rem-int/lit16 v6, v6, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ll0/c0;->L1(I)I

    move-result v6

    aput v6, v12, v3

    .line 3
    sget v3, Lu0/b;->t3:I

    rem-int/lit16 v3, v3, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ll0/c0;->L1(I)I

    move-result v3

    aput v3, v12, v4

    aput v10, v12, v2

    aput v10, v12, v5

    .line 4
    sget v2, Lu0/b;->r3:I

    invoke-static {v2}, Ll0/c0;->L1(I)I

    move-result v2

    aput v2, v12, v7

    new-array v2, v11, [I

    aput v1, v2, v10

    :goto_0
    if-ge v10, v0, :cond_1

    add-int/lit8 v1, v10, 0x1

    .line 5
    aget v3, v12, v10

    aput v3, v2, v1

    move v10, v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_4

    :cond_2
    new-array v0, v5, [I

    .line 7
    sget v11, Lw0/d;->j:I

    const/16 v12, 0x83

    aput v12, v0, v10

    aput v4, v0, v9

    .line 8
    sget v12, Lw0/d;->h:I

    if-eqz v12, :cond_4

    if-eq v12, v9, :cond_3

    const/high16 v13, 0x10000

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aput v8, v0, v8

    if-lt v11, v13, :cond_5

    goto :goto_1

    :pswitch_1
    aput v8, v0, v8

    if-lt v11, v13, :cond_5

    goto :goto_1

    :pswitch_2
    aput v9, v0, v8

    if-lt v11, v13, :cond_5

    :goto_1
    sub-int/2addr v11, v13

    goto :goto_2

    :cond_3
    aput v6, v0, v8

    goto :goto_2

    :cond_4
    aput v6, v0, v8

    .line 9
    :cond_5
    :goto_2
    sget v8, Lw0/d;->i:I

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    aput v12, v0, v6

    and-int/lit16 v6, v8, 0xff

    aput v6, v0, v3

    .line 10
    rem-int/2addr v11, v2

    add-int/2addr v11, v9

    aput v11, v0, v4

    new-array v2, v7, [I

    aput v1, v2, v10

    :goto_3
    if-ge v10, v5, :cond_6

    add-int/lit8 v1, v10, 0x1

    .line 11
    aget v3, v0, v10

    aput v3, v2, v1

    move v10, v1

    goto :goto_3

    .line 12
    :cond_6
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b3(Lk0/bb;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bb;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/bb;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/bb;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic d3(Lk0/bb;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/bb;->h3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bb;->m:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget v0, Lk0/nt;->c:I

    const-string v1, "com.syu.canbus"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v3, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    .line 8
    iput v3, v0, Lk0/mt;->o:I

    .line 9
    iget-object v0, p0, Lk0/bb;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/bb;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/bb;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v0, p0, Lk0/bb;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->e:I

    .line 15
    iput v3, v0, Lk0/mt;->f:I

    .line 16
    iput v2, v0, Lk0/mt;->g:I

    .line 17
    iput v3, v0, Lk0/mt;->o:I

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 19
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 21
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 22
    iput v2, v0, Lk0/mt;->f:I

    .line 23
    iput v2, v0, Lk0/mt;->g:I

    .line 24
    iput v3, v0, Lk0/mt;->o:I

    :goto_1
    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_24

    const/16 v7, 0x14

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v1, v7, :cond_22

    const/16 v11, 0x30

    const/16 v12, 0x71

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/16 v15, 0xf

    if-eq v1, v11, :cond_21

    const/16 v11, 0x8

    if-eq v1, v12, :cond_20

    const/16 v12, 0x10

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    const/16 v1, 0x79

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 2
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_1
    const/16 v1, 0x77

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 3
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_2
    add-int/lit8 v1, p2, 0x2

    .line 4
    aget-byte v1, p1, v1

    add-int/lit8 v11, p2, 0x3

    .line 5
    aget-byte v11, p1, v11

    add-int/lit8 v13, p2, 0x4

    .line 6
    aget-byte v16, p1, v13

    add-int/lit8 v17, p2, 0x5

    .line 7
    aget-byte v18, p1, v17

    add-int/lit8 v14, p2, 0x6

    .line 8
    aget-byte v14, p1, v14

    const/16 v2, 0xb

    new-array v3, v6, [I

    shr-int/lit8 v19, v1, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v5

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v6, [I

    shr-int/lit8 v19, v1, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v5

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v6, [I

    shr-int/lit8 v19, v1, 0x5

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v5

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v6, [I

    shr-int/lit8 v19, v1, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v3, v5

    .line 12
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 13
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v6, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v3, v5

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v11, 0x4

    and-int/2addr v1, v15

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v10, :cond_2

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_0

    move v2, v5

    move v3, v2

    move v4, v3

    :goto_0
    move v8, v4

    goto :goto_1

    :cond_0
    move v3, v5

    move v4, v3

    move v8, v4

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    move v4, v2

    move v3, v6

    move v8, v3

    goto :goto_1

    :cond_2
    move v2, v5

    move v3, v2

    move v4, v3

    move v8, v6

    goto :goto_1

    :cond_3
    move v2, v5

    move v3, v2

    move v4, v6

    goto :goto_0

    :cond_4
    move v2, v5

    move v3, v2

    move v8, v3

    move v4, v6

    :goto_1
    new-array v9, v6, [I

    aput v2, v9, v5

    .line 15
    invoke-static {v15, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v9, v6, [I

    aput v3, v9, v5

    .line 16
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    aput v4, v3, v5

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 18
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v6, [I

    and-int/lit8 v3, v11, 0xf

    aput v3, v2, v5

    .line 20
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    aget-byte v16, p1, v17

    .line 23
    aget-byte v18, p1, v13

    :cond_5
    move/from16 v1, v16

    move/from16 v2, v18

    if-lez v1, :cond_6

    move v3, v6

    goto :goto_2

    :cond_6
    move v3, v5

    :goto_2
    const/16 v4, 0x1d

    if-gt v1, v4, :cond_7

    move v7, v6

    goto :goto_3

    :cond_7
    move v7, v5

    :goto_3
    and-int/2addr v3, v7

    if-eqz v3, :cond_8

    const/16 v3, 0x1b

    new-array v7, v6, [I

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x23

    aput v1, v7, v5

    .line 24
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_8
    const/16 v1, 0x1b

    new-array v3, v6, [I

    const/4 v7, -0x1

    aput v7, v3, v5

    .line 25
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-lez v2, :cond_9

    move v1, v6

    goto :goto_5

    :cond_9
    move v1, v5

    :goto_5
    if-gt v2, v4, :cond_a

    move v3, v6

    goto :goto_6

    :cond_a
    move v3, v5

    :goto_6
    and-int/2addr v1, v3

    if-eqz v1, :cond_b

    const/16 v1, 0x1c

    new-array v3, v6, [I

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x23

    aput v2, v3, v5

    .line 26
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_b
    const/16 v1, 0x1c

    new-array v2, v6, [I

    const/4 v3, -0x1

    aput v3, v2, v5

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 28
    :goto_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    and-int/lit16 v1, v14, 0xff

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    .line 29
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto/16 :goto_16

    :cond_c
    if-le v1, v2, :cond_d

    rsub-int v1, v1, 0x100

    move v5, v6

    :cond_d
    if-eqz v5, :cond_e

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_8

    :cond_e
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    .line 30
    :goto_8
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_16

    :pswitch_3
    const/16 v1, 0x63

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 31
    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 32
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 33
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 34
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 35
    aget-byte v4, p1, v4

    add-int/lit8 v7, p2, 0x6

    .line 36
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x7

    .line 37
    aget-byte v8, p1, v8

    const/16 v11, 0x64

    new-array v12, v6, [I

    and-int/2addr v1, v15

    aput v1, v12, v5

    .line 38
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v2, 0x4

    and-int/2addr v1, v15

    const/16 v11, 0xa

    if-ge v1, v11, :cond_f

    goto :goto_9

    :cond_f
    move v1, v5

    :goto_9
    and-int/2addr v2, v15

    if-ge v2, v11, :cond_10

    goto :goto_a

    :cond_10
    move v2, v5

    :goto_a
    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    const/16 v2, 0x65

    new-array v12, v6, [I

    aput v1, v12, v5

    .line 39
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v3, 0x4

    and-int/2addr v1, v15

    if-ge v1, v11, :cond_11

    goto :goto_b

    :cond_11
    move v1, v5

    :goto_b
    and-int/lit8 v2, v3, 0xf

    if-ge v2, v11, :cond_12

    goto :goto_c

    :cond_12
    move v2, v5

    :goto_c
    mul-int/2addr v1, v11

    add-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    and-int/2addr v2, v15

    if-ge v2, v11, :cond_13

    goto :goto_d

    :cond_13
    move v2, v5

    :goto_d
    and-int/lit8 v3, v4, 0xf

    if-ge v3, v11, :cond_14

    goto :goto_e

    :cond_14
    move v3, v5

    :goto_e
    mul-int/2addr v2, v11

    add-int/2addr v2, v3

    const/16 v3, 0x66

    new-array v4, v6, [I

    add-int/2addr v1, v2

    aput v1, v4, v5

    .line 40
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v2, v6, [I

    and-int/lit8 v3, v7, 0xf

    aput v3, v2, v5

    .line 41
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v6, [I

    shr-int/lit8 v3, v8, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v5

    .line 42
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x69

    new-array v2, v6, [I

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v5

    .line 43
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_5
    add-int/lit8 v1, p2, 0x2

    .line 44
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 45
    aget-byte v2, p1, v2

    .line 46
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_1d

    and-int/lit16 v1, v1, 0xff

    .line 47
    iput v1, v0, Lk0/bb;->c:I

    move v1, v5

    .line 48
    :goto_f
    iget-object v3, v0, Lk0/bb;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_16

    .line 49
    iget v4, v0, Lk0/bb;->c:I

    aget-object v7, v3, v1

    aget v7, v7, v5

    if-ne v4, v7, :cond_15

    if-eqz v4, :cond_16

    .line 50
    iput v1, v0, Lk0/bb;->b:I

    goto :goto_10

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 51
    :cond_16
    :goto_10
    iget v4, v0, Lk0/bb;->c:I

    if-eq v4, v15, :cond_1c

    if-eq v4, v12, :cond_1c

    packed-switch v4, :pswitch_data_1

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_17

    .line 52
    array-length v2, v3

    if-ge v1, v2, :cond_25

    .line 53
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 54
    :cond_17
    array-length v2, v3

    if-gt v1, v2, :cond_25

    .line 55
    iget v1, v0, Lk0/bb;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :pswitch_6
    move v1, v5

    :goto_11
    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0x1e

    if-ge v1, v3, :cond_18

    .line 56
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 57
    :cond_18
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :pswitch_7
    move v1, v5

    :goto_12
    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0x1f

    if-ge v1, v3, :cond_19

    .line 58
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 59
    :cond_19
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :pswitch_8
    move v1, v5

    :goto_13
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_1a

    .line 60
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 61
    :cond_1a
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :pswitch_9
    move v1, v5

    :goto_14
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_1b

    .line 62
    invoke-static {v13, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 63
    :cond_1b
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    .line 64
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lk0/bb;->f3()V

    goto/16 :goto_16

    :cond_1d
    if-ne v2, v6, :cond_25

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_16

    .line 65
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lk0/bb;->f3()V

    goto/16 :goto_16

    .line 66
    :pswitch_b
    invoke-static {}, Lo1/u;->W0()V

    goto/16 :goto_16

    .line 67
    :pswitch_c
    invoke-static {}, Lo1/u;->X()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 68
    invoke-static {}, La/i;->A()V

    goto/16 :goto_16

    .line 69
    :cond_1e
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_16

    .line 70
    :pswitch_d
    sget-object v1, La/b;->p:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_16

    .line 71
    :cond_1f
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_16

    .line 72
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v6, [Ljava/lang/Object;

    aget-byte v3, p1, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    aget-byte v4, p1, v10

    .line 73
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    aget-byte v4, p1, v9

    .line 74
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "%2X"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    aget-byte v7, p1, v8

    .line 75
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    aget-byte v7, p1, v14

    .line 76
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    aget-byte v4, p1, v11

    .line 77
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v4, 0x9

    aget-byte v4, p1, v4

    .line 78
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v4, 0xa

    aget-byte v4, p1, v4

    .line 79
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_21
    const/16 v1, 0x6c

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 81
    aget-byte v7, p1, v3

    shr-int/2addr v7, v8

    and-int/2addr v7, v10

    aput v7, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6d

    new-array v2, v6, [I

    .line 82
    aget-byte v7, p1, v3

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6e

    new-array v2, v6, [I

    .line 83
    aget-byte v3, p1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 84
    aget-byte v4, p1, v3

    shr-int/2addr v4, v14

    and-int/2addr v4, v10

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v2, v6, [I

    .line 85
    aget-byte v3, p1, v3

    shr-int/2addr v3, v5

    and-int/2addr v3, v15

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    add-int/lit8 v2, p2, 0x4

    .line 86
    aget-byte v3, p1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v6

    aput v3, v1, v5

    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v3, v6, [I

    .line 87
    aget-byte v4, p1, v2

    shr-int/2addr v4, v14

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v3, v6, [I

    .line 88
    aget-byte v4, p1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x74

    new-array v3, v6, [I

    .line 89
    aget-byte v4, p1, v2

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x75

    new-array v3, v6, [I

    .line 90
    aget-byte v4, p1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x76

    new-array v3, v6, [I

    .line 91
    aget-byte v2, p1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_22
    add-int/lit8 v1, p2, 0x3

    .line 92
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 93
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_23

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 94
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 95
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_23
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 96
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 97
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_15
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 98
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 99
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 100
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_24
    add-int/lit8 v1, p2, 0x2

    .line 101
    aget-byte v1, p1, v1

    const/16 v2, 0x78

    const/16 v3, 0x80

    invoke-static {v1, v5, v3, v6, v2}, Lk0/qt;->m(IIIZI)V

    :cond_25
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bb;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/bb;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/bb;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/bb;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/bb;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/bb;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0x7a

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v0}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, p3

    const/16 v1, 0x97

    aput v1, p1, p4

    aput v0, p1, v0

    const/4 v0, 0x3

    .line 2
    aget p3, p2, p3

    aput p3, p1, v0

    const/4 p3, 0x4

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/bb;->g3(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lez p1, :cond_3

    .line 6
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/bb;->h3(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e3()Ljava/lang/String;
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

.method public f3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk0/bb;->e3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.hc.tianlai.ActivityTianLaiCarInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/i;->A()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final g3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x85

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

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

.method public final h3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x82

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

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
