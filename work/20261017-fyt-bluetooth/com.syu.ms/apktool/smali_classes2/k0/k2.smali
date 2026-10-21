.class public Lk0/k2;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:J

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/k2;->c:I

    const/16 v1, 0x12

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

    new-array v2, v2, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/k2;->d:[[I

    .line 4
    iput v0, p0, Lk0/k2;->e:I

    .line 5
    iput v0, p0, Lk0/k2;->f:I

    .line 6
    new-instance v0, Lk0/k2$a;

    invoke-direct {v0, p0}, Lk0/k2$a;-><init>(Lk0/k2;)V

    iput-object v0, p0, Lk0/k2;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/k2$b;

    invoke-direct {v0, p0}, Lk0/k2$b;-><init>(Lk0/k2;)V

    iput-object v0, p0, Lk0/k2;->h:Ljava/lang/Runnable;

    const/16 v0, 0xff

    .line 8
    iput v0, p0, Lk0/k2;->i:I

    .line 9
    iput v0, p0, Lk0/k2;->j:I

    .line 10
    new-instance v0, Lk0/k2$c;

    invoke-direct {v0, p0}, Lk0/k2$c;-><init>(Lk0/k2;)V

    iput-object v0, p0, Lk0/k2;->k:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lk0/k2;->l:J

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lk0/k2;->m:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x15
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x9
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x40
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xb
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x31
        0x1a
    .end array-data
.end method

.method public static synthetic b3(Lk0/k2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/k2;->l:J

    return-wide v0
.end method

.method public static synthetic c3(Lk0/k2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/k2;->l:J

    return-wide p1
.end method

.method public static synthetic d3(Lk0/k2;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/k2;->m:I

    return p0
.end method

.method public static synthetic e3(Lk0/k2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/k2;->m:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    .line 2
    sget v2, Lk0/nt;->a:I

    const/4 v3, 0x1

    const v4, 0x10060

    if-eq v2, v4, :cond_0

    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "com.syu.canbus"

    .line 4
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v3, v0, Lk0/mt;->i:I

    .line 6
    iget-object v0, p0, Lk0/k2;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->e:I

    .line 8
    iput v3, v0, Lk0/mt;->f:I

    .line 9
    iput v3, v0, Lk0/mt;->g:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/k2;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/k2;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/k2;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    add-int/lit8 v1, p2, 0x1

    .line 1
    aget-byte v1, p1, v1

    const/4 v2, -0x4

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/4 v7, -0x2

    const/4 v8, -0x3

    const/4 v9, -0x1

    const/16 v10, 0x1b

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v1, v2, :cond_6

    if-eq v1, v8, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    sget v1, Lk0/nt;->a:I

    const v2, 0xa004f

    if-ne v1, v2, :cond_1

    goto/16 :goto_d

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, p1, v2

    add-int/lit8 v14, p2, 0x5

    .line 5
    aget-byte v14, p1, v14

    and-int/lit8 v14, v14, 0xf

    and-int/lit16 v15, v2, 0x80

    if-nez v15, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v9, :cond_3

    if-eqz v1, :cond_2

    new-array v7, v13, [I

    and-int/lit16 v8, v1, 0xff

    mul-int/2addr v8, v6

    add-int/2addr v8, v14

    aput v8, v7, v12

    .line 6
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v6, v13, [I

    aput v7, v6, v12

    .line 7
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v6, v13, [I

    aput v8, v6, v12

    .line 8
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v6, v13, [I

    aput v9, v6, v12

    .line 9
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    :cond_5
    :goto_0
    add-int/lit8 v6, p2, 0x3

    .line 10
    aget-byte v6, p1, v6

    new-array v7, v13, [I

    shr-int/lit8 v8, v6, 0x7

    and-int/2addr v8, v13

    aput v8, v7, v12

    .line 11
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v7, v13, [I

    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v8, v13

    aput v8, v7, v12

    .line 12
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v7, v13, [I

    shr-int/lit8 v8, v6, 0x5

    and-int/2addr v8, v13

    aput v8, v7, v12

    .line 13
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v7, v13, [I

    shr-int/lit8 v8, v6, 0x4

    and-int/2addr v8, v13

    aput v8, v7, v12

    .line 14
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v7, v13, [I

    shr-int/lit8 v8, v6, 0x3

    and-int/2addr v8, v13

    aput v8, v7, v12

    .line 15
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v7, v6, 0x2

    and-int/2addr v7, v13

    aput v7, v4, v12

    .line 16
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x34

    new-array v4, v13, [I

    shr-int/lit8 v7, v6, 0x1

    and-int/2addr v7, v13

    aput v7, v4, v12

    .line 17
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/lit8 v4, v6, 0x0

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 18
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v4, v13, [I

    and-int/lit8 v5, v2, 0xf

    aput v5, v4, v12

    .line 19
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 20
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_27

    int-to-byte v1, v1

    int-to-byte v2, v2

    int-to-byte v3, v14

    .line 21
    invoke-static {v1, v2, v3}, Ll0/f0;->b(BBB)V

    goto/16 :goto_d

    :cond_6
    add-int/lit8 v1, p2, 0x2

    .line 22
    aget-byte v2, p1, v1

    const/16 v14, 0x11

    const/16 v15, 0x12

    const/16 v7, 0xff

    if-eq v2, v14, :cond_25

    if-eq v2, v15, :cond_22

    const/16 v14, 0x21

    const/4 v8, 0x5

    if-eq v2, v14, :cond_13

    const/16 v3, 0x27

    if-eq v2, v3, :cond_f

    const/16 v1, 0x29

    const/4 v3, 0x4

    if-eq v2, v1, :cond_e

    const/16 v1, 0x40

    if-eq v2, v1, :cond_c

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    add-int/lit8 v1, p2, 0x3

    .line 23
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x5

    .line 25
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x6

    .line 26
    aget-byte v6, p1, v5

    and-int/2addr v6, v7

    add-int/lit8 v8, p2, 0x7

    .line 27
    aget-byte v9, p1, v8

    and-int/2addr v9, v7

    add-int/lit8 v10, p2, 0x8

    .line 28
    aget-byte v11, p1, v10

    and-int/2addr v11, v7

    .line 29
    sget v14, Ll0/c0;->g:I

    if-ne v14, v4, :cond_7

    sget v14, Ll0/c0;->h:I

    if-ne v14, v4, :cond_7

    sget v14, Ll0/c0;->i:I

    if-ne v14, v6, :cond_7

    sget v14, Ll0/c0;->j:I

    if-eq v14, v11, :cond_b

    .line 30
    :cond_7
    sget v14, Lu0/b;->o:I

    if-nez v14, :cond_b

    if-nez v1, :cond_8

    if-lt v4, v2, :cond_9

    if-lt v6, v2, :cond_9

    if-lt v9, v2, :cond_9

    if-lt v11, v2, :cond_9

    goto :goto_1

    :cond_8
    if-lt v4, v7, :cond_9

    if-lt v6, v7, :cond_9

    if-lt v9, v7, :cond_9

    if-lt v11, v7, :cond_9

    :goto_1
    move v12, v13

    :cond_9
    if-eqz v12, :cond_a

    .line 31
    sget v12, Lu0/b;->p:I

    if-ne v12, v13, :cond_b

    .line 32
    sput v13, Ll0/c0;->k:I

    .line 33
    sget-object v12, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v12}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 34
    :cond_a
    invoke-static {v13}, Lu0/d;->C2(I)V

    .line 35
    :cond_b
    :goto_2
    sput v4, Ll0/c0;->g:I

    .line 36
    sput v6, Ll0/c0;->h:I

    .line 37
    sput v9, Ll0/c0;->i:I

    .line 38
    sput v11, Ll0/c0;->j:I

    .line 39
    aget-byte v3, p1, v3

    and-int/2addr v1, v7

    and-int/2addr v2, v7

    invoke-static {v3, v1, v2}, Ll0/e0;->o(III)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 40
    aget-byte v3, p1, v5

    invoke-static {v3, v1, v2}, Ll0/e0;->o(III)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    .line 41
    aget-byte v3, p1, v8

    invoke-static {v3, v1, v2}, Ll0/e0;->o(III)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 42
    aget-byte v3, p1, v10

    invoke-static {v3, v1, v2}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    .line 43
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_27

    add-int/lit8 v1, p2, 0x3

    .line 44
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 45
    aget-byte v2, p1, v2

    and-int/2addr v1, v7

    .line 46
    iput v1, v0, Lk0/k2;->e:I

    and-int/2addr v2, v7

    .line 47
    iput v2, v0, Lk0/k2;->f:I

    add-int/lit8 v3, p2, 0x5

    .line 48
    aget-byte v3, p1, v3

    invoke-static {v3, v1, v2}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x6

    .line 49
    aget-byte v1, p1, v1

    iget v2, v0, Lk0/k2;->e:I

    iget v3, v0, Lk0/k2;->f:I

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x7

    .line 50
    aget-byte v1, p1, v1

    iget v2, v0, Lk0/k2;->e:I

    iget v3, v0, Lk0/k2;->f:I

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x8

    .line 51
    aget-byte v1, p1, v1

    iget v2, v0, Lk0/k2;->e:I

    iget v3, v0, Lk0/k2;->f:I

    invoke-static {v1, v2, v3}, Ll0/e0;->o(III)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_d

    :pswitch_2
    const/16 v1, 0x67

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x3

    .line 52
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x4

    .line 53
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x69

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x5

    .line 54
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6a

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x6

    .line 55
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6b

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x7

    .line 56
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x8

    .line 57
    aget-byte v4, p1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v13

    aput v4, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6d

    new-array v2, v13, [I

    .line 58
    aget-byte v3, p1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_c
    add-int/lit8 v1, p2, 0x3

    .line 59
    aget-byte v2, p1, v1

    and-int/2addr v2, v7

    const-string v4, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {v4, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_d

    new-array v4, v13, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v13

    aput v9, v4, v12

    .line 61
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v13

    aput v9, v4, v12

    .line 62
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v4, v13, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v13

    aput v9, v4, v12

    .line 63
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v13

    aput v9, v4, v12

    .line 64
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v4, v13, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v13

    aput v9, v4, v12

    .line 65
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v13, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v13

    aput v9, v4, v12

    .line 66
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 67
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v13

    aput v2, v3, v12

    .line 68
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v13, [I

    .line 69
    aget-byte v1, p1, v1

    and-int/2addr v1, v13

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x62

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x4

    .line 70
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x5

    .line 71
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, p1, v5

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x7

    .line 72
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v4

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, p1, v5

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x9

    .line 73
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, p1, v4

    and-int/2addr v4, v7

    or-int/2addr v3, v4

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v1, p2, 0x3

    .line 74
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v7

    const/16 v3, 0x1e40

    const/16 v4, 0x1630

    invoke-static {v1, v2, v3, v12, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_d

    .line 75
    :cond_f
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    if-eqz v1, :cond_12

    if-ne v1, v7, :cond_10

    goto :goto_5

    :cond_10
    const-string v2, "persist.fyt.temperature"

    .line 76
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    mul-int/2addr v1, v8

    add-int/lit16 v1, v1, 0x258

    goto :goto_4

    :cond_11
    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/2addr v1, v9

    .line 77
    :goto_4
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_d

    .line 78
    :cond_12
    :goto_5
    invoke-static {v12}, Lu0/d;->A3(I)V

    goto/16 :goto_d

    :cond_13
    add-int/lit8 v1, p2, 0x3

    .line 79
    aget-byte v1, p1, v1

    new-array v2, v13, [I

    shr-int/lit8 v11, v1, 0x7

    and-int/2addr v11, v13

    aput v11, v2, v12

    .line 80
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v11, v1, 0x6

    and-int/2addr v11, v13

    aput v11, v2, v12

    .line 81
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v13

    aput v5, v2, v12

    .line 82
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v13, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 83
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v13

    aput v4, v2, v12

    .line 84
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v13, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v13, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v13, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v13

    aput v1, v3, v12

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 88
    aget-byte v1, p1, v1

    packed-switch v1, :pswitch_data_1

    move v1, v12

    :goto_6
    move v2, v1

    :goto_7
    move v3, v2

    goto :goto_8

    :pswitch_3
    move v1, v13

    goto :goto_6

    :pswitch_4
    move v1, v12

    move v2, v13

    goto :goto_7

    :pswitch_5
    move v1, v12

    move v2, v1

    move v3, v13

    goto :goto_8

    :pswitch_6
    move v2, v12

    move v1, v13

    move v3, v1

    goto :goto_8

    :pswitch_7
    move v2, v12

    move v3, v2

    move v1, v13

    goto :goto_8

    :pswitch_8
    move v3, v12

    move v1, v13

    move v2, v1

    goto :goto_8

    :pswitch_9
    move v1, v12

    move v3, v1

    move v2, v13

    :goto_8
    const/16 v4, 0x14

    new-array v5, v13, [I

    aput v1, v5, v12

    .line 89
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v4, v13, [I

    aput v2, v4, v12

    .line 90
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v13, [I

    aput v3, v1, v12

    .line 91
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v13, [I

    add-int/lit8 v3, p2, 0x5

    .line 92
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v12

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x6

    .line 93
    aget-byte v2, p1, v1

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x7

    .line 94
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    const-string v5, "persist.fyt.reversetemp"

    .line 95
    invoke-static {v5, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 96
    aget-byte v2, p1, v3

    and-int/2addr v2, v7

    .line 97
    aget-byte v1, p1, v1

    and-int/lit16 v4, v1, 0xff

    :cond_14
    add-int/lit8 v1, p2, 0x8

    .line 98
    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v13

    const/16 v3, 0x1c

    if-ne v1, v13, :cond_1b

    if-eqz v2, :cond_17

    const/16 v1, 0x1e

    if-eq v2, v1, :cond_16

    if-eq v2, v7, :cond_15

    new-array v1, v13, [I

    mul-int/2addr v2, v6

    add-int/lit16 v2, v2, 0x258

    aput v2, v1, v12

    .line 99
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_15
    new-array v1, v13, [I

    aput v9, v1, v12

    .line 100
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_16
    new-array v1, v13, [I

    const/4 v2, -0x3

    aput v2, v1, v12

    .line 101
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_17
    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    .line 102
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    :goto_9
    if-eqz v4, :cond_1a

    const/16 v1, 0x1e

    if-eq v4, v1, :cond_19

    if-eq v4, v7, :cond_18

    new-array v1, v13, [I

    mul-int/2addr v4, v6

    add-int/lit16 v4, v4, 0x258

    aput v4, v1, v12

    .line 103
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_18
    new-array v1, v13, [I

    aput v9, v1, v12

    .line 104
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_19
    new-array v1, v13, [I

    const/4 v2, -0x3

    aput v2, v1, v12

    .line 105
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1a
    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    .line 106
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1b
    if-eqz v2, :cond_1e

    const/16 v1, 0x22

    if-eq v2, v1, :cond_1d

    if-eq v2, v7, :cond_1c

    new-array v1, v13, [I

    mul-int/2addr v2, v8

    add-int/lit16 v2, v2, 0x96

    aput v2, v1, v12

    .line 107
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1c
    new-array v1, v13, [I

    aput v9, v1, v12

    .line 108
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1d
    new-array v1, v13, [I

    const/4 v2, -0x3

    aput v2, v1, v12

    .line 109
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_1e
    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    .line 110
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    :goto_a
    if-eqz v4, :cond_21

    const/16 v1, 0x22

    if-eq v4, v1, :cond_20

    if-eq v4, v7, :cond_1f

    new-array v1, v13, [I

    mul-int/2addr v4, v8

    add-int/lit16 v4, v4, 0x96

    aput v4, v1, v12

    .line 111
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1f
    new-array v1, v13, [I

    aput v9, v1, v12

    .line 112
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_20
    new-array v1, v13, [I

    const/4 v2, -0x3

    aput v2, v1, v12

    .line 113
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_21
    new-array v1, v13, [I

    const/4 v2, -0x2

    aput v2, v1, v12

    .line 114
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    .line 115
    :cond_22
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_27

    add-int/lit8 v1, p2, 0x3

    .line 116
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    .line 117
    iput v1, v0, Lk0/k2;->c:I

    move v2, v12

    .line 118
    :goto_b
    iget-object v3, v0, Lk0/k2;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_24

    .line 119
    iget v4, v0, Lk0/k2;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_23

    if-eqz v4, :cond_24

    .line 120
    iput v2, v0, Lk0/k2;->b:I

    goto :goto_c

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    :goto_c
    if-eqz v1, :cond_27

    .line 121
    iget v1, v0, Lk0/k2;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_27

    .line 122
    aget-object v1, v3, v1

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 123
    iget-object v1, v0, Lk0/k2;->d:[[I

    iget v2, v0, Lk0/k2;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto :goto_d

    .line 124
    :cond_25
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 125
    sget v1, Lk0/nt;->a:I

    if-eq v1, v15, :cond_26

    const v2, 0x1004f

    if-eq v1, v2, :cond_26

    const v2, 0x2004f

    if-ne v1, v2, :cond_27

    :cond_26
    add-int/lit8 v1, p2, 0x3

    .line 126
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lk0/k2;->a3(I)V

    :cond_27
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/k2;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/k2;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/k2;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/k2;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6e

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
    .locals 6

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x4

    if-eqz p1, :cond_8

    if-eq p1, p3, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/16 v2, 0xe3

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eq p1, v3, :cond_3

    const/4 v5, 0x6

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    const-wide/16 p1, 0xc8

    .line 2
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v4, [I

    aput v2, p1, p4

    aput v4, p1, p3

    aput v5, p1, v1

    .line 4
    aget p4, p2, p4

    aput p4, p1, v3

    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v4, [I

    aput v2, p1, p4

    aput v4, p1, p3

    aput v5, p1, v1

    .line 5
    aget p4, p2, p4

    aput p4, p1, v3

    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v4, [I

    aput v2, p1, p4

    aput v4, p1, p3

    const/16 v2, 0xe0

    aput v2, p1, v1

    .line 6
    aget p4, p2, p4

    aput p4, p1, v3

    aget p2, p2, p3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_4
    aget p1, p2, p4

    if-ne p1, p3, :cond_5

    new-array p1, v0, [I

    .line 8
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_5
    aget p1, p2, p4

    if-nez p1, :cond_a

    new-array p1, v0, [I

    .line 10
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_6
    aget p1, p2, p4

    if-ne p1, p3, :cond_7

    new-array p1, v0, [I

    .line 12
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_7
    aget p1, p2, p4

    if-nez p1, :cond_a

    new-array p1, v0, [I

    .line 14
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :cond_8
    aget p1, p2, p4

    if-ne p1, p3, :cond_9

    new-array p1, v0, [I

    .line 16
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_9
    aget p1, p2, p4

    if-nez p1, :cond_a

    new-array p1, v0, [I

    .line 18
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_a
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x4
        0x5
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x5
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x6
        0x80
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x6
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        0x6
        0x40
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        0x6
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        0x6
        0x20
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        0x6
        0x0
    .end array-data
.end method

.method public a3(I)V
    .locals 4

    .line 1
    iput p1, p0, Lk0/k2;->i:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    iget v3, p0, Lk0/k2;->j:I

    if-eq v3, p1, :cond_2

    const/16 p1, 0x3f7

    if-eqz v2, :cond_1

    new-array v2, v1, [I

    aput v1, v2, v0

    .line 3
    invoke-static {p1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1
    new-array v1, v1, [I

    aput v0, v1, v0

    .line 4
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 5
    :cond_2
    :goto_1
    iget p1, p0, Lk0/k2;->i:I

    iput p1, p0, Lk0/k2;->j:I

    return-void
.end method
