.class public Lk0/nl;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/nl;->c:I

    const/16 v1, 0xd

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

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/nl;->d:[[I

    .line 4
    new-instance v1, Lk0/nl$a;

    invoke-direct {v1, p0}, Lk0/nl$a;-><init>(Lk0/nl;)V

    iput-object v1, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lk0/nl;->f:I

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lk0/nl;->g:Ljava/lang/String;

    .line 7
    new-instance v1, Lk0/nl$b;

    invoke-direct {v1, p0}, Lk0/nl$b;-><init>(Lk0/nl;)V

    iput-object v1, p0, Lk0/nl;->h:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lk0/nl;->i:I

    .line 9
    new-instance v0, Lk0/nl$c;

    invoke-direct {v0, p0}, Lk0/nl$c;-><init>(Lk0/nl;)V

    iput-object v0, p0, Lk0/nl;->j:Ljava/lang/Runnable;

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
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_b
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x2
    .end array-data
.end method

.method public static a3()V
    .locals 15

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xe3

    const/4 v2, 0x6

    const/16 v3, 0xc0

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x8

    if-eq v0, v10, :cond_6

    const/16 v12, 0x9

    const/16 v13, 0xb

    const/16 v14, 0xa

    if-eq v0, v11, :cond_4

    if-eq v0, v14, :cond_4

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_0

    goto/16 :goto_5

    :cond_0
    new-array v0, v14, [I

    aput v3, v0, v9

    aput v11, v0, v10

    const/16 v3, 0x10

    aput v3, v0, v5

    .line 2
    sget v3, Lo0/e;->C:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v7

    .line 3
    sget v3, Lo0/e;->B:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    .line 4
    sget v2, Lo0/e;->r:I

    rem-int/lit16 v3, v2, 0xe10

    aput v3, v0, v4

    .line 5
    rem-int/lit16 v3, v2, 0xe10

    div-int/lit8 v3, v3, 0x3c

    aput v3, v0, v11

    .line 6
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v12

    new-array v2, v13, [I

    aput v1, v2, v9

    :goto_0
    if-ge v9, v14, :cond_1

    add-int/lit8 v1, v9, 0x1

    .line 7
    aget v3, v0, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_2
    new-array v0, v14, [I

    aput v3, v0, v9

    aput v11, v0, v10

    aput v13, v0, v5

    .line 9
    sget v3, Lh0/c;->K:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v7

    .line 10
    sget v3, Lh0/c;->J:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    .line 11
    sget v2, Lh0/c;->H:I

    div-int/lit16 v3, v2, 0xe10

    aput v3, v0, v4

    .line 12
    rem-int/lit16 v3, v2, 0xe10

    div-int/lit8 v3, v3, 0x3c

    aput v3, v0, v11

    .line 13
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v12

    new-array v2, v13, [I

    aput v1, v2, v9

    :goto_1
    if-ge v9, v14, :cond_3

    add-int/lit8 v1, v9, 0x1

    .line 14
    aget v3, v0, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_4
    new-array v0, v14, [I

    aput v3, v0, v9

    aput v11, v0, v10

    aput v11, v0, v5

    .line 16
    sget v3, Lu0/b;->s3:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v7

    .line 17
    sget v3, Lu0/b;->r3:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    .line 18
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v3, v2, 0xe10

    aput v3, v0, v4

    .line 19
    rem-int/lit16 v3, v2, 0xe10

    div-int/lit8 v3, v3, 0x3c

    aput v3, v0, v11

    .line 20
    rem-int/lit16 v2, v2, 0xe10

    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v12

    new-array v2, v13, [I

    aput v1, v2, v9

    :goto_2
    if-ge v9, v14, :cond_5

    add-int/lit8 v1, v9, 0x1

    .line 21
    aget v3, v0, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_5

    :cond_6
    new-array v0, v4, [I

    aput v3, v0, v9

    aput v6, v0, v10

    aput v10, v0, v5

    .line 23
    sget v3, Lw0/d;->h:I

    const/high16 v12, 0x10000

    if-ne v3, v12, :cond_7

    aput v10, v0, v8

    goto :goto_3

    :cond_7
    const v12, 0x10001

    if-ne v3, v12, :cond_8

    aput v5, v0, v8

    goto :goto_3

    :cond_8
    const v5, 0x10002

    if-ne v3, v5, :cond_9

    aput v8, v0, v8

    goto :goto_3

    :cond_9
    if-nez v3, :cond_a

    const/16 v3, 0x11

    aput v3, v0, v8

    goto :goto_3

    :cond_a
    if-ne v3, v10, :cond_b

    const/16 v3, 0x12

    aput v3, v0, v8

    .line 24
    :cond_b
    :goto_3
    sget v3, Lw0/d;->i:I

    and-int/lit16 v5, v3, 0xff

    aput v5, v0, v7

    shr-int/2addr v3, v11

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v6

    .line 25
    sget v3, Lw0/d;->j:I

    aput v3, v0, v2

    new-array v2, v11, [I

    aput v1, v2, v9

    :goto_4
    if-ge v9, v4, :cond_c

    add-int/lit8 v1, v9, 0x1

    .line 26
    aget v3, v0, v9

    aput v3, v2, v1

    move v9, v1

    goto :goto_4

    .line 27
    :cond_c
    invoke-static {v2}, Lz/k;->s([I)V

    :goto_5
    return-void
.end method

.method public static synthetic b3(Lk0/nl;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/nl;->f:I

    return p0
.end method

.method public static synthetic c3(Lk0/nl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/nl;->f:I

    return p1
.end method

.method public static synthetic d3(Lk0/nl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e3(Lk0/nl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nl;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f3(Lk0/nl;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/nl;->g3(ILjava/lang/String;)V

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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/nl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lk0/nl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lk0/nl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x7f

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_19

    const/16 v3, -0x6f

    const/16 v8, 0xc

    if-eq v2, v3, :cond_16

    const/16 v3, 0x28

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-eq v2, v3, :cond_12

    const/16 v3, 0x30

    if-eq v2, v3, :cond_11

    const/16 v14, 0x7f

    const/16 v15, 0x71

    if-eq v2, v15, :cond_10

    if-eq v2, v14, :cond_f

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    .line 2
    :pswitch_0
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_2

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, v1, v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {v7}, Lu0/d;->C2(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->m1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->m1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 9
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->k1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 11
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->m1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->m1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 13
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->k1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v12, p2, 0x3

    .line 15
    aget-byte v12, v1, v12

    and-int/2addr v12, v5

    add-int/lit8 v14, p2, 0x4

    .line 16
    aget-byte v14, v1, v14

    and-int/2addr v14, v5

    add-int/lit8 v15, p2, 0x5

    .line 17
    aget-byte v11, v1, v15

    and-int/2addr v11, v5

    add-int/lit8 v16, p2, 0x6

    .line 18
    aget-byte v10, v1, v16

    and-int/2addr v10, v5

    add-int/lit8 v17, p2, 0x7

    .line 19
    aget-byte v9, v1, v17

    and-int/2addr v9, v5

    add-int/lit8 v17, p2, 0x8

    .line 20
    aget-byte v4, v1, v17

    and-int/2addr v4, v5

    new-array v5, v7, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v5, v6

    const/16 v3, 0xb

    .line 21
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v13

    aput v5, v3, v6

    .line 22
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v7

    aput v5, v3, v6

    const/16 v5, 0xd

    .line 23
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v7

    aput v5, v3, v6

    const/16 v5, 0xe

    .line 24
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    const/16 v5, 0x10

    .line 25
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v5, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v5, v6

    .line 26
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    shr-int/lit8 v5, v12, 0x0

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    shr-int/lit8 v5, v12, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    const/4 v5, 0x2

    shr-int/lit8 v5, v12, 0x2

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    const/16 v5, 0xff

    and-int/lit16 v8, v14, 0xff

    aput v8, v3, v6

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 31
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    aget-byte v2, v1, v16

    and-int/lit16 v11, v2, 0xff

    .line 33
    aget-byte v1, v1, v15

    and-int/lit16 v10, v1, 0xff

    :cond_3
    and-int/lit16 v1, v11, 0xff

    const/16 v2, 0x1b

    if-eqz v1, :cond_6

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_5

    if-eq v1, v5, :cond_4

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array v1, v7, [I

    const/4 v3, -0x3

    aput v3, v1, v6

    .line 35
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v1, v7, [I

    const/4 v3, -0x2

    aput v3, v1, v6

    .line 36
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v1, v7, [I

    const/4 v3, -0x1

    aput v3, v1, v6

    .line 37
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0xff

    and-int/lit16 v2, v10, 0xff

    const/16 v3, 0x1c

    if-eqz v2, :cond_9

    const/16 v5, 0xfe

    if-eq v2, v5, :cond_8

    if-eq v2, v1, :cond_7

    new-array v1, v7, [I

    aput v2, v1, v6

    .line 38
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v1, v7, [I

    const/4 v2, -0x3

    aput v2, v1, v6

    .line 39
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v1, v7, [I

    const/4 v2, -0x2

    aput v2, v1, v6

    .line 40
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v1, v7, [I

    const/4 v2, -0x1

    aput v2, v1, v6

    .line 41
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x4b

    new-array v2, v7, [I

    shr-int/lit8 v3, v9, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v6

    .line 42
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x24

    new-array v2, v7, [I

    const/4 v3, 0x5

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 43
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v6

    .line 44
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1f

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v6

    .line 45
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x2

    and-int/2addr v3, v13

    aput v3, v2, v6

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x20

    new-array v2, v7, [I

    shr-int/lit8 v3, v4, 0x0

    and-int/2addr v3, v13

    aput v3, v2, v6

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 49
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 50
    iput v2, v0, Lk0/nl;->c:I

    move v2, v6

    .line 51
    :goto_4
    iget-object v3, v0, Lk0/nl;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 52
    iget v4, v0, Lk0/nl;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_a

    if-eqz v4, :cond_b

    .line 53
    iput v2, v0, Lk0/nl;->b:I

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_c

    .line 54
    array-length v1, v3

    if-ge v2, v1, :cond_1a

    .line 55
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 56
    :cond_c
    iget v1, v0, Lk0/nl;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_d

    const/16 v2, 0xff

    if-eq v1, v2, :cond_e

    .line 57
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_d
    const/16 v2, 0xff

    .line 58
    :cond_e
    :goto_6
    iput v2, v0, Lk0/nl;->b:I

    goto/16 :goto_a

    .line 59
    :cond_f
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_10
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 60
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    .line 61
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    .line 62
    aget-byte v5, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    .line 63
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 64
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 65
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 66
    aget-byte v5, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    .line 67
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 68
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 69
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 70
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    .line 71
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 72
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    .line 73
    aget-byte v5, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 74
    aget-byte v3, v1, v4

    shr-int/2addr v3, v6

    and-int/2addr v3, v13

    aput v3, v2, v6

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 75
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 76
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 79
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 80
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 81
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 82
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 83
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    .line 84
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 85
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 86
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 87
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 88
    aget-byte v3, v1, v4

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v6

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 89
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    .line 90
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    .line 91
    aget-byte v5, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 92
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    const/16 v4, 0xe

    add-int/lit8 v4, p2, 0xe

    .line 93
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 94
    aget-byte v2, v1, v2

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x1518

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_a

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 96
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 97
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x2

    .line 98
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_13
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 99
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x2

    .line 100
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 101
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 102
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x5

    .line 103
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    const/4 v4, 0x2

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 104
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 105
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_15

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_14

    goto :goto_8

    :cond_14
    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 106
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    .line 107
    :cond_15
    :goto_8
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    :cond_16
    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 108
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    .line 109
    iget v4, v0, Lk0/nl;->i:I

    if-eq v4, v3, :cond_1a

    if-eqz v3, :cond_17

    .line 110
    sget v4, Ly0/f;->i:I

    if-eq v4, v7, :cond_18

    .line 111
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 112
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_17
    if-ne v4, v7, :cond_18

    if-nez v3, :cond_18

    .line 113
    sget v4, Ly0/f;->i:I

    if-ne v4, v7, :cond_18

    .line 114
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 115
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    :cond_18
    :goto_9
    const/16 v4, 0x89

    new-array v5, v7, [I

    .line 116
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    aput v1, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 117
    iput v3, v0, Lk0/nl;->i:I

    goto :goto_a

    :cond_19
    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 118
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 119
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 120
    aget-byte v4, v1, v4

    const/16 v7, 0x10

    shl-int/2addr v4, v7

    const/high16 v7, 0x10000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_1a
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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

    .line 3
    iget-object v0, p0, Lk0/nl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/nl;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/nl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/nl;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8a

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
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x6b

    aput v0, p1, v3

    aput v4, p1, v4

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x7d

    aput v0, p1, v3

    aput v4, p1, v4

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g3(ILjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x6

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x40

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x3

    add-int/2addr v3, v6

    int-to-byte v3, v3

    const/4 v7, 0x2

    aput v3, v1, v7

    const/4 v3, 0x5

    .line 6
    aput v3, v1, v6

    const/4 v8, 0x4

    if-eq p1, v6, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v3, :cond_1

    .line 7
    aput v4, v1, v8

    goto :goto_0

    .line 8
    :cond_1
    aput v7, v1, v8

    goto :goto_0

    .line 9
    :cond_2
    aput v5, v1, v8

    goto :goto_0

    .line 10
    :cond_3
    aput v6, v1, v8

    .line 11
    :goto_0
    aput v5, v1, v3

    .line 12
    array-length p1, v0

    if-lez p1, :cond_4

    .line 13
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_4

    add-int p1, v2, v4

    .line 14
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
