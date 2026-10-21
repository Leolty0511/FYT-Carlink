.class public Lk0/eg;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:I = 0x0

.field public static k:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


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
    iput v0, p0, Lk0/eg;->c:I

    const/16 v1, 0x9

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
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

    iput-object v2, p0, Lk0/eg;->d:[[I

    .line 4
    iput v0, p0, Lk0/eg;->f:I

    const/16 v2, 0x1a

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_9

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    aput-object v0, v2, v10

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    aput-object v0, v2, v11

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v1, 0xa

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v1, 0xb

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    const/16 v1, 0xd

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    const/16 v1, 0xe

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    const/16 v1, 0xf

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_19

    const/16 v1, 0x10

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1a

    const/16 v1, 0x11

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    const/16 v1, 0x12

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    const/16 v1, 0x13

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    const/16 v1, 0x14

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    const/16 v1, 0x15

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    const/16 v1, 0x16

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_20

    const/16 v1, 0x17

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_21

    const/16 v1, 0x18

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_22

    const/16 v1, 0x19

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/eg;->g:[[I

    .line 6
    new-instance v0, Lk0/eg$a;

    invoke-direct {v0, p0}, Lk0/eg$a;-><init>(Lk0/eg;)V

    iput-object v0, p0, Lk0/eg;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/eg$b;

    invoke-direct {v0, p0}, Lk0/eg$b;-><init>(Lk0/eg;)V

    iput-object v0, p0, Lk0/eg;->i:Ljava/lang/Runnable;

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
        0x7
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
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_c
    .array-data 4
        0x4
        0x4b
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x4a
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x7
        0x16
    .end array-data

    :array_10
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x10
        0xc
    .end array-data

    :array_13
    .array-data 4
        0x11
        0x43
    .end array-data

    :array_14
    .array-data 4
        0x12
        0x44
    .end array-data

    :array_15
    .array-data 4
        0x13
        0x28
    .end array-data

    :array_16
    .array-data 4
        0x14
        0x29
    .end array-data

    :array_17
    .array-data 4
        0x15
        0x2a
    .end array-data

    :array_18
    .array-data 4
        0x16
        0x2b
    .end array-data

    :array_19
    .array-data 4
        0x17
        0x2c
    .end array-data

    :array_1a
    .array-data 4
        0x18
        0x2d
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x38
    .end array-data

    :array_1c
    .array-data 4
        0x20
        0x38
    .end array-data

    :array_1d
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x22
        0x5
    .end array-data

    :array_1f
    .array-data 4
        0x23
        0x26
    .end array-data

    :array_20
    .array-data 4
        0x24
        0x37
    .end array-data

    :array_21
    .array-data 4
        0x25
        0x3f
    .end array-data

    :array_22
    .array-data 4
        0x26
        0x36
    .end array-data
.end method

.method public static synthetic c3(Lk0/eg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/eg;->a3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->q:I

    .line 10
    :cond_0
    sget v0, Lk0/nt;->a:I

    const v2, 0xc401b7    # 1.8000372E-38f

    const/16 v3, 0xc

    if-eq v0, v2, :cond_3

    const v2, 0x5a01c5

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0xc301b7

    if-eq v0, v2, :cond_2

    const v2, 0x5901c5

    if-ne v0, v2, :cond_4

    :cond_2
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 13
    :cond_4
    :goto_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v0, p0, Lk0/eg;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/eg;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x72
        0x9
        0x7
        0x3
        0x2
        0x1
        0x3
        0xe3
        0xf3
        0xf7
        0xfb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x72
        0x9
        0x7
        0x3
        0x1
        0x1
        0x3
        0xe3
        0xf3
        0xfb
        0xfb
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x11

    const/16 v4, 0xd

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v3, :cond_19

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_16

    const/16 v15, 0x20

    if-eq v2, v15, :cond_11

    const/16 v15, 0x33

    const/high16 v16, 0xff0000

    const/16 v14, 0xa

    const/16 v8, 0x10

    if-eq v2, v15, :cond_10

    const/16 v15, 0x38

    if-eq v2, v15, :cond_f

    const/16 v15, 0x41

    const/16 v3, 0xf

    if-eq v2, v15, :cond_d

    const/16 v15, 0x29

    if-eq v2, v15, :cond_c

    const/16 v15, 0x2a

    if-eq v2, v15, :cond_6

    const/16 v4, 0x30

    if-eq v2, v4, :cond_5

    const/16 v4, 0x31

    if-eq v2, v4, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 4
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 5
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 6
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 7
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 8
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 9
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 10
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v13

    aput v1, v2, v12

    .line 11
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    add-int/lit8 v8, p2, 0x4

    .line 14
    aget-byte v9, v1, v8

    and-int/2addr v9, v11

    add-int/lit8 v6, p2, 0x5

    .line 15
    aget-byte v10, v1, v6

    and-int/2addr v10, v11

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    .line 16
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v12, Ll0/c0;->g:I

    if-ne v12, v3, :cond_2

    sget v3, Ll0/c0;->h:I

    if-ne v3, v5, :cond_2

    sget v3, Ll0/c0;->i:I

    if-ne v3, v9, :cond_2

    sget v3, Ll0/c0;->j:I

    if-eq v3, v10, :cond_3

    .line 18
    :cond_2
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_3

    .line 19
    invoke-static {v13}, Lu0/d;->C2(I)V

    .line 20
    sput v7, Ll0/c0;->k:I

    .line 21
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 23
    aget-byte v2, v1, v4

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 24
    aget-byte v2, v1, v8

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 25
    aget-byte v1, v1, v6

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 29
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :cond_4
    const/16 v2, 0x72

    new-array v4, v13, [I

    add-int/lit8 v6, p2, 0x2

    .line 30
    aget-byte v8, v1, v6

    shr-int/2addr v8, v7

    and-int/2addr v8, v3

    aput v8, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v13, [I

    .line 31
    aget-byte v6, v1, v6

    shr-int/2addr v6, v12

    and-int/2addr v6, v3

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v13, [I

    add-int/lit8 v6, p2, 0x3

    .line 32
    aget-byte v8, v1, v6

    shr-int/lit8 v7, v8, 0x4

    and-int/2addr v7, v3

    aput v7, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v13, [I

    .line 33
    aget-byte v6, v1, v6

    shr-int/2addr v6, v12

    and-int/2addr v3, v6

    aput v3, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x5

    .line 34
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x7

    .line 35
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 36
    :cond_5
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 37
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    add-int/lit8 v5, p2, 0x3

    .line 38
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    add-int/lit8 v7, p2, 0x6

    .line 39
    aget-byte v7, v1, v7

    and-int/2addr v7, v11

    new-array v10, v13, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v13

    aput v15, v10, v12

    .line 40
    invoke-static {v14, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v13, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v13

    aput v14, v10, v12

    const/16 v14, 0xb

    .line 41
    invoke-static {v14, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v13, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v13

    aput v14, v10, v12

    const/16 v14, 0xc

    .line 42
    invoke-static {v14, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v13, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v13

    aput v14, v10, v12

    .line 43
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v10, v2, 0x2

    and-int/2addr v10, v13

    aput v10, v4, v12

    const/16 v10, 0xe

    .line 44
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v13

    aput v10, v4, v12

    .line 45
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v13

    aput v2, v4, v12

    .line 46
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v13, [I

    shr-int/lit8 v8, v5, 0x7

    and-int/2addr v8, v13

    aput v8, v4, v12

    .line 47
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v13, [I

    shr-int/lit8 v8, v5, 0x6

    and-int/2addr v8, v13

    aput v8, v4, v12

    .line 48
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v13, [I

    shr-int/lit8 v8, v5, 0x5

    and-int/2addr v8, v13

    aput v8, v4, v12

    .line 49
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v13, [I

    shr-int/2addr v5, v12

    and-int/2addr v3, v5

    aput v3, v4, v12

    .line 50
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 51
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x5

    .line 52
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    const-string v6, "persist.fyt.reversetemp"

    .line 53
    invoke-static {v6, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v13, :cond_7

    .line 54
    aget-byte v3, v1, v4

    and-int/2addr v3, v11

    .line 55
    aget-byte v1, v1, v2

    and-int/lit16 v5, v1, 0xff

    :cond_7
    const/16 v1, 0xfe

    const/16 v2, 0x1b

    if-ne v3, v1, :cond_8

    new-array v1, v13, [I

    const/4 v3, -0x2

    aput v3, v1, v12

    .line 56
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    if-ne v3, v11, :cond_9

    new-array v1, v13, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 57
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v1, v13, [I

    aput v3, v1, v12

    .line 58
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0xfe

    if-ne v5, v1, :cond_a

    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    const/16 v2, 0x1c

    .line 59
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    const/16 v2, 0x1c

    if-ne v5, v11, :cond_b

    new-array v1, v13, [I

    const/4 v3, -0x3

    aput v3, v1, v12

    .line 60
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v1, v13, [I

    aput v5, v1, v12

    .line 61
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x1d

    new-array v2, v13, [I

    shr-int/lit8 v3, v7, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v12

    .line 62
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v13, [I

    shr-int/lit8 v3, v7, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v12

    .line 63
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x6a4

    invoke-static {v2, v1, v13, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    :cond_d
    const/16 v2, 0x7c

    new-array v4, v13, [I

    add-int/lit8 v7, p2, 0x2

    .line 65
    aget-byte v9, v1, v7

    shr-int/lit8 v5, v9, 0x7

    and-int/2addr v5, v13

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v13, [I

    .line 66
    aget-byte v5, v1, v7

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v13

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v13, [I

    .line 67
    aget-byte v5, v1, v7

    shr-int/2addr v5, v6

    and-int/2addr v5, v13

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x3

    .line 68
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x5

    .line 69
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x7

    .line 70
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x9

    .line 71
    aget-byte v6, v1, v5

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    const v9, 0xff00

    and-int/2addr v6, v9

    add-int/lit8 v10, p2, 0xa

    aget-byte v14, v1, v10

    and-int/2addr v14, v11

    or-int/2addr v6, v14

    aput v6, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 72
    aget-byte v2, v1, v5

    shl-int/2addr v2, v7

    and-int/2addr v2, v9

    aget-byte v4, v1, v10

    and-int/2addr v4, v11

    or-int/2addr v2, v4

    const v4, 0x8000

    and-int/2addr v4, v2

    if-eqz v4, :cond_e

    const/high16 v4, 0x10000

    sub-int/2addr v4, v2

    rsub-int v2, v4, 0x3e8

    goto :goto_4

    :cond_e
    add-int/lit16 v2, v2, 0x3e8

    .line 73
    :goto_4
    invoke-static {v2}, Lu0/d;->B3(I)V

    const/16 v2, 0x83

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0xb

    .line 74
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0xc

    aget-byte v6, v1, v6

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    const v7, 0xff00

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xd

    aget-byte v6, v1, v6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0xe

    .line 75
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v3, p2, 0xf

    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    or-int/2addr v1, v5

    aput v1, v4, v12

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_f
    const/16 v2, 0x85

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x6

    .line 76
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x7

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x8

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x9

    .line 79
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_10
    const/16 v2, 0x78

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x2

    .line 80
    aget-byte v4, v1, v4

    shl-int/2addr v4, v8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x5

    .line 81
    aget-byte v4, v1, v4

    shl-int/2addr v4, v8

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x8

    .line 82
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x9

    .line 83
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 85
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 86
    iput v2, v0, Lk0/eg;->c:I

    move v2, v12

    .line 87
    :goto_5
    iget-object v3, v0, Lk0/eg;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_13

    .line 88
    iget v4, v0, Lk0/eg;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_12

    if-eqz v4, :cond_13

    .line 89
    iput v2, v0, Lk0/eg;->b:I

    goto :goto_6

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    :goto_6
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_14

    .line 90
    array-length v1, v3

    if-ge v2, v1, :cond_25

    .line 91
    aget-object v1, v3, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_14
    if-nez v1, :cond_25

    .line 92
    iget v1, v0, Lk0/eg;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_15

    if-eq v1, v11, :cond_15

    .line 93
    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 94
    :cond_15
    iput v11, v0, Lk0/eg;->b:I

    goto/16 :goto_c

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    if-eq v3, v13, :cond_18

    if-eq v3, v10, :cond_17

    goto/16 :goto_7

    :cond_17
    const/16 v3, 0x68

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x3

    .line 96
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x4

    .line 97
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x6

    .line 98
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v13

    aput v6, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v13, [I

    .line 99
    aget-byte v5, v1, v5

    shr-int/2addr v5, v13

    and-int/2addr v5, v13

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x7

    .line 100
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v13, [I

    const/16 v5, 0x8

    add-int/lit8 v5, p2, 0x8

    .line 101
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_18
    const/16 v3, 0x63

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x3

    .line 102
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x4

    .line 103
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v4, v13, [I

    add-int/lit8 v5, p2, 0x6

    .line 104
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 105
    :goto_7
    sget v3, Lk0/eg;->j:I

    aget-byte v4, v1, v2

    and-int/2addr v4, v11

    if-eq v3, v4, :cond_25

    .line 106
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    sput v3, Lk0/eg;->j:I

    const/16 v3, 0x77

    new-array v4, v13, [I

    .line 107
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    aput v1, v4, v12

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 108
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 109
    aget-byte v1, v1, v3

    and-int/lit16 v3, v2, 0xff

    .line 110
    iput v3, v0, Lk0/eg;->f:I

    move v3, v12

    .line 111
    :goto_8
    iget-object v8, v0, Lk0/eg;->g:[[I

    array-length v14, v8

    if-ge v3, v14, :cond_1b

    .line 112
    iget v14, v0, Lk0/eg;->f:I

    aget-object v15, v8, v3

    aget v15, v15, v12

    if-ne v14, v15, :cond_1a

    if-eqz v14, :cond_1b

    .line 113
    iput v3, v0, Lk0/eg;->e:I

    goto :goto_9

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 114
    :cond_1b
    :goto_9
    sget v14, Lu0/b;->D:I

    if-ne v14, v4, :cond_1c

    new-array v3, v6, [I

    const/16 v4, 0xe3

    aput v4, v3, v12

    const/16 v4, 0x74

    aput v4, v3, v13

    aput v10, v3, v10

    aput v2, v3, v9

    aput v1, v3, v7

    .line 115
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_c

    .line 116
    :cond_1c
    iget v2, v0, Lk0/eg;->f:I

    if-eq v2, v10, :cond_23

    if-eq v2, v9, :cond_21

    if-eq v2, v7, :cond_20

    if-eq v2, v6, :cond_20

    if-eq v2, v5, :cond_1f

    and-int/2addr v1, v11

    if-ne v1, v13, :cond_1d

    .line 117
    array-length v1, v8

    if-ge v3, v1, :cond_25

    .line 118
    aget-object v1, v8, v3

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_1d
    if-nez v1, :cond_25

    .line 119
    iget v1, v0, Lk0/eg;->e:I

    array-length v2, v8

    if-ge v1, v2, :cond_1e

    if-eq v1, v11, :cond_1e

    .line 120
    aget-object v1, v8, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 121
    :cond_1e
    iput v11, v0, Lk0/eg;->e:I

    goto :goto_c

    :cond_1f
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_25

    .line 122
    invoke-virtual/range {p0 .. p0}, Lk0/eg;->d3()V

    goto :goto_c

    :cond_20
    and-int/2addr v1, v11

    if-ne v1, v13, :cond_25

    .line 123
    invoke-virtual/range {p0 .. p0}, Lk0/eg;->e3()V

    goto :goto_c

    :cond_21
    move v2, v12

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_22

    const/16 v3, 0x8

    .line 124
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    const/16 v3, 0x8

    .line 125
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_23
    move v2, v12

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_24

    .line 126
    invoke-static {v5, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 127
    :cond_24
    invoke-static {v5, v13}, Ll0/b0;->l0(II)V

    :cond_25
    :goto_c
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
    iget-object v0, p0, Lk0/eg;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/eg;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x89

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

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    aput v1, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v3

    .line 1
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0xda

    aput p3, p1, v4

    aput v3, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0x74

    aput p3, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 5

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x8

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 1
    invoke-virtual {p0, v1}, Lk0/eg;->b3([I)V

    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3([I)V
    .locals 9

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v2, :cond_8

    const/16 v5, 0xd

    const/16 v6, 0x11

    const/4 v7, 0x7

    if-eq v0, v5, :cond_5

    const/4 v5, 0x4

    const/16 v8, 0x8

    if-eq v0, v5, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 3
    aput v7, p1, v4

    .line 4
    aput v3, p1, v1

    goto :goto_1

    .line 5
    :pswitch_0
    aput v8, p1, v4

    .line 6
    aput v3, p1, v1

    goto :goto_1

    .line 7
    :cond_1
    aput v7, p1, v4

    .line 8
    aput v3, p1, v1

    goto :goto_1

    .line 9
    :cond_2
    sget v0, Lo0/e;->H:I

    if-ne v0, v2, :cond_3

    .line 10
    aput v6, p1, v4

    .line 11
    aput v3, p1, v1

    goto :goto_1

    :cond_3
    if-ne v0, v4, :cond_4

    .line 12
    aput v8, p1, v4

    .line 13
    aput v3, p1, v1

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_9

    .line 14
    aput v8, p1, v4

    .line 15
    aput v3, p1, v1

    goto :goto_1

    .line 16
    :cond_5
    sget v0, Lk0/eg;->j:I

    if-ne v0, v2, :cond_6

    .line 17
    aput v2, p1, v4

    goto :goto_0

    :cond_6
    if-ne v0, v4, :cond_7

    .line 18
    aput v6, p1, v4

    goto :goto_0

    .line 19
    :cond_7
    aput v7, p1, v4

    .line 20
    :goto_0
    aput v3, p1, v1

    goto :goto_1

    .line 21
    :cond_8
    aput v2, p1, v4

    .line 22
    aput v3, p1, v1

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.daojun.tianlai.djTianlaiCd"

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

.method public final e3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.daojun.tianlai.djTianlaiRadio"

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
