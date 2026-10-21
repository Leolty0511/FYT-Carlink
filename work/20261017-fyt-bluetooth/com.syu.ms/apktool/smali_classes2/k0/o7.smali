.class public Lk0/o7;
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

.field public j:Ljava/lang/Runnable;

.field public k:B

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/o7;->b:I

    .line 3
    iput v0, p0, Lk0/o7;->d:I

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

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/o7;->e:[[I

    .line 5
    iput-byte v0, p0, Lk0/o7;->f:B

    .line 6
    new-instance v0, Lk0/o7$a;

    invoke-direct {v0, p0}, Lk0/o7$a;-><init>(Lk0/o7;)V

    iput-object v0, p0, Lk0/o7;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/o7$b;

    invoke-direct {v0, p0}, Lk0/o7$b;-><init>(Lk0/o7;)V

    iput-object v0, p0, Lk0/o7;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/o7$c;

    invoke-direct {v0, p0}, Lk0/o7$c;-><init>(Lk0/o7;)V

    iput-object v0, p0, Lk0/o7;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/o7$d;

    invoke-direct {v0, p0}, Lk0/o7$d;-><init>(Lk0/o7;)V

    iput-object v0, p0, Lk0/o7;->j:Ljava/lang/Runnable;

    .line 10
    iput-byte v4, p0, Lk0/o7;->k:B

    .line 11
    new-instance v0, Lk0/o7$e;

    invoke-direct {v0, p0}, Lk0/o7$e;-><init>(Lk0/o7;)V

    iput-object v0, p0, Lk0/o7;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/o7$f;

    invoke-direct {v0, p0}, Lk0/o7$f;-><init>(Lk0/o7;)V

    iput-object v0, p0, Lk0/o7;->m:Ljava/lang/Runnable;

    return-void

    nop

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
        0x1d
    .end array-data
.end method

.method public static synthetic d3(Lk0/o7;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/o7;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lk0/o7;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/o7;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static varargs f3([I)V
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/16 v3, 0xe9

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    const/16 v3, 0x2e

    const/4 v5, 0x1

    .line 4
    aput v3, v2, v5

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 5
    aget v3, p0, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    aput v4, v2, v3

    move v0, v5

    .line 7
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 8
    aget v1, v2, v3

    aget v4, p0, v0

    add-int/2addr v1, v4

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    aget p0, v2, v3

    xor-int/lit16 p0, p0, 0xff

    aput p0, v2, v3

    .line 10
    invoke-static {v2}, Ll0/a;->d([I)V

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WR---->: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/o7;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/o7;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/o7;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/o7;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/o7;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/o7;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/o7;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 2

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    add-int/lit8 p2, p2, 0x4

    .line 3
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 4
    iput p1, p0, Lk0/o7;->d:I

    const/4 p1, 0x0

    move p2, p1

    .line 5
    :goto_0
    iget-object p3, p0, Lk0/o7;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 6
    iget v0, p0, Lk0/o7;->d:I

    aget-object v1, p3, p2

    aget v1, v1, p1

    if-ne v0, v1, :cond_1

    if-eqz v0, :cond_2

    .line 7
    iput p2, p0, Lk0/o7;->c:I

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget p2, p0, Lk0/o7;->d:I

    if-eqz p2, :cond_3

    .line 9
    iget-byte p2, p0, Lk0/o7;->f:B

    if-nez p2, :cond_4

    .line 10
    iget p2, p0, Lk0/o7;->c:I

    aget-object p2, p3, p2

    const/4 p3, 0x1

    aget p2, p2, p3

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    .line 11
    iget-object p1, p0, Lk0/o7;->e:[[I

    iget p2, p0, Lk0/o7;->c:I

    aget-object p1, p1, p2

    aget p1, p1, p3

    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    .line 12
    iget-object p1, p0, Lk0/o7;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 13
    :cond_3
    iput-byte p1, p0, Lk0/o7;->f:B

    .line 14
    iput p1, p0, Lk0/o7;->c:I

    .line 15
    iget-object p1, p0, Lk0/o7;->g:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/o7;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/o7;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/o7;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/o7;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/o7;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/o7;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/o7;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/o7;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/4 p4, 0x5

    aput p4, p1, p3

    const/4 p3, 0x2

    const/4 p4, 0x6

    aput p4, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public a3()V
    .locals 18

    const/16 v0, 0xe

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
    const/16 v3, 0x10

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x50

    const/16 v7, 0x4f

    const/16 v8, 0xb

    const/16 v9, 0x45

    const/4 v10, 0x5

    const/16 v11, 0x4d

    const/16 v12, 0x9

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x8

    const/4 v0, 0x7

    const/4 v2, 0x4

    const/16 v17, 0xa

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/16 v3, 0x57

    aput v3, v1, v2

    aput v9, v1, v10

    const/16 v2, 0x4c

    aput v2, v1, v13

    const/16 v2, 0x43

    aput v2, v1, v0

    aput v7, v1, v16

    aput v11, v1, v12

    aput v9, v1, v17

    goto/16 :goto_6

    :pswitch_1
    aput v11, v1, v0

    aput v6, v1, v16

    const/16 v0, 0x35

    aput v0, v1, v12

    goto/16 :goto_6

    .line 3
    :pswitch_2
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    aput v11, v1, v15

    aput v6, v1, v14

    const/16 v3, 0x33

    aput v3, v1, v2

    .line 4
    sget v2, Lu0/b;->r3:I

    rem-int/lit16 v2, v2, 0x3e8

    .line 5
    div-int/lit8 v3, v2, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 6
    rem-int/lit8 v3, v2, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 7
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v0

    .line 8
    sget v0, Lu0/b;->t3:I

    div-int/lit8 v2, v0, 0x3c

    .line 9
    rem-int/lit8 v2, v2, 0x3c

    aput v4, v1, v16

    .line 10
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 11
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v17

    aput v4, v1, v8

    .line 12
    rem-int/lit8 v0, v0, 0x3c

    const/16 v2, 0xc

    .line 13
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v2

    const/16 v2, 0xd

    .line 14
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v2

    goto/16 :goto_6

    :pswitch_3
    const/16 v2, 0x49

    aput v2, v1, v13

    aput v6, v1, v0

    aput v7, v1, v16

    const/16 v0, 0x44

    aput v0, v1, v12

    goto/16 :goto_6

    :pswitch_4
    const/16 v5, 0x54

    aput v5, v1, v15

    const/16 v5, 0x56

    aput v5, v1, v14

    aput v4, v1, v2

    .line 15
    sget v2, Ld1/d;->c:I

    if-ne v2, v3, :cond_11

    .line 16
    sget v2, Ld1/d;->e:I

    div-int/lit8 v4, v2, 0xa

    if-lez v4, :cond_2

    .line 17
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v10

    .line 18
    :cond_2
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v13

    const/16 v2, 0x2d

    aput v2, v1, v0

    .line 19
    sget v0, Ld1/d;->d:I

    div-int/lit8 v0, v0, 0x64

    .line 20
    div-int/lit16 v2, v0, 0x2710

    if-lez v2, :cond_3

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v16

    .line 21
    :cond_3
    rem-int/lit16 v2, v0, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v12

    .line 22
    rem-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v17

    const/16 v2, 0x2e

    aput v2, v1, v8

    const/16 v2, 0xc

    .line 23
    rem-int/lit8 v4, v0, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v2

    const/16 v2, 0xd

    .line 24
    rem-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v2

    goto/16 :goto_6

    :pswitch_5
    const/16 v2, 0x41

    aput v2, v1, v13

    const/16 v2, 0x55

    aput v2, v1, v0

    const/16 v0, 0x58

    aput v0, v1, v16

    goto/16 :goto_6

    .line 25
    :pswitch_6
    sget v3, Lo0/e;->C:I

    if-nez v3, :cond_4

    goto/16 :goto_6

    .line 26
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lk0/o7;->b3()I

    move-result v3

    if-ne v3, v0, :cond_5

    const/16 v3, 0x44

    aput v3, v1, v15

    const/16 v3, 0x56

    aput v3, v1, v14

    const/16 v3, 0x44

    aput v3, v1, v2

    goto :goto_1

    :cond_5
    const/16 v5, 0xe

    if-ne v3, v5, :cond_6

    const/16 v3, 0x53

    aput v3, v1, v15

    const/16 v3, 0x44

    aput v3, v1, v14

    aput v4, v1, v2

    goto :goto_1

    :cond_6
    const/16 v5, 0xd

    if-ne v3, v5, :cond_7

    const/16 v3, 0x55

    aput v3, v1, v15

    const/16 v3, 0x53

    aput v3, v1, v14

    const/16 v3, 0x42

    aput v3, v1, v2

    .line 27
    :cond_7
    :goto_1
    sget v2, Lo0/e;->B:I

    rem-int/lit16 v2, v2, 0x3e8

    .line 28
    div-int/lit8 v3, v2, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v10

    .line 29
    rem-int/lit8 v3, v2, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v13

    .line 30
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v0

    .line 31
    sget v0, Lo0/e;->r:I

    div-int/lit8 v2, v0, 0x3c

    .line 32
    rem-int/lit8 v2, v2, 0x3c

    aput v4, v1, v16

    .line 33
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v12

    .line 34
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v17

    aput v4, v1, v8

    .line 35
    rem-int/lit8 v0, v0, 0x3c

    const/16 v2, 0xc

    .line 36
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v2

    const/16 v2, 0xd

    .line 37
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v2

    goto/16 :goto_6

    :pswitch_7
    aput v6, v1, v10

    const/16 v2, 0x48

    aput v2, v1, v13

    aput v7, v1, v0

    const/16 v0, 0x4e

    aput v0, v1, v16

    aput v9, v1, v12

    goto/16 :goto_6

    .line 38
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lk0/o7;->b3()I

    move-result v5

    if-ne v5, v3, :cond_8

    const/16 v3, 0x46

    aput v3, v1, v15

    aput v11, v1, v14

    const/16 v3, 0x31

    aput v3, v1, v2

    goto :goto_2

    :cond_8
    if-ne v5, v15, :cond_9

    const/16 v3, 0x46

    aput v3, v1, v15

    aput v11, v1, v14

    const/16 v3, 0x32

    aput v3, v1, v2

    goto :goto_2

    :cond_9
    if-ne v5, v14, :cond_a

    const/16 v3, 0x46

    aput v3, v1, v15

    aput v11, v1, v14

    const/16 v3, 0x33

    aput v3, v1, v2

    goto :goto_2

    :cond_a
    if-ne v5, v2, :cond_b

    const/16 v3, 0x41

    aput v3, v1, v15

    aput v11, v1, v14

    const/16 v3, 0x31

    aput v3, v1, v2

    goto :goto_2

    :cond_b
    if-ne v5, v10, :cond_c

    const/16 v3, 0x41

    aput v3, v1, v15

    aput v11, v1, v14

    const/16 v3, 0x32

    aput v3, v1, v2

    .line 39
    :cond_c
    :goto_2
    sget v2, Lw0/d;->h:I

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_e

    const v3, 0x10002

    if-gt v2, v3, :cond_e

    .line 40
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_d

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v4

    goto :goto_3

    :cond_d
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_3
    aput v3, v1, v13

    .line 41
    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v0

    .line 42
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v16

    const/16 v0, 0x2e

    aput v0, v1, v12

    .line 43
    rem-int/lit8 v0, v2, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v17

    .line 44
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v8

    const/16 v0, 0xc

    aput v11, v1, v0

    goto :goto_6

    .line 45
    :cond_e
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_f

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v4

    goto :goto_4

    :cond_f
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_4
    aput v3, v1, v13

    .line 46
    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    if-nez v3, :cond_10

    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v4

    goto :goto_5

    :cond_10
    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    :goto_5
    aput v3, v1, v0

    .line 47
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v16

    .line 48
    rem-int/lit8 v0, v2, 0x64

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    aput v0, v1, v12

    .line 49
    rem-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v1, v17

    const/16 v0, 0x4b

    aput v0, v1, v8

    goto :goto_6

    :pswitch_9
    const/16 v3, 0x57

    aput v3, v1, v2

    aput v9, v1, v10

    const/16 v2, 0x4c

    aput v2, v1, v13

    const/16 v2, 0x43

    aput v2, v1, v0

    aput v7, v1, v16

    aput v11, v1, v12

    aput v9, v1, v17

    :cond_11
    :goto_6
    :pswitch_a
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    move v2, v3

    const/16 v3, 0xe

    :goto_7
    if-ge v2, v3, :cond_12

    add-int/lit8 v4, v2, 0x1

    .line 50
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_7

    .line 51
    :cond_12
    invoke-static {v0}, Lz/k;->s([I)V

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
    .locals 8

    const/16 v0, 0xe

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput v2, v1, v4

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v3, 0x10

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

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

    :goto_2
    const/16 v3, 0xf

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
