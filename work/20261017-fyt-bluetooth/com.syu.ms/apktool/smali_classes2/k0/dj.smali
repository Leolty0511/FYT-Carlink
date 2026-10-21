.class public Lk0/dj;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static h:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/dj;->c:I

    const/4 v1, 0x3

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

    iput-object v1, p0, Lk0/dj;->d:[[I

    .line 4
    iput v0, p0, Lk0/dj;->f:I

    .line 5
    iput v0, p0, Lk0/dj;->g:I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1e
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->l:I

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_c

    const/16 v7, 0x13

    if-eq v2, v7, :cond_5

    const/16 v3, 0x21

    if-eq v2, v3, :cond_1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 4
    iput v1, v0, Lk0/dj;->c:I

    move v2, v5

    .line 5
    :goto_0
    iget-object v3, v0, Lk0/dj;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 6
    iget v4, v0, Lk0/dj;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_2

    if-eqz v4, :cond_3

    .line 7
    iput v2, v0, Lk0/dj;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_17

    .line 8
    array-length v1, v3

    if-ge v2, v1, :cond_4

    .line 9
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 10
    :cond_4
    iget-object v1, v0, Lk0/dj;->d:[[I

    aget-object v1, v1, v2

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, p2, 0x3

    .line 12
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, p2, 0x4

    .line 13
    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, p2, 0x5

    .line 14
    aget-byte v11, v1, v10

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, p2, 0x6

    .line 15
    aget-byte v13, v1, v12

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, p2, 0x7

    .line 16
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xc

    new-array v4, v6, [I

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x3

    aput v2, v4, v5

    .line 17
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v6, [I

    shr-int/lit8 v15, v8, 0x5

    and-int/2addr v15, v6

    aput v15, v4, v5

    .line 18
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v4, v6, [I

    shr-int/2addr v8, v6

    and-int/2addr v8, v6

    aput v8, v4, v5

    .line 19
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v9, 0x4

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    move v4, v5

    :goto_2
    move v8, v4

    :goto_3
    move v15, v8

    goto :goto_4

    :pswitch_0
    move v4, v6

    goto :goto_2

    :pswitch_1
    move v15, v5

    move v4, v6

    move v8, v4

    goto :goto_4

    :pswitch_2
    move v8, v5

    move v4, v6

    move v15, v4

    goto :goto_4

    :pswitch_3
    move v8, v5

    move v15, v8

    move v4, v6

    goto :goto_4

    :pswitch_4
    move v4, v5

    move v8, v6

    goto :goto_3

    :pswitch_5
    move v4, v5

    move v15, v4

    move v8, v6

    goto :goto_4

    :pswitch_6
    move v4, v5

    move v8, v4

    move v15, v6

    :goto_4
    const/16 v3, 0x12

    new-array v7, v6, [I

    aput v4, v7, v5

    .line 20
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    aput v8, v3, v5

    const/16 v4, 0x13

    .line 21
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    aput v15, v3, v5

    const/16 v4, 0x14

    .line 22
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 23
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    shr-int/lit8 v4, v9, 0x0

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v5

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 25
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    aget-byte v2, v1, v12

    and-int/lit16 v11, v2, 0xff

    .line 27
    aget-byte v1, v1, v10

    and-int/lit16 v13, v1, 0xff

    :cond_6
    const/4 v1, -0x3

    const/4 v2, -0x2

    const/16 v3, 0x24

    if-eqz v11, :cond_8

    if-eq v11, v3, :cond_7

    new-array v4, v6, [I

    aput v11, v4, v5

    const/16 v7, 0x1b

    .line 28
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_7
    const/16 v7, 0x1b

    new-array v4, v6, [I

    aput v1, v4, v5

    .line 29
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_8
    const/16 v7, 0x1b

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 30
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v4, 0x1c

    if-eqz v13, :cond_a

    if-eq v13, v3, :cond_9

    new-array v1, v6, [I

    aput v13, v1, v5

    .line 31
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_9
    new-array v2, v6, [I

    aput v1, v2, v5

    .line 32
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_a
    new-array v1, v6, [I

    aput v2, v1, v5

    .line 33
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :goto_6
    and-int/lit8 v1, v14, 0x3f

    const/16 v2, 0x80

    and-int/lit16 v3, v14, 0x80

    if-ne v3, v2, :cond_b

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    goto :goto_7

    :cond_b
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    .line 34
    :goto_7
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_c

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x3

    .line 36
    aget-byte v3, v1, v3

    add-int/lit8 v3, p2, 0x4

    .line 37
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 38
    iget v4, v0, Lk0/dj;->f:I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v6

    if-eq v4, v7, :cond_e

    .line 39
    iput v7, v0, Lk0/dj;->f:I

    if-ne v7, v6, :cond_d

    .line 40
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_8

    .line 41
    :cond_d
    invoke-static {v5}, Lk0/qt;->a(I)V

    .line 42
    :cond_e
    :goto_8
    iget v4, v0, Lk0/dj;->g:I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v6

    if-eq v4, v7, :cond_10

    .line 43
    iput v7, v0, Lk0/dj;->g:I

    if-ne v7, v6, :cond_f

    .line 44
    invoke-static {v6}, Lk0/qt;->b(I)V

    goto :goto_9

    .line 45
    :cond_f
    invoke-static {v5}, Lk0/qt;->b(I)V

    :cond_10
    :goto_9
    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    .line 46
    sget v4, Lk0/dj;->h:I

    if-eq v4, v2, :cond_13

    .line 47
    sput v2, Lk0/dj;->h:I

    if-eqz v2, :cond_12

    .line 48
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 49
    iput-boolean v5, v0, Lk0/dj;->e:Z

    .line 50
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_a

    .line 51
    :cond_11
    iput-boolean v6, v0, Lk0/dj;->e:Z

    goto :goto_a

    .line 52
    :cond_12
    iget-boolean v2, v0, Lk0/dj;->e:Z

    if-nez v2, :cond_13

    sget v2, Lu0/b;->C:I

    const/16 v4, 0xd

    if-eq v2, v4, :cond_13

    .line 53
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 54
    invoke-static {}, Lo1/u;->k()V

    :cond_13
    :goto_a
    const/16 v2, 0x1a

    if-le v3, v2, :cond_15

    .line 55
    sget v2, Lk0/nt;->j:I

    if-ne v2, v6, :cond_14

    const/16 v2, 0x1b

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x23

    goto :goto_b

    :cond_14
    const/16 v2, 0x1b

    sub-int/2addr v3, v2

    const/16 v4, 0x14

    mul-int/2addr v3, v4

    .line 56
    div-int/2addr v3, v2

    add-int/2addr v3, v4

    goto :goto_b

    :cond_15
    const/16 v2, 0x1b

    const/16 v4, 0x14

    .line 57
    sget v5, Lk0/nt;->j:I

    if-ne v5, v6, :cond_16

    rsub-int/lit8 v4, v3, 0x1b

    rsub-int/lit8 v3, v4, 0x23

    goto :goto_b

    :cond_16
    rsub-int/lit8 v3, v3, 0x1b

    mul-int/2addr v3, v4

    .line 58
    div-int/2addr v3, v2

    rsub-int/lit8 v3, v3, 0x14

    .line 59
    :goto_b
    invoke-static {v3}, Lk0/qt;->j0(I)V

    add-int/lit8 v2, p2, 0x5

    .line 60
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 61
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ll0/c0;->Q0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 62
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 63
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->Q0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    :cond_17
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
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

    const/16 p3, 0x61

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

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x5f

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput v0, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
