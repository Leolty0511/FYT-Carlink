.class public Lk0/j3;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/j3;->b:I

    const/16 v1, 0xff

    .line 3
    iput v1, p0, Lk0/j3;->d:I

    const/16 v1, 0xb

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

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/j3;->e:[[I

    .line 5
    new-instance v0, Lk0/j3$a;

    invoke-direct {v0, p0}, Lk0/j3$a;-><init>(Lk0/j3;)V

    iput-object v0, p0, Lk0/j3;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/j3$b;

    invoke-direct {v0, p0}, Lk0/j3$b;-><init>(Lk0/j3;)V

    iput-object v0, p0, Lk0/j3;->g:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xd
        0x20
    .end array-data

    :array_9
    .array-data 4
        0xe
        0x21
    .end array-data

    :array_a
    .array-data 4
        0xf
        0x1d
    .end array-data
.end method

.method public static a3()V
    .locals 18

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
    const/16 v0, 0xd

    aput v0, v1, v2

    const/16 v3, 0xd2

    const/4 v5, 0x1

    aput v3, v1, v5

    const/4 v3, 0x2

    .line 2
    invoke-static {}, Lk0/j3;->b3()B

    move-result v6

    aput v6, v1, v3

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v6, 0x7a

    const/16 v7, 0x68

    const/16 v8, 0xb

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x4

    const/16 v16, 0xa

    if-eq v3, v5, :cond_a

    const/16 v17, 0xc

    if-eq v3, v15, :cond_7

    if-eq v3, v14, :cond_4

    if-eq v3, v13, :cond_1

    if-eq v3, v12, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_7

    :cond_2
    const/16 v3, 0x54

    aput v3, v1, v11

    .line 5
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x2710

    .line 6
    div-int/lit16 v5, v3, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v15

    .line 7
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    rem-int/lit16 v6, v3, 0x3e8

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    div-int/lit8 v6, v6, 0xa

    :goto_1
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v10

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 8
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v5, v3, 0x3c

    .line 10
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v13

    .line 11
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v12

    .line 12
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v8

    .line 13
    rem-int/lit8 v3, v3, 0x3c

    .line 14
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    .line 15
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v0

    goto/16 :goto_7

    .line 16
    :cond_4
    sget v3, Ld1/d;->c:I

    if-ne v3, v5, :cond_10

    .line 17
    sget v3, Ld1/d;->e:I

    div-int/lit8 v4, v3, 0xa

    if-lez v4, :cond_5

    .line 18
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v11

    .line 19
    :cond_5
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v15

    const/16 v3, 0x2d

    aput v3, v1, v10

    .line 20
    sget v3, Ld1/d;->d:I

    div-int/lit8 v3, v3, 0x64

    .line 21
    div-int/lit16 v4, v3, 0x2710

    if-lez v4, :cond_6

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 22
    :cond_6
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v9

    .line 23
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    const/16 v4, 0x2e

    aput v4, v1, v12

    .line 24
    rem-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v16

    .line 25
    rem-int/lit8 v3, v3, 0xa

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    const/16 v3, 0x4d

    aput v3, v1, v17

    aput v7, v1, v0

    const/16 v0, 0xe

    aput v6, v1, v0

    goto/16 :goto_7

    .line 26
    :cond_7
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_8

    goto/16 :goto_7

    :cond_8
    const/16 v3, 0x54

    aput v3, v1, v11

    .line 27
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x2710

    .line 28
    div-int/lit16 v5, v3, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v15

    .line 29
    rem-int/lit8 v5, v3, 0x64

    div-int/lit8 v5, v5, 0xa

    rem-int/lit16 v6, v3, 0x3e8

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v6, v6, 0xa

    :goto_2
    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v10

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v14

    .line 30
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v9

    .line 31
    sget v3, Lo0/e;->r:I

    div-int/lit8 v5, v3, 0x3c

    .line 32
    rem-int/lit8 v5, v5, 0x3c

    aput v4, v1, v13

    .line 33
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v12

    .line 34
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    aput v4, v1, v8

    .line 35
    rem-int/lit8 v3, v3, 0x3c

    .line 36
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    .line 37
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v0

    goto/16 :goto_7

    .line 38
    :cond_a
    sget v0, Lw0/d;->h:I

    const/high16 v3, 0x10000

    sub-int v17, v0, v3

    if-eqz v17, :cond_e

    sub-int v2, v0, v3

    if-eq v5, v2, :cond_e

    const/4 v2, 0x2

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_b

    goto :goto_5

    .line 39
    :cond_b
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x2710

    if-nez v2, :cond_c

    div-int/lit16 v2, v0, 0x2710

    add-int/2addr v2, v4

    goto :goto_3

    :cond_c
    div-int/lit16 v2, v0, 0x2710

    add-int/lit8 v2, v2, 0x30

    :goto_3
    aput v2, v1, v11

    .line 40
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    if-nez v2, :cond_d

    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v4

    goto :goto_4

    :cond_d
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x30

    :goto_4
    aput v2, v1, v15

    .line 41
    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    .line 42
    rem-int/lit8 v2, v0, 0x64

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v14

    .line 43
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v9

    const/16 v0, 0x4b

    aput v0, v1, v13

    aput v7, v1, v12

    aput v6, v1, v16

    goto :goto_7

    .line 44
    :cond_e
    :goto_5
    sget v0, Lw0/d;->i:I

    div-int/lit16 v2, v0, 0x2710

    if-nez v2, :cond_f

    div-int/lit16 v2, v0, 0x2710

    add-int/2addr v2, v4

    goto :goto_6

    :cond_f
    div-int/lit16 v2, v0, 0x2710

    add-int/lit8 v2, v2, 0x30

    :goto_6
    aput v2, v1, v11

    .line 45
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v15

    .line 46
    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v10

    const/16 v2, 0x2e

    aput v2, v1, v14

    .line 47
    rem-int/lit8 v2, v0, 0x64

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v9

    .line 48
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v13

    const/16 v0, 0x4d

    aput v0, v1, v12

    aput v7, v1, v16

    aput v6, v1, v8

    :cond_10
    :goto_7
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0xf

    :goto_8
    if-ge v3, v2, :cond_11

    add-int/lit8 v4, v3, 0x1

    .line 49
    aget v3, v1, v3

    int-to-byte v3, v3

    aput v3, v0, v4

    move v3, v4

    goto :goto_8

    .line 50
    :cond_11
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk0/j3;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/j3;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/j3;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/j3;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/j3;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0x72

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v0, :cond_d

    const/16 v0, 0x73

    if-eq p3, v0, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    new-array v0, v3, [I

    shr-int/lit8 v4, p3, 0x6

    and-int/2addr v4, v3

    aput v4, v0, v2

    const/16 v4, 0xa

    .line 3
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v3

    aput v5, v0, v2

    const/16 v5, 0xc

    .line 4
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v3

    aput v5, v0, v2

    const/16 v5, 0xd

    .line 5
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    const/4 v5, 0x2

    shr-int/2addr p3, v5

    and-int/2addr p3, v3

    aput p3, v0, v2

    const/16 p3, 0xe

    .line 6
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 7
    aget-byte p3, p1, p3

    and-int/lit16 v0, p3, 0xff

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    const/16 v6, 0x34

    const/16 v7, 0xb

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_3

    new-array v0, v3, [I

    aput v2, v0, v2

    .line 8
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    aput v3, v0, v2

    .line 9
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array v5, v3, [I

    aput v0, v5, v2

    .line 10
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v0, v3, [I

    aput v2, v0, v2

    .line 11
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :cond_3
    :goto_1
    const/16 v0, 0x10

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 12
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v5, v3, [I

    shr-int/lit8 p3, p3, 0x4

    and-int/2addr p3, v3

    aput p3, v5, v2

    .line 13
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 14
    aget-byte v0, p1, p3

    add-int/lit8 v5, p2, 0x5

    .line 15
    aget-byte v6, p1, v5

    const-string v7, "persist.fyt.reversetemp"

    .line 16
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    aget-byte v0, p1, v5

    .line 18
    aget-byte v6, p1, p3

    :cond_4
    and-int/lit16 p3, v0, 0xff

    const/4 v0, -0x3

    const/4 v5, -0x2

    const/4 v7, -0x1

    const/16 v8, 0x1b

    if-eqz p3, :cond_7

    if-eq p3, v3, :cond_6

    if-eq p3, v1, :cond_5

    shr-int/lit8 v9, p3, 0x7

    and-int/2addr v9, v3

    and-int/lit8 p3, p3, 0x7f

    mul-int/2addr p3, v4

    mul-int/lit8 v9, v9, 0x5

    add-int/2addr p3, v9

    new-array v9, v3, [I

    aput p3, v9, v2

    .line 19
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array p3, v3, [I

    aput v0, p3, v2

    .line 20
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array p3, v3, [I

    aput v5, p3, v2

    .line 21
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array p3, v3, [I

    aput v7, p3, v2

    .line 22
    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 p3, v6, 0xff

    const/16 v6, 0x1c

    if-eqz p3, :cond_a

    if-eq p3, v3, :cond_9

    if-eq p3, v1, :cond_8

    shr-int/lit8 v0, p3, 0x7

    and-int/2addr v0, v3

    and-int/lit8 p3, p3, 0x7f

    mul-int/2addr p3, v4

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr p3, v0

    new-array v0, v3, [I

    aput p3, v0, v2

    .line 23
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array p3, v3, [I

    aput v0, p3, v2

    .line 24
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array p3, v3, [I

    aput v5, p3, v2

    .line 25
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array p3, v3, [I

    aput v7, p3, v2

    .line 26
    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 p3, p2, 0x6

    .line 27
    aget-byte p3, p1, p3

    const/16 v0, 0x14

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 28
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x5

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 29
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v5, v3, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v6, v3

    aput v6, v5, v2

    .line 30
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v5, v3, [I

    and-int/lit8 p3, p3, 0x7

    aput p3, v5, v2

    .line 31
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x8

    .line 32
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0x80

    if-nez p3, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    .line 33
    :goto_4
    iget-object p3, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, p3, Lk0/mt;->g:I

    .line 34
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 35
    aget-byte p3, p1, p2

    and-int/lit8 p3, p3, 0x7f

    .line 36
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    const/16 p2, 0x80

    if-lt p1, p2, :cond_13

    const/16 p1, 0x28

    if-lt p3, p1, :cond_c

    sub-int/2addr p3, p1

    mul-int/2addr p3, v4

    add-int/lit16 p3, p3, 0x3e8

    goto :goto_5

    :cond_c
    sub-int/2addr p1, p3

    mul-int/2addr p1, v4

    rsub-int p3, p1, 0x3e8

    :goto_5
    const/16 p1, 0x258

    if-le p3, p1, :cond_13

    .line 37
    invoke-static {p3}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    .line 38
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/lit8 p3, p2, 0x7

    .line 39
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x6

    aget-byte v0, p1, v0

    const/16 v4, 0x1e78

    invoke-static {p3, v0, v2, v4}, Lk0/qt;->l(IIZI)V

    add-int/lit8 p3, p2, 0x4

    .line 40
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    iput p3, p0, Lk0/j3;->d:I

    move p3, v2

    .line 41
    :goto_6
    iget-object v0, p0, Lk0/j3;->e:[[I

    array-length v4, v0

    if-ge p3, v4, :cond_f

    .line 42
    iget v4, p0, Lk0/j3;->d:I

    aget-object v5, v0, p3

    aget v5, v5, v2

    if-ne v4, v5, :cond_e

    if-eqz v4, :cond_f

    .line 43
    iput p3, p0, Lk0/j3;->c:I

    goto :goto_7

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 44
    :cond_f
    :goto_7
    iget v4, p0, Lk0/j3;->d:I

    if-eqz v4, :cond_10

    .line 45
    array-length v4, v0

    if-ge p3, v4, :cond_12

    .line 46
    aget-object p3, v0, p3

    aget p3, p3, v3

    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 47
    :cond_10
    iget p3, p0, Lk0/j3;->c:I

    array-length v2, v0

    if-ge p3, v2, :cond_11

    if-eq p3, v1, :cond_11

    .line 48
    aget-object p3, v0, p3

    aget p3, p3, v3

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    .line 49
    :cond_11
    iput v1, p0, Lk0/j3;->c:I

    :cond_12
    :goto_8
    add-int/lit8 p3, p2, 0x8

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lk0/j3;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 51
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lk0/j3;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0xa

    .line 52
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lk0/j3;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0xb

    .line 53
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lk0/j3;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0xc

    .line 54
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lk0/j3;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0xd

    .line 55
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lk0/j3;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0xe

    .line 56
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lk0/j3;->d3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0xf

    .line 57
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lk0/j3;->d3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    :cond_13
    :goto_9
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/j3;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/j3;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/j3;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/j3;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/j3;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 0

    return-void
.end method

.method public c3()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1
    iput v2, p0, Lk0/j3;->b:I

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
    invoke-static {}, Lk0/j3;->b3()B

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

.method public final d3(I)I
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x19

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 p1, 0xf

    :cond_0
    return p1
.end method
