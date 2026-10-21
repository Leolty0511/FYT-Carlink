.class public Lk0/jk;
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

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/jk;->c:I

    const/4 v1, 0x7

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    iput-object v2, p0, Lk0/jk;->d:[[I

    .line 4
    iput v0, p0, Lk0/jk;->f:I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v2, v3, [I

    .line 5
    fill-array-data v2, :array_7

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    iput-object v0, p0, Lk0/jk;->g:[[I

    .line 6
    iput v5, p0, Lk0/jk;->h:I

    .line 7
    iput v5, p0, Lk0/jk;->i:I

    .line 8
    new-instance v0, Lk0/jk$a;

    invoke-direct {v0, p0}, Lk0/jk$a;-><init>(Lk0/jk;)V

    iput-object v0, p0, Lk0/jk;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/jk$b;

    invoke-direct {v0, p0}, Lk0/jk$b;-><init>(Lk0/jk;)V

    iput-object v0, p0, Lk0/jk;->k:Ljava/lang/Runnable;

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
        0x8
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_e
    .array-data 4
        0x54
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
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jk;->j:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/jk;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x52

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    .line 9
    iput v4, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v2, v0, Lk0/mt;->e:I

    .line 12
    iput v4, v0, Lk0/mt;->f:I

    .line 13
    iput v4, v0, Lk0/mt;->g:I

    .line 14
    iput v4, v0, Lk0/mt;->o:I

    .line 15
    iput v4, v0, Lk0/mt;->i:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x18

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_25

    const/16 v3, -0x10

    const/4 v7, 0x2

    if-eq v2, v3, :cond_24

    const/16 v3, 0x31

    const/16 v8, 0x15

    const/16 v9, 0x41

    const/16 v10, 0x12

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/4 v15, 0x4

    const/4 v13, 0x5

    const/16 v14, 0xff

    if-eq v2, v3, :cond_1c

    if-eq v2, v9, :cond_1b

    const/16 v3, 0x61

    const/16 v9, 0x8

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x21

    if-eq v2, v3, :cond_15

    const/16 v3, 0x22

    if-eq v2, v3, :cond_a

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    const/16 v2, 0x6e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 8
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xa

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xb

    .line 11
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xc

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xd

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xe

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0xf

    .line 15
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x10

    .line 16
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x11

    .line 17
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x12

    .line 18
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x13

    .line 19
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x14

    .line 20
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x15

    .line 21
    aget-byte v1, v1, v4

    and-int/2addr v1, v14

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_1
    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 22
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v1, v1, v6

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_2
    add-int/lit8 v2, p2, 0x4

    .line 23
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 24
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 25
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 26
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 27
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 28
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 29
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 30
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 31
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_3
    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    .line 33
    iput v2, v0, Lk0/jk;->c:I

    move v2, v5

    .line 34
    :goto_1
    iget-object v3, v0, Lk0/jk;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_2

    .line 35
    iget v7, v0, Lk0/jk;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_1

    if-eqz v7, :cond_2

    .line 36
    iput v2, v0, Lk0/jk;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_2
    :goto_2
    iget v7, v0, Lk0/jk;->c:I

    if-eq v7, v4, :cond_7

    if-eq v7, v15, :cond_5

    if-eqz v7, :cond_3

    add-int/lit8 v4, p2, 0x5

    .line 38
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    if-eqz v4, :cond_3

    .line 39
    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 40
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 41
    :cond_3
    iget v2, v0, Lk0/jk;->b:I

    if-eq v2, v14, :cond_4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    if-nez v4, :cond_4

    .line 42
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 43
    :cond_4
    iput v14, v0, Lk0/jk;->b:I

    goto :goto_3

    :cond_5
    add-int/lit8 v2, p2, 0x5

    .line 44
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    if-ne v2, v6, :cond_9

    .line 45
    sget v2, Lh0/c;->E:I

    if-eq v2, v15, :cond_6

    .line 46
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v11, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 48
    :cond_6
    invoke-static {v10, v5}, Ll0/b0;->l0(II)V

    .line 49
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, p2, 0x5

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    if-ne v2, v6, :cond_9

    .line 51
    sget v2, Lh0/c;->E:I

    if-eq v2, v4, :cond_8

    if-eq v2, v15, :cond_8

    if-eq v2, v13, :cond_8

    .line 52
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_8
    const/16 v2, 0x1a

    .line 54
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 55
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    :cond_9
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v14

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_f

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 58
    aget-byte v1, v1, v3

    if-eq v2, v6, :cond_10

    if-eq v2, v7, :cond_b

    goto/16 :goto_f

    .line 59
    :cond_b
    iget v2, v0, Lk0/jk;->i:I

    if-eq v1, v2, :cond_26

    if-le v1, v2, :cond_d

    move v2, v5

    .line 60
    :goto_4
    iget v3, v0, Lk0/jk;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_c

    const/16 v3, 0x1f

    .line 61
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    const/16 v2, 0x1f

    .line 62
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_d
    if-ge v1, v2, :cond_f

    move v2, v5

    .line 63
    :goto_5
    iget v3, v0, Lk0/jk;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_e

    const/16 v3, 0x1e

    .line 64
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    const/16 v2, 0x1e

    .line 65
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 66
    :cond_f
    :goto_6
    iput v1, v0, Lk0/jk;->i:I

    goto/16 :goto_f

    .line 67
    :cond_10
    iget v2, v0, Lk0/jk;->h:I

    if-eq v1, v2, :cond_26

    if-le v1, v2, :cond_12

    move v2, v5

    .line 68
    :goto_7
    iget v3, v0, Lk0/jk;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_11

    const/4 v3, 0x7

    .line 69
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    const/4 v3, 0x7

    .line 70
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_12
    if-ge v1, v2, :cond_14

    move v2, v5

    .line 71
    :goto_8
    iget v3, v0, Lk0/jk;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_13

    .line 72
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 73
    :cond_13
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 74
    :cond_14
    :goto_9
    iput v1, v0, Lk0/jk;->h:I

    goto/16 :goto_f

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    .line 76
    iput v1, v0, Lk0/jk;->f:I

    move v1, v5

    .line 77
    :goto_a
    iget-object v2, v0, Lk0/jk;->g:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 78
    iget v3, v0, Lk0/jk;->f:I

    aget-object v4, v2, v1

    aget v4, v4, v5

    if-ne v3, v4, :cond_16

    if-eqz v3, :cond_17

    .line 79
    iput v1, v0, Lk0/jk;->e:I

    goto :goto_b

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 80
    :cond_17
    :goto_b
    iget v3, v0, Lk0/jk;->f:I

    if-eqz v3, :cond_18

    .line 81
    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 82
    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 83
    :cond_18
    iget v1, v0, Lk0/jk;->b:I

    array-length v3, v2

    if-ge v1, v3, :cond_19

    iget v1, v0, Lk0/jk;->e:I

    if-eq v1, v14, :cond_19

    .line 84
    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 85
    :cond_19
    iput v14, v0, Lk0/jk;->e:I

    goto/16 :goto_f

    :cond_1a
    const/16 v2, 0x62

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 86
    aget-byte v10, v1, v8

    shr-int/2addr v10, v15

    and-int/lit8 v10, v10, 0xf

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v6, [I

    .line 87
    aget-byte v10, v1, v8

    shr-int/lit8 v7, v10, 0x2

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v6, [I

    .line 88
    aget-byte v7, v1, v8

    shr-int/2addr v7, v5

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 89
    aget-byte v8, v1, v7

    const/4 v10, 0x7

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v6, [I

    .line 90
    aget-byte v8, v1, v7

    const/4 v10, 0x6

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v6, [I

    .line 91
    aget-byte v8, v1, v7

    shr-int/2addr v8, v15

    and-int/2addr v8, v4

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v6, [I

    .line 92
    aget-byte v7, v1, v7

    shr-int/2addr v7, v4

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 93
    aget-byte v8, v1, v7

    const/4 v10, 0x6

    shr-int/2addr v8, v10

    and-int/2addr v4, v8

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    .line 94
    aget-byte v4, v1, v7

    shr-int/2addr v4, v13

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    .line 95
    aget-byte v4, v1, v7

    shr-int/2addr v4, v15

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    .line 96
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    const/4 v7, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 97
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 98
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v7

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->f1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 100
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->f1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 101
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->f1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 102
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    invoke-static {v1}, Ll0/c0;->f1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :cond_1c
    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 103
    aget-byte v7, v1, v3

    const/16 v17, 0x6

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v2, v5

    const/16 v7, 0xa

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 104
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 105
    aget-byte v17, v1, v7

    const/16 v16, 0x7

    shr-int/lit8 v16, v17, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 106
    aget-byte v3, v1, v7

    const/16 v16, 0x6

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 107
    aget-byte v7, v1, v7

    shr-int/2addr v7, v4

    and-int/2addr v7, v4

    aput v7, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 108
    aget-byte v16, v1, v7

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v5

    const/16 v11, 0x10

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 109
    aget-byte v7, v1, v7

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    aput v7, v2, v5

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 110
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    if-eq v2, v4, :cond_21

    if-eq v2, v13, :cond_20

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1f

    if-eq v2, v3, :cond_1e

    if-eq v2, v12, :cond_1d

    move v2, v5

    move v3, v2

    :goto_c
    move v4, v3

    goto :goto_d

    :cond_1d
    move v3, v5

    move v2, v6

    move v4, v2

    goto :goto_d

    :cond_1e
    move v3, v5

    move v4, v3

    move v2, v6

    goto :goto_d

    :cond_1f
    move v2, v5

    move v4, v2

    move v3, v6

    goto :goto_d

    :cond_20
    move v2, v5

    move v3, v6

    goto :goto_c

    :cond_21
    move v2, v5

    move v3, v2

    move v4, v6

    :goto_d
    new-array v7, v6, [I

    aput v2, v7, v5

    .line 111
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    aput v3, v2, v5

    const/16 v3, 0x13

    .line 112
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    aput v4, v2, v5

    const/16 v3, 0x14

    .line 113
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 114
    aget-byte v3, v1, v3

    and-int/2addr v3, v14

    aput v3, v2, v5

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 115
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    add-int/lit8 v2, p2, 0xd

    .line 116
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    if-eq v1, v14, :cond_23

    if-nez v1, :cond_22

    goto :goto_e

    :cond_22
    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    .line 117
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_f

    .line 118
    :cond_23
    :goto_e
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto :goto_f

    .line 119
    :cond_24
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_f

    :cond_25
    const/16 v2, 0x3f5

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 120
    aget-byte v1, v1, v4

    sub-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_26
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jk;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/jk;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x84

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    const/16 v5, 0x3ed

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, p3, [I

    aput p4, p1, v3

    aput v2, p1, v4

    const/16 p3, 0xfd

    aput p3, p1, v2

    aput v0, p1, v0

    .line 2
    aget p2, p2, v3

    add-int/2addr p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    aput p4, p1, v3

    aput v2, p1, v4

    const/16 p3, 0x3d

    aput p3, p1, v2

    .line 3
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v3

    aput v1, p1, v4

    const/16 p4, 0x6f

    aput p4, p1, v2

    .line 4
    aget p4, p2, v3

    aput p4, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    const/16 p2, 0xff

    aput p2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method
