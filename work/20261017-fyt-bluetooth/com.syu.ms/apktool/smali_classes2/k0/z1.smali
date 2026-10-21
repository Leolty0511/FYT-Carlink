.class public Lk0/z1;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/z1$a;

    invoke-direct {v0, p0}, Lk0/z1$a;-><init>(Lk0/z1;)V

    iput-object v0, p0, Lk0/z1;->b:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lk0/z1$b;

    invoke-direct {v0, p0}, Lk0/z1$b;-><init>(Lk0/z1;)V

    iput-object v0, p0, Lk0/z1;->c:Ljava/lang/Runnable;

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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/z1;->b:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/z1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 0

    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/z1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/z1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/z1;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a3()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget v1, Lu0/b;->D:I

    const/16 v2, 0x11

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/16 v12, 0xc

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v1, v13, :cond_c

    if-eq v1, v10, :cond_6

    if-eq v1, v7, :cond_0

    if-eq v1, v6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lk0/z1;->c3()V

    goto/16 :goto_f

    :cond_0
    new-array v1, v8, [I

    move v15, v14

    :goto_0
    if-ge v15, v8, :cond_1

    .line 3
    aput v14, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const/16 v15, 0x83

    aput v15, v1, v14

    const/16 v15, 0xe

    aput v15, v1, v13

    .line 4
    sget v15, Lu0/b;->r3:I

    div-int/lit8 v16, v15, 0x64

    add-int/lit8 v16, v16, 0x30

    aput v16, v1, v5

    .line 5
    rem-int/lit8 v16, v15, 0x64

    div-int/lit8 v16, v16, 0xa

    add-int/lit8 v16, v16, 0x30

    aput v16, v1, v4

    .line 6
    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0x30

    aput v15, v1, v10

    const/4 v10, 0x5

    const/16 v15, 0x2d

    aput v15, v1, v10

    .line 7
    sget v10, Lu0/b;->t3:I

    rem-int/lit16 v15, v10, 0xe10

    div-int/lit8 v15, v15, 0x3c

    div-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0x30

    aput v15, v1, v11

    .line 8
    rem-int/lit16 v11, v10, 0xe10

    div-int/lit8 v11, v11, 0x3c

    rem-int/lit8 v11, v11, 0xa

    add-int/lit8 v11, v11, 0x30

    aput v11, v1, v3

    .line 9
    rem-int/lit8 v3, v10, 0x3c

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v7

    .line 10
    rem-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, 0x30

    aput v10, v1, v6

    .line 11
    invoke-virtual {v0, v1}, Lk0/z1;->e3([I)V

    .line 12
    sget v3, Lo0/e;->H:I

    if-ne v3, v13, :cond_2

    const/16 v3, 0x80

    aput v3, v1, v12

    goto :goto_2

    :cond_2
    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    aput v14, v1, v12

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v3, 0x40

    aput v3, v1, v12

    .line 13
    :goto_2
    invoke-virtual {v0, v1}, Lk0/z1;->d3([I)V

    aput v14, v1, v9

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v14

    :goto_3
    if-ge v14, v8, :cond_5

    add-int/lit8 v3, v14, 0x1

    .line 14
    aget v4, v1, v14

    aput v4, v2, v3

    move v14, v3

    goto :goto_3

    .line 15
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_f

    :cond_6
    new-array v1, v8, [I

    move v15, v14

    :goto_4
    if-ge v15, v8, :cond_7

    .line 16
    aput v14, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    const/16 v15, 0x83

    aput v15, v1, v14

    const/16 v15, 0xe

    aput v15, v1, v13

    .line 17
    sget v15, Lo0/e;->B:I

    div-int/lit8 v16, v15, 0x64

    add-int/lit8 v16, v16, 0x30

    aput v16, v1, v5

    .line 18
    rem-int/lit8 v16, v15, 0x64

    div-int/lit8 v16, v16, 0xa

    add-int/lit8 v16, v16, 0x30

    aput v16, v1, v4

    .line 19
    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0x30

    aput v15, v1, v10

    const/4 v10, 0x5

    const/16 v15, 0x2d

    aput v15, v1, v10

    .line 20
    sget v10, Lo0/e;->r:I

    rem-int/lit16 v15, v10, 0xe10

    div-int/lit8 v15, v15, 0x3c

    div-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0x30

    aput v15, v1, v11

    .line 21
    rem-int/lit16 v11, v10, 0xe10

    div-int/lit8 v11, v11, 0x3c

    rem-int/lit8 v11, v11, 0xa

    add-int/lit8 v11, v11, 0x30

    aput v11, v1, v3

    .line 22
    rem-int/lit8 v3, v10, 0x3c

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v7

    .line 23
    rem-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, 0x30

    aput v10, v1, v6

    .line 24
    invoke-virtual {v0, v1}, Lk0/z1;->e3([I)V

    .line 25
    sget v3, Lo0/e;->H:I

    if-ne v3, v13, :cond_8

    const/16 v3, 0x80

    aput v3, v1, v12

    goto :goto_6

    :cond_8
    if-eq v3, v4, :cond_a

    if-ne v3, v5, :cond_9

    goto :goto_5

    :cond_9
    aput v14, v1, v12

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v3, 0x40

    aput v3, v1, v12

    .line 26
    :goto_6
    invoke-virtual {v0, v1}, Lk0/z1;->d3([I)V

    aput v14, v1, v9

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v14

    :goto_7
    if-ge v14, v8, :cond_b

    add-int/lit8 v3, v14, 0x1

    .line 27
    aget v4, v1, v14

    aput v4, v2, v3

    move v14, v3

    goto :goto_7

    .line 28
    :cond_b
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_f

    :cond_c
    new-array v1, v8, [I

    move v15, v14

    :goto_8
    if-ge v15, v8, :cond_d

    .line 29
    aput v14, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_d
    const/16 v15, 0x83

    aput v15, v1, v14

    const/16 v15, 0xe

    aput v15, v1, v13

    const/16 v15, 0x43

    aput v15, v1, v5

    const/16 v5, 0x48

    aput v5, v1, v4

    .line 30
    sget v4, Lw0/d;->h:I

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_f

    const v5, 0x10002

    if-gt v4, v5, :cond_f

    .line 31
    sget v4, Lw0/d;->j:I

    and-int/lit16 v5, v4, 0xff

    rem-int/2addr v5, v11

    if-nez v5, :cond_e

    and-int/lit16 v5, v4, 0xff

    if-eqz v5, :cond_e

    const/16 v4, 0x36

    aput v4, v1, v10

    goto :goto_9

    :cond_e
    and-int/lit16 v4, v4, 0xff

    .line 32
    rem-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    goto :goto_9

    .line 33
    :cond_f
    sget v4, Lw0/d;->j:I

    and-int/lit16 v5, v4, 0xff

    rem-int/2addr v5, v11

    if-nez v5, :cond_10

    and-int/lit16 v5, v4, 0xff

    if-eqz v5, :cond_10

    const/16 v4, 0x36

    aput v4, v1, v10

    goto :goto_9

    :cond_10
    and-int/lit16 v4, v4, 0xff

    .line 34
    rem-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    :goto_9
    const/4 v4, 0x5

    const/16 v5, 0x20

    aput v5, v1, v4

    .line 35
    sget v4, Lw0/d;->h:I

    const/high16 v10, 0x10000

    if-lt v4, v10, :cond_12

    const v10, 0x10002

    if-gt v4, v10, :cond_12

    .line 36
    sget v4, Lw0/d;->i:I

    div-int/lit16 v10, v4, 0x2710

    if-nez v10, :cond_11

    div-int/lit16 v10, v4, 0x2710

    add-int/2addr v10, v5

    goto :goto_a

    :cond_11
    div-int/lit16 v10, v4, 0x2710

    add-int/lit8 v10, v10, 0x30

    :goto_a
    aput v10, v1, v11

    .line 37
    rem-int/lit16 v10, v4, 0x2710

    div-int/lit16 v10, v10, 0x3e8

    add-int/lit8 v10, v10, 0x30

    aput v10, v1, v3

    .line 38
    rem-int/lit16 v3, v4, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v7

    .line 39
    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v6

    goto :goto_c

    .line 40
    :cond_12
    sget v4, Lw0/d;->i:I

    rem-int/lit16 v10, v4, 0x2710

    div-int/lit16 v10, v10, 0x3e8

    if-nez v10, :cond_13

    rem-int/lit16 v10, v4, 0x2710

    div-int/lit16 v10, v10, 0x3e8

    add-int/2addr v10, v5

    goto :goto_b

    :cond_13
    rem-int/lit16 v10, v4, 0x2710

    div-int/lit16 v10, v10, 0x3e8

    add-int/lit8 v10, v10, 0x30

    :goto_b
    aput v10, v1, v11

    .line 41
    rem-int/lit16 v10, v4, 0x3e8

    div-int/lit8 v10, v10, 0x64

    add-int/lit8 v10, v10, 0x30

    aput v10, v1, v3

    .line 42
    rem-int/lit8 v3, v4, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v7

    .line 43
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v6

    .line 44
    :goto_c
    invoke-virtual {v0, v1}, Lk0/z1;->e3([I)V

    .line 45
    sget v3, Lw0/d;->h:I

    if-eqz v3, :cond_15

    if-eq v3, v13, :cond_14

    packed-switch v3, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    const/16 v3, 0x23

    aput v3, v1, v12

    aput v8, v1, v9

    goto :goto_d

    :pswitch_1
    const/16 v3, 0x22

    aput v3, v1, v12

    aput v8, v1, v9

    goto :goto_d

    :pswitch_2
    const/16 v3, 0x21

    aput v3, v1, v12

    aput v8, v1, v9

    goto :goto_d

    :cond_14
    const/16 v3, 0x12

    aput v3, v1, v12

    aput v5, v1, v9

    goto :goto_d

    :cond_15
    aput v2, v1, v12

    aput v5, v1, v9

    .line 46
    :goto_d
    invoke-virtual {v0, v1}, Lk0/z1;->d3([I)V

    new-array v2, v2, [I

    const/16 v3, 0xe3

    aput v3, v2, v14

    :goto_e
    if-ge v14, v8, :cond_16

    add-int/lit8 v3, v14, 0x1

    .line 47
    aget v4, v1, v14

    aput v4, v2, v3

    move v14, v3

    goto :goto_e

    .line 48
    :cond_16
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b3()V
    .locals 8

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x83

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v4, v1, v3

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v4, Ly0/f;->i:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v4, v3, :cond_3

    sget v3, Ly0/f;->C0:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x56

    aput v4, v1, v7

    const/16 v4, 0x4f

    aput v4, v1, v6

    const/16 v4, 0x4c

    aput v4, v1, v5

    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    const/4 v5, 0x7

    .line 3
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    :cond_2
    const/16 v5, 0x8

    .line 4
    rem-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v3, 0x4d

    aput v3, v1, v7

    const/16 v3, 0x55

    aput v3, v1, v6

    const/16 v3, 0x54

    aput v3, v1, v5

    const/4 v3, 0x6

    const/16 v4, 0x45

    aput v4, v1, v3

    .line 5
    :goto_2
    invoke-virtual {p0, v1}, Lk0/z1;->e3([I)V

    .line 6
    invoke-virtual {p0, v1}, Lk0/z1;->d3([I)V

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v3, 0x11

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 7
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3()V
    .locals 13

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x83

    aput v3, v1, v2

    const/16 v3, 0xe

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 2
    sget v3, Lu0/b;->D:I

    const/16 v4, 0x49

    const/16 v5, 0x55

    const/4 v6, 0x6

    const/16 v7, 0x4f

    const/16 v8, 0x50

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v3, 0x54

    aput v3, v1, v12

    const/16 v3, 0x56

    aput v3, v1, v11

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x41

    aput v3, v1, v12

    aput v5, v1, v11

    const/16 v3, 0x58

    aput v3, v1, v10

    goto :goto_1

    :pswitch_2
    aput v4, v1, v12

    aput v8, v1, v11

    aput v7, v1, v10

    const/16 v3, 0x44

    aput v3, v1, v9

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x4d

    aput v3, v1, v12

    aput v5, v1, v11

    const/16 v3, 0x53

    aput v3, v1, v10

    aput v4, v1, v9

    const/16 v3, 0x43

    aput v3, v1, v6

    goto :goto_1

    :pswitch_4
    aput v8, v1, v12

    const/16 v3, 0x48

    aput v3, v1, v11

    aput v7, v1, v10

    const/16 v3, 0x4e

    aput v3, v1, v9

    const/16 v3, 0x45

    aput v3, v1, v6

    .line 3
    :goto_1
    invoke-virtual {p0, v1}, Lk0/z1;->e3([I)V

    const/16 v3, 0xc

    aput v2, v1, v3

    .line 4
    invoke-virtual {p0, v1}, Lk0/z1;->d3([I)V

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v3, 0x11

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_2
    if-ge v2, v0, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 5
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final d3([I)V
    .locals 4

    if-eqz p1, :cond_7

    .line 1
    array-length v0, p1

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Ly0/f;->a0:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    aput v0, p1, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 4
    aput v1, p1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 5
    aput v1, p1, v2

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 6
    aput v3, p1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    const/16 v0, 0x10

    .line 7
    aput v0, p1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    const/16 v0, 0x20

    .line 8
    aput v0, p1, v2

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 9
    aput v0, p1, v2

    :cond_7
    :goto_0
    return-void
.end method

.method public final e3([I)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    .line 5
    iget v4, v0, Landroid/text/format/Time;->minute:I

    aput v4, p1, v3

    const/16 v3, 0xb

    if-nez v2, :cond_2

    .line 6
    iget v0, v0, Landroid/text/format/Time;->hour:I

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 7
    aput v0, p1, v3

    goto :goto_0

    .line 8
    :cond_1
    aput v0, p1, v3

    goto :goto_0

    .line 9
    :cond_2
    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, p1, v3

    :cond_3
    :goto_0
    return-void
.end method
