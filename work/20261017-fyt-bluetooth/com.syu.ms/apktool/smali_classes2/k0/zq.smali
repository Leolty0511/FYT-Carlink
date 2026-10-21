.class public Lk0/zq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/zq;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
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

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/zq;->d:[[I

    .line 4
    new-instance v0, Lk0/zq$a;

    invoke-direct {v0, p0}, Lk0/zq$a;-><init>(Lk0/zq;)V

    iput-object v0, p0, Lk0/zq;->e:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x3e
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_b

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    const/16 v2, 0xa4

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    const/16 v1, 0xa2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v1, v3}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v0}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    const/16 v1, 0xa1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v1, v3}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1, v0}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v3

    const/4 v1, -0x2

    const/16 v2, 0xa0

    if-eq p1, v1, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v2, v3}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v2, v0}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v3

    const/16 v1, 0xa5

    const/16 v2, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_b

    .line 14
    invoke-virtual {p0, v1, v0}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_b

    .line 16
    invoke-virtual {p0, v1, v3}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v3

    const/16 v1, 0xa7

    const/16 v2, 0x10

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_b

    .line 19
    invoke-virtual {p0, v1, v3}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_b

    .line 21
    invoke-virtual {p0, v1, v0}, Lk0/zq;->a3(II)V

    goto/16 :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v3

    const/16 v0, 0xf

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_b

    const/16 p1, 0xa3

    const/4 v0, 0x4

    .line 24
    invoke-virtual {p0, p1, v0}, Lk0/zq;->a3(II)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_b

    .line 26
    invoke-virtual {p0, v2, v3}, Lk0/zq;->a3(II)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v3

    const/16 v1, 0xa9

    const/16 v2, 0xd

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_b

    .line 29
    invoke-virtual {p0, v1, v3}, Lk0/zq;->a3(II)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_b

    .line 31
    invoke-virtual {p0, v1, v0}, Lk0/zq;->a3(II)V

    goto :goto_0

    .line 32
    :pswitch_8
    aget p1, p1, v3

    const/16 v1, 0xb

    if-eqz p1, :cond_9

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 34
    invoke-virtual {p0, v2, v3}, Lk0/zq;->a3(II)V

    goto :goto_0

    .line 35
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 36
    invoke-virtual {p0, v2, v0}, Lk0/zq;->a3(II)V

    goto :goto_0

    .line 37
    :pswitch_9
    aget p1, p1, v3

    const/16 v0, 0xa8

    const/16 v1, 0xa

    if-eqz p1, :cond_a

    .line 38
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 39
    invoke-virtual {p0, v0, v3}, Lk0/zq;->a3(II)V

    goto :goto_0

    .line 40
    :cond_a
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 41
    invoke-virtual {p0, v0, v3}, Lk0/zq;->a3(II)V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/zq;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    iput v1, v0, Lk0/mt;->p:I

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 16
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x38

    const/16 v10, 0xff

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x41

    const/16 v11, 0x10

    const/4 v12, 0x6

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x7d

    const/16 v13, 0xb

    if-eq v2, v3, :cond_18

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_17

    const/16 v3, 0x3e

    const/16 v14, 0xa

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    and-int/2addr v3, v10

    add-int/lit8 v6, p2, 0x3

    .line 3
    aget-byte v7, v1, v6

    and-int/2addr v7, v10

    add-int/lit8 v11, p2, 0x4

    .line 4
    aget-byte v12, v1, v11

    and-int/2addr v12, v10

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v13, v1, v4

    and-int/2addr v13, v10

    if-nez v3, :cond_0

    if-nez v7, :cond_0

    if-nez v12, :cond_0

    if-nez v13, :cond_0

    .line 6
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_1

    sget v8, Ll0/c0;->h:I

    if-ne v8, v7, :cond_1

    sget v8, Ll0/c0;->i:I

    if-ne v8, v12, :cond_1

    sget v8, Ll0/c0;->j:I

    if-eq v8, v13, :cond_2

    .line 8
    :cond_1
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_2

    .line 9
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 10
    sput v5, Ll0/c0;->k:I

    .line 11
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 13
    sput v7, Ll0/c0;->h:I

    .line 14
    sput v12, Ll0/c0;->i:I

    .line 15
    sput v13, Ll0/c0;->j:I

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 17
    aget-byte v2, v1, v6

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 18
    aget-byte v2, v1, v11

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 19
    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    add-int/lit8 v4, p2, 0x3

    .line 21
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x4

    .line 22
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    add-int/lit8 v12, p2, 0x5

    .line 23
    aget-byte v15, v1, v12

    and-int/2addr v15, v10

    add-int/lit8 v16, p2, 0x6

    .line 24
    aget-byte v6, v1, v16

    and-int/2addr v6, v10

    add-int/lit8 v17, p2, 0x7

    .line 25
    aget-byte v17, v1, v17

    new-array v10, v9, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v10, v8

    .line 26
    invoke-static {v14, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v9

    aput v14, v10, v8

    .line 27
    invoke-static {v13, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v9

    aput v13, v10, v8

    const/16 v13, 0xc

    .line 28
    invoke-static {v13, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x35

    new-array v13, v9, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v9

    aput v14, v13, v8

    .line 29
    invoke-static {v10, v13}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v9

    aput v13, v10, v8

    const/16 v13, 0xd

    .line 30
    invoke-static {v13, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v9

    aput v13, v10, v8

    .line 31
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v9

    aput v10, v3, v8

    .line 32
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v3, v8

    const/16 v2, 0xf

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v4

    if-eqz v2, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v7, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    move v3, v8

    move v4, v3

    :goto_1
    move v7, v4

    goto :goto_2

    :cond_3
    move v3, v8

    move v4, v9

    goto :goto_1

    :cond_4
    move v3, v8

    move v7, v3

    move v4, v9

    goto :goto_2

    :cond_5
    move v7, v8

    move v3, v9

    move v4, v3

    goto :goto_2

    :cond_6
    move v4, v8

    move v7, v4

    move v3, v9

    :goto_2
    new-array v10, v9, [I

    aput v3, v10, v8

    const/16 v3, 0x13

    .line 34
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v10, v9, [I

    aput v4, v10, v8

    .line 35
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v4, v9, [I

    aput v7, v4, v8

    .line 36
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v9, [I

    aput v2, v4, v8

    .line 37
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    const/16 v4, 0xff

    and-int/2addr v5, v4

    aput v5, v3, v8

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 39
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 40
    aget-byte v2, v1, v16

    and-int/lit16 v15, v2, 0xff

    .line 41
    aget-byte v1, v1, v12

    and-int/lit16 v6, v1, 0xff

    :cond_7
    const/16 v1, 0x1b

    if-eqz v15, :cond_a

    const/16 v2, 0xfe

    if-eq v15, v2, :cond_9

    if-eq v15, v4, :cond_8

    new-array v2, v9, [I

    aput v15, v2, v8

    .line 42
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 43
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v2, v9, [I

    const/4 v3, -0x1

    aput v3, v2, v8

    .line 44
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v9, [I

    const/4 v3, -0x2

    aput v3, v2, v8

    .line 45
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x1c

    if-eqz v6, :cond_d

    const/16 v2, 0xfe

    if-eq v6, v2, :cond_c

    const/16 v2, 0xff

    if-eq v6, v2, :cond_b

    new-array v2, v9, [I

    aput v6, v2, v8

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_b
    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_c
    new-array v2, v9, [I

    const/4 v3, -0x1

    aput v3, v2, v8

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    new-array v2, v9, [I

    const/4 v3, -0x2

    aput v3, v2, v8

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    const/16 v5, 0xff

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 51
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 52
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 53
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    move v5, v10

    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 55
    aget-byte v1, v1, v4

    and-int/2addr v2, v5

    .line 56
    iput v2, v0, Lk0/zq;->c:I

    move v2, v8

    .line 57
    :goto_4
    iget-object v4, v0, Lk0/zq;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_f

    .line 58
    iget v5, v0, Lk0/zq;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v8

    if-ne v5, v6, :cond_e

    if-eqz v5, :cond_f

    .line 59
    iput v2, v0, Lk0/zq;->b:I

    goto :goto_5

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 60
    :cond_f
    :goto_5
    iget v5, v0, Lk0/zq;->c:I

    if-eq v5, v14, :cond_13

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-eqz v1, :cond_10

    .line 61
    array-length v1, v4

    if-ge v2, v1, :cond_21

    .line 62
    aget-object v1, v4, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 63
    :cond_10
    iget v1, v0, Lk0/zq;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_11

    const/16 v2, 0xff

    if-eq v1, v2, :cond_12

    .line 64
    aget-object v1, v4, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_11
    const/16 v2, 0xff

    .line 65
    :cond_12
    :goto_6
    iput v2, v0, Lk0/zq;->b:I

    goto/16 :goto_9

    :cond_13
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v9, :cond_21

    .line 66
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v9, :cond_15

    .line 67
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.air.ActivityNewAir"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 68
    invoke-virtual/range {p0 .. p0}, Lk0/zq;->b3()V

    goto/16 :goto_9

    .line 69
    :cond_14
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.air.ActivityNewAir"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 70
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 72
    :cond_15
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 73
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    .line 74
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 75
    :cond_16
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 76
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {v12, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 78
    :cond_17
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_18
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v9, :cond_19

    goto/16 :goto_9

    :cond_19
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 80
    aget-byte v4, v1, v3

    shr-int/lit8 v2, v4, 0x3

    and-int/2addr v2, v9

    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    invoke-static {v2, v4, v8}, Ll0/c0;->a(III)V

    .line 81
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v7, [I

    aput v13, v5, v8

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    aput v1, v5, v9

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v1, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1a
    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 82
    aget-byte v7, v1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    .line 83
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 84
    aget-byte v6, v1, v6

    shr-int/2addr v6, v4

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 85
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x4

    aget-byte v10, v1, v10

    const/16 v12, 0xff

    and-int/2addr v10, v12

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 86
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x6

    aget-byte v10, v1, v10

    const/16 v12, 0xff

    and-int/2addr v10, v12

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x7

    .line 87
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    add-int/lit8 v10, p2, 0x8

    aget-byte v10, v1, v10

    const/16 v12, 0xff

    and-int/2addr v10, v12

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x9

    .line 88
    aget-byte v10, v1, v6

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v7

    add-int/lit8 v12, p2, 0xa

    aget-byte v13, v1, v12

    const/16 v14, 0xff

    and-int/2addr v13, v14

    or-int/2addr v10, v13

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 89
    aget-byte v2, v1, v6

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v7

    aget-byte v3, v1, v12

    and-int/2addr v3, v14

    or-int/2addr v2, v3

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1b

    const/high16 v3, 0x10000

    sub-int/2addr v3, v2

    rsub-int v2, v3, 0x3e8

    goto :goto_7

    :cond_1b
    add-int/lit16 v2, v2, 0x3e8

    .line 90
    :goto_7
    invoke-static {v2}, Lu0/d;->B3(I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0xb

    .line 91
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    const/high16 v10, 0xff0000

    and-int/2addr v6, v10

    add-int/lit8 v10, p2, 0xc

    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v7

    or-int/2addr v6, v10

    add-int/lit8 v10, p2, 0xd

    aget-byte v10, v1, v10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0xe

    .line 92
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xf

    aget-byte v7, v1, v7

    const/16 v10, 0xff

    and-int/2addr v7, v10

    or-int/2addr v6, v7

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x10

    .line 93
    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x11

    .line 94
    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x13

    .line 95
    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x12

    .line 96
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_9

    :cond_1c
    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 97
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 98
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 99
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 100
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 101
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 102
    aget-byte v1, v1, v3

    const/16 v3, 0x1e00

    const/16 v4, 0x16a8

    .line 103
    invoke-static {v1, v2, v3, v8, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_9

    :cond_1e
    const/4 v3, 0x3

    add-int/lit8 v2, p2, 0x2

    .line 104
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x6a4

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 106
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_20

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 107
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 108
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_20
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 109
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 110
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 111
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x3

    .line 112
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 113
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_21
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/zq;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x72

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
    .locals 1

    if-eqz p1, :cond_0

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

    const/16 p3, 0x83

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7d

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.ActivityNewAir"

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
