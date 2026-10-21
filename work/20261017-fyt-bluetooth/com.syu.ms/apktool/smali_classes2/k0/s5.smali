.class public Lk0/s5;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/s5;->b:I

    .line 3
    iput v0, p0, Lk0/s5;->d:I

    const/16 v1, 0xe

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/s5;->e:[[I

    .line 5
    new-instance v0, Lk0/s5$a;

    invoke-direct {v0, p0}, Lk0/s5$a;-><init>(Lk0/s5;)V

    iput-object v0, p0, Lk0/s5;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/s5$b;

    invoke-direct {v0, p0}, Lk0/s5$b;-><init>(Lk0/s5;)V

    iput-object v0, p0, Lk0/s5;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/s5$c;

    invoke-direct {v0, p0}, Lk0/s5$c;-><init>(Lk0/s5;)V

    iput-object v0, p0, Lk0/s5;->h:Ljava/lang/Runnable;

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
        -0x1
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
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1c
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
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
    invoke-static {}, Lk0/s5;->b3()B

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x2e

    const/4 v8, 0x7

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x3

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/16 v14, 0xa

    const/16 v15, 0x30

    if-eq v3, v5, :cond_8

    const/4 v6, 0x5

    if-eq v3, v13, :cond_6

    if-eq v3, v12, :cond_3

    if-eq v3, v10, :cond_1

    if-eq v3, v9, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_7

    .line 5
    :cond_2
    sget v3, Lu0/b;->r3:I

    div-int/lit8 v5, v3, 0x64

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v11

    .line 6
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v13

    .line 7
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v6

    aput v4, v1, v12

    .line 8
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v8

    .line 9
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v10

    .line 10
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v9

    .line 11
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_7

    .line 12
    :cond_3
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_12

    .line 13
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_4

    .line 14
    div-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v15

    aput v4, v1, v11

    .line 15
    :cond_4
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v13

    const/16 v3, 0x2d

    aput v3, v1, v6

    .line 16
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 17
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_5

    add-int/2addr v4, v15

    aput v4, v1, v12

    .line 18
    :cond_5
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v15

    aput v4, v1, v8

    .line 19
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v15

    aput v4, v1, v10

    aput v7, v1, v9

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

    goto/16 :goto_7

    .line 22
    :cond_6
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_7

    goto/16 :goto_7

    .line 23
    :cond_7
    sget v3, Lo0/e;->B:I

    div-int/lit8 v5, v3, 0x64

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v11

    .line 24
    div-int/lit8 v5, v3, 0xa

    rem-int/2addr v5, v14

    add-int/2addr v5, v15

    aput v5, v1, v13

    .line 25
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v6

    aput v4, v1, v12

    .line 26
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v8

    .line 27
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v10

    .line 28
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v14

    add-int/2addr v4, v15

    aput v4, v1, v9

    .line 29
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_7

    .line 30
    :cond_8
    sget v3, Lw0/d;->h:I

    const/high16 v16, 0x10000

    sub-int v17, v3, v16

    const/16 v18, 0x36

    if-eqz v17, :cond_e

    sub-int v0, v3, v16

    if-eq v5, v0, :cond_e

    sub-int v3, v3, v16

    if-ne v6, v3, :cond_9

    goto :goto_4

    :cond_9
    aput v15, v1, v11

    .line 31
    sget v0, Lw0/d;->j:I

    and-int/lit8 v3, v0, 0x3

    if-nez v3, :cond_a

    and-int/lit16 v3, v0, 0xff

    if-eqz v3, :cond_a

    aput v18, v1, v13

    goto :goto_1

    :cond_a
    and-int/lit16 v0, v0, 0xff

    .line 32
    rem-int/2addr v0, v12

    add-int/2addr v0, v15

    aput v0, v1, v13

    .line 33
    :goto_1
    aget v0, v1, v13

    if-nez v0, :cond_b

    aput v18, v1, v13

    .line 34
    :cond_b
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_c

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_2

    :cond_c
    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v15

    :goto_2
    aput v3, v1, v12

    .line 35
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    if-nez v3, :cond_d

    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v4

    goto :goto_3

    :cond_d
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v15

    :goto_3
    aput v3, v1, v8

    .line 36
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v10

    .line 37
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v9

    .line 38
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v14

    goto :goto_7

    :cond_e
    :goto_4
    aput v15, v1, v11

    .line 39
    sget v0, Lw0/d;->j:I

    and-int/lit8 v3, v0, 0x3

    if-nez v3, :cond_f

    and-int/lit16 v3, v0, 0xff

    if-eqz v3, :cond_f

    aput v18, v1, v13

    goto :goto_5

    :cond_f
    and-int/lit16 v0, v0, 0xff

    .line 40
    rem-int/2addr v0, v12

    add-int/2addr v0, v15

    aput v0, v1, v13

    .line 41
    :goto_5
    aget v0, v1, v13

    if-nez v0, :cond_10

    aput v18, v1, v13

    .line 42
    :cond_10
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_11

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_6

    :cond_11
    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v15

    :goto_6
    aput v3, v1, v12

    .line 43
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v15

    aput v3, v1, v8

    .line 44
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v10

    aput v7, v1, v9

    .line 45
    rem-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v14

    :cond_12
    :goto_7
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_8
    if-ge v2, v3, :cond_13

    add-int/lit8 v4, v2, 0x1

    .line 46
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_8

    .line 47
    :cond_13
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


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/s5;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->h:I

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput v2, v0, Lk0/mt;->h:I

    .line 5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lk0/s5;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/s5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lk0/s5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/s5;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/s5;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    return-void
.end method

.method public U2([BII)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_5

    const/16 p3, 0x72

    if-eq v0, p3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    add-int/lit8 p2, p2, 0x4

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    iput p1, p0, Lk0/s5;->d:I

    const/4 p1, 0x0

    move p3, p1

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/s5;->e:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_2

    .line 5
    iget v1, p0, Lk0/s5;->d:I

    aget-object v2, v0, p3

    aget v2, v2, p1

    if-ne v1, v2, :cond_1

    if-eqz v1, :cond_2

    .line 6
    iput p3, p0, Lk0/s5;->c:I

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget v1, p0, Lk0/s5;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 8
    array-length p2, v0

    if-ge p3, p2, :cond_6

    .line 9
    aget-object p2, v0, p3

    aget p2, p2, v2

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 10
    :cond_3
    iget p1, p0, Lk0/s5;->c:I

    array-length p3, v0

    if-ge p1, p3, :cond_4

    if-eq p1, p2, :cond_4

    .line 11
    aget-object p1, v0, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 12
    :cond_4
    iput p2, p0, Lk0/s5;->c:I

    goto :goto_2

    .line 13
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/s5;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/s5;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/s5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/s5;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/s5;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/s5;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x2

    aput v0, p1, p3

    const/16 p3, 0x6d

    aput p3, p1, v0

    const/4 p3, 0x3

    .line 2
    aget p2, p2, p4

    int-to-byte p2, p2

    aput p2, p1, p3

    const/4 p2, 0x4

    aput p4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c3()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1
    iput v2, p0, Lk0/s5;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    const/16 v5, 0x20

    .line 2
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0xd

    aput v4, v1, v3

    const/16 v4, 0xd2

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    .line 3
    invoke-static {}, Lk0/s5;->b3()B

    move-result v6

    aput v6, v1, v4

    .line 4
    sget v4, Ly0/f;->i:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eq v4, v5, :cond_3

    sget v4, Ly0/f;->C0:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x56

    aput v5, v1, v7

    const/16 v5, 0x4f

    aput v5, v1, v2

    const/16 v2, 0x4c

    aput v2, v1, v6

    const/16 v2, 0xa

    if-lt v4, v2, :cond_2

    const/4 v5, 0x7

    .line 5
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    :cond_2
    const/16 v5, 0x8

    .line 6
    rem-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v4, 0x4d

    aput v4, v1, v7

    const/16 v4, 0x55

    aput v4, v1, v2

    const/16 v2, 0x54

    aput v2, v1, v6

    const/4 v2, 0x6

    const/16 v4, 0x45

    aput v4, v1, v2

    :goto_2
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 7
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
