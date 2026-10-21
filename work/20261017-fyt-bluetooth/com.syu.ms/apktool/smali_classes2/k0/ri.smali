.class public Lk0/ri;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ri;->c:I

    const/4 v1, 0x2

    new-array v2, v1, [[I

    new-array v3, v1, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/ri;->d:[[I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lk0/ri;->e:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 9
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    .line 12
    iput v1, v0, Lk0/mt;->o:I

    .line 13
    iput v1, v0, Lk0/mt;->h:I

    .line 14
    iput v2, v0, Lk0/mt;->p:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1f

    const/16 v8, 0x11

    const/16 v9, 0xff

    if-eq v2, v8, :cond_1a

    const/16 v8, 0x7f

    if-eq v2, v8, :cond_19

    const/4 v10, 0x5

    const/4 v11, 0x4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_20

    const/16 v3, 0x8f

    new-array v4, v7, [I

    .line 3
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/lit8 v3, v3, 0x7

    if-eq v3, v7, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v11, :cond_1

    if-eq v3, v10, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 v3, 0x8e

    new-array v4, v7, [I

    .line 5
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_1
    const/16 v3, 0x8d

    new-array v4, v7, [I

    .line 6
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_2
    const/16 v3, 0x8c

    new-array v4, v7, [I

    .line 7
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_3
    const/16 v3, 0x8b

    new-array v4, v7, [I

    .line 8
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_4
    const/16 v3, 0x8a

    new-array v4, v7, [I

    .line 9
    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 10
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x87

    .line 11
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3
    const/16 v2, 0x82

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 15
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 16
    aget-byte v1, v1, v4

    and-int/2addr v1, v9

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_4
    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x2

    .line 17
    aget-byte v12, v1, v9

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 18
    aget-byte v12, v1, v9

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v7

    aput v12, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 19
    aget-byte v12, v1, v9

    shr-int/lit8 v10, v12, 0x5

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 20
    aget-byte v10, v1, v9

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 21
    aget-byte v10, v1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v7

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    .line 22
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x3

    .line 23
    aget-byte v10, v1, v9

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v5

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 24
    aget-byte v10, v1, v9

    shr-int/2addr v10, v11

    and-int/2addr v10, v5

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 25
    aget-byte v10, v1, v9

    shr-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 26
    aget-byte v3, v1, v9

    shr-int/2addr v3, v6

    and-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 27
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    .line 28
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 29
    :pswitch_5
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x72

    .line 30
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_6
    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 32
    aget-byte v5, v1, v4

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 33
    aget-byte v2, v1, v4

    const v3, 0xffff

    const v4, 0xff00

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_7
    const/16 v2, 0x71

    new-array v5, v7, [I

    add-int/lit8 v7, p2, 0x4

    .line 34
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_8
    const/16 v2, 0x70

    new-array v5, v7, [I

    add-int/lit8 v7, p2, 0x4

    .line 35
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_9
    const/16 v2, 0x6f

    new-array v5, v7, [I

    add-int/lit8 v7, p2, 0x4

    .line 36
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_a
    const/16 v2, 0x6e

    new-array v5, v7, [I

    add-int/lit8 v7, p2, 0x4

    .line 37
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_b
    const/16 v2, 0x6d

    new-array v5, v7, [I

    add-int/lit8 v7, p2, 0x4

    .line 38
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_c
    const/16 v2, 0x6c

    new-array v5, v7, [I

    add-int/lit8 v7, p2, 0x4

    .line 39
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_d
    const/16 v2, 0x6b

    new-array v5, v7, [I

    add-int/lit8 v7, p2, 0x4

    .line 40
    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v1, v1, v7

    and-int/2addr v1, v9

    or-int/2addr v1, v4

    and-int/2addr v1, v3

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_e
    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 41
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    .line 42
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 43
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 44
    aget-byte v8, v1, v4

    shr-int/2addr v8, v11

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 45
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v8, p2, 0x3

    .line 47
    aget-byte v8, v1, v8

    and-int/2addr v8, v9

    add-int/lit8 v12, p2, 0x4

    .line 48
    aget-byte v12, v1, v12

    and-int/2addr v12, v9

    add-int/lit8 v13, p2, 0x5

    .line 49
    aget-byte v1, v1, v13

    and-int/2addr v1, v9

    const-string v9, "persist.fyt.reversetemp"

    .line 50
    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v13, -0x3

    const/4 v14, -0x2

    const/4 v15, -0x1

    const/16 v3, 0x1d

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    if-nez v9, :cond_b

    if-eqz v2, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v3, :cond_5

    new-array v9, v7, [I

    aput v2, v9, v6

    .line 51
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v2, v7, [I

    aput v13, v2, v6

    .line 52
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v2, v7, [I

    aput v14, v2, v6

    .line 53
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array v2, v7, [I

    aput v15, v2, v6

    .line 54
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    if-eqz v8, :cond_a

    if-eq v8, v7, :cond_9

    if-eq v8, v3, :cond_8

    new-array v2, v7, [I

    aput v8, v2, v6

    .line 55
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v7, [I

    aput v13, v2, v6

    .line 56
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v2, v7, [I

    aput v14, v2, v6

    .line 57
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v2, v7, [I

    aput v15, v2, v6

    .line 58
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    if-eqz v8, :cond_e

    if-eq v8, v7, :cond_d

    if-eq v8, v3, :cond_c

    new-array v9, v7, [I

    aput v8, v9, v6

    .line 59
    invoke-static {v11, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_c
    new-array v8, v7, [I

    aput v13, v8, v6

    .line 60
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_d
    new-array v8, v7, [I

    aput v14, v8, v6

    .line 61
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_e
    new-array v8, v7, [I

    aput v15, v8, v6

    .line 62
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    :goto_1
    if-eqz v2, :cond_11

    if-eq v2, v7, :cond_10

    if-eq v2, v3, :cond_f

    new-array v3, v7, [I

    aput v2, v3, v6

    .line 63
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array v2, v7, [I

    aput v13, v2, v6

    .line 64
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_10
    new-array v2, v7, [I

    aput v14, v2, v6

    .line 65
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_11
    new-array v2, v7, [I

    aput v15, v2, v6

    .line 66
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x15

    new-array v3, v7, [I

    shr-int/lit8 v8, v12, 0x3

    and-int/lit8 v8, v8, 0x7

    aput v8, v3, v6

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v12, 0x7

    if-eq v2, v7, :cond_16

    if-eq v2, v4, :cond_15

    if-eq v2, v5, :cond_14

    const/4 v3, 0x4

    if-eq v2, v3, :cond_13

    const/4 v3, 0x5

    if-eq v2, v3, :cond_12

    move v2, v6

    move v3, v2

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_12
    move v3, v6

    move v4, v3

    move v2, v7

    goto :goto_4

    :cond_13
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_4

    :cond_14
    move v2, v6

    move v3, v2

    move v4, v7

    goto :goto_4

    :cond_15
    move v2, v6

    move v3, v7

    goto :goto_3

    :cond_16
    move v2, v6

    move v4, v2

    move v3, v7

    :goto_4
    const/16 v5, 0x12

    new-array v8, v7, [I

    aput v2, v8, v6

    .line 68
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 69
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 70
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v7, [I

    shr-int/lit8 v4, v12, 0x0

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v6

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/16 v3, 0x10

    .line 72
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v1, 0x3

    and-int/2addr v2, v7

    const/16 v3, 0xc

    if-ne v2, v7, :cond_17

    new-array v2, v7, [I

    aput v7, v2, v6

    .line 75
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    shr-int/lit8 v2, v1, 0x2

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_18

    new-array v2, v7, [I

    aput v6, v2, v6

    .line 76
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :cond_18
    :goto_5
    const/16 v2, 0xd

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 77
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 79
    :cond_19
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 81
    aget-byte v1, v1, v3

    and-int/2addr v2, v9

    .line 82
    iput v2, v0, Lk0/ri;->c:I

    move v2, v6

    .line 83
    :goto_6
    iget-object v3, v0, Lk0/ri;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1c

    .line 84
    iget v4, v0, Lk0/ri;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_1b

    if-eqz v4, :cond_1c

    .line 85
    iput v2, v0, Lk0/ri;->b:I

    goto :goto_7

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    :goto_7
    and-int/2addr v1, v9

    if-eqz v1, :cond_1d

    .line 86
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 87
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 88
    :cond_1d
    iget v1, v0, Lk0/ri;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1e

    if-eq v1, v9, :cond_1e

    .line 89
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 90
    :cond_1e
    iput v9, v0, Lk0/ri;->b:I

    goto :goto_8

    :cond_1f
    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 91
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_20
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x92

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
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_6

    .line 1
    array-length p1, p2

    if-lez p1, :cond_6

    .line 2
    sget p1, Lk0/nt;->W:I

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p1, p3, :cond_5

    .line 3
    aget p1, p2, p4

    const/16 p3, 0xb

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lk0/ri;->a3(I)V

    goto :goto_0

    .line 5
    :cond_1
    aget p1, p2, p4

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Lk0/ri;->a3(I)V

    goto :goto_0

    .line 7
    :cond_2
    aget p1, p2, p4

    if-ne p1, p3, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lk0/ri;->a3(I)V

    goto :goto_0

    .line 9
    :cond_3
    aget p1, p2, p4

    if-ne p1, v1, :cond_4

    .line 10
    invoke-virtual {p0, v2}, Lk0/ri;->a3(I)V

    goto :goto_0

    .line 11
    :cond_4
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/ri;->a3(I)V

    goto :goto_0

    .line 12
    :cond_5
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/ri;->a3(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/ri;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/ri;->e:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x33

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v1, v3, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v3, v2

    if-nez v0, :cond_0

    const/16 p1, 0x22

    goto :goto_0

    :cond_0
    const/16 p1, 0xcc

    :goto_0
    aput p1, v3, v1

    const/4 p1, 0x5

    aput v5, v3, p1

    const/4 p1, 0x6

    aput v5, v3, p1

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
