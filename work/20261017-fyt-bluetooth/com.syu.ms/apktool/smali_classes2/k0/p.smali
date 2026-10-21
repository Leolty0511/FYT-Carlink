.class public Lk0/p;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/p;->b:I

    .line 3
    iput v0, p0, Lk0/p;->d:I

    const/16 v1, 0xb

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/p;->e:[[I

    .line 5
    iput-byte v0, p0, Lk0/p;->f:B

    .line 6
    new-instance v0, Lk0/p$a;

    invoke-direct {v0, p0}, Lk0/p$a;-><init>(Lk0/p;)V

    iput-object v0, p0, Lk0/p;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/p$b;

    invoke-direct {v0, p0}, Lk0/p$b;-><init>(Lk0/p;)V

    iput-object v0, p0, Lk0/p;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/p$c;

    invoke-direct {v0, p0}, Lk0/p$c;-><init>(Lk0/p;)V

    iput-object v0, p0, Lk0/p;->i:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_a
    .array-data 4
        0xa
        0x10
    .end array-data
.end method

.method public static synthetic d3(Lk0/p;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/p;->g:Ljava/lang/Runnable;

    return-object p0
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

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget v1, Lk0/nt;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lk0/p;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/p;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/p;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/p;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/p;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    return-void
.end method

.method public U2([BII)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    if-eqz v0, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    add-int/lit8 p2, p2, 0x4

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 5
    iput p1, p0, Lk0/p;->d:I

    const/4 p1, 0x0

    move p2, p1

    .line 6
    :goto_0
    iget-object p3, p0, Lk0/p;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_3

    .line 7
    iget v0, p0, Lk0/p;->d:I

    aget-object v1, p3, p2

    aget v1, v1, p1

    if-ne v0, v1, :cond_2

    if-eqz v0, :cond_4

    .line 8
    iput p2, p0, Lk0/p;->c:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move p2, p1

    .line 9
    :cond_4
    :goto_1
    iget v0, p0, Lk0/p;->d:I

    if-eqz v0, :cond_5

    .line 10
    iget-byte v0, p0, Lk0/p;->f:B

    if-nez v0, :cond_5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    .line 11
    iput-byte v0, p0, Lk0/p;->f:B

    .line 12
    aget-object p3, p3, p2

    aget p3, p3, v1

    invoke-static {p3, p1}, Ll0/b0;->l0(II)V

    .line 13
    iget-object p1, p0, Lk0/p;->e:[[I

    aget-object p1, p1, p2

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 14
    iget-object p1, p0, Lk0/p;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/p;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/p;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/p;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/p;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/p;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p4, 0x3

    const/4 v0, 0x0

    if-eq p1, p4, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    .line 2
    aget p1, p2, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    .line 3
    :goto_0
    invoke-virtual {p0, p3}, Lk0/p;->f3(I)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, v0}, Lk0/p;->e3(I)V

    goto :goto_1

    :cond_3
    const/16 p1, 0x15

    .line 5
    invoke-virtual {p0, p1}, Lk0/p;->e3(I)V

    goto :goto_1

    :cond_4
    const/16 p1, 0x16

    .line 6
    invoke-virtual {p0, p1}, Lk0/p;->e3(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a3()V
    .locals 19

    const/16 v0, 0xa

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
    const/16 v3, 0xc

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x57

    const/16 v7, 0x44

    const/16 v8, 0x50

    const/16 v9, 0x4f

    const/16 v10, 0x4d

    const/16 v11, 0x45

    const/16 v12, 0x9

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x8

    const/16 v18, 0x6

    const/4 v2, 0x7

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    aput v6, v1, v16

    aput v11, v1, v15

    const/16 v3, 0x4c

    aput v3, v1, v14

    const/16 v3, 0x43

    aput v3, v1, v13

    aput v9, v1, v18

    aput v10, v1, v2

    aput v11, v1, v17

    goto/16 :goto_7

    :pswitch_1
    aput v10, v1, v2

    aput v8, v1, v17

    const/16 v2, 0x35

    aput v2, v1, v12

    goto/16 :goto_7

    .line 3
    :pswitch_2
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    aput v10, v1, v16

    aput v8, v1, v15

    const/16 v3, 0x33

    aput v3, v1, v14

    .line 4
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x2710

    .line 5
    div-int/lit16 v4, v3, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v18

    .line 6
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v0

    rem-int/lit16 v5, v3, 0x3e8

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    div-int/2addr v5, v0

    :goto_1
    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v2

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    .line 7
    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    goto/16 :goto_7

    :pswitch_3
    const/16 v3, 0x49

    aput v3, v1, v18

    aput v8, v1, v2

    aput v9, v1, v17

    aput v7, v1, v12

    goto/16 :goto_7

    .line 8
    :pswitch_4
    sget v4, Ld1/d;->c:I

    if-ne v4, v3, :cond_d

    .line 9
    sget v4, Ld1/d;->e:I

    div-int/lit8 v5, v4, 0xa

    if-lez v5, :cond_3

    .line 10
    div-int/lit8 v5, v4, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v16

    .line 11
    :cond_3
    rem-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    const/16 v4, 0x2d

    aput v4, v1, v14

    .line 12
    sget v4, Ld1/d;->d:I

    div-int/lit8 v4, v4, 0x64

    .line 13
    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v13

    .line 14
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v18

    const/16 v5, 0x2e

    aput v5, v1, v2

    .line 15
    rem-int/lit8 v2, v4, 0x64

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v17

    .line 16
    rem-int/2addr v4, v0

    div-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v12

    goto/16 :goto_7

    :pswitch_5
    const/16 v3, 0x41

    aput v3, v1, v18

    const/16 v3, 0x55

    aput v3, v1, v2

    const/16 v2, 0x58

    aput v2, v1, v17

    goto/16 :goto_7

    .line 17
    :pswitch_6
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_4

    goto/16 :goto_7

    .line 18
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lk0/p;->b3()I

    move-result v3

    if-ne v3, v2, :cond_5

    aput v7, v1, v16

    const/16 v3, 0x56

    aput v3, v1, v15

    aput v7, v1, v14

    goto :goto_2

    :cond_5
    const/16 v5, 0xe

    if-ne v3, v5, :cond_6

    const/16 v3, 0x53

    aput v3, v1, v16

    aput v7, v1, v15

    aput v4, v1, v14

    goto :goto_2

    :cond_6
    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    const/16 v3, 0x55

    aput v3, v1, v16

    const/16 v3, 0x53

    aput v3, v1, v15

    const/16 v3, 0x42

    aput v3, v1, v14

    .line 19
    :cond_7
    :goto_2
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x2710

    .line 20
    div-int/lit16 v4, v3, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v18

    .line 21
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v0

    rem-int/lit16 v5, v3, 0x3e8

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    div-int/2addr v5, v0

    :goto_3
    add-int/lit8 v5, v5, 0x30

    aput v5, v1, v2

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    .line 22
    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    goto/16 :goto_7

    :pswitch_7
    aput v8, v1, v13

    const/16 v3, 0x48

    aput v3, v1, v18

    aput v9, v1, v2

    const/16 v2, 0x4e

    aput v2, v1, v17

    aput v11, v1, v12

    goto/16 :goto_7

    .line 23
    :pswitch_8
    sget v3, Lw0/d;->h:I

    const/high16 v5, 0x10000

    if-lt v3, v5, :cond_a

    const v5, 0x10002

    if-gt v3, v5, :cond_a

    .line 24
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_9

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_4

    :cond_9
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_4
    aput v5, v1, v16

    .line 25
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    .line 26
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    const/16 v4, 0x2e

    aput v4, v1, v13

    .line 27
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v18

    .line 28
    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v2

    aput v10, v1, v17

    goto :goto_7

    .line 29
    :cond_a
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_b

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_5

    :cond_b
    div-int/lit16 v5, v3, 0x2710

    add-int/lit8 v5, v5, 0x30

    :goto_5
    aput v5, v1, v16

    .line 30
    rem-int/lit16 v5, v3, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    if-nez v5, :cond_c

    rem-int/lit16 v5, v3, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/2addr v5, v4

    goto :goto_6

    :cond_c
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v5, v4, 0x30

    :goto_6
    aput v5, v1, v15

    .line 31
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v14

    .line 32
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v13

    .line 33
    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v18

    const/16 v3, 0x4b

    aput v3, v1, v2

    goto :goto_7

    :pswitch_9
    aput v6, v1, v16

    aput v11, v1, v15

    const/16 v3, 0x4c

    aput v3, v1, v14

    const/16 v3, 0x43

    aput v3, v1, v13

    aput v9, v1, v18

    aput v10, v1, v2

    aput v11, v1, v17

    :cond_d
    :goto_7
    :pswitch_a
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    :goto_8
    if-ge v4, v0, :cond_e

    add-int/lit8 v3, v4, 0x1

    .line 34
    aget v4, v1, v4

    int-to-byte v4, v4

    aput v4, v2, v3

    move v4, v3

    goto :goto_8

    .line 35
    :cond_e
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
    .end packed-switch
.end method

.method public b3()I
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v3

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
    if-ne v0, v2, :cond_1

    const/16 v1, 0xe

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_6
    move v1, v4

    goto :goto_2

    .line 3
    :pswitch_7
    sget v0, Lw0/d;->h:I

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    const v3, 0x10001

    if-ne v0, v3, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    const v2, 0x10002

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    if-ne v0, v6, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    :goto_1
    :pswitch_8
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

.method public c3()V
    .locals 9

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xc

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2
    sget v5, Ly0/f;->i:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v5, v3, :cond_3

    sget v3, Ly0/f;->C0:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x56

    aput v5, v1, v8

    const/16 v5, 0x4f

    aput v5, v1, v7

    const/16 v5, 0x4c

    aput v5, v1, v6

    if-lt v3, v0, :cond_2

    const/4 v5, 0x7

    .line 3
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    .line 4
    :cond_2
    rem-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v3, 0x4d

    aput v3, v1, v8

    const/16 v3, 0x55

    aput v3, v1, v7

    const/16 v3, 0x54

    aput v3, v1, v6

    const/4 v3, 0x6

    const/16 v4, 0x45

    aput v4, v1, v3

    :goto_2
    const/16 v3, 0xb

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 5
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 6
    :cond_4
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final e3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x6

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public f3(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x7c

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
