.class public Lk0/h9;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:[[I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/h9;->b:[[I

    const/4 v1, 0x6

    new-array v2, v1, [[I

    .line 3
    iput-object v2, p0, Lk0/h9;->c:[[I

    const/4 v2, 0x7

    new-array v3, v2, [[I

    .line 4
    iput-object v3, p0, Lk0/h9;->d:[[I

    const/4 v3, 0x0

    .line 5
    iput v3, p0, Lk0/h9;->f:I

    const/16 v4, 0x8

    new-array v5, v4, [[I

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 6
    fill-array-data v7, :array_0

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    const/4 v8, 0x1

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_3

    aput-object v7, v5, v0

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    const/4 v9, 0x4

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    const/4 v10, 0x5

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_7

    aput-object v7, v5, v2

    iput-object v5, p0, Lk0/h9;->g:[[I

    .line 7
    iput v3, p0, Lk0/h9;->i:I

    new-array v4, v4, [[I

    new-array v5, v6, [I

    .line 8
    fill-array-data v5, :array_8

    aput-object v5, v4, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_9

    aput-object v3, v4, v8

    new-array v3, v6, [I

    fill-array-data v3, :array_a

    aput-object v3, v4, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_b

    aput-object v3, v4, v0

    new-array v0, v6, [I

    fill-array-data v0, :array_c

    aput-object v0, v4, v9

    new-array v0, v6, [I

    fill-array-data v0, :array_d

    aput-object v0, v4, v10

    new-array v0, v6, [I

    fill-array-data v0, :array_e

    aput-object v0, v4, v1

    new-array v0, v6, [I

    fill-array-data v0, :array_f

    aput-object v0, v4, v2

    iput-object v4, p0, Lk0/h9;->j:[[I

    .line 9
    new-instance v0, Lk0/h9$a;

    invoke-direct {v0, p0}, Lk0/h9$a;-><init>(Lk0/h9;)V

    iput-object v0, p0, Lk0/h9;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/h9$b;

    invoke-direct {v0, p0}, Lk0/h9$b;-><init>(Lk0/h9;)V

    iput-object v0, p0, Lk0/h9;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/h9$c;

    invoke-direct {v0, p0}, Lk0/h9$c;-><init>(Lk0/h9;)V

    iput-object v0, p0, Lk0/h9;->m:Ljava/lang/Runnable;

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x1c
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x1b
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x10
    .end array-data

    :array_d
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_f
    .array-data 4
        0x15
        0x10
    .end array-data
.end method

.method public static synthetic e3(Lk0/h9;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h9;->a3()V

    return-void
.end method

.method public static synthetic f3(Lk0/h9;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/h9;->c3()V

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
    iget-object v0, p0, Lk0/h9;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/h9;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/h9;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/h9;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/h9;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/h9;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x27

    const/4 v6, 0x4

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x29

    const/4 v10, 0x3

    if-eq v1, v2, :cond_49

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_46

    const/4 v2, 0x6

    const/16 v11, 0x20

    const/16 v12, 0x10

    const/16 v13, 0x40

    const/4 v14, 0x7

    const/16 v15, 0xf

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v1, v13, :cond_39

    const/16 v13, 0x50

    const/16 v5, 0x1d

    if-eq v1, v13, :cond_28

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_20

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    if-eqz v1, :cond_4

    if-eq v1, v12, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    if-eq v1, v11, :cond_1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    goto/16 :goto_20

    :cond_0
    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v2, p1, v1

    shl-int/lit8 v2, v2, 0x18

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xf0

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xaa

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 4
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_1
    add-int/lit8 v1, p2, 0x3

    .line 5
    aget-byte v1, p1, v1

    and-int/2addr v1, v15

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xa9

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 6
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_2
    add-int/lit8 v1, p2, 0x3

    .line 7
    aget-byte v2, p1, v1

    and-int/2addr v2, v15

    shl-int/lit8 v2, v2, 0x18

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xf0

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xa8

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 8
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_3
    add-int/lit8 v1, p2, 0x3

    .line 9
    aget-byte v1, p1, v1

    and-int/2addr v1, v15

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xa7

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v2, p3, -0x3

    if-ge v8, v2, :cond_5

    add-int/lit8 v2, p2, 0x3

    add-int/2addr v2, v8

    .line 12
    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget-object v2, v0, Lk0/h9;->n:Ljava/lang/String;

    iput-object v2, v0, Lk0/h9;->o:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk0/h9;->g3(Ljava/lang/String;)V

    const/16 v1, 0xb3

    .line 15
    iget-object v2, v0, Lk0/h9;->n:Ljava/lang/String;

    iget-object v3, v0, Lk0/h9;->o:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_20

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 16
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    if-lez v1, :cond_4f

    if-le v1, v10, :cond_6

    move v1, v10

    :cond_6
    const/16 v2, 0xad

    if-ne v1, v9, :cond_9

    new-array v1, v4, [I

    aput v8, v1, v8

    add-int/lit8 v3, p2, 0x3

    .line 17
    aget-byte v5, p1, v3

    and-int/2addr v5, v7

    aput v5, v1, v9

    iget-object v5, v0, Lk0/h9;->b:[[I

    aget-object v5, v5, v8

    invoke-static {v2, v1, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    iget-object v1, v0, Lk0/h9;->b:[[I

    new-array v5, v4, [I

    aput v8, v5, v8

    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v5, v9

    aput-object v5, v1, v8

    :cond_7
    move v1, v9

    :goto_1
    if-ge v1, v10, :cond_4f

    new-array v3, v4, [I

    aput v1, v3, v8

    aput v8, v3, v9

    .line 19
    iget-object v5, v0, Lk0/h9;->b:[[I

    aget-object v5, v5, v1

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 20
    iget-object v5, v0, Lk0/h9;->b:[[I

    aput-object v3, v5, v1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    if-ne v1, v4, :cond_c

    move v1, v8

    :goto_2
    if-ge v1, v4, :cond_4f

    new-array v3, v4, [I

    aput v1, v3, v8

    add-int/lit8 v5, p2, 0x3

    add-int/2addr v5, v1

    .line 21
    aget-byte v5, p1, v5

    and-int/2addr v5, v7

    aput v5, v3, v9

    .line 22
    iget-object v5, v0, Lk0/h9;->b:[[I

    aget-object v5, v5, v1

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 23
    iget-object v5, v0, Lk0/h9;->b:[[I

    aput-object v3, v5, v1

    :cond_a
    new-array v3, v4, [I

    .line 24
    fill-array-data v3, :array_0

    iget-object v5, v0, Lk0/h9;->b:[[I

    aget-object v5, v5, v4

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 25
    iget-object v3, v0, Lk0/h9;->b:[[I

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    aput-object v5, v3, v8

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    if-ne v1, v10, :cond_e

    move v1, v8

    :goto_3
    if-ge v1, v10, :cond_4f

    new-array v3, v4, [I

    aput v1, v3, v8

    add-int/lit8 v5, p2, 0x3

    add-int/2addr v5, v1

    .line 26
    aget-byte v5, p1, v5

    and-int/2addr v5, v7

    aput v5, v3, v9

    .line 27
    iget-object v5, v0, Lk0/h9;->b:[[I

    aget-object v5, v5, v1

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 28
    iget-object v5, v0, Lk0/h9;->b:[[I

    aput-object v3, v5, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    move v1, v8

    :goto_4
    if-ge v1, v10, :cond_4f

    new-array v3, v4, [I

    aput v1, v3, v8

    aput v8, v3, v9

    .line 29
    iget-object v5, v0, Lk0/h9;->b:[[I

    aget-object v5, v5, v1

    invoke-static {v2, v3, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 30
    iget-object v5, v0, Lk0/h9;->b:[[I

    aput-object v3, v5, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_2
    add-int/lit8 v1, p2, 0x3

    .line 31
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x2

    aget-byte v3, p1, v2

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    if-le v1, v14, :cond_10

    move v1, v14

    :cond_10
    if-lez v1, :cond_14

    move v3, v8

    :goto_5
    if-ge v3, v1, :cond_12

    add-int/lit8 v5, v3, 0x1

    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v2

    .line 32
    aget-byte v6, p1, v6

    and-int/2addr v6, v7

    new-array v10, v4, [I

    aput v3, v10, v8

    add-int/2addr v6, v9

    aput v6, v10, v9

    const/16 v6, 0xab

    .line 33
    iget-object v11, v0, Lk0/h9;->d:[[I

    aget-object v11, v11, v3

    invoke-static {v6, v10, v11}, Lk0/qt;->C0(I[I[I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 34
    iget-object v6, v0, Lk0/h9;->d:[[I

    aput-object v10, v6, v3

    :cond_11
    move v3, v5

    goto :goto_5

    :cond_12
    :goto_6
    if-ge v1, v14, :cond_4f

    new-array v2, v4, [I

    aput v1, v2, v8

    aput v8, v2, v9

    const/16 v3, 0xab

    .line 35
    iget-object v5, v0, Lk0/h9;->d:[[I

    aget-object v5, v5, v1

    invoke-static {v3, v2, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 36
    iget-object v3, v0, Lk0/h9;->d:[[I

    aput-object v2, v3, v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    move v1, v8

    :goto_7
    if-ge v1, v14, :cond_4f

    new-array v2, v4, [I

    aput v1, v2, v8

    aput v8, v2, v9

    const/16 v3, 0xab

    .line 37
    iget-object v5, v0, Lk0/h9;->d:[[I

    aget-object v5, v5, v1

    invoke-static {v3, v2, v5}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 38
    iget-object v3, v0, Lk0/h9;->d:[[I

    aput-object v2, v3, v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 39
    aget-byte v3, p1, v1

    and-int/2addr v3, v7

    if-le v3, v2, :cond_16

    goto :goto_8

    :cond_16
    move v2, v3

    :goto_8
    new-array v3, v4, [I

    aput v8, v3, v8

    add-int/lit8 v5, p2, 0x9

    .line 40
    aget-byte v5, p1, v5

    and-int/2addr v5, v7

    if-nez v5, :cond_17

    const/16 v5, 0x32

    goto :goto_9

    :cond_17
    const/16 v5, 0x31

    :goto_9
    aput v5, v3, v9

    const/16 v5, 0xac

    .line 41
    iget-object v6, v0, Lk0/h9;->c:[[I

    aget-object v6, v6, v8

    invoke-static {v5, v3, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 42
    iget-object v5, v0, Lk0/h9;->c:[[I

    aput-object v3, v5, v8

    :cond_18
    move v3, v9

    :goto_a
    if-ge v3, v2, :cond_4f

    new-array v5, v4, [I

    aput v3, v5, v8

    add-int v6, v1, v3

    .line 43
    aget-byte v6, p1, v6

    add-int/2addr v6, v9

    and-int/2addr v6, v7

    aput v6, v5, v9

    const/16 v6, 0xac

    .line 44
    iget-object v10, v0, Lk0/h9;->c:[[I

    aget-object v10, v10, v3

    invoke-static {v6, v5, v10}, Lk0/qt;->C0(I[I[I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 45
    iget-object v6, v0, Lk0/h9;->c:[[I

    aput-object v5, v6, v3

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :pswitch_4
    const/16 v1, 0x79

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 46
    aget-byte v5, p1, v3

    and-int/2addr v4, v5

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v2, v9, [I

    .line 47
    aget-byte v4, p1, v3

    and-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 48
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 49
    aget-byte v1, p1, v3

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    .line 50
    invoke-static {v1}, Lu0/d;->C2(I)V

    goto/16 :goto_20

    :pswitch_5
    add-int/lit8 v1, p2, 0x2

    .line 51
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 52
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1a

    new-array v2, v9, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 53
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 54
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1a
    new-array v2, v9, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 55
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 56
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    new-array v2, v9, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 57
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 58
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v9

    aput v5, v2, v8

    .line 59
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 60
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 61
    :pswitch_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    add-int/lit8 v1, p2, 0x2

    .line 62
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 63
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    .line 64
    aget-byte v4, p1, v4

    add-int/lit8 v3, p2, 0x5

    .line 65
    aget-byte v3, p1, v3

    and-int/2addr v1, v7

    const/16 v5, 0xa

    mul-int/2addr v1, v5

    .line 66
    div-int/lit8 v1, v1, 0x3c

    if-le v1, v5, :cond_1b

    move/from16 v17, v5

    goto :goto_c

    :cond_1b
    move/from16 v17, v1

    .line 67
    :goto_c
    invoke-static/range {v17 .. v17}, Lu0/d;->D2(I)V

    and-int/lit16 v1, v2, 0xff

    mul-int/2addr v1, v5

    .line 68
    div-int/lit8 v1, v1, 0x78

    if-le v1, v5, :cond_1c

    move/from16 v17, v5

    goto :goto_d

    :cond_1c
    move/from16 v17, v1

    .line 69
    :goto_d
    invoke-static/range {v17 .. v17}, Lu0/d;->E2(I)V

    and-int/lit16 v1, v4, 0xff

    mul-int/2addr v1, v5

    .line 70
    div-int/lit8 v1, v1, 0x78

    if-le v1, v5, :cond_1d

    move/from16 v17, v5

    goto :goto_e

    :cond_1d
    move/from16 v17, v1

    .line 71
    :goto_e
    invoke-static/range {v17 .. v17}, Lu0/d;->F2(I)V

    and-int/lit16 v1, v3, 0xff

    mul-int/2addr v1, v5

    .line 72
    div-int/lit8 v1, v1, 0x3c

    if-le v1, v5, :cond_1e

    const/16 v5, 0xa

    goto :goto_f

    :cond_1e
    move v5, v1

    .line 73
    :goto_f
    invoke-static {v5}, Lu0/d;->G2(I)V

    goto/16 :goto_20

    .line 74
    :pswitch_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    add-int/lit8 v1, p2, 0x2

    .line 75
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 76
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    .line 77
    aget-byte v4, p1, v4

    add-int/lit8 v3, p2, 0x5

    .line 78
    aget-byte v3, p1, v3

    and-int/2addr v1, v7

    const/16 v5, 0xa

    mul-int/2addr v1, v5

    .line 79
    div-int/lit8 v1, v1, 0x3c

    if-le v1, v5, :cond_1f

    move/from16 v17, v5

    goto :goto_10

    :cond_1f
    move/from16 v17, v1

    .line 80
    :goto_10
    invoke-static/range {v17 .. v17}, Lu0/d;->R2(I)V

    and-int/lit16 v1, v2, 0xff

    mul-int/2addr v1, v5

    .line 81
    div-int/lit16 v1, v1, 0xa5

    if-le v1, v5, :cond_20

    move/from16 v17, v5

    goto :goto_11

    :cond_20
    move/from16 v17, v1

    .line 82
    :goto_11
    invoke-static/range {v17 .. v17}, Lu0/d;->S2(I)V

    and-int/lit16 v1, v4, 0xff

    mul-int/2addr v1, v5

    .line 83
    div-int/lit16 v1, v1, 0xa5

    if-le v1, v5, :cond_21

    move/from16 v17, v5

    goto :goto_12

    :cond_21
    move/from16 v17, v1

    .line 84
    :goto_12
    invoke-static/range {v17 .. v17}, Lu0/d;->T2(I)V

    and-int/lit16 v1, v3, 0xff

    mul-int/2addr v1, v5

    .line 85
    div-int/lit8 v1, v1, 0x3c

    if-le v1, v5, :cond_22

    const/16 v5, 0xa

    goto :goto_13

    :cond_22
    move v5, v1

    .line 86
    :goto_13
    invoke-static {v5}, Lu0/d;->U2(I)V

    goto/16 :goto_20

    :pswitch_8
    new-array v1, v9, [I

    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0x80

    aput v3, v1, v8

    const/16 v3, 0xa

    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v3, v9, [I

    .line 88
    aget-byte v12, p1, v2

    const/16 v13, 0x40

    and-int/2addr v12, v13

    aput v12, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v3, v9, [I

    .line 89
    aget-byte v12, p1, v2

    and-int/lit8 v12, v12, 0x8

    aput v12, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v3, v9, [I

    .line 90
    aget-byte v12, p1, v2

    and-int/2addr v12, v6

    aput v12, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    .line 91
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    aput v2, v1, v8

    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 92
    aget-byte v12, p1, v3

    and-int/lit16 v12, v12, 0x80

    aput v12, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v9, [I

    .line 93
    aget-byte v12, p1, v3

    const/16 v13, 0x40

    and-int/2addr v12, v13

    aput v12, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v9, [I

    .line 94
    aget-byte v12, p1, v3

    and-int/2addr v12, v11

    aput v12, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v9, [I

    .line 95
    aget-byte v3, p1, v3

    and-int/2addr v3, v15

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.reversetemp"

    .line 96
    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x1b

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x5

    .line 97
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1c

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 98
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_23
    const/16 v1, 0x1b

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 99
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1c

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x5

    .line 100
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_14
    const/16 v1, 0x42

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x6

    .line 101
    aget-byte v7, p1, v3

    const/16 v12, 0x40

    and-int/2addr v7, v12

    aput v7, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x36

    new-array v2, v9, [I

    .line 102
    aget-byte v7, p1, v3

    and-int/2addr v7, v11

    aput v7, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v9, [I

    .line 103
    aget-byte v3, p1, v3

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    add-int/lit8 v2, p2, 0x7

    .line 104
    aget-byte v3, p1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v10

    aput v3, v1, v8

    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v3, v9, [I

    .line 105
    aget-byte v2, p1, v2

    and-int/2addr v2, v10

    aput v2, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x50

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x8

    .line 106
    aget-byte v5, p1, v3

    and-int/2addr v5, v6

    shr-int/lit8 v4, v5, 0x2

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x49

    new-array v2, v9, [I

    .line 107
    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 108
    :pswitch_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    add-int/lit8 v1, p2, 0x2

    .line 109
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 110
    aget-byte v2, p1, v2

    and-int/2addr v1, v7

    .line 111
    iput v1, v0, Lk0/h9;->f:I

    move v1, v8

    .line 112
    :goto_15
    iget-object v3, v0, Lk0/h9;->g:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_25

    .line 113
    iget v4, v0, Lk0/h9;->f:I

    aget-object v5, v3, v1

    aget v5, v5, v8

    if-ne v4, v5, :cond_24

    if-eqz v4, :cond_25

    .line 114
    iput v1, v0, Lk0/h9;->e:I

    goto :goto_16

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_25
    :goto_16
    and-int/2addr v2, v7

    if-ne v2, v9, :cond_26

    .line 115
    array-length v2, v3

    if-ge v1, v2, :cond_4f

    .line 116
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :cond_26
    if-nez v2, :cond_4f

    .line 117
    iget v1, v0, Lk0/h9;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_27

    if-eq v1, v7, :cond_27

    .line 118
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 119
    :cond_27
    iput v7, v0, Lk0/h9;->e:I

    goto/16 :goto_20

    :cond_28
    add-int/lit8 v1, p2, 0x2

    .line 120
    aget-byte v1, p1, v1

    const/high16 v2, 0x20000000

    const v11, 0xffff

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_20

    :sswitch_0
    add-int/lit8 v1, p2, 0x3

    .line 121
    aget-byte v2, p1, v1

    and-int/2addr v2, v9

    if-nez v2, :cond_29

    move v2, v8

    goto :goto_17

    :cond_29
    move v2, v9

    :goto_17
    const/16 v5, 0x73

    new-array v12, v9, [I

    .line 122
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v12, v8

    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 123
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    const v7, 0xff00

    and-int/2addr v5, v7

    or-int/2addr v1, v5

    and-int/2addr v1, v11

    if-nez v2, :cond_31

    const/4 v2, -0x1

    if-le v1, v2, :cond_2b

    const/16 v2, 0x29

    if-ge v1, v2, :cond_2b

    :cond_2a
    move v6, v8

    goto :goto_18

    :cond_2b
    const/16 v2, 0x29

    if-lt v1, v2, :cond_2c

    const/16 v2, 0x52

    if-ge v1, v2, :cond_2c

    move v6, v9

    goto :goto_18

    :cond_2c
    const/16 v2, 0x52

    if-lt v1, v2, :cond_2d

    const/16 v2, 0x7b

    if-ge v1, v2, :cond_2d

    move v6, v4

    goto :goto_18

    :cond_2d
    const/16 v2, 0x7b

    if-lt v1, v2, :cond_2e

    const/16 v2, 0xa4

    if-ge v1, v2, :cond_2e

    move v6, v10

    goto :goto_18

    :cond_2e
    const/16 v2, 0xa4

    if-lt v1, v2, :cond_2f

    const/16 v2, 0xcd

    if-ge v1, v2, :cond_2f

    goto :goto_18

    :cond_2f
    const/16 v2, 0xcd

    if-lt v1, v2, :cond_2a

    move v6, v3

    :goto_18
    const/16 v2, 0x71

    new-array v3, v9, [I

    aput v6, v3, v8

    .line 124
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    if-le v1, v2, :cond_30

    const/16 v1, 0xfa

    :cond_30
    mul-int/lit8 v1, v1, 0x64

    .line 125
    div-int/lit16 v1, v1, 0xfa

    const/16 v2, 0x72

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 126
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_31
    const/4 v2, -0x1

    if-le v1, v2, :cond_33

    const/16 v2, 0xa6

    if-ge v1, v2, :cond_33

    :cond_32
    move v6, v8

    goto :goto_19

    :cond_33
    const/16 v2, 0xa6

    if-lt v1, v2, :cond_34

    const/16 v2, 0x14c

    if-ge v1, v2, :cond_34

    move v6, v9

    goto :goto_19

    :cond_34
    const/16 v2, 0x14c

    if-lt v1, v2, :cond_35

    const/16 v2, 0x1f2

    if-ge v1, v2, :cond_35

    move v6, v4

    goto :goto_19

    :cond_35
    const/16 v2, 0x1f2

    if-lt v1, v2, :cond_36

    const/16 v2, 0x298

    if-ge v1, v2, :cond_36

    move v6, v10

    goto :goto_19

    :cond_36
    const/16 v2, 0x298

    if-lt v1, v2, :cond_37

    const/16 v2, 0x33e

    if-ge v1, v2, :cond_37

    goto :goto_19

    :cond_37
    const/16 v2, 0x33e

    if-lt v1, v2, :cond_32

    move v6, v3

    :goto_19
    const/16 v2, 0x71

    new-array v3, v9, [I

    aput v6, v3, v8

    .line 127
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_38

    move/from16 v16, v2

    goto :goto_1a

    :cond_38
    move/from16 v16, v1

    :goto_1a
    mul-int/lit8 v1, v16, 0x64

    .line 128
    div-int/2addr v1, v2

    const/16 v2, 0x72

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 129
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_1
    add-int/lit8 v1, p2, 0x3

    .line 130
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    shl-int/2addr v2, v12

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/16 v2, 0x69

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 131
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_2
    add-int/lit8 v1, p2, 0x3

    .line 132
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    shl-int/2addr v2, v12

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/16 v2, 0x6e

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 133
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_3
    add-int/lit8 v1, p2, 0x3

    .line 134
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    shl-int/2addr v2, v12

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/16 v2, 0x64

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 135
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_4
    add-int/lit8 v1, p2, 0x4

    .line 136
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/16 v3, 0xa

    div-int/2addr v1, v3

    and-int/2addr v1, v11

    add-int/lit8 v3, p2, 0x3

    .line 137
    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x6a

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 138
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_5
    add-int/lit8 v1, p2, 0x4

    .line 139
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/16 v3, 0xa

    div-int/2addr v1, v3

    and-int/2addr v1, v11

    add-int/lit8 v3, p2, 0x3

    .line 140
    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x6f

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 141
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_6
    add-int/lit8 v1, p2, 0x4

    .line 142
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/16 v3, 0xa

    div-int/2addr v1, v3

    and-int/2addr v1, v11

    add-int/lit8 v3, p2, 0x3

    .line 143
    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x65

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 144
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_7
    add-int/lit8 v1, p2, 0x4

    .line 145
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xa

    div-int/2addr v1, v2

    and-int/2addr v1, v11

    add-int/lit8 v2, p2, 0x3

    .line 146
    aget-byte v2, p1, v2

    shl-int/2addr v2, v5

    const/high16 v3, -0x20000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x66

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 147
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_8
    add-int/lit8 v1, p2, 0x4

    .line 148
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xa

    div-int/2addr v1, v2

    and-int/2addr v1, v11

    add-int/lit8 v2, p2, 0x3

    .line 149
    aget-byte v2, p1, v2

    shl-int/2addr v2, v5

    const/high16 v3, -0x20000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x6b

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_9
    add-int/lit8 v1, p2, 0x4

    .line 151
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xa

    div-int/2addr v1, v2

    and-int/2addr v1, v11

    add-int/lit8 v2, p2, 0x3

    .line 152
    aget-byte v2, p1, v2

    shl-int/2addr v2, v5

    const/high16 v3, -0x20000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x61

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 153
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_a
    add-int/lit8 v1, p2, 0x4

    .line 154
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    or-int/2addr v1, v8

    or-int/2addr v1, v8

    const/16 v3, 0xa

    div-int/2addr v1, v3

    const v3, 0x1fffffff

    and-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x3

    .line 155
    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x68

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 156
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_b
    add-int/lit8 v1, p2, 0x4

    .line 157
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    or-int/2addr v1, v8

    or-int/2addr v1, v8

    const/16 v3, 0xa

    div-int/2addr v1, v3

    const v3, 0x1fffffff

    and-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x3

    .line 158
    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x6d

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 159
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_c
    add-int/lit8 v1, p2, 0x4

    .line 160
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    or-int/2addr v1, v8

    or-int/2addr v1, v8

    const/16 v3, 0xa

    div-int/2addr v1, v3

    const v3, 0x1fffffff

    and-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x3

    .line 161
    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x63

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 162
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :sswitch_d
    add-int/lit8 v1, p2, 0x4

    .line 163
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    and-int/2addr v1, v11

    add-int/lit8 v3, p2, 0x3

    .line 164
    aget-byte v3, p1, v3

    shl-int/2addr v3, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x62

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 165
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 166
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 167
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_39
    add-int/lit8 v1, p2, 0x2

    .line 168
    aget-byte v1, p1, v1

    const/16 v5, -0x80

    if-eq v1, v5, :cond_45

    const/16 v5, -0x70

    if-eq v1, v5, :cond_43

    if-eq v1, v12, :cond_42

    if-eq v1, v11, :cond_41

    const/16 v5, 0x40

    if-eq v1, v5, :cond_40

    const/16 v5, 0x60

    if-eq v1, v5, :cond_3f

    const/16 v5, 0x70

    if-eq v1, v5, :cond_3e

    const/16 v5, 0x30

    if-eq v1, v5, :cond_3d

    const/16 v5, 0x31

    if-eq v1, v5, :cond_3c

    const/16 v4, 0x50

    if-eq v1, v4, :cond_3b

    const/16 v2, 0x51

    if-eq v1, v2, :cond_3a

    goto/16 :goto_20

    :cond_3a
    const/16 v1, 0x8e

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 169
    aget-byte v4, p1, v4

    and-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x90

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 170
    aget-byte v4, p1, v4

    and-int/2addr v4, v7

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x91

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x5

    .line 171
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_3b
    const/16 v1, 0x8b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 172
    aget-byte v5, p1, v4

    and-int/2addr v5, v15

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8c

    new-array v3, v9, [I

    .line 173
    aget-byte v5, p1, v4

    and-int/2addr v5, v12

    aput v5, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8d

    new-array v3, v9, [I

    .line 174
    aget-byte v5, p1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xaf

    new-array v3, v9, [I

    .line 175
    aget-byte v4, p1, v4

    const/16 v5, 0x40

    and-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 176
    aget-byte v4, p1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x92

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 177
    aget-byte v4, p1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x93

    new-array v3, v9, [I

    add-int/lit8 v2, p2, 0x6

    .line 178
    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    aput v2, v3, v8

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_3c
    const/16 v1, 0x7f

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 179
    aget-byte v5, p1, v3

    and-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x81

    new-array v2, v9, [I

    .line 180
    aget-byte v5, p1, v3

    and-int/2addr v4, v5

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x82

    new-array v2, v9, [I

    .line 181
    aget-byte v4, p1, v3

    and-int/2addr v4, v6

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x83

    new-array v2, v9, [I

    .line 182
    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x8

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7e

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 183
    aget-byte v4, p1, v3

    and-int/2addr v4, v15

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x80

    new-array v2, v9, [I

    .line 184
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_3d
    const/16 v1, 0x84

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 185
    aget-byte v5, p1, v3

    and-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x86

    new-array v2, v9, [I

    .line 186
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_3e
    const/16 v1, 0x88

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 187
    aget-byte v4, p1, v3

    and-int/2addr v4, v15

    and-int/2addr v4, v7

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x89

    new-array v2, v9, [I

    .line 188
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8a

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 189
    aget-byte v3, p1, v3

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_3f
    const/16 v1, 0x94

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 190
    aget-byte v5, p1, v3

    and-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x95

    new-array v2, v9, [I

    .line 191
    aget-byte v5, p1, v3

    and-int/2addr v4, v5

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x97

    new-array v2, v9, [I

    .line 192
    aget-byte v4, p1, v3

    and-int/2addr v4, v6

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x98

    new-array v2, v9, [I

    .line 193
    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x8

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x96

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 194
    aget-byte v3, p1, v3

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_40
    const/16 v1, 0x74

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 195
    aget-byte v4, p1, v4

    and-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x75

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 196
    aget-byte v5, p1, v4

    and-int/2addr v5, v15

    invoke-virtual {v0, v5}, Lk0/h9;->h3(I)I

    move-result v5

    sub-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x76

    new-array v2, v9, [I

    .line 197
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lk0/h9;->h3(I)I

    move-result v4

    sub-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x77

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x5

    .line 198
    aget-byte v4, p1, v3

    and-int/2addr v4, v15

    invoke-virtual {v0, v4}, Lk0/h9;->h3(I)I

    move-result v4

    sub-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x78

    new-array v2, v9, [I

    .line 199
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lk0/h9;->h3(I)I

    move-result v3

    sub-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_41
    const/16 v1, 0x7d

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 200
    aget-byte v5, p1, v3

    and-int/2addr v4, v5

    shl-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, p1, v5

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7c

    new-array v2, v9, [I

    .line 201
    aget-byte v3, p1, v3

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_42
    const/16 v1, 0xa2

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 202
    aget-byte v3, p1, v3

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_43
    const/16 v1, 0xb4

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 203
    aget-byte v5, p1, v3

    and-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb5

    new-array v2, v9, [I

    .line 204
    aget-byte v5, p1, v3

    and-int/2addr v5, v4

    shr-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa3

    new-array v2, v9, [I

    .line 205
    aget-byte v5, p1, v3

    and-int/2addr v5, v6

    shr-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_44

    move v4, v8

    goto :goto_1b

    :cond_44
    move v4, v9

    :goto_1b
    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa4

    new-array v2, v9, [I

    .line 206
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa5

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 207
    aget-byte v4, p1, v3

    and-int/2addr v4, v15

    and-int/2addr v4, v7

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa6

    new-array v2, v9, [I

    .line 208
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_45
    const/16 v1, 0x99

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 209
    aget-byte v5, p1, v3

    and-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9a

    new-array v2, v9, [I

    .line 210
    aget-byte v5, p1, v3

    and-int/2addr v5, v4

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9b

    new-array v2, v9, [I

    .line 211
    aget-byte v5, p1, v3

    and-int/2addr v5, v6

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9c

    new-array v2, v9, [I

    .line 212
    aget-byte v5, p1, v3

    and-int/lit8 v5, v5, 0x8

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9d

    new-array v2, v9, [I

    .line 213
    aget-byte v5, p1, v3

    and-int/2addr v5, v12

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9e

    new-array v2, v9, [I

    .line 214
    aget-byte v5, p1, v3

    and-int/2addr v5, v11

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9f

    new-array v2, v9, [I

    .line 215
    aget-byte v5, p1, v3

    const/16 v7, 0x40

    and-int/2addr v5, v7

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa0

    new-array v2, v9, [I

    .line 216
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa1

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x4

    .line 217
    aget-byte v5, p1, v3

    and-int/2addr v5, v9

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb6

    new-array v2, v9, [I

    .line 218
    aget-byte v3, p1, v3

    and-int/2addr v3, v4

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 219
    :cond_46
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    add-int/lit8 v1, p2, 0x2

    .line 220
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 221
    aget-byte v2, p1, v2

    and-int/2addr v1, v7

    .line 222
    iput v1, v0, Lk0/h9;->i:I

    move v1, v8

    .line 223
    :goto_1c
    iget-object v2, v0, Lk0/h9;->j:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_48

    .line 224
    iget v3, v0, Lk0/h9;->i:I

    aget-object v4, v2, v1

    aget v4, v4, v8

    if-ne v3, v4, :cond_47

    if-eqz v3, :cond_48

    .line 225
    iput v1, v0, Lk0/h9;->h:I

    goto :goto_1d

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 226
    :cond_48
    :goto_1d
    aget-object v2, v2, v1

    aget v2, v2, v9

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 227
    iget-object v2, v0, Lk0/h9;->j:[[I

    aget-object v1, v2, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_20

    :cond_49
    add-int/lit8 v1, p2, 0x2

    .line 228
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x4dce

    invoke-static {v1, v2, v9, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_20

    :cond_4a
    const/16 v1, 0xae

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 229
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-nez v4, :cond_4b

    move v4, v9

    goto :goto_1e

    :cond_4b
    move v4, v8

    :goto_1e
    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 230
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 231
    aget-byte v1, p1, v3

    add-int/lit8 v2, p2, 0x3

    .line 232
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 233
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    and-int/2addr v2, v7

    or-int/2addr v2, v3

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_4d

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_4c

    not-int v1, v2

    add-int/2addr v1, v9

    const/16 v3, 0x3e8

    sub-int/2addr v3, v1

    goto :goto_1f

    :cond_4c
    const/16 v3, 0x3e8

    not-int v1, v2

    add-int/2addr v1, v9

    .line 234
    rem-int/lit8 v2, v1, 0xa

    const/16 v4, 0xa

    .line 235
    div-int/2addr v1, v4

    mul-int/2addr v1, v4

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    goto :goto_1f

    :cond_4d
    const/16 v3, 0x3e8

    const/16 v4, 0xa

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_4e

    add-int/2addr v3, v2

    goto :goto_1f

    .line 236
    :cond_4e
    rem-int/lit8 v1, v2, 0xa

    .line 237
    div-int/2addr v2, v4

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int v3, v2, v1

    .line 238
    :goto_1f
    invoke-static {v3}, Lu0/d;->A3(I)V

    :cond_4f
    :goto_20
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_d
        0x20 -> :sswitch_c
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x30 -> :sswitch_9
        0x31 -> :sswitch_8
        0x32 -> :sswitch_7
        0x40 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x50 -> :sswitch_3
        0x51 -> :sswitch_2
        0x52 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/h9;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/h9;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/h9;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/h9;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/h9;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/h9;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_1

    const/16 p3, 0x1cd

    if-ge p2, p3, :cond_1

    const/16 p3, 0xb3

    if-eq p2, p3, :cond_0

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_3

    :goto_0
    :pswitch_0
    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    .line 2
    iget-object v0, p0, Lk0/h9;->b:[[I

    aget-object v0, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :goto_1
    :pswitch_1
    const/4 v0, 0x6

    if-ge p3, v0, :cond_1

    .line 3
    iget-object v0, p0, Lk0/h9;->c:[[I

    aget-object v0, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :goto_2
    :pswitch_2
    const/4 v0, 0x7

    if-ge p3, v0, :cond_1

    .line 4
    iget-object v0, p0, Lk0/h9;->d:[[I

    aget-object v0, v0, p3

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 5
    :cond_0
    iget-object p3, p0, Lk0/h9;->n:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lo1/x;->u(Ly/b;ILjava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 5

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_40

    if-eq p1, p3, :cond_3e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3c

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3a

    const/16 v1, 0x35

    if-eq p1, v1, :cond_38

    const/16 v2, 0x62

    const/4 v3, 0x3

    if-eq p1, v2, :cond_33

    const/16 v4, 0x65

    if-eq p1, v4, :cond_30

    const/16 v4, 0x9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_0
    if-eqz p2, :cond_42

    .line 1
    array-length p1, p2

    if-lez p1, :cond_42

    .line 2
    aget p1, p2, p4

    if-gez p1, :cond_0

    .line 3
    aput p4, p2, p4

    goto :goto_0

    .line 4
    :cond_0
    aget p1, p2, p4

    if-le p1, v0, :cond_1

    .line 5
    aput v0, p2, p4

    :cond_1
    :goto_0
    const/16 p1, 0x95

    .line 6
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_1
    if-eqz p2, :cond_42

    .line 7
    array-length p1, p2

    if-lez p1, :cond_42

    .line 8
    aget p1, p2, p4

    if-gez p1, :cond_2

    .line 9
    aput p4, p2, p4

    goto :goto_1

    .line 10
    :cond_2
    aget p1, p2, p4

    if-le p1, v3, :cond_3

    .line 11
    aput v3, p2, p4

    :cond_3
    :goto_1
    const/16 p1, 0x94

    .line 12
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_2
    if-eqz p2, :cond_42

    .line 13
    array-length p1, p2

    if-lez p1, :cond_42

    .line 14
    aget p1, p2, p4

    if-gez p1, :cond_4

    .line 15
    aput p4, p2, p4

    goto :goto_2

    .line 16
    :cond_4
    aget p1, p2, p4

    if-le p1, v0, :cond_5

    .line 17
    aput v0, p2, p4

    :cond_5
    :goto_2
    const/16 p1, 0x93

    .line 18
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_3
    if-eqz p2, :cond_42

    .line 19
    array-length p1, p2

    if-lez p1, :cond_42

    .line 20
    aget p1, p2, p4

    if-eqz p1, :cond_6

    .line 21
    aput p3, p2, p4

    :cond_6
    const/16 p1, 0x92

    .line 22
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_4
    if-eqz p2, :cond_42

    .line 23
    array-length p1, p2

    if-lez p1, :cond_42

    .line 24
    aget p1, p2, p4

    if-eqz p1, :cond_7

    .line 25
    aput p3, p2, p4

    :cond_7
    const/16 p1, 0x10

    .line 26
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_5
    if-eqz p2, :cond_42

    .line 27
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x8b

    .line 28
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_6
    if-eqz p2, :cond_42

    .line 29
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x8a

    .line 30
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_7
    if-eqz p2, :cond_42

    .line 31
    array-length p1, p2

    if-lez p1, :cond_42

    .line 32
    aget p1, p2, p4

    if-eqz p1, :cond_8

    .line 33
    aput p3, p2, p4

    :cond_8
    const/16 p1, 0x88

    .line 34
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_8
    if-eqz p2, :cond_42

    .line 35
    array-length p1, p2

    if-lez p1, :cond_42

    .line 36
    aget p1, p2, p4

    if-eqz p1, :cond_9

    .line 37
    aput p3, p2, p4

    :cond_9
    const/16 p1, 0x87

    .line 38
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_9
    if-eqz p2, :cond_42

    .line 39
    array-length p1, p2

    if-lez p1, :cond_42

    .line 40
    aget p1, p2, p4

    if-eqz p1, :cond_a

    .line 41
    aput p3, p2, p4

    :cond_a
    const/16 p1, 0x86

    .line 42
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_a
    if-eqz p2, :cond_42

    .line 43
    array-length p1, p2

    if-lez p1, :cond_42

    .line 44
    aget p1, p2, p4

    if-eqz p1, :cond_b

    .line 45
    aput p3, p2, p4

    :cond_b
    const/16 p1, 0x85

    .line 46
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_b
    if-eqz p2, :cond_42

    .line 47
    array-length p1, p2

    if-lez p1, :cond_42

    .line 48
    aget p1, p2, p4

    if-eqz p1, :cond_c

    .line 49
    aput p3, p2, p4

    :cond_c
    const/16 p1, 0x84

    .line 50
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_c
    if-eqz p2, :cond_42

    .line 51
    array-length p1, p2

    if-lez p1, :cond_42

    .line 52
    aget p1, p2, p4

    if-eqz p1, :cond_d

    .line 53
    aput p3, p2, p4

    :cond_d
    const/16 p1, 0x83

    .line 54
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_d
    if-eqz p2, :cond_42

    .line 55
    array-length p1, p2

    if-lez p1, :cond_42

    .line 56
    aget p1, p2, p4

    if-eqz p1, :cond_e

    .line 57
    aput p3, p2, p4

    :cond_e
    const/16 p1, 0x82

    .line 58
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_e
    if-eqz p2, :cond_42

    .line 59
    array-length p1, p2

    if-lez p1, :cond_42

    .line 60
    aget p1, p2, p4

    if-eqz p1, :cond_f

    .line 61
    aput p3, p2, p4

    :cond_f
    const/16 p1, 0x81

    .line 62
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_f
    if-eqz p2, :cond_42

    .line 63
    array-length p1, p2

    if-lez p1, :cond_42

    .line 64
    aget p1, p2, p4

    if-eqz p1, :cond_10

    .line 65
    aput p3, p2, p4

    :cond_10
    const/16 p1, 0x80

    .line 66
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_10
    if-eqz p2, :cond_42

    .line 67
    array-length p1, p2

    if-lez p1, :cond_42

    .line 68
    aget p1, p2, p4

    if-eqz p1, :cond_11

    .line 69
    aput p3, p2, p4

    :cond_11
    const/16 p1, 0x72

    .line 70
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_11
    if-eqz p2, :cond_42

    .line 71
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x71

    .line 72
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_12
    if-eqz p2, :cond_42

    .line 73
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x70

    .line 74
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_13
    if-eqz p2, :cond_42

    .line 75
    array-length p1, p2

    if-lez p1, :cond_42

    .line 76
    aget p1, p2, p4

    if-eqz p1, :cond_12

    .line 77
    aput p3, p2, p4

    :cond_12
    const/16 p1, 0x63

    .line 78
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_14
    if-eqz p2, :cond_42

    .line 79
    array-length p1, p2

    if-lez p1, :cond_42

    .line 80
    aget p1, p2, p4

    if-eqz p1, :cond_13

    .line 81
    aput p3, p2, p4

    .line 82
    :cond_13
    aget p1, p2, p4

    invoke-virtual {p0, v2, p1}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_15
    if-eqz p2, :cond_42

    .line 83
    array-length p1, p2

    if-lez p1, :cond_42

    .line 84
    aget p1, p2, p4

    if-eqz p1, :cond_14

    .line 85
    aput p3, p2, p4

    :cond_14
    const/16 p1, 0x64

    .line 86
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_16
    if-eqz p2, :cond_42

    .line 87
    array-length p1, p2

    if-lez p1, :cond_42

    .line 88
    aget p1, p2, p4

    if-eqz p1, :cond_15

    .line 89
    aput p3, p2, p4

    :cond_15
    const/16 p1, 0x61

    .line 90
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_17
    if-eqz p2, :cond_42

    .line 91
    array-length p1, p2

    if-lez p1, :cond_42

    .line 92
    aget p1, p2, p4

    if-eqz p1, :cond_16

    .line 93
    aput p3, p2, p4

    :cond_16
    const/16 p1, 0x60

    .line 94
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_18
    if-eqz p2, :cond_42

    .line 95
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x55

    .line 96
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_19
    if-eqz p2, :cond_42

    .line 97
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x54

    .line 98
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_1a
    if-eqz p2, :cond_42

    .line 99
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x58

    .line 100
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_1b
    if-eqz p2, :cond_42

    .line 101
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x57

    .line 102
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_1c
    if-eqz p2, :cond_42

    .line 103
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x53

    .line 104
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_1d
    if-eqz p2, :cond_42

    .line 105
    array-length p1, p2

    if-lez p1, :cond_42

    .line 106
    aget p1, p2, p4

    if-eqz p1, :cond_17

    .line 107
    aput p3, p2, p4

    :cond_17
    const/16 p1, 0x56

    .line 108
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_1e
    if-eqz p2, :cond_42

    .line 109
    array-length p1, p2

    if-lez p1, :cond_42

    .line 110
    aget p1, p2, p4

    if-eqz p1, :cond_18

    .line 111
    aput p3, p2, p4

    :cond_18
    const/16 p1, 0x52

    .line 112
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_1f
    if-eqz p2, :cond_42

    .line 113
    array-length p1, p2

    if-lez p1, :cond_42

    .line 114
    aget p1, p2, p4

    if-eqz p1, :cond_19

    .line 115
    aput p3, p2, p4

    :cond_19
    const/16 p1, 0x51

    .line 116
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_20
    if-eqz p2, :cond_42

    .line 117
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x50

    .line 118
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_21
    if-eqz p2, :cond_42

    .line 119
    array-length p1, p2

    if-lez p1, :cond_42

    .line 120
    aget p1, p2, p4

    if-eqz p1, :cond_1a

    .line 121
    aput p3, p2, p4

    :cond_1a
    const/16 p1, 0x32

    .line 122
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_22
    if-eqz p2, :cond_42

    .line 123
    array-length p1, p2

    if-lez p1, :cond_42

    .line 124
    aget p1, p2, p4

    if-ge p1, p3, :cond_1b

    .line 125
    aput p3, p2, p4

    goto :goto_3

    .line 126
    :cond_1b
    aget p1, p2, p4

    if-le p1, v3, :cond_1c

    .line 127
    aput v3, p2, p4

    :cond_1c
    :goto_3
    const/16 p1, 0x37

    .line 128
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_23
    if-eqz p2, :cond_42

    .line 129
    array-length p1, p2

    if-lez p1, :cond_42

    .line 130
    aget p1, p2, p4

    if-gez p1, :cond_1d

    .line 131
    aput p4, p2, p4

    goto :goto_4

    .line 132
    :cond_1d
    aget p1, p2, p4

    const/4 p3, 0x4

    if-le p1, p3, :cond_1e

    .line 133
    aput p3, p2, p4

    :cond_1e
    :goto_4
    const/16 p1, 0x38

    .line 134
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_24
    if-eqz p2, :cond_42

    .line 135
    array-length p1, p2

    if-lez p1, :cond_42

    .line 136
    aget p1, p2, p4

    if-eqz p1, :cond_1f

    .line 137
    aput p3, p2, p4

    :cond_1f
    const/16 p1, 0x30

    .line 138
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_25
    if-eqz p2, :cond_42

    .line 139
    array-length p1, p2

    if-lez p1, :cond_42

    .line 140
    aget p1, p2, p4

    if-eqz p1, :cond_20

    .line 141
    aput p3, p2, p4

    .line 142
    :cond_20
    aget p1, p2, p4

    invoke-virtual {p0, v1, p1}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_26
    if-eqz p2, :cond_42

    .line 143
    array-length p1, p2

    if-lez p1, :cond_42

    .line 144
    aget p1, p2, p4

    if-eqz p1, :cond_21

    .line 145
    aput p3, p2, p4

    :cond_21
    const/16 p1, 0x34

    .line 146
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_27
    if-eqz p2, :cond_42

    .line 147
    array-length p1, p2

    if-lez p1, :cond_42

    .line 148
    aget p1, p2, p4

    if-eqz p1, :cond_22

    .line 149
    aput p3, p2, p4

    :cond_22
    const/16 p1, 0x33

    .line 150
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_28
    if-eqz p2, :cond_42

    .line 151
    array-length p1, p2

    if-lez p1, :cond_42

    const/16 p1, 0x21

    .line 152
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_29
    if-eqz p2, :cond_42

    .line 153
    array-length p1, p2

    if-lez p1, :cond_42

    .line 154
    aget p1, p2, p4

    if-eqz p1, :cond_23

    .line 155
    aput p3, p2, p4

    :cond_23
    const/16 p1, 0x20

    .line 156
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_2a
    const/16 p1, 0x22

    .line 157
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_2b
    if-eqz p2, :cond_2e

    .line 158
    array-length p1, p2

    if-lez p1, :cond_2e

    .line 159
    aget p1, p2, p4

    if-eqz p1, :cond_2e

    .line 160
    aput p3, p2, p4

    goto/16 :goto_9

    :pswitch_2c
    if-eqz p2, :cond_42

    .line 161
    array-length p1, p2

    if-lez p1, :cond_42

    .line 162
    aget p1, p2, p4

    add-int/2addr p1, p3

    aput p1, p2, p4

    .line 163
    aget p1, p2, p4

    if-ge p1, p3, :cond_24

    .line 164
    aput p3, p2, p4

    goto :goto_5

    .line 165
    :cond_24
    aget p1, p2, p4

    if-le p1, v4, :cond_25

    .line 166
    aput v4, p2, p4

    :cond_25
    :goto_5
    const/16 p1, 0x44

    .line 167
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_2d
    if-eqz p2, :cond_42

    .line 168
    array-length p1, p2

    if-lez p1, :cond_42

    .line 169
    aget p1, p2, p4

    add-int/2addr p1, p3

    aput p1, p2, p4

    .line 170
    aget p1, p2, p4

    if-ge p1, p3, :cond_26

    .line 171
    aput p3, p2, p4

    goto :goto_6

    .line 172
    :cond_26
    aget p1, p2, p4

    if-le p1, v4, :cond_27

    .line 173
    aput v4, p2, p4

    :cond_27
    :goto_6
    const/16 p1, 0x43

    .line 174
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_2e
    if-eqz p2, :cond_42

    .line 175
    array-length p1, p2

    if-lez p1, :cond_42

    .line 176
    aget p1, p2, p4

    add-int/2addr p1, p3

    aput p1, p2, p4

    .line 177
    aget p1, p2, p4

    if-ge p1, p3, :cond_28

    .line 178
    aput p3, p2, p4

    goto :goto_7

    .line 179
    :cond_28
    aget p1, p2, p4

    if-le p1, v4, :cond_29

    .line 180
    aput v4, p2, p4

    :cond_29
    :goto_7
    const/16 p1, 0x42

    .line 181
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_2f
    if-eqz p2, :cond_42

    .line 182
    array-length p1, p2

    if-lez p1, :cond_42

    .line 183
    aget p1, p2, p4

    add-int/2addr p1, p3

    aput p1, p2, p4

    .line 184
    aget p1, p2, p4

    if-ge p1, p3, :cond_2a

    .line 185
    aput p3, p2, p4

    goto :goto_8

    .line 186
    :cond_2a
    aget p1, p2, p4

    if-le p1, v4, :cond_2b

    .line 187
    aput v4, p2, p4

    :cond_2b
    :goto_8
    const/16 p1, 0x41

    .line 188
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_30
    if-eqz p2, :cond_42

    .line 189
    array-length p1, p2

    if-lez p1, :cond_42

    .line 190
    aget p1, p2, p4

    if-eqz p1, :cond_2c

    .line 191
    aput p3, p2, p4

    :cond_2c
    const/16 p1, 0x40

    .line 192
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_31
    if-eqz p2, :cond_42

    .line 193
    array-length p1, p2

    if-lez p1, :cond_42

    .line 194
    aget p1, p2, p4

    if-eqz p1, :cond_2d

    .line 195
    aput p3, p2, p4

    :cond_2d
    const/16 p1, 0xb2

    .line 196
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_32
    if-eqz p2, :cond_42

    .line 197
    array-length v0, p2

    if-lez v0, :cond_42

    .line 198
    aget p2, p2, p4

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_b

    :pswitch_33
    const/16 p1, 0xc6

    .line 199
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_34
    const/16 p1, 0xc5

    .line 200
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_35
    const/16 p1, 0xc4

    .line 201
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_36
    const/16 p1, 0xc3

    .line 202
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_37
    const/16 p1, 0xc2

    .line 203
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_38
    const/16 p1, 0xc1

    .line 204
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :pswitch_39
    const/16 p1, 0xc7

    .line 205
    invoke-virtual {p0, p1, p3}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :cond_2e
    :goto_9
    :pswitch_3a
    if-eqz p2, :cond_42

    .line 206
    array-length p1, p2

    if-lez p1, :cond_42

    .line 207
    aget p1, p2, p4

    if-eqz p1, :cond_2f

    .line 208
    aput p3, p2, p4

    :cond_2f
    const/16 p1, 0xab

    .line 209
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :cond_30
    if-eqz p2, :cond_42

    .line 210
    array-length p1, p2

    if-lez p1, :cond_42

    .line 211
    aget p1, p2, p4

    if-gez p1, :cond_31

    .line 212
    aput p4, p2, p4

    goto :goto_a

    .line 213
    :cond_31
    aget p1, p2, p4

    if-le p1, v0, :cond_32

    .line 214
    aput v0, p2, p4

    :cond_32
    :goto_a
    const/16 p1, 0xb1

    .line 215
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto/16 :goto_b

    :cond_33
    if-eqz p2, :cond_42

    .line 216
    array-length p1, p2

    if-lez p1, :cond_42

    .line 217
    aget p1, p2, p4

    const/4 v1, 0x5

    if-nez p1, :cond_34

    new-array p1, v1, [I

    .line 218
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 219
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 220
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 221
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 222
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 223
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 224
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 225
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 226
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 227
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 228
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 229
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 230
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 231
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_b

    .line 232
    :cond_34
    aget p1, p2, p4

    if-ne p1, p3, :cond_35

    new-array p1, v1, [I

    .line 233
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 234
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 235
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 236
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 237
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 238
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 239
    fill-array-data p1, :array_14

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 240
    fill-array-data p1, :array_15

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 241
    fill-array-data p1, :array_16

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 242
    fill-array-data p1, :array_17

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 243
    fill-array-data p1, :array_18

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 244
    fill-array-data p1, :array_19

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 245
    fill-array-data p1, :array_1a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_b

    .line 246
    :cond_35
    aget p1, p2, p4

    if-ne p1, v0, :cond_36

    new-array p1, v1, [I

    .line 247
    fill-array-data p1, :array_1b

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 248
    fill-array-data p1, :array_1c

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 249
    fill-array-data p1, :array_1d

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 250
    fill-array-data p1, :array_1e

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 251
    fill-array-data p1, :array_1f

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 252
    fill-array-data p1, :array_20

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 253
    fill-array-data p1, :array_21

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 254
    fill-array-data p1, :array_22

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 255
    fill-array-data p1, :array_23

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 256
    fill-array-data p1, :array_24

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 257
    fill-array-data p1, :array_25

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 258
    fill-array-data p1, :array_26

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 259
    fill-array-data p1, :array_27

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 260
    fill-array-data p1, :array_28

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 261
    fill-array-data p1, :array_29

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_b

    .line 262
    :cond_36
    aget p1, p2, p4

    if-ne p1, v3, :cond_37

    new-array p1, v1, [I

    .line 263
    fill-array-data p1, :array_2a

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 264
    fill-array-data p1, :array_2b

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 265
    fill-array-data p1, :array_2c

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 266
    fill-array-data p1, :array_2d

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 267
    fill-array-data p1, :array_2e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_b

    .line 268
    :cond_37
    aget p1, p2, p4

    const/16 p2, 0xff

    if-ne p1, p2, :cond_42

    new-array p1, v1, [I

    .line 269
    fill-array-data p1, :array_2f

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_b

    :cond_38
    if-eqz p2, :cond_42

    .line 270
    array-length p1, p2

    if-lez p1, :cond_42

    .line 271
    aget p1, p2, p4

    if-eqz p1, :cond_39

    .line 272
    aput p3, p2, p4

    :cond_39
    const/16 p1, 0x31

    .line 273
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto :goto_b

    :cond_3a
    if-eqz p2, :cond_42

    .line 274
    array-length p1, p2

    if-lez p1, :cond_42

    .line 275
    aget p1, p2, p4

    if-eqz p1, :cond_3b

    .line 276
    aput p3, p2, p4

    :cond_3b
    const/16 p1, 0xc8

    .line 277
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto :goto_b

    :cond_3c
    if-eqz p2, :cond_42

    .line 278
    array-length p1, p2

    if-lez p1, :cond_42

    .line 279
    aget p1, p2, p4

    if-eqz p1, :cond_3d

    .line 280
    aput p3, p2, p4

    :cond_3d
    const/16 p1, 0x91

    .line 281
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto :goto_b

    :cond_3e
    if-eqz p2, :cond_42

    .line 282
    array-length p1, p2

    if-lez p1, :cond_42

    .line 283
    aget p1, p2, p4

    if-eqz p1, :cond_3f

    .line 284
    aput p3, p2, p4

    :cond_3f
    const/16 p1, 0x90

    .line 285
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    goto :goto_b

    :cond_40
    if-eqz p2, :cond_42

    .line 286
    array-length p1, p2

    if-lez p1, :cond_42

    .line 287
    aget p1, p2, p4

    if-eqz p1, :cond_41

    .line 288
    aput p3, p2, p4

    :cond_41
    const/16 p1, 0x89

    .line 289
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/h9;->d3(II)V

    :cond_42
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_3a
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x10
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x20
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x30
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x31
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x40
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x50
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x51
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x60
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        0x70
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        -0x80
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        -0x70
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        -0x60
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x70
        0x2
        0x40
        -0x50
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x10
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x20
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x30
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x31
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x40
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x50
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x51
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x60
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x70
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        -0x80
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        -0x70
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        -0x50
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x70
        0x2
        0x50
        0x10
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x20
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x21
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x22
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x30
    .end array-data

    :array_20
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x31
    .end array-data

    :array_21
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x32
    .end array-data

    :array_22
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x40
    .end array-data

    :array_23
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x41
    .end array-data

    :array_24
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x42
    .end array-data

    :array_25
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x50
    .end array-data

    :array_26
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x51
    .end array-data

    :array_27
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x52
    .end array-data

    :array_28
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x60
    .end array-data

    :array_29
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x61
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        -0x70
        0x2
        0x63
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0xe3
        -0x70
        0x2
        0x63
        0x10
    .end array-data

    :array_2c
    .array-data 4
        0xe3
        -0x70
        0x2
        0x63
        0x11
    .end array-data

    :array_2d
    .array-data 4
        0xe3
        -0x70
        0x2
        0x63
        0x20
    .end array-data

    :array_2e
    .array-data 4
        0xe3
        -0x70
        0x2
        0x63
        0x21
    .end array-data

    :array_2f
    .array-data 4
        0xe3
        -0x70
        0x2
        -0x1
        0x0
    .end array-data
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/16 v1, 0xc0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x8

    aput v3, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lk0/h9;->b3([I)V

    .line 2
    sget v4, Lu0/b;->D:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v10, 0x9

    const/4 v11, 0x4

    if-eq v4, v1, :cond_6

    if-eq v4, v6, :cond_3

    if-eq v4, v11, :cond_2

    if-eq v4, v3, :cond_0

    if-eq v4, v10, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget v1, Ln0/j4;->b:I

    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 4
    sget v1, Lu0/b;->r3:I

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v11

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v9

    aput v2, v0, v8

    .line 5
    sget v1, Lu0/b;->t3:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v0, v7

    .line 6
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v0, v3

    .line 7
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v10

    goto/16 :goto_1

    :cond_1
    aput v2, v0, v11

    aput v2, v0, v9

    .line 8
    sget v1, Lu0/b;->r3:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    .line 9
    sget v1, Lu0/b;->t3:I

    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v0, v3

    .line 10
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v10

    goto/16 :goto_1

    .line 11
    :cond_2
    sget v1, Lo0/e;->B:I

    and-int/lit16 v4, v1, 0xff

    aput v4, v0, v11

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v9

    aput v2, v0, v8

    .line 12
    sget v1, Lo0/e;->r:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v0, v7

    .line 13
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v0, v3

    .line 14
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v10

    goto :goto_1

    .line 15
    :cond_3
    sget v3, Lh0/c;->E:I

    if-nez v3, :cond_4

    aput v2, v0, v11

    goto :goto_1

    :cond_4
    if-gt v3, v5, :cond_5

    aput v1, v0, v11

    goto :goto_1

    :cond_5
    aput v6, v0, v11

    goto :goto_1

    .line 16
    :cond_6
    sget v4, Lw0/d;->i:I

    .line 17
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_7

    aput v1, v0, v11

    goto :goto_0

    :cond_7
    const v13, 0x10001

    if-ne v12, v13, :cond_8

    aput v6, v0, v11

    goto :goto_0

    :cond_8
    const v6, 0x10002

    if-ne v12, v6, :cond_9

    aput v5, v0, v11

    goto :goto_0

    :cond_9
    if-nez v12, :cond_a

    const/16 v1, 0x11

    aput v1, v0, v11

    goto :goto_0

    :cond_a
    if-ne v12, v1, :cond_b

    const/16 v1, 0x12

    aput v1, v0, v11

    :cond_b
    :goto_0
    and-int/lit16 v1, v4, 0xff

    aput v1, v0, v9

    shr-int/lit8 v1, v4, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v8

    .line 18
    sget v1, Lw0/d;->j:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v7

    aput v2, v0, v3

    aput v2, v0, v10

    :goto_1
    return-void
.end method

.method public final b3([I)V
    .locals 9

    if-eqz p1, :cond_5

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x7

    const/4 v2, 0x2

    .line 2
    aput v0, p1, v2

    const/16 v0, 0x30

    .line 3
    aput v0, p1, v1

    .line 4
    sget v0, Lu0/b;->D:I

    const/16 v3, 0x11

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/16 v6, 0x13

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5
    :pswitch_0
    aput v8, p1, v2

    .line 6
    aput v8, p1, v1

    goto :goto_0

    .line 7
    :pswitch_1
    sget v0, Ln0/j4;->b:I

    if-ne v0, v4, :cond_1

    .line 8
    aput v5, p1, v2

    .line 9
    aput v6, p1, v1

    goto :goto_0

    .line 10
    :cond_1
    aput v5, p1, v2

    .line 11
    aput v3, p1, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 12
    aput v0, p1, v2

    const/16 v0, 0x12

    .line 13
    aput v0, p1, v1

    goto :goto_0

    .line 14
    :pswitch_3
    sget v0, Ld1/d;->c:I

    if-ne v0, v7, :cond_2

    .line 15
    aput v1, p1, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    .line 16
    aput v0, p1, v2

    goto :goto_0

    .line 17
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v7, :cond_3

    .line 18
    aput v2, p1, v2

    .line 19
    aput v6, p1, v1

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 20
    aput v5, p1, v2

    .line 21
    aput v6, p1, v1

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    const/16 v0, 0x8

    .line 22
    aput v0, p1, v2

    .line 23
    aput v3, p1, v1

    goto :goto_0

    .line 24
    :pswitch_5
    aput v4, p1, v2

    .line 25
    aput v8, p1, v1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    .line 26
    aput v0, p1, v2

    const/16 v0, 0x40

    .line 27
    aput v0, p1, v1

    goto :goto_0

    .line 28
    :pswitch_7
    aput v7, p1, v2

    .line 29
    aput v7, p1, v1

    goto :goto_0

    .line 30
    :pswitch_8
    aput v8, p1, v2

    .line 31
    aput v8, p1, v1

    :cond_5
    :goto_0
    :pswitch_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public final c3()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    const/16 v4, 0x80

    aput v4, v1, v2

    .line 2
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    .line 3
    sput v4, Ly0/f;->C0:I

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final g3(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lk0/h9;->n:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lk0/h9;->n:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/h9;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, Lk0/h9;->n:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public final h3(I)I
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method
