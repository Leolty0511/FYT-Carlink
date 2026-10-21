.class public Lk0/n7;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/n7;->c:I

    const/16 v1, 0x10

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

    new-array v2, v2, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/n7;->d:[[I

    .line 4
    iput v0, p0, Lk0/n7;->e:I

    .line 5
    new-instance v0, Lk0/n7$a;

    invoke-direct {v0, p0}, Lk0/n7$a;-><init>(Lk0/n7;)V

    iput-object v0, p0, Lk0/n7;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/n7$b;

    invoke-direct {v0, p0}, Lk0/n7$b;-><init>(Lk0/n7;)V

    iput-object v0, p0, Lk0/n7;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/n7$c;

    invoke-direct {v0, p0}, Lk0/n7$c;-><init>(Lk0/n7;)V

    iput-object v0, p0, Lk0/n7;->h:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x22
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x23
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x20
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x21
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x1d
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x7
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x8
    .end array-data

    :array_b
    .array-data 4
        0xc
        0xd
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x1a
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1a
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

    iget-object v1, p0, Lk0/n7;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lk0/n7;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xa

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v6, :cond_12

    if-eq v2, v5, :cond_11

    if-eq v2, v4, :cond_f

    const/4 v9, 0x6

    if-eq v2, v9, :cond_b

    const/16 v10, 0x8

    if-eq v2, v10, :cond_9

    if-eq v2, v3, :cond_7

    const/16 v3, 0x16

    const v11, 0xff00

    if-eq v2, v3, :cond_6

    const/16 v3, 0x24

    if-eq v2, v3, :cond_4

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    const/16 v3, 0x66

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const v3, 0xbe7f

    const/16 v4, 0x12c0

    invoke-static {v2, v1, v3, v7, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_9

    :cond_1
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v5, v1, v4

    shl-int/2addr v5, v10

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0x2

    aget-byte v9, v1, v6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v11

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 5
    :cond_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3
    const/16 v2, 0x11

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x6

    .line 6
    aget-byte v10, v1, v10

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x9

    .line 7
    aget-byte v11, v1, v10

    shr-int/2addr v11, v7

    and-int/2addr v11, v5

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    .line 8
    aget-byte v11, v1, v10

    shr-int/lit8 v6, v11, 0x2

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v8, [I

    .line 9
    aget-byte v6, v1, v10

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    .line 10
    aget-byte v1, v1, v10

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_4
    const-string v2, "persist.syu.reversefrontdoor"

    .line 11
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 12
    aget-byte v10, v1, v3

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v8

    aput v10, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 13
    aget-byte v3, v1, v3

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 14
    aget-byte v10, v1, v3

    shr-int/lit8 v9, v10, 0x6

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 15
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 16
    aget-byte v9, v1, v3

    const/4 v10, 0x5

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 17
    aget-byte v9, v1, v3

    shr-int/lit8 v4, v9, 0x4

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 18
    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 19
    aget-byte v1, v1, v3

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    aput v1, v2, v7

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_6
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 20
    aget-byte v5, v1, v4

    shl-int/2addr v5, v10

    and-int/2addr v5, v11

    add-int/lit8 v6, p2, 0x2

    aget-byte v9, v1, v6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x64

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v8, [I

    .line 21
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v11

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x64

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v1, v1, v2

    if-ne v1, v8, :cond_8

    const/16 v1, 0x37

    new-array v2, v8, [I

    aput v7, v2, v7

    .line 23
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_8
    const/16 v1, 0x37

    new-array v2, v8, [I

    aput v8, v2, v7

    .line 24
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 25
    :cond_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x3

    .line 26
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_a

    not-int v1, v1

    add-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    mul-int/2addr v1, v3

    rsub-int v1, v1, 0x3e8

    goto :goto_1

    :cond_a
    mul-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x3e8

    .line 27
    :goto_1
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    .line 28
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 30
    aget-byte v1, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 31
    iput v2, v0, Lk0/n7;->c:I

    move v2, v7

    .line 32
    :goto_2
    iget-object v3, v0, Lk0/n7;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 33
    iget v4, v0, Lk0/n7;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 34
    iput v2, v0, Lk0/n7;->b:I

    goto :goto_3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_e

    .line 35
    array-length v1, v3

    if-ge v2, v1, :cond_22

    .line 36
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 37
    :cond_e
    array-length v1, v3

    if-gt v2, v1, :cond_22

    .line 38
    iget v1, v0, Lk0/n7;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 39
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_10

    .line 41
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 42
    :cond_10
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 43
    :cond_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->I0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 45
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->I0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->I0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 47
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->I0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 48
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->I0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 49
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->I0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 50
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->I0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 51
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->I0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 52
    aget-byte v2, v1, v2

    add-int/lit8 v9, p2, 0x5

    .line 53
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x6

    .line 54
    aget-byte v10, v1, v10

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v8

    const/16 v12, 0x15

    const/4 v13, -0x1

    if-ne v11, v8, :cond_13

    new-array v11, v8, [I

    aput v13, v11, v7

    .line 55
    invoke-static {v12, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_13
    if-nez v11, :cond_14

    new-array v11, v8, [I

    and-int/lit8 v14, v2, 0xf

    aput v14, v11, v7

    .line 56
    invoke-static {v12, v11}, Lk0/qt;->y0(I[I)V

    :cond_14
    :goto_4
    const/16 v11, 0x41

    new-array v12, v8, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/lit8 v15, v14, 0x1

    aput v15, v12, v7

    .line 57
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x12

    new-array v12, v8, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v8

    aput v15, v12, v7

    .line 58
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x14

    new-array v12, v8, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v8

    aput v15, v12, v7

    .line 59
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x31

    new-array v12, v8, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v12, v7

    .line 60
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v11, v8, [I

    const/16 v12, 0xf

    and-int/2addr v14, v12

    aput v14, v11, v7

    .line 61
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v11, v1, v2

    add-int/lit8 v4, p2, 0x4

    .line 63
    aget-byte v14, v1, v4

    const-string v15, "persist.fyt.reversetemp"

    .line 64
    invoke-static {v15, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 65
    aget-byte v11, v1, v4

    .line 66
    aget-byte v14, v1, v2

    :cond_15
    shr-int/lit8 v1, v11, 0x1

    const/16 v2, 0x3f

    and-int/2addr v1, v2

    const/16 v4, 0x1b

    if-ne v1, v8, :cond_16

    new-array v1, v8, [I

    const/4 v11, -0x2

    aput v11, v1, v7

    .line 67
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_16
    if-nez v1, :cond_17

    new-array v1, v8, [I

    aput v13, v1, v7

    .line 68
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    if-ne v1, v2, :cond_18

    new-array v1, v8, [I

    const/4 v11, -0x3

    aput v11, v1, v7

    .line 69
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_18
    new-array v15, v8, [I

    mul-int/2addr v1, v6

    and-int/2addr v11, v8

    add-int/2addr v1, v11

    aput v1, v15, v7

    .line 70
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    :goto_5
    shr-int/lit8 v1, v14, 0x1

    and-int/2addr v1, v2

    const/16 v4, 0x1c

    if-ne v1, v8, :cond_19

    new-array v1, v8, [I

    const/4 v2, -0x2

    aput v2, v1, v7

    .line 71
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_19
    if-nez v1, :cond_1a

    new-array v1, v8, [I

    aput v13, v1, v7

    .line 72
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1a
    if-ne v1, v2, :cond_1b

    new-array v1, v8, [I

    const/4 v2, -0x3

    aput v2, v1, v7

    .line 73
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_1b
    new-array v2, v8, [I

    mul-int/2addr v1, v6

    and-int/lit8 v11, v14, 0x1

    add-int/2addr v1, v11

    aput v1, v2, v7

    .line 74
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    and-int/lit8 v1, v9, 0x3

    const/16 v2, 0xb

    if-eq v1, v8, :cond_1e

    if-eq v1, v6, :cond_1d

    if-eq v1, v5, :cond_1c

    new-array v1, v8, [I

    aput v7, v1, v7

    .line 75
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1c
    new-array v1, v8, [I

    aput v6, v1, v7

    .line 76
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1d
    new-array v1, v8, [I

    aput v8, v1, v7

    .line 77
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1e
    new-array v1, v8, [I

    aput v7, v1, v7

    .line 78
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_7
    shr-int/lit8 v1, v9, 0x2

    and-int/2addr v1, v5

    const/16 v2, 0xc

    if-eqz v1, :cond_21

    if-eq v1, v8, :cond_20

    if-eq v1, v5, :cond_1f

    new-array v1, v8, [I

    aput v7, v1, v7

    .line 79
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1f
    new-array v1, v8, [I

    aput v6, v1, v7

    .line 80
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_20
    new-array v1, v8, [I

    aput v8, v1, v7

    .line 81
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_21
    new-array v1, v8, [I

    aput v7, v1, v7

    .line 82
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v1, v8, [I

    shr-int/lit8 v2, v9, 0x4

    and-int/2addr v2, v8

    aput v2, v1, v7

    .line 83
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v8, [I

    shr-int/lit8 v4, v9, 0x5

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 84
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v8, [I

    shr-int/lit8 v4, v9, 0x6

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 85
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v8, [I

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 86
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v8, [I

    and-int/lit8 v2, v10, 0x1

    aput v2, v1, v7

    .line 87
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v8, [I

    shr-int/lit8 v3, v10, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 88
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_22
    :goto_9
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/n7;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/n7;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/n7;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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
    .locals 4

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lt p1, v3, :cond_4

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x7a

    aput p3, p1, v3

    aput v3, p1, v1

    .line 2
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    array-length p1, p2

    if-lt p1, v3, :cond_4

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x7b

    aput p3, p1, v3

    aput v3, p1, v1

    .line 4
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 5
    array-length p1, p2

    if-lt p1, v1, :cond_4

    const/4 p1, 0x5

    new-array p1, p1, [I

    aput p3, p1, v2

    const/16 p3, -0x7d

    aput p3, p1, v3

    aput v1, p1, v1

    .line 6
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 7
    array-length p1, p2

    if-lt p1, v3, :cond_4

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, -0x7c

    aput p3, p1, v3

    aput v3, p1, v1

    .line 8
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method
