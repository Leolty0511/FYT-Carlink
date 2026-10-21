.class public Lk0/bl;
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

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/bl;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    iput-object v1, p0, Lk0/bl;->d:[[I

    .line 4
    iput v0, p0, Lk0/bl;->f:I

    new-array v0, v9, [[I

    new-array v1, v2, [I

    .line 5
    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v8

    iput-object v0, p0, Lk0/bl;->g:[[I

    .line 6
    iput v4, p0, Lk0/bl;->h:I

    .line 7
    iput v4, p0, Lk0/bl;->i:I

    .line 8
    new-instance v0, Lk0/bl$a;

    invoke-direct {v0, p0}, Lk0/bl$a;-><init>(Lk0/bl;)V

    iput-object v0, p0, Lk0/bl;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/bl$b;

    invoke-direct {v0, p0}, Lk0/bl$b;-><init>(Lk0/bl;)V

    iput-object v0, p0, Lk0/bl;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/bl$c;

    invoke-direct {v0, p0}, Lk0/bl$c;-><init>(Lk0/bl;)V

    iput-object v0, p0, Lk0/bl;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/bl$d;

    invoke-direct {v0, p0}, Lk0/bl$d;-><init>(Lk0/bl;)V

    iput-object v0, p0, Lk0/bl;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/bl$e;

    invoke-direct {v0, p0}, Lk0/bl$e;-><init>(Lk0/bl;)V

    iput-object v0, p0, Lk0/bl;->n:Ljava/lang/Runnable;

    .line 13
    iput v4, p0, Lk0/bl;->o:I

    .line 14
    new-instance v0, Lk0/bl$f;

    invoke-direct {v0, p0}, Lk0/bl$f;-><init>(Lk0/bl;)V

    iput-object v0, p0, Lk0/bl;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/bl$g;

    invoke-direct {v0, p0}, Lk0/bl$g;-><init>(Lk0/bl;)V

    iput-object v0, p0, Lk0/bl;->q:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_b
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_e
    .array-data 4
        0x39
        0x19
    .end array-data
.end method

.method public static b3()I
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0xd

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v5

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_3
    const/16 v1, 0xc

    goto :goto_2

    .line 2
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    const/16 v1, 0x19

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x85

    goto :goto_2

    :pswitch_6
    const/16 v1, 0xa

    goto :goto_2

    .line 3
    :pswitch_7
    sget v0, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v7, v0, v5

    if-nez v7, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int v7, v0, v5

    if-ne v6, v7, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    sub-int v5, v0, v5

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v3

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    :goto_1
    :pswitch_8
    move v1, v2

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v3, 0x10

    goto :goto_3

    .line 5
    :cond_7
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic c3(Lk0/bl;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/bl;->d3(BLjava/lang/String;)V

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->h:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/bl;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/bl;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/bl;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/bl;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/bl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_23

    const/16 v3, 0x41

    const/4 v5, 0x4

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1f

    const/16 v9, 0x61

    const/16 v10, 0x8

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x3

    if-eq v2, v9, :cond_1e

    const/16 v9, 0x21

    if-eq v2, v9, :cond_19

    const/16 v9, 0x22

    if-eq v2, v9, :cond_e

    const/16 v9, 0x31

    const/16 v12, 0xd

    if-eq v2, v9, :cond_7

    const/16 v3, 0x32

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_1
    add-int/lit8 v2, p2, 0x4

    .line 3
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 5
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 6
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 7
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 8
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 9
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 10
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 11
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 12
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :pswitch_2
    add-int/lit8 v2, p2, 0x4

    .line 13
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 14
    aget-byte v3, v1, v3

    and-int/2addr v2, v6

    .line 15
    iput v2, v0, Lk0/bl;->c:I

    move v2, v7

    .line 16
    :goto_1
    iget-object v5, v0, Lk0/bl;->d:[[I

    array-length v9, v5

    if-ge v2, v9, :cond_2

    .line 17
    iget v9, v0, Lk0/bl;->c:I

    aget-object v11, v5, v2

    aget v11, v11, v7

    if-ne v9, v11, :cond_1

    if-eqz v9, :cond_2

    .line 18
    iput v2, v0, Lk0/bl;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    and-int/2addr v3, v6

    if-ne v3, v8, :cond_3

    .line 19
    array-length v3, v5

    if-ge v2, v3, :cond_5

    .line 20
    aget-object v2, v5, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_3
    if-nez v3, :cond_5

    .line 21
    iget v2, v0, Lk0/bl;->b:I

    array-length v3, v5

    if-ge v2, v3, :cond_4

    if-eq v2, v6, :cond_4

    .line 22
    aget-object v2, v5, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 23
    :cond_4
    iput v6, v0, Lk0/bl;->b:I

    :cond_5
    :goto_3
    add-int/lit8 v2, p2, 0x6

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    const/16 v3, 0x407

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 25
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 26
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v4, v4, [I

    aput v8, v4, v7

    aput v2, v4, v8

    const/4 v2, 0x0

    invoke-static {v3, v5, v4, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x9

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_f

    :cond_6
    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 28
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 29
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xd

    .line 30
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_7
    const/16 v2, 0xa

    new-array v9, v8, [I

    add-int/lit8 v14, p2, 0x2

    .line 31
    aget-byte v15, v1, v14

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v8

    aput v15, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 32
    aget-byte v9, v1, v14

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v2, v7

    const/16 v9, 0xb

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 33
    aget-byte v14, v1, v9

    shr-int/2addr v14, v5

    and-int/2addr v14, v8

    aput v14, v2, v7

    const/16 v14, 0xc

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 34
    aget-byte v9, v1, v9

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 35
    aget-byte v12, v1, v9

    shr-int/2addr v12, v5

    and-int/2addr v12, v8

    aput v12, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v8, [I

    .line 36
    aget-byte v9, v1, v9

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 37
    aget-byte v2, v1, v2

    if-eq v2, v8, :cond_b

    if-eq v2, v4, :cond_a

    if-eq v2, v13, :cond_9

    if-eq v2, v5, :cond_8

    move v2, v7

    move v3, v2

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_8
    move v3, v7

    move v2, v8

    move v4, v2

    goto :goto_5

    :cond_9
    move v2, v7

    move v3, v2

    move v4, v8

    goto :goto_5

    :cond_a
    move v2, v7

    move v3, v8

    goto :goto_4

    :cond_b
    move v2, v7

    move v4, v2

    move v3, v8

    :goto_5
    const/16 v5, 0x12

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 38
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 39
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 41
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 42
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    const/16 v2, 0xfe

    const/16 v3, 0x1b

    if-ne v1, v2, :cond_c

    new-array v1, v8, [I

    const/4 v2, -0x2

    aput v2, v1, v7

    .line 43
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_c
    if-ne v1, v6, :cond_d

    new-array v1, v8, [I

    const/4 v2, -0x3

    aput v2, v1, v7

    .line 44
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_d
    new-array v2, v8, [I

    mul-int/2addr v1, v11

    aput v1, v2, v7

    .line 45
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 47
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_14

    if-eq v2, v4, :cond_f

    goto/16 :goto_f

    .line 48
    :cond_f
    iget v2, v0, Lk0/bl;->i:I

    if-eq v1, v2, :cond_24

    if-le v1, v2, :cond_11

    move v2, v7

    .line 49
    :goto_6
    iget v3, v0, Lk0/bl;->i:I

    sub-int v3, v1, v3

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_10

    .line 50
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 51
    :cond_10
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_11
    if-ge v1, v2, :cond_13

    move v2, v7

    .line 52
    :goto_7
    iget v3, v0, Lk0/bl;->i:I

    sub-int/2addr v3, v1

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_12

    .line 53
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 54
    :cond_12
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 55
    :cond_13
    :goto_8
    iput v1, v0, Lk0/bl;->i:I

    goto/16 :goto_f

    .line 56
    :cond_14
    iget v2, v0, Lk0/bl;->h:I

    if-eq v1, v2, :cond_24

    if-le v1, v2, :cond_16

    move v2, v7

    .line 57
    :goto_9
    iget v3, v0, Lk0/bl;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_15

    .line 58
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 59
    :cond_15
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_16
    if-ge v1, v2, :cond_18

    move v2, v7

    .line 60
    :goto_a
    iget v3, v0, Lk0/bl;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_17

    .line 61
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 62
    :cond_17
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 63
    :cond_18
    :goto_b
    iput v1, v0, Lk0/bl;->h:I

    goto/16 :goto_f

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    iput v2, v0, Lk0/bl;->f:I

    add-int/lit8 v2, p2, 0x3

    .line 65
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    move v2, v7

    .line 66
    :goto_c
    iget-object v3, v0, Lk0/bl;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 67
    iget v4, v0, Lk0/bl;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_1a

    if-eqz v4, :cond_1b

    .line 68
    iput v2, v0, Lk0/bl;->e:I

    goto :goto_d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    :goto_d
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_1c

    .line 69
    array-length v1, v3

    if-ge v2, v1, :cond_24

    .line 70
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_1c
    if-nez v1, :cond_24

    .line 71
    iget v1, v0, Lk0/bl;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_1d

    if-eq v1, v6, :cond_1d

    .line 72
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 73
    :cond_1d
    iput v6, v0, Lk0/bl;->e:I

    goto/16 :goto_f

    :cond_1e
    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 74
    aget-byte v14, v1, v9

    shr-int/2addr v14, v5

    and-int/2addr v14, v12

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    .line 75
    aget-byte v14, v1, v9

    shr-int/2addr v14, v4

    and-int/2addr v14, v13

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    .line 76
    aget-byte v14, v1, v9

    shr-int/2addr v14, v8

    and-int/2addr v14, v8

    aput v14, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    .line 77
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 78
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x4

    .line 79
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x5

    .line 80
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v12

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 81
    aget-byte v9, v1, v6

    shr-int/2addr v9, v13

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    .line 82
    aget-byte v9, v1, v6

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 83
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v13

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x6

    .line 84
    aget-byte v9, v1, v6

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 85
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 86
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v12

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 87
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x7

    .line 88
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0xf

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    .line 89
    aget-byte v6, v1, v6

    shr-int/2addr v6, v13

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x8

    .line 90
    aget-byte v9, v1, v6

    shr-int/2addr v9, v12

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 91
    aget-byte v9, v1, v6

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    .line 92
    aget-byte v9, v1, v6

    shr-int/2addr v9, v11

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 93
    aget-byte v9, v1, v6

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    .line 94
    aget-byte v5, v1, v6

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    .line 95
    aget-byte v5, v1, v6

    shr-int/lit8 v4, v5, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 96
    aget-byte v4, v1, v6

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    .line 97
    aget-byte v1, v1, v6

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 100
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 101
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 102
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x7

    .line 103
    aget-byte v9, v1, v4

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x8

    .line 104
    aget-byte v11, v1, v10

    and-int/2addr v11, v6

    add-int/lit8 v12, p2, 0x9

    .line 105
    aget-byte v13, v1, v12

    and-int/2addr v13, v6

    if-ne v3, v6, :cond_20

    if-ne v9, v6, :cond_20

    if-ne v11, v6, :cond_20

    if-ne v13, v6, :cond_20

    .line 106
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_e

    .line 107
    :cond_20
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_21

    sget v7, Ll0/c0;->h:I

    if-ne v7, v9, :cond_21

    sget v7, Ll0/c0;->i:I

    if-ne v7, v11, :cond_21

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_22

    .line 108
    :cond_21
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_22

    .line 109
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 110
    sput v5, Ll0/c0;->k:I

    .line 111
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 112
    :cond_22
    :goto_e
    sput v3, Ll0/c0;->g:I

    .line 113
    sput v9, Ll0/c0;->h:I

    .line 114
    sput v11, Ll0/c0;->i:I

    .line 115
    sput v13, Ll0/c0;->j:I

    .line 116
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 117
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 118
    aget-byte v2, v1, v10

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 119
    aget-byte v1, v1, v12

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_f

    .line 120
    :cond_23
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_24
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/bl;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/bl;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/bl;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/bl;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/bl;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/bl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/bl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7f

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    const/4 v5, 0x6

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    aput p3, p1, v2

    aput v3, p1, v4

    const/16 p3, -0x66

    aput p3, p1, v3

    aput v4, p1, v1

    .line 1
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v5, [I

    aput p3, p1, v2

    aput v1, p1, v4

    const/16 p3, 0x6a

    aput p3, p1, v3

    aput v0, p1, v1

    aput v4, p1, p4

    .line 2
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p3, p1, v2

    aput p4, p1, v4

    const/16 p3, 0x6f

    aput p3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v1

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    aput p3, p1, v2

    aput v3, p1, v4

    const/16 p3, 0x3d

    aput p3, p1, v3

    .line 4
    aget p3, p2, v2

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public a3()V
    .locals 15

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v5, 0x91

    const/4 v6, 0x1

    aput v5, v1, v6

    .line 2
    invoke-static {}, Lk0/bl;->b3()I

    move-result v5

    const/4 v7, 0x2

    aput v5, v1, v7

    .line 3
    sget v5, Lu0/b;->D:I

    if-eq v5, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x3

    const/16 v8, 0x30

    aput v8, v1, v5

    const/4 v5, 0x4

    .line 4
    sget v9, Lw0/d;->j:I

    and-int/lit16 v9, v9, 0xff

    rem-int/lit8 v9, v9, 0x6

    add-int/2addr v9, v6

    add-int/2addr v9, v8

    aput v9, v1, v5

    .line 5
    sget v5, Lw0/d;->h:I

    const/high16 v9, 0x10000

    sub-int v10, v5, v9

    const/16 v11, 0xb

    const/16 v12, 0xe

    const/16 v13, 0xc

    const/16 v14, 0xa

    if-eqz v10, :cond_4

    sub-int v10, v5, v9

    if-eq v6, v10, :cond_4

    sub-int/2addr v5, v9

    if-ne v7, v5, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget v4, Lw0/d;->i:I

    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    if-ne v5, v6, :cond_3

    .line 7
    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/2addr v5, v8

    aput v5, v1, v11

    .line 8
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v8

    aput v5, v1, v13

    .line 9
    rem-int/lit8 v5, v4, 0x64

    div-int/2addr v5, v14

    add-int/2addr v5, v8

    aput v5, v1, v3

    .line 10
    rem-int/2addr v4, v14

    add-int/2addr v4, v8

    aput v4, v1, v12

    goto :goto_3

    .line 11
    :cond_3
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v8

    aput v5, v1, v13

    .line 12
    rem-int/lit8 v5, v4, 0x64

    div-int/2addr v5, v14

    add-int/2addr v5, v8

    aput v5, v1, v3

    .line 13
    rem-int/2addr v4, v14

    add-int/2addr v4, v8

    aput v4, v1, v12

    goto :goto_3

    .line 14
    :cond_4
    :goto_1
    sget v5, Lw0/d;->i:I

    div-int/lit16 v6, v5, 0x2710

    if-nez v6, :cond_5

    div-int/lit16 v6, v5, 0x2710

    add-int/2addr v6, v4

    goto :goto_2

    :cond_5
    div-int/lit16 v4, v5, 0x2710

    add-int/lit8 v6, v4, 0x30

    :goto_2
    aput v6, v1, v14

    .line 15
    rem-int/lit16 v4, v5, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v8

    aput v4, v1, v11

    .line 16
    rem-int/lit16 v4, v5, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v8

    aput v4, v1, v13

    const/16 v4, 0x2e

    aput v4, v1, v3

    .line 17
    rem-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v14

    add-int/2addr v5, v8

    aput v5, v1, v12

    :goto_3
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_4
    if-ge v2, v0, :cond_6

    add-int/lit8 v4, v2, 0x1

    .line 18
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_4

    .line 19
    :cond_6
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(BLjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x33

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x30

    aput v3, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    :try_start_0
    const-string p1, "utf-8"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    :goto_0
    array-length p2, p1

    if-le p2, v3, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_2

    add-int/lit8 p2, v2, 0x3

    .line 3
    aget-byte v1, p1, v2

    aput v1, v0, p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
