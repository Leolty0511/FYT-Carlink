.class public Lk0/qn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qn;->c:I

    const/16 v1, 0x17

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

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/qn;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/qn;->e:Z

    .line 5
    iput v0, p0, Lk0/qn;->f:I

    .line 6
    iput v0, p0, Lk0/qn;->g:I

    .line 7
    new-instance v1, Lk0/qn$a;

    invoke-direct {v1, p0}, Lk0/qn$a;-><init>(Lk0/qn;)V

    iput-object v1, p0, Lk0/qn;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/qn$b;

    invoke-direct {v1, p0}, Lk0/qn$b;-><init>(Lk0/qn;)V

    iput-object v1, p0, Lk0/qn;->i:Ljava/lang/Runnable;

    .line 9
    iput v0, p0, Lk0/qn;->j:I

    .line 10
    new-instance v0, Lk0/qn$c;

    invoke-direct {v0, p0}, Lk0/qn$c;-><init>(Lk0/qn;)V

    iput-object v0, p0, Lk0/qn;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/qn$d;

    invoke-direct {v0, p0}, Lk0/qn$d;-><init>(Lk0/qn;)V

    iput-object v0, p0, Lk0/qn;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/qn$e;

    invoke-direct {v0, p0}, Lk0/qn$e;-><init>(Lk0/qn;)V

    iput-object v0, p0, Lk0/qn;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/qn$f;

    invoke-direct {v0, p0}, Lk0/qn$f;-><init>(Lk0/qn;)V

    iput-object v0, p0, Lk0/qn;->n:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x80
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x81
        0x5
    .end array-data

    :array_b
    .array-data 4
        0x82
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x83
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x84
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x86
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x88
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x89
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x8a
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x8b
        0x37
    .end array-data

    :array_15
    .array-data 4
        0x8c
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x8d
        0x3f
    .end array-data
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/qn;->k:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/qn;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/qn;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x0

    const v3, 0xd701c7

    if-eq v0, v3, :cond_1

    const v3, 0xd801c7

    if-eq v0, v3, :cond_1

    const v3, 0xa01c4

    if-eq v0, v3, :cond_1

    const v3, 0xb01c4

    if-eq v0, v3, :cond_1

    const v3, 0x5901c8

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/qn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lk0/qn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/qn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 10
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v2, v0, Lk0/mt;->e:I

    .line 12
    iput v2, v0, Lk0/mt;->f:I

    .line 13
    iput v2, v0, Lk0/mt;->g:I

    .line 14
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x11

    const/16 v5, 0xa

    const/16 v6, 0xb

    const/16 v8, 0xc

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v2, v3, :cond_22

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x42

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_19

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_18

    const/16 v3, 0x38

    const/16 v6, 0x9

    if-eq v2, v3, :cond_10

    const/16 v3, 0x39

    if-eq v2, v3, :cond_f

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v5, v1, v4

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x4

    .line 4
    aget-byte v7, v1, v6

    and-int/2addr v7, v13

    add-int/lit8 v8, p2, 0x5

    .line 5
    aget-byte v9, v1, v8

    and-int/2addr v9, v13

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v7, :cond_0

    if-nez v9, :cond_0

    .line 6
    invoke-static {v14}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_1

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_1

    sget v11, Ll0/c0;->i:I

    if-ne v11, v7, :cond_1

    sget v11, Ll0/c0;->j:I

    if-eq v11, v9, :cond_2

    .line 8
    :cond_1
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_2

    .line 9
    invoke-static {v15}, Lu0/d;->C2(I)V

    .line 10
    sput v10, Ll0/c0;->k:I

    .line 11
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 13
    sput v5, Ll0/c0;->h:I

    .line 14
    sput v7, Ll0/c0;->i:I

    .line 15
    sput v9, Ll0/c0;->j:I

    .line 16
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 17
    aget-byte v2, v1, v4

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 18
    aget-byte v2, v1, v6

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 19
    aget-byte v1, v1, v8

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 23
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 25
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    .line 26
    iput v2, v0, Lk0/qn;->c:I

    move v2, v14

    .line 27
    :goto_1
    iget-object v3, v0, Lk0/qn;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 28
    iget v4, v0, Lk0/qn;->c:I

    aget-object v16, v3, v2

    aget v7, v16, v14

    if-ne v4, v7, :cond_3

    if-eqz v4, :cond_4

    .line 29
    iput v2, v0, Lk0/qn;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_4
    :goto_2
    iget v4, v0, Lk0/qn;->c:I

    if-eq v4, v6, :cond_d

    if-eq v4, v5, :cond_b

    const/16 v5, 0x80

    if-eq v4, v5, :cond_6

    and-int/2addr v1, v13

    if-eqz v1, :cond_5

    .line 31
    array-length v1, v3

    if-ge v2, v1, :cond_31

    .line 32
    aget-object v1, v3, v2

    aget v1, v1, v15

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 33
    :cond_5
    array-length v1, v3

    if-gt v2, v1, :cond_31

    .line 34
    iget v1, v0, Lk0/qn;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 35
    :cond_6
    iget v2, v0, Lk0/qn;->f:I

    if-eq v2, v1, :cond_31

    .line 36
    iput v1, v0, Lk0/qn;->f:I

    if-ne v1, v15, :cond_7

    .line 37
    iput-boolean v14, v0, Lk0/qn;->e:Z

    goto/16 :goto_9

    :cond_7
    const/16 v2, 0x19

    if-ne v1, v12, :cond_8

    .line 38
    iput-boolean v15, v0, Lk0/qn;->e:Z

    .line 39
    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    .line 40
    invoke-static {v2, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_8
    if-nez v1, :cond_31

    .line 41
    iget-boolean v1, v0, Lk0/qn;->e:Z

    if-nez v1, :cond_a

    .line 42
    sget v1, Lu0/b;->j:I

    if-ne v1, v15, :cond_9

    .line 43
    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    .line 44
    invoke-static {v2, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 45
    :cond_9
    invoke-static {v8, v14}, Ll0/b0;->l0(II)V

    .line 46
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 47
    :cond_a
    iput-boolean v14, v0, Lk0/qn;->e:Z

    goto/16 :goto_9

    :cond_b
    and-int/2addr v1, v13

    if-ne v1, v15, :cond_31

    .line 48
    sget v1, Lh0/c;->E:I

    if-eq v1, v11, :cond_c

    if-eq v1, v10, :cond_c

    if-eq v1, v9, :cond_c

    .line 49
    invoke-static {v8, v14}, Ll0/b0;->l0(II)V

    .line 50
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_c
    const/16 v1, 0x1a

    .line 51
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 52
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_d
    and-int/2addr v1, v13

    if-ne v1, v15, :cond_31

    .line 53
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_e

    const/16 v1, 0xd

    .line 54
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 55
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_e
    const/16 v1, 0x12

    .line 56
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 57
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_f
    const/16 v2, 0x6a

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 58
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 59
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x4

    .line 60
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 61
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_11

    const/16 v3, 0x66

    new-array v4, v15, [I

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_12

    const/16 v3, 0x67

    new-array v4, v15, [I

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 66
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_13

    const/16 v3, 0x68

    new-array v4, v15, [I

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_13
    add-int/lit8 v2, p2, 0x5

    .line 68
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_14

    const/16 v3, 0x69

    new-array v4, v15, [I

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_14
    add-int/lit8 v2, p2, 0x6

    .line 70
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_15

    const/16 v3, 0x62

    new-array v4, v15, [I

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_15
    add-int/lit8 v2, p2, 0x7

    .line 72
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_16

    const/16 v3, 0x63

    new-array v4, v15, [I

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_16
    add-int/lit8 v2, p2, 0x8

    .line 74
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_17

    const/16 v3, 0x64

    new-array v4, v15, [I

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_17
    add-int/lit8 v2, p2, 0x9

    .line 76
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_31

    const/16 v3, 0x65

    new-array v4, v15, [I

    .line 77
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    aput v1, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 78
    :cond_18
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    if-eq v2, v15, :cond_1a

    goto/16 :goto_9

    :cond_1a
    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v3, v1, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v15

    aget-byte v4, v1, v2

    shr-int/2addr v4, v10

    and-int/2addr v4, v15

    invoke-static {v3, v4, v14}, Ll0/c0;->a(III)V

    .line 81
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v12, [I

    aput v6, v5, v14

    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    aput v1, v5, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1b
    const/16 v2, 0x84

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 82
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 83
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 84
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 85
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x7

    .line 86
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x8

    .line 87
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x9

    .line 88
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xa

    .line 89
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xb

    .line 90
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xc

    .line 91
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xd

    .line 92
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xe

    .line 93
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x10

    .line 94
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v15, [I

    .line 95
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v15, [I

    .line 96
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v15, [I

    .line 97
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v15

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1c
    const/16 v2, 0x6e

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 98
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 99
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x4

    .line 100
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 101
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 102
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x7

    .line 103
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x8

    .line 104
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x9

    .line 105
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xa

    .line 106
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xb

    .line 107
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xc

    .line 108
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xd

    .line 109
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xe

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xf

    .line 111
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x10

    .line 112
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x11

    .line 113
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x12

    .line 114
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v15, [I

    .line 115
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v15, [I

    .line 116
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v15, [I

    .line 117
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v15

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v15, [I

    .line 118
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v15

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x13

    .line 119
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 120
    :cond_1d
    sget v2, Lk0/nt;->a:I

    const v3, 0x8401c8

    if-eq v2, v3, :cond_1e

    const v3, 0x8501c8

    if-eq v2, v3, :cond_1e

    add-int/lit8 v2, p2, 0x3

    .line 121
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x2ee0

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_9

    :cond_1e
    add-int/lit8 v2, p2, 0x3

    .line 122
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x3300

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_9

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 123
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const-string v3, "persist.syu.reversefrontdoor"

    .line 124
    invoke-static {v3, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_20

    new-array v3, v15, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v15

    aput v4, v3, v14

    .line 125
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v15, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v15

    aput v4, v3, v14

    .line 126
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_20
    new-array v3, v15, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v15

    aput v4, v3, v14

    .line 127
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v15, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v15

    aput v4, v3, v14

    .line 128
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v3, v15, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v15

    aput v4, v3, v14

    .line 129
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v15, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v15

    aput v4, v3, v14

    .line 130
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v15, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v15

    aput v2, v3, v14

    .line 131
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 132
    aget-byte v1, v1, v2

    shr-int/2addr v1, v12

    and-int/2addr v1, v15

    if-ne v1, v15, :cond_21

    .line 133
    invoke-static {v15}, Lu0/d;->C2(I)V

    goto/16 :goto_9

    .line 134
    :cond_21
    invoke-static {v14}, Lu0/d;->C2(I)V

    goto/16 :goto_9

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 135
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x3

    .line 136
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x4

    .line 137
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    add-int/lit8 v7, p2, 0x5

    .line 138
    aget-byte v5, v1, v7

    and-int/2addr v5, v13

    add-int/lit8 v17, p2, 0x6

    .line 139
    aget-byte v9, v1, v17

    and-int/2addr v9, v13

    const/16 v10, 0x3f

    new-array v12, v15, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v14

    .line 140
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    new-array v10, v15, [I

    shr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v15

    aput v12, v10, v14

    .line 141
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    new-array v6, v15, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v11

    aput v10, v6, v14

    .line 142
    invoke-static {v8, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v15, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v15

    aput v8, v6, v14

    const/16 v8, 0xd

    .line 143
    invoke-static {v8, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v15, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v15

    aput v8, v6, v14

    const/16 v8, 0xe

    .line 144
    invoke-static {v8, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x10

    new-array v8, v15, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v15

    aput v10, v8, v14

    .line 145
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x41

    new-array v8, v15, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v15

    aput v2, v8, v14

    .line 146
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    if-eq v2, v15, :cond_27

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    if-eq v2, v11, :cond_25

    const/4 v3, 0x4

    if-eq v2, v3, :cond_24

    const/4 v3, 0x5

    if-eq v2, v3, :cond_23

    move v2, v14

    move v3, v2

    :goto_4
    move v6, v3

    goto :goto_5

    :cond_23
    move v3, v14

    move v6, v3

    move v2, v15

    goto :goto_5

    :cond_24
    move v3, v14

    move v2, v15

    move v6, v2

    goto :goto_5

    :cond_25
    move v2, v14

    move v3, v2

    move v6, v15

    goto :goto_5

    :cond_26
    move v2, v14

    move v3, v15

    goto :goto_4

    :cond_27
    move v2, v14

    move v6, v2

    move v3, v15

    :goto_5
    new-array v8, v15, [I

    aput v2, v8, v14

    const/16 v2, 0x12

    .line 147
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v15, [I

    aput v3, v8, v14

    .line 148
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v15, [I

    aput v6, v3, v14

    .line 149
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v15, [I

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v14

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 151
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 152
    aget-byte v2, v1, v17

    and-int/lit16 v5, v2, 0xff

    .line 153
    aget-byte v2, v1, v7

    and-int/lit16 v9, v2, 0xff

    :cond_28
    const/16 v2, 0x1b

    const/16 v3, 0x1e

    if-eqz v5, :cond_2b

    if-eq v5, v3, :cond_2a

    if-lez v5, :cond_29

    if-ge v5, v3, :cond_29

    new-array v4, v15, [I

    and-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x22

    aput v5, v4, v14

    .line 154
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_29
    new-array v4, v15, [I

    const/4 v5, -0x1

    aput v5, v4, v14

    .line 155
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2a
    new-array v4, v15, [I

    const/4 v5, -0x3

    aput v5, v4, v14

    .line 156
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2b
    new-array v4, v15, [I

    const/4 v5, -0x2

    aput v5, v4, v14

    .line 157
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v2, 0x1c

    if-eqz v9, :cond_2e

    if-eq v9, v3, :cond_2d

    if-lez v9, :cond_2c

    if-ge v9, v3, :cond_2c

    new-array v4, v15, [I

    and-int/lit16 v5, v9, 0xff

    add-int/lit8 v5, v5, 0x22

    aput v5, v4, v14

    .line 158
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2c
    new-array v4, v15, [I

    const/4 v5, -0x1

    aput v5, v4, v14

    .line 159
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2d
    new-array v4, v15, [I

    const/4 v5, -0x3

    aput v5, v4, v14

    .line 160
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2e
    new-array v4, v15, [I

    const/4 v5, -0x2

    aput v5, v4, v14

    .line 161
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x1d

    new-array v4, v15, [I

    add-int/lit8 v5, p2, 0x8

    .line 162
    aget-byte v6, v1, v5

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0xf

    aput v6, v4, v14

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    .line 163
    aget-byte v4, v1, v5

    shr-int/2addr v4, v14

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v14

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x9

    .line 164
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v15, [I

    .line 165
    aget-byte v4, v1, v4

    shr-int/2addr v4, v14

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 166
    aget-byte v1, v1, v2

    if-eq v1, v13, :cond_30

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_2f

    goto :goto_8

    :cond_2f
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 167
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_9

    .line 168
    :cond_30
    :goto_8
    invoke-static {v14}, Lu0/d;->B3(I)V

    :cond_31
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/qn;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/qn;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/qn;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/qn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/qn;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/qn;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/qn;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x94

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

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0xe3

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_2

    const/16 v9, 0x405

    if-eq v0, v9, :cond_0

    move-object/from16 v10, p0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget v0, v1, v7

    mul-int/lit16 v0, v0, 0x400

    invoke-static {}, La/f;->w()I

    move-result v9

    div-int/2addr v0, v9

    .line 2
    aget v9, v1, v6

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v10

    div-int/2addr v9, v10

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v10

    sget-object v11, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "touch_x = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "touch_y =="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "ObjApp.getHeight()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/f;->i()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    move-object/from16 v10, p0

    .line 4
    invoke-virtual {v10, v1, v6}, Lk0/lt;->T2([II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 5
    aget v11, v1, v8

    const/4 v12, 0x7

    const/16 v13, 0xa8

    const/16 v14, 0x9

    const/4 v15, 0x6

    const/16 v16, 0x8

    if-nez v11, :cond_1

    new-array v1, v14, [I

    aput v4, v1, v8

    aput v13, v1, v7

    aput v15, v1, v6

    aput v7, v1, v3

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v5

    shr-int/lit8 v0, v9, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v15

    and-int/lit16 v0, v9, 0xff

    aput v0, v1, v12

    aput v8, v1, v16

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :cond_1
    aget v1, v1, v8

    if-ne v1, v7, :cond_5

    new-array v1, v14, [I

    aput v4, v1, v8

    aput v13, v1, v7

    aput v15, v1, v6

    aput v8, v1, v3

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v5

    shr-int/lit8 v0, v9, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v15

    and-int/lit16 v0, v9, 0xff

    aput v0, v1, v12

    aput v8, v1, v16

    .line 8
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    move-object/from16 v10, p0

    if-eqz v1, :cond_5

    .line 9
    array-length v0, v1

    if-lez v0, :cond_5

    new-array v0, v5, [I

    aput v4, v0, v8

    const/16 v4, 0x90

    aput v4, v0, v7

    aput v6, v0, v6

    .line 10
    aget v4, v1, v8

    aput v4, v0, v3

    aget v1, v1, v7

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    move-object/from16 v10, p0

    if-eqz v1, :cond_5

    .line 11
    array-length v0, v1

    if-lez v0, :cond_5

    new-array v0, v5, [I

    aput v4, v0, v8

    const/16 v4, 0xa9

    aput v4, v0, v7

    aput v6, v0, v6

    .line 12
    aget v4, v1, v8

    aput v4, v0, v3

    aget v1, v1, v7

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    move-object/from16 v10, p0

    if-eqz v1, :cond_5

    .line 13
    array-length v0, v1

    if-lez v0, :cond_5

    new-array v0, v5, [I

    aput v4, v0, v8

    const/16 v4, 0xa7

    aput v4, v0, v7

    aput v6, v0, v6

    .line 14
    aget v4, v1, v8

    aput v4, v0, v3

    aget v1, v1, v7

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method
