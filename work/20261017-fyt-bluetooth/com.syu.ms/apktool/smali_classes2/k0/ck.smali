.class public Lk0/ck;
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

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/ck;->c:I

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

    const/16 v11, 0x8

    aput-object v3, v1, v11

    iput-object v1, p0, Lk0/ck;->d:[[I

    .line 4
    iput v0, p0, Lk0/ck;->f:I

    new-array v0, v11, [[I

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

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v9

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v10

    iput-object v0, p0, Lk0/ck;->g:[[I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lk0/ck;->h:I

    .line 7
    iput v4, p0, Lk0/ck;->i:I

    .line 8
    iput v4, p0, Lk0/ck;->j:I

    .line 9
    new-instance v0, Lk0/ck$a;

    invoke-direct {v0, p0}, Lk0/ck$a;-><init>(Lk0/ck;)V

    iput-object v0, p0, Lk0/ck;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/ck$b;

    invoke-direct {v0, p0}, Lk0/ck$b;-><init>(Lk0/ck;)V

    iput-object v0, p0, Lk0/ck;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/ck$c;

    invoke-direct {v0, p0}, Lk0/ck$c;-><init>(Lk0/ck;)V

    iput-object v0, p0, Lk0/ck;->m:Ljava/lang/Runnable;

    .line 12
    iput v4, p0, Lk0/ck;->n:I

    .line 13
    new-instance v0, Lk0/ck$d;

    invoke-direct {v0, p0}, Lk0/ck$d;-><init>(Lk0/ck;)V

    iput-object v0, p0, Lk0/ck;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/ck$e;

    invoke-direct {v0, p0}, Lk0/ck$e;-><init>(Lk0/ck;)V

    iput-object v0, p0, Lk0/ck;->p:Ljava/lang/Runnable;

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
        0x6
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x4b
        0x15
    .end array-data
.end method

.method public static a3()V
    .locals 19

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

    const/16 v3, 0xd2

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lk0/ck;->b3()B

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x2e

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/16 v14, 0xa

    const/16 v15, 0x30

    if-eq v3, v5, :cond_8

    const/4 v6, 0x5

    if-eq v3, v12, :cond_6

    if-eq v3, v13, :cond_3

    if-eq v3, v11, :cond_1

    if-eq v3, v10, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    sget v3, Lu0/b;->r3:I

    div-int/lit8 v5, v3, 0x64

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v8

    .line 6
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v12

    .line 7
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v6

    aput v4, v1, v13

    .line 8
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v9

    .line 9
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v11

    .line 10
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v10

    .line 11
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_5

    .line 12
    :cond_3
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_f

    .line 13
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_4

    .line 14
    div-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v15

    aput v4, v1, v8

    .line 15
    :cond_4
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v12

    const/16 v3, 0x2d

    aput v3, v1, v6

    .line 16
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 17
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_5

    add-int/2addr v4, v15

    aput v4, v1, v13

    .line 18
    :cond_5
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v15

    aput v4, v1, v9

    .line 19
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v15

    aput v4, v1, v11

    aput v7, v1, v10

    .line 20
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v14

    const/16 v4, 0xb

    .line 21
    rem-int/2addr v3, v14

    div-int/2addr v3, v5

    add-int/2addr v3, v15

    aput v3, v1, v4

    goto/16 :goto_5

    .line 22
    :cond_6
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_7

    goto/16 :goto_5

    .line 23
    :cond_7
    sget v3, Lo0/e;->B:I

    div-int/lit8 v5, v3, 0x64

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v8

    .line 24
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v12

    .line 25
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v6

    aput v4, v1, v13

    .line 26
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v9

    .line 27
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v11

    .line 28
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v10

    .line 29
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_5

    .line 30
    :cond_8
    sget v3, Lw0/d;->h:I

    const/high16 v16, 0x10000

    sub-int v17, v3, v16

    const/16 v18, 0x36

    if-eqz v17, :cond_c

    sub-int v0, v3, v16

    if-eq v5, v0, :cond_c

    sub-int v3, v3, v16

    if-ne v6, v3, :cond_9

    goto :goto_2

    :cond_9
    aput v15, v1, v8

    .line 31
    sget v0, Lw0/d;->j:I

    and-int/lit16 v3, v0, 0xff

    rem-int/2addr v3, v13

    if-nez v3, :cond_a

    and-int/lit16 v3, v0, 0xff

    if-eqz v3, :cond_a

    aput v18, v1, v12

    goto :goto_1

    :cond_a
    and-int/lit16 v0, v0, 0xff

    .line 32
    rem-int/2addr v0, v13

    add-int/2addr v0, v15

    aput v0, v1, v12

    .line 33
    :goto_1
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x3e8

    if-nez v3, :cond_b

    .line 34
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v13

    .line 35
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v9

    .line 36
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v11

    goto :goto_5

    .line 37
    :cond_b
    div-int/lit16 v3, v0, 0x3e8

    add-int/2addr v3, v15

    aput v3, v1, v13

    .line 38
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v9

    .line 39
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v11

    .line 40
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v10

    goto :goto_5

    :cond_c
    :goto_2
    aput v15, v1, v8

    .line 41
    sget v0, Lw0/d;->j:I

    and-int/lit16 v3, v0, 0xff

    rem-int/2addr v3, v13

    if-nez v3, :cond_d

    and-int/lit16 v3, v0, 0xff

    if-eqz v3, :cond_d

    aput v18, v1, v12

    goto :goto_3

    :cond_d
    and-int/lit16 v0, v0, 0xff

    .line 42
    rem-int/2addr v0, v13

    add-int/2addr v0, v15

    aput v0, v1, v12

    .line 43
    :goto_3
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_e

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_4

    :cond_e
    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v15

    :goto_4
    aput v3, v1, v13

    .line 44
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v15

    aput v3, v1, v9

    .line 45
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v11

    aput v7, v1, v10

    .line 46
    rem-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v14

    :cond_f
    :goto_5
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_6
    if-ge v2, v3, :cond_10

    add-int/lit8 v4, v2, 0x1

    .line 47
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_6

    .line 48
    :cond_10
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_2

    :pswitch_4
    const/16 v1, 0xc

    goto :goto_2

    .line 2
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :cond_0
    if-ne v0, v4, :cond_1

    const/16 v1, 0xe

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_6
    move v1, v3

    goto :goto_2

    .line 3
    :pswitch_7
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v3, v0, v2

    if-nez v3, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int v3, v0, v2

    if-ne v6, v3, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    sub-int v2, v0, v2

    if-ne v4, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_8
    const/16 v1, 0x9

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v1, 0x10

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic c3(Lk0/ck;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ck;->d3(BLjava/lang/String;)V

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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->q:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/ck;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 10
    :sswitch_0
    iget-object v0, p0, Lk0/ck;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/ck;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v3, p0, Lk0/ck;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 13
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 14
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1bb -> :sswitch_1
        0x6101bc -> :sswitch_0
        0x6b01bb -> :sswitch_1
        0x8701bb -> :sswitch_0
        0x8c01bb -> :sswitch_0
        0xdc01bb -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/4 v11, 0x3

    const v12, 0xff00

    const/4 v13, 0x4

    const/16 v14, 0x8

    const/16 v15, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_14

    :sswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x4

    .line 4
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x5

    .line 5
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x6

    .line 6
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x7

    .line 7
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x8

    .line 8
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x9

    .line 9
    aget-byte v1, v1, v11

    const/16 v11, 0x6a

    new-array v12, v4, [I

    and-int/2addr v2, v15

    aput v2, v12, v3

    .line 10
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v11, v4, [I

    and-int/2addr v5, v15

    aput v5, v11, v3

    .line 11
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v5, v4, [I

    and-int/2addr v6, v15

    aput v6, v5, v3

    .line 12
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v5, v4, [I

    and-int/lit16 v6, v7, 0xff

    aput v6, v5, v3

    .line 13
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v5, v4, [I

    and-int/lit16 v6, v8, 0xff

    aput v6, v5, v3

    .line 14
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v5, v4, [I

    and-int/lit16 v6, v9, 0xff

    aput v6, v5, v3

    .line 15
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v5, v4, [I

    and-int/lit16 v6, v10, 0xff

    aput v6, v5, v3

    .line 16
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v4, [I

    and-int/2addr v1, v15

    aput v1, v4, v3

    .line 17
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_1
    const/16 v2, 0x98

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x2

    .line 18
    aget-byte v9, v1, v6

    shr-int/2addr v9, v10

    and-int/2addr v9, v4

    aput v9, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v5, v4, [I

    .line 19
    aget-byte v9, v1, v6

    shr-int/2addr v9, v8

    and-int/2addr v9, v4

    aput v9, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v5, v4, [I

    .line 20
    aget-byte v9, v1, v6

    shr-int/2addr v9, v13

    and-int/2addr v9, v11

    aput v9, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v5, v4, [I

    .line 21
    aget-byte v6, v1, v6

    shr-int/2addr v6, v3

    and-int/2addr v6, v10

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x3

    .line 22
    aget-byte v9, v1, v6

    shr-int/lit8 v7, v9, 0x5

    and-int/2addr v7, v10

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v5, v4, [I

    .line 23
    aget-byte v7, v1, v6

    shr-int/2addr v7, v11

    and-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v5, v4, [I

    .line 24
    aget-byte v6, v1, v6

    shr-int/2addr v6, v3

    and-int/2addr v6, v10

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 25
    aget-byte v7, v1, v6

    shr-int/2addr v7, v8

    and-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v5, v4, [I

    .line 26
    aget-byte v7, v1, v6

    shr-int/2addr v7, v13

    and-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v5, v4, [I

    .line 27
    aget-byte v7, v1, v6

    shr-int/2addr v7, v11

    and-int/2addr v7, v4

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v5, v4, [I

    .line 28
    aget-byte v7, v1, v6

    shr-int/2addr v7, v4

    and-int/2addr v7, v11

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v5, v4, [I

    .line 29
    aget-byte v1, v1, v6

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    aput v1, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_2
    const/16 v2, 0x99

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x2

    .line 30
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x3

    .line 31
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 32
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0x5

    .line 33
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    if-eq v2, v4, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v11, :cond_2

    if-eq v2, v13, :cond_1

    if-eq v2, v7, :cond_0

    goto/16 :goto_14

    :cond_0
    const/16 v2, 0xb1

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 35
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x5

    .line 36
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x7

    .line 37
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0x9

    .line 38
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_1
    const/16 v2, 0xad

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 39
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x5

    .line 40
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x7

    .line 41
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0x9

    .line 42
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_2
    const/16 v2, 0xa9

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 43
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x5

    .line 44
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x7

    .line 45
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0x9

    .line 46
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_3
    const/16 v2, 0xa5

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 47
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x5

    .line 48
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x7

    .line 49
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0x9

    .line 50
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_4
    const/16 v2, 0xa1

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 51
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x5

    .line 52
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x7

    .line 53
    aget-byte v6, v1, v6

    shl-int/2addr v6, v14

    and-int/2addr v6, v12

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0x9

    .line 54
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_4
    const/16 v2, 0x83

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 55
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x5

    .line 56
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x6

    .line 57
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0x7

    .line 58
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 63
    aget-byte v5, v1, v2

    and-int/2addr v5, v15

    add-int/lit8 v6, p2, 0x7

    .line 64
    aget-byte v7, v1, v6

    and-int/2addr v7, v15

    add-int/lit8 v8, p2, 0x8

    .line 65
    aget-byte v9, v1, v8

    and-int/2addr v9, v15

    add-int/lit8 v10, p2, 0x9

    .line 66
    aget-byte v11, v1, v10

    and-int/2addr v11, v15

    if-ne v5, v15, :cond_5

    if-ne v7, v15, :cond_5

    if-ne v9, v15, :cond_5

    if-ne v11, v15, :cond_5

    .line 67
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 68
    :cond_5
    sget v3, Ll0/c0;->g:I

    if-ne v3, v5, :cond_6

    sget v3, Ll0/c0;->h:I

    if-ne v3, v7, :cond_6

    sget v3, Ll0/c0;->i:I

    if-ne v3, v9, :cond_6

    sget v3, Ll0/c0;->j:I

    if-eq v3, v11, :cond_7

    .line 69
    :cond_6
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_7

    .line 70
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 71
    sput v13, Ll0/c0;->k:I

    .line 72
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 73
    :cond_7
    :goto_0
    sput v5, Ll0/c0;->g:I

    .line 74
    sput v7, Ll0/c0;->h:I

    .line 75
    sput v9, Ll0/c0;->i:I

    .line 76
    sput v11, Ll0/c0;->j:I

    .line 77
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 78
    aget-byte v2, v1, v6

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 79
    aget-byte v2, v1, v8

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 80
    aget-byte v1, v1, v10

    and-int/2addr v1, v15

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_14

    :sswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 82
    aget-byte v1, v1, v5

    const/16 v5, 0x62

    new-array v6, v4, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 83
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x63

    new-array v6, v4, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 84
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x64

    new-array v6, v4, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 85
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x65

    new-array v6, v4, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v4

    aput v7, v6, v3

    .line 86
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x66

    new-array v6, v4, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v4

    aput v2, v6, v3

    .line 87
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v5, v4, [I

    shr-int/lit8 v6, v1, 0x7

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 88
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v5, v4, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v4

    aput v1, v5, v3

    .line 89
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_7
    const/16 v2, 0x9d

    new-array v6, v4, [I

    add-int/lit8 v7, p2, 0x4

    .line 90
    aget-byte v8, v1, v7

    shl-int/2addr v8, v14

    and-int/2addr v8, v12

    add-int/lit8 v9, p2, 0x5

    aget-byte v10, v1, v9

    and-int/2addr v10, v15

    or-int/2addr v8, v10

    aput v8, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v6, v4, [I

    .line 91
    aget-byte v8, v1, v7

    shl-int/2addr v8, v14

    and-int/2addr v8, v12

    aget-byte v10, v1, v9

    and-int/2addr v10, v15

    or-int/2addr v8, v10

    aput v8, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v6, v4, [I

    .line 92
    aget-byte v8, v1, v7

    shl-int/2addr v8, v14

    and-int/2addr v8, v12

    aget-byte v10, v1, v9

    and-int/2addr v10, v15

    or-int/2addr v8, v10

    aput v8, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v6, v4, [I

    .line 93
    aget-byte v7, v1, v7

    shl-int/2addr v7, v14

    and-int/2addr v7, v12

    aget-byte v8, v1, v9

    and-int/2addr v8, v15

    or-int/2addr v7, v8

    aput v7, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v6, v4, [I

    add-int/lit8 v7, p2, 0x6

    .line 94
    aget-byte v8, v1, v7

    shl-int/2addr v8, v5

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    add-int/lit8 v10, p2, 0x7

    aget-byte v11, v1, v10

    shl-int/2addr v11, v14

    and-int/2addr v11, v12

    or-int/2addr v8, v11

    add-int/lit8 v11, p2, 0x8

    aget-byte v13, v1, v11

    and-int/2addr v13, v15

    or-int/2addr v8, v13

    aput v8, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v6, v4, [I

    add-int/lit8 v8, p2, 0x9

    .line 95
    aget-byte v13, v1, v8

    shl-int/2addr v13, v14

    and-int/2addr v13, v12

    add-int/lit8 v16, p2, 0xa

    aget-byte v12, v1, v16

    and-int/2addr v12, v15

    or-int/2addr v12, v13

    aput v12, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v6, v4, [I

    add-int/lit8 v12, p2, 0xb

    .line 96
    aget-byte v13, v1, v12

    shl-int/2addr v13, v5

    and-int/2addr v13, v9

    add-int/lit8 v17, p2, 0xc

    aget-byte v19, v1, v17

    shl-int/lit8 v19, v19, 0x8

    const v18, 0xff00

    and-int v19, v19, v18

    or-int v13, v13, v19

    add-int/lit8 v19, p2, 0xd

    aget-byte v9, v1, v19

    and-int/2addr v9, v15

    or-int/2addr v9, v13

    aput v9, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v4, [I

    add-int/lit8 v6, p2, 0xe

    .line 97
    aget-byte v9, v1, v6

    shl-int/2addr v9, v14

    const v13, 0xff00

    and-int/2addr v9, v13

    add-int/lit8 v13, p2, 0xf

    aget-byte v14, v1, v13

    and-int/2addr v14, v15

    or-int/2addr v9, v14

    aput v9, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 98
    aget-byte v2, v1, v7

    shl-int/2addr v2, v5

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    aget-byte v4, v1, v10

    const/16 v7, 0x8

    shl-int/2addr v4, v7

    const v9, 0xff00

    and-int/2addr v4, v9

    or-int/2addr v2, v4

    aget-byte v4, v1, v11

    and-int/2addr v4, v15

    or-int/2addr v2, v4

    .line 99
    aget-byte v4, v1, v12

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    aget-byte v4, v1, v17

    shl-int/2addr v4, v7

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    aget-byte v4, v1, v19

    and-int/2addr v4, v15

    or-int/2addr v3, v4

    .line 100
    aget-byte v4, v1, v8

    shl-int/2addr v4, v7

    and-int/2addr v4, v9

    aget-byte v5, v1, v16

    and-int/2addr v5, v15

    or-int/2addr v4, v5

    .line 101
    aget-byte v5, v1, v6

    shl-int/2addr v5, v7

    and-int/2addr v5, v9

    aget-byte v1, v1, v13

    and-int/2addr v1, v15

    or-int/2addr v1, v5

    .line 102
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "driving_mile"

    .line 103
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "driving_fuel"

    .line 104
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "driving_lmile"

    .line 105
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "driving_averagefuel"

    .line 106
    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "syu.intent.action.oulande"

    .line 107
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_14

    :sswitch_8
    add-int/lit8 v2, p2, 0x4

    .line 109
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    add-int/lit8 v5, p2, 0x5

    .line 110
    aget-byte v5, v1, v5

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x6

    .line 111
    aget-byte v7, v1, v7

    and-int/2addr v7, v15

    add-int/lit8 v8, p2, 0x7

    .line 112
    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    const/16 v10, 0x408

    new-array v11, v4, [I

    const/16 v12, 0x8

    shl-int/2addr v2, v12

    or-int/2addr v2, v5

    aput v2, v11, v3

    .line 113
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v5, v4, [I

    shl-int/2addr v7, v12

    or-int/2addr v7, v8

    aput v7, v5, v3

    .line 114
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 115
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v8, v9, [I

    aput v4, v8, v3

    aput v7, v8, v4

    invoke-static {v2, v5, v8, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x77

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x8

    .line 116
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0xb

    .line 117
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0xf

    .line 118
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 119
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 120
    aget-byte v6, v1, v6

    add-int/lit8 v10, p2, 0x4

    .line 121
    aget-byte v10, v1, v10

    add-int/lit8 v12, p2, 0x6

    .line 122
    aget-byte v12, v1, v12

    add-int/lit8 v14, p2, 0x7

    .line 123
    aget-byte v14, v1, v14

    const/16 v15, 0xa

    new-array v8, v4, [I

    shr-int/lit8 v20, v2, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v8, v3

    .line 124
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xd

    new-array v15, v4, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v4

    aput v2, v15, v3

    .line 125
    invoke-static {v8, v15}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v8, v4

    aput v8, v2, v3

    const/16 v8, 0xb

    .line 126
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v8, v6, 0x4

    and-int/2addr v8, v4

    aput v8, v2, v3

    const/16 v8, 0xc

    .line 127
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v8, v4, [I

    shr-int/2addr v6, v9

    and-int/2addr v6, v4

    aput v6, v8, v3

    .line 128
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v6, v10, 0x5

    and-int/2addr v6, v4

    aput v6, v2, v3

    .line 129
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v5, v4, [I

    shr-int/lit8 v6, v10, 0x4

    and-int/2addr v6, v4

    aput v6, v5, v3

    .line 130
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    if-eq v12, v11, :cond_b

    const/16 v2, 0xc

    if-eq v12, v2, :cond_a

    if-eq v12, v7, :cond_9

    const/4 v2, 0x6

    if-eq v12, v2, :cond_8

    move v2, v3

    move v5, v2

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_8
    move v2, v3

    move v6, v2

    move v5, v4

    goto :goto_2

    :cond_9
    move v2, v3

    move v5, v4

    goto :goto_1

    :cond_a
    move v5, v3

    move v2, v4

    move v6, v2

    goto :goto_2

    :cond_b
    move v2, v3

    move v5, v2

    move v6, v4

    :goto_2
    const/16 v7, 0x12

    new-array v8, v4, [I

    aput v2, v8, v3

    .line 131
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v4, [I

    aput v5, v7, v3

    .line 132
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v4, [I

    aput v6, v5, v3

    .line 133
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v4, [I

    const/16 v6, 0xff

    and-int/lit16 v7, v14, 0xff

    aput v7, v5, v3

    .line 134
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 135
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v5, -0x3

    const/4 v6, -0x2

    const/16 v7, 0xfe

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    if-eqz v2, :cond_10

    add-int/lit8 v2, p2, 0x8

    .line 136
    aget-byte v10, v1, v2

    const/16 v11, 0xff

    and-int/2addr v10, v11

    if-ne v10, v7, :cond_c

    new-array v2, v4, [I

    aput v6, v2, v3

    .line 137
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 138
    :cond_c
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_d

    new-array v2, v4, [I

    aput v5, v2, v3

    .line 139
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v10, v4, [I

    .line 140
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v10, v3

    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 141
    aget-byte v8, v1, v2

    and-int/2addr v8, v11

    if-ne v8, v7, :cond_e

    new-array v1, v4, [I

    aput v6, v1, v3

    .line 142
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 143
    :cond_e
    aget-byte v6, v1, v2

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_f

    new-array v1, v4, [I

    aput v5, v1, v3

    .line 144
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_f
    new-array v4, v4, [I

    .line 145
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    aput v1, v4, v3

    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_10
    const/16 v11, 0xff

    add-int/lit8 v2, p2, 0x8

    .line 146
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v7, :cond_11

    new-array v2, v4, [I

    aput v6, v2, v3

    .line 147
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    .line 148
    :cond_11
    aget-byte v10, v1, v2

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_12

    new-array v2, v4, [I

    aput v5, v2, v3

    .line 149
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    new-array v10, v4, [I

    .line 150
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    aput v2, v10, v3

    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x9

    .line 151
    aget-byte v9, v1, v2

    and-int/2addr v9, v11

    if-ne v9, v7, :cond_13

    new-array v1, v4, [I

    aput v6, v1, v3

    .line 152
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 153
    :cond_13
    aget-byte v6, v1, v2

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_14

    new-array v1, v4, [I

    aput v5, v1, v3

    .line 154
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_14
    new-array v4, v4, [I

    .line 155
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    aput v1, v4, v3

    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 156
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 157
    aget-byte v1, v1, v5

    if-eq v2, v4, :cond_1a

    if-eq v2, v9, :cond_15

    if-eq v2, v11, :cond_15

    if-eq v2, v13, :cond_15

    if-eq v2, v7, :cond_15

    goto/16 :goto_14

    .line 158
    :cond_15
    iget v2, v0, Lk0/ck;->j:I

    if-eq v1, v2, :cond_2b

    if-le v1, v2, :cond_17

    move v2, v3

    .line 159
    :goto_5
    iget v5, v0, Lk0/ck;->j:I

    sub-int v5, v1, v5

    if-ge v2, v5, :cond_16

    const/16 v5, 0x1f

    .line 160
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    const/16 v2, 0x1f

    .line 161
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_17
    if-ge v1, v2, :cond_19

    move v2, v3

    .line 162
    :goto_6
    iget v5, v0, Lk0/ck;->j:I

    sub-int/2addr v5, v1

    if-ge v2, v5, :cond_18

    const/16 v5, 0x1e

    .line 163
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/16 v2, 0x1e

    .line 164
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 165
    :cond_19
    :goto_7
    iput v1, v0, Lk0/ck;->j:I

    goto/16 :goto_14

    .line 166
    :cond_1a
    iget v2, v0, Lk0/ck;->i:I

    if-eq v1, v2, :cond_2b

    if-le v1, v2, :cond_1c

    move v2, v3

    .line 167
    :goto_8
    iget v5, v0, Lk0/ck;->i:I

    sub-int v5, v1, v5

    if-ge v2, v5, :cond_1b

    .line 168
    invoke-static {v10, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 169
    :cond_1b
    invoke-static {v10, v4}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_1c
    if-ge v1, v2, :cond_1e

    move v2, v3

    .line 170
    :goto_9
    iget v5, v0, Lk0/ck;->i:I

    sub-int/2addr v5, v1

    if-ge v2, v5, :cond_1d

    const/16 v5, 0x8

    .line 171
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    const/16 v5, 0x8

    .line 172
    invoke-static {v5, v4}, Ll0/b0;->l0(II)V

    .line 173
    :cond_1e
    :goto_a
    iput v1, v0, Lk0/ck;->i:I

    goto/16 :goto_14

    :sswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 174
    aget-byte v2, v1, v2

    const/16 v5, 0xff

    and-int/2addr v2, v5

    iput v2, v0, Lk0/ck;->e:I

    add-int/lit8 v2, p2, 0x3

    .line 175
    aget-byte v1, v1, v2

    move v2, v3

    .line 176
    :goto_b
    iget-object v5, v0, Lk0/ck;->g:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_20

    .line 177
    iget v6, v0, Lk0/ck;->e:I

    aget-object v7, v5, v2

    aget v7, v7, v3

    if-ne v6, v7, :cond_1f

    if-eqz v6, :cond_20

    .line 178
    iput v2, v0, Lk0/ck;->f:I

    goto :goto_c

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    :goto_c
    const/16 v6, 0xff

    and-int/2addr v1, v6

    if-eqz v1, :cond_21

    .line 179
    array-length v1, v5

    if-ge v2, v1, :cond_2b

    .line 180
    aget-object v1, v5, v2

    aget v1, v1, v4

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    .line 181
    :cond_21
    iget v1, v0, Lk0/ck;->f:I

    array-length v2, v5

    if-ge v1, v2, :cond_22

    const/16 v2, 0xff

    if-eq v1, v2, :cond_23

    .line 182
    aget-object v1, v5, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_22
    const/16 v2, 0xff

    .line 183
    :cond_23
    :goto_d
    iput v2, v0, Lk0/ck;->f:I

    goto/16 :goto_14

    :sswitch_c
    const/16 v2, 0x92

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x2

    .line 184
    aget-byte v8, v1, v6

    shr-int/2addr v8, v10

    and-int/2addr v8, v4

    aput v8, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v5, v4, [I

    .line 185
    aget-byte v6, v1, v6

    shr-int/2addr v6, v3

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x3

    .line 186
    aget-byte v8, v1, v6

    shr-int/2addr v8, v10

    and-int/2addr v8, v4

    aput v8, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v5, v4, [I

    .line 187
    aget-byte v8, v1, v6

    const/4 v9, 0x6

    shr-int/2addr v8, v9

    and-int/2addr v8, v4

    aput v8, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v5, v4, [I

    .line 188
    aget-byte v8, v1, v6

    shr-int/lit8 v7, v8, 0x5

    and-int/2addr v7, v4

    aput v7, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v5, v4, [I

    .line 189
    aget-byte v1, v1, v6

    shr-int/2addr v1, v13

    and-int/2addr v1, v4

    aput v1, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 190
    :sswitch_d
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v7, 0x419

    new-array v8, v9, [I

    const/16 v12, 0xc

    aput v12, v8, v3

    add-int/lit8 v12, p2, 0x4

    aget-byte v14, v1, v12

    shr-int/lit8 v10, v14, 0x7

    and-int/2addr v10, v4

    aput v10, v8, v4

    invoke-static {v2, v7, v8, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 191
    aget-byte v7, v1, v12

    shr-int/2addr v7, v3

    and-int/2addr v7, v4

    aget-byte v8, v1, v12

    shr-int/2addr v8, v4

    and-int/2addr v8, v4

    aget-byte v10, v1, v12

    shr-int/2addr v10, v9

    and-int/2addr v10, v4

    invoke-static {v7, v8, v10}, Ll0/c0;->N1(III)V

    .line 192
    aget-byte v7, v1, v12

    shr-int/2addr v7, v3

    and-int/2addr v7, v4

    .line 193
    aget-byte v1, v1, v12

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    shl-int/2addr v7, v11

    const/16 v8, 0x8

    and-int/2addr v7, v8

    shl-int/2addr v1, v13

    and-int/2addr v1, v5

    or-int/2addr v1, v7

    .line 194
    sget v5, Lu0/b;->w:I

    const/4 v7, 0x6

    shl-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v1, v5

    const/16 v5, 0x419

    new-array v7, v9, [I

    const/16 v8, 0xb

    aput v8, v7, v3

    aput v1, v7, v4

    .line 195
    invoke-static {v2, v5, v7, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_14

    :sswitch_e
    const/16 v2, 0x7a

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x2

    .line 196
    aget-byte v6, v1, v6

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x4

    .line 197
    aget-byte v6, v1, v6

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x6

    .line 198
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x7

    .line 199
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x8

    .line 200
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0x9

    .line 201
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0xa

    .line 202
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v5, v4, [I

    add-int/lit8 v6, p2, 0xb

    .line 203
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v4, [I

    add-int/lit8 v5, p2, 0xc

    .line 204
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xd

    aget-byte v1, v1, v6

    const/16 v6, 0xff

    and-int/2addr v1, v6

    or-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_f
    add-int/lit8 v2, p2, 0x4

    .line 205
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 206
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_24

    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 207
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 208
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_24
    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 209
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 210
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_e
    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 211
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 212
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v4

    aput v5, v2, v3

    .line 213
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v4

    aput v1, v2, v3

    .line 214
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :sswitch_10
    add-int/lit8 v2, p2, 0x4

    .line 215
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x5

    .line 216
    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v2, v6

    .line 217
    iput v2, v0, Lk0/ck;->c:I

    move v2, v3

    .line 218
    :goto_f
    iget-object v6, v0, Lk0/ck;->d:[[I

    array-length v7, v6

    if-ge v2, v7, :cond_26

    .line 219
    iget v7, v0, Lk0/ck;->c:I

    aget-object v8, v6, v2

    aget v8, v8, v3

    if-ne v7, v8, :cond_25

    if-eqz v7, :cond_26

    .line 220
    iput v2, v0, Lk0/ck;->b:I

    goto :goto_10

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    :goto_10
    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v4, :cond_27

    .line 221
    array-length v5, v6

    if-ge v2, v5, :cond_2a

    .line 222
    aget-object v2, v6, v2

    aget v2, v2, v4

    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto :goto_12

    :cond_27
    if-nez v5, :cond_2a

    .line 223
    iget v2, v0, Lk0/ck;->b:I

    array-length v3, v6

    if-ge v2, v3, :cond_28

    const/16 v3, 0xff

    if-eq v2, v3, :cond_29

    .line 224
    aget-object v2, v6, v2

    aget v2, v2, v4

    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    goto :goto_11

    :cond_28
    const/16 v3, 0xff

    .line 225
    :cond_29
    :goto_11
    iput v3, v0, Lk0/ck;->b:I

    goto :goto_13

    :cond_2a
    :goto_12
    const/16 v3, 0xff

    :goto_13
    add-int/lit8 v2, p2, 0x9

    .line 226
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v5, 0x8

    add-int/lit8 v5, p2, 0x8

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v4, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_14

    .line 227
    :sswitch_11
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_14

    .line 228
    :sswitch_12
    iget v2, v0, Lk0/ck;->h:I

    add-int/lit8 v5, p2, 0x2

    aget-byte v6, v1, v5

    if-eq v2, v6, :cond_2b

    .line 229
    aget-byte v2, v1, v5

    iput v2, v0, Lk0/ck;->h:I

    .line 230
    aget-byte v1, v1, v5

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_14

    :pswitch_1
    const/16 v1, 0x35

    .line 231
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 232
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :pswitch_2
    const/16 v1, 0x4c

    .line 233
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 234
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :pswitch_3
    const/16 v1, 0x36

    .line 235
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 236
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :pswitch_4
    const/16 v1, 0x4a

    .line 237
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 238
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :pswitch_5
    const/16 v1, 0x4b

    .line 239
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 240
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    :cond_2b
    :goto_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x20 -> :sswitch_12
        -0x10 -> :sswitch_11
        0x11 -> :sswitch_10
        0x12 -> :sswitch_f
        0x18 -> :sswitch_e
        0x1a -> :sswitch_d
        0x1f -> :sswitch_c
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x31 -> :sswitch_9
        0x32 -> :sswitch_8
        0x34 -> :sswitch_7
        0x36 -> :sswitch_6
        0x41 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x5e -> :sswitch_2
        0x61 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ck;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ck;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ck;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ck;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ck;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb5

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

    const/16 v2, 0xe3

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v7, :cond_6

    const/4 v9, 0x7

    const/4 v10, 0x6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    const/16 v11, 0x9

    const/16 v12, 0x8

    if-eq v0, v4, :cond_3

    const/16 v13, 0x3eb

    if-eq v0, v13, :cond_2

    const/16 v13, 0x405

    if-eq v0, v13, :cond_0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0, v1, v6}, Lk0/lt;->T2([II)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2
    aget v13, v1, v7

    mul-int/lit16 v13, v13, 0x3ff

    invoke-static {}, La/f;->w()I

    move-result v14

    div-int/2addr v13, v14

    .line 3
    aget v14, v1, v6

    mul-int/lit16 v14, v14, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v15

    div-int/2addr v14, v15

    .line 4
    aget v15, v1, v8

    const/16 v16, 0x2c

    if-nez v15, :cond_1

    new-array v1, v11, [I

    aput v2, v1, v8

    aput v10, v1, v7

    aput v16, v1, v6

    aput v7, v1, v5

    shr-int/lit8 v2, v13, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v2, v13, 0xff

    aput v2, v1, v3

    shr-int/lit8 v2, v14, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    and-int/lit16 v2, v14, 0xff

    aput v2, v1, v9

    aput v8, v1, v12

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget v1, v1, v8

    if-ne v1, v7, :cond_8

    new-array v1, v11, [I

    aput v2, v1, v8

    aput v10, v1, v7

    aput v16, v1, v6

    aput v8, v1, v5

    shr-int/lit8 v2, v13, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v2, v13, 0xff

    aput v2, v1, v3

    shr-int/lit8 v2, v14, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    and-int/lit16 v2, v14, 0xff

    aput v2, v1, v9

    aput v8, v1, v12

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    new-array v1, v3, [I

    .line 8
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    const/16 v13, 0xd

    new-array v13, v13, [I

    aput v2, v13, v8

    const/16 v2, 0xa

    aput v2, v13, v7

    const/16 v14, 0x4e

    aput v14, v13, v6

    .line 9
    aget v8, v1, v8

    aput v8, v13, v5

    aget v7, v1, v7

    aput v7, v13, v4

    aget v6, v1, v6

    aput v6, v13, v3

    aget v5, v1, v5

    aput v5, v13, v10

    aget v4, v1, v4

    aput v4, v13, v9

    aget v3, v1, v3

    aput v3, v13, v12

    aget v3, v1, v10

    aput v3, v13, v11

    aget v3, v1, v9

    aput v3, v13, v2

    const/16 v2, 0xb

    aget v3, v1, v12

    aput v3, v13, v2

    const/16 v2, 0xc

    aget v1, v1, v11

    aput v1, v13, v2

    invoke-static {v13}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    new-array v9, v9, [I

    aput v2, v9, v8

    aput v4, v9, v7

    const/16 v2, 0x5f

    aput v2, v9, v6

    .line 10
    aget v2, v1, v8

    aput v2, v9, v5

    aget v2, v1, v7

    aput v2, v9, v4

    aget v2, v1, v6

    aput v2, v9, v3

    aget v1, v1, v5

    aput v1, v9, v10

    invoke-static {v9}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    new-array v9, v9, [I

    aput v2, v9, v8

    aput v4, v9, v7

    const/16 v2, 0x6f

    aput v2, v9, v6

    .line 11
    aget v2, v1, v8

    aput v2, v9, v5

    aget v2, v1, v7

    aput v2, v9, v4

    aget v2, v1, v6

    aput v2, v9, v3

    aget v1, v1, v5

    aput v1, v9, v10

    invoke-static {v9}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    new-array v3, v3, [I

    aput v2, v3, v8

    aput v6, v3, v7

    const/16 v2, 0x1b

    aput v2, v3, v6

    .line 12
    aget v2, v1, v8

    aput v2, v3, v5

    aget v1, v1, v7

    aput v1, v3, v4

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    new-array v3, v3, [I

    aput v2, v3, v8

    aput v6, v3, v7

    const/16 v2, 0x3d

    aput v2, v3, v6

    .line 13
    aget v2, v1, v8

    aput v2, v3, v5

    aget v1, v1, v7

    aput v1, v3, v4

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_8
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x1
    .end array-data
.end method

.method public final d3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
