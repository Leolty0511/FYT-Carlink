.class public Lk0/ab;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:B

.field public k:B

.field public l:Ljava/lang/Runnable;

.field public m:J

.field public n:I

.field public o:[I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ab;->c:I

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

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x15

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x16

    aput-object v3, v1, v5

    iput-object v1, p0, Lk0/ab;->d:[[I

    .line 4
    new-instance v1, Lk0/ab$a;

    invoke-direct {v1, p0}, Lk0/ab$a;-><init>(Lk0/ab;)V

    iput-object v1, p0, Lk0/ab;->e:Ljava/lang/Runnable;

    .line 5
    iput-byte v4, p0, Lk0/ab;->f:B

    .line 6
    new-instance v1, Lk0/ab$b;

    invoke-direct {v1, p0}, Lk0/ab$b;-><init>(Lk0/ab;)V

    iput-object v1, p0, Lk0/ab;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/ab$c;

    invoke-direct {v1, p0}, Lk0/ab$c;-><init>(Lk0/ab;)V

    iput-object v1, p0, Lk0/ab;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/ab$d;

    invoke-direct {v1, p0}, Lk0/ab$d;-><init>(Lk0/ab;)V

    iput-object v1, p0, Lk0/ab;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/ab$e;

    invoke-direct {v1, p0}, Lk0/ab$e;-><init>(Lk0/ab;)V

    iput-object v1, p0, Lk0/ab;->l:Ljava/lang/Runnable;

    const-wide/16 v3, -0x1

    .line 10
    iput-wide v3, p0, Lk0/ab;->m:J

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lk0/ab;->n:I

    new-array v1, v2, [I

    .line 12
    fill-array-data v1, :array_17

    iput-object v1, p0, Lk0/ab;->o:[I

    .line 13
    iput v0, p0, Lk0/ab;->p:I

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
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
        0x13
        0x22
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_a
    .array-data 4
        0x17
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x81
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x82
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x83
        0x36
    .end array-data

    :array_11
    .array-data 4
        0x84
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x85
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x86
        0x3a
    .end array-data

    :array_14
    .array-data 4
        0x87
        0x13
    .end array-data

    :array_15
    .array-data 4
        0x88
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x89
        0x7
    .end array-data

    :array_17
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic d3(Lk0/ab;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ab;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lk0/ab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ab;->a3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/ab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ab;->c3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/ab;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ab;->m:J

    return-wide v0
.end method

.method public static synthetic h3(Lk0/ab;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ab;->m:J

    return-wide p1
.end method

.method public static synthetic i3(Lk0/ab;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ab;->n:I

    return p0
.end method

.method public static synthetic j3(Lk0/ab;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ab;->n:I

    return p1
.end method

.method public static synthetic k3(Lk0/ab;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lk0/ab;->j:B

    return p0
.end method

.method public static synthetic l3(Lk0/ab;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lk0/ab;->j:B

    return p1
.end method

.method public static synthetic m3(Lk0/ab;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lk0/ab;->k:B

    return p0
.end method

.method public static synthetic n3(Lk0/ab;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lk0/ab;->k:B

    return p1
.end method

.method public static synthetic o3(Lk0/ab;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/ab;->b3()I

    move-result p0

    return p0
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
    iget-object v0, p0, Lk0/ab;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/ab;->i:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ab;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget v0, Lk0/nt;->a:I

    const-string v1, "com.syu.canbus"

    const/4 v3, 0x0

    const v4, 0x30146

    if-ne v0, v4, :cond_1

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->e:I

    .line 9
    iput v2, v0, Lk0/mt;->f:I

    .line 10
    iput v2, v0, Lk0/mt;->g:I

    goto :goto_1

    :cond_1
    const v4, 0x40146

    if-ne v0, v4, :cond_2

    .line 11
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v2, v0, Lk0/mt;->e:I

    .line 13
    iput v3, v0, Lk0/mt;->f:I

    .line 14
    iput v2, v0, Lk0/mt;->g:I

    .line 15
    iget-object v0, p0, Lk0/ab;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v2, v0, Lk0/mt;->e:I

    .line 18
    iput v3, v0, Lk0/mt;->f:I

    .line 19
    iput v3, v0, Lk0/mt;->g:I

    .line 20
    iput v2, v0, Lk0/mt;->o:I

    :goto_1
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/16 v5, 0xff

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_19

    const/16 v6, 0x29

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v6, :cond_15

    const/16 v6, 0x30

    if-eq v2, v6, :cond_14

    const/16 v6, 0x33

    if-eq v2, v6, :cond_13

    const/16 v6, 0x35

    const/4 v11, 0x4

    if-eq v2, v6, :cond_12

    const/16 v12, 0x53

    if-eq v2, v12, :cond_11

    const/16 v12, 0x55

    if-eq v2, v12, :cond_7

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, p2, 0x9

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 7
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 8
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 9
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 10
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 11
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 12
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 13
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 14
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 15
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 16
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 20
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->T0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    .line 21
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->T0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 25
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->T0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 27
    invoke-static {}, Lo1/u;->v()I

    .line 28
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v4

    if-eqz v4, :cond_1b

    add-int/lit8 v3, p2, 0x3

    .line 29
    aget-byte v1, v1, v3

    or-int/lit16 v2, v2, 0x80

    and-int/2addr v2, v5

    .line 30
    iput v2, v0, Lk0/ab;->c:I

    move v2, v9

    .line 31
    :goto_1
    iget-object v3, v0, Lk0/ab;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 32
    iget v4, v0, Lk0/ab;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v9

    if-ne v4, v6, :cond_2

    if-eqz v4, :cond_3

    .line 33
    iput v2, v0, Lk0/ab;->b:I

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    and-int/2addr v1, v5

    if-eqz v1, :cond_4

    .line 34
    array-length v1, v3

    if-ge v2, v1, :cond_1b

    .line 35
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 36
    :cond_4
    array-length v1, v3

    if-gt v2, v1, :cond_1b

    .line 37
    iget v1, v0, Lk0/ab;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 38
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    .line 40
    iput v1, v0, Lk0/ab;->c:I

    move v2, v9

    .line 41
    :goto_3
    iget-object v3, v0, Lk0/ab;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 42
    iget v4, v0, Lk0/ab;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_5

    if-eqz v4, :cond_6

    .line 43
    iput v2, v0, Lk0/ab;->b:I

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v1, :cond_1b

    .line 44
    iget v1, v0, Lk0/ab;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1b

    .line 45
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 46
    iget-object v1, v0, Lk0/ab;->d:[[I

    iget v2, v0, Lk0/ab;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v8, v1, v2

    add-int/lit8 v12, p2, 0x3

    .line 48
    aget-byte v13, v1, v12

    add-int/lit8 v14, p2, 0x4

    .line 49
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x6

    .line 50
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 51
    aget-byte v5, v1, v16

    const-string v6, "persist.fyt.reversetemp"

    .line 52
    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 53
    aget-byte v8, v1, v12

    .line 54
    aget-byte v13, v1, v2

    :cond_8
    const/4 v1, -0x1

    const/4 v2, -0x3

    const/4 v6, -0x2

    const/16 v12, 0x50

    const/16 v7, 0x10

    const/16 v11, 0x1b

    if-eq v8, v7, :cond_b

    if-eq v8, v12, :cond_a

    if-lt v8, v3, :cond_9

    const/16 v12, 0x40

    if-gt v8, v12, :cond_9

    new-array v12, v10, [I

    sub-int/2addr v8, v3

    mul-int/2addr v8, v4

    add-int/lit16 v8, v8, 0x96

    aput v8, v12, v9

    .line 55
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_9
    new-array v8, v10, [I

    aput v1, v8, v9

    .line 56
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_a
    new-array v8, v10, [I

    aput v2, v8, v9

    .line 57
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_b
    new-array v8, v10, [I

    aput v6, v8, v9

    .line 58
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v8, 0x1c

    if-eq v13, v7, :cond_e

    const/16 v11, 0x50

    if-eq v13, v11, :cond_d

    if-lt v13, v3, :cond_c

    const/16 v2, 0x40

    if-gt v13, v2, :cond_c

    new-array v1, v10, [I

    sub-int/2addr v13, v3

    mul-int/2addr v13, v4

    add-int/lit16 v13, v13, 0x96

    aput v13, v1, v9

    .line 59
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_c
    new-array v2, v10, [I

    aput v1, v2, v9

    .line 60
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_d
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 61
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_e
    new-array v1, v10, [I

    aput v6, v1, v9

    .line 62
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v1, 0x15

    new-array v2, v10, [I

    and-int/lit8 v3, v14, 0xf

    aput v3, v2, v9

    .line 63
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x4

    shr-int/lit8 v1, v14, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_1

    move v1, v9

    :goto_7
    move v2, v1

    :goto_8
    move v3, v2

    goto :goto_9

    :pswitch_6
    move v1, v10

    goto :goto_7

    :pswitch_7
    move v2, v9

    move v3, v2

    move v1, v10

    goto :goto_9

    :pswitch_8
    move v3, v9

    move v1, v10

    move v2, v1

    goto :goto_9

    :pswitch_9
    move v2, v9

    move v1, v10

    move v3, v1

    goto :goto_9

    :pswitch_a
    move v1, v9

    move v2, v1

    move v3, v10

    goto :goto_9

    :pswitch_b
    move v1, v9

    move v2, v10

    goto :goto_8

    :pswitch_c
    move v1, v9

    move v3, v1

    move v2, v10

    :goto_9
    const/16 v4, 0x12

    new-array v6, v10, [I

    aput v1, v6, v9

    .line 64
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 65
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v10, [I

    aput v3, v2, v9

    .line 66
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v10, [I

    and-int/lit8 v3, v15, 0x1

    aput v3, v2, v9

    .line 67
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v10, [I

    shr-int/lit8 v3, v15, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 68
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3e

    new-array v2, v10, [I

    shr-int/lit8 v3, v15, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 69
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v10, [I

    shr-int/lit8 v3, v15, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 70
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v15, 0x4

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0x35

    .line 71
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v10, [I

    shr-int/lit8 v3, v15, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 72
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v15, 0x6

    and-int/2addr v2, v10

    aput v2, v1, v9

    .line 73
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v15, 0x7

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xf

    .line 74
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xff

    and-int/lit16 v2, v5, 0xff

    if-eq v2, v1, :cond_10

    if-nez v2, :cond_f

    goto :goto_a

    :cond_f
    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 v2, v2, 0x258

    .line 75
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_b

    .line 76
    :cond_10
    :goto_a
    invoke-static {v9}, Lu0/d;->A3(I)V

    goto/16 :goto_b

    :cond_11
    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 77
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 80
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 81
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 82
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 83
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 84
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 86
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 87
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    const/16 v4, 0x408

    new-array v5, v10, [I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    aput v2, v5, v9

    .line 88
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/16 v4, 0x66

    new-array v5, v10, [I

    aput v2, v5, v9

    .line 91
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/16 v4, 0x67

    new-array v5, v10, [I

    aput v2, v5, v9

    .line 93
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 94
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/16 v4, 0x68

    new-array v5, v10, [I

    aput v2, v5, v9

    .line 95
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 96
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 97
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 98
    :cond_15
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 99
    sget v2, Lk0/nt;->a:I

    const/16 v3, 0x146

    if-ne v2, v3, :cond_16

    add-int/lit8 v2, p2, 0x3

    .line 100
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const v3, 0x801b

    const/16 v4, 0x143c

    invoke-static {v2, v1, v3, v10, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_b

    :cond_16
    const v3, 0x30146

    if-eq v2, v3, :cond_17

    const v3, 0x40146

    if-ne v2, v3, :cond_1b

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_18

    add-int/lit8 v3, p2, 0x2

    .line 102
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    const/16 v2, 0xf

    and-int/2addr v1, v2

    const/16 v2, 0x168

    invoke-static {v3, v1, v9, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_b

    .line 103
    :cond_18
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    const/16 v3, 0xf

    and-int/2addr v1, v3

    const/16 v3, 0x168

    .line 104
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_b

    .line 105
    :cond_19
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->S0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 107
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->S0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 108
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->S0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 109
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->S0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_b

    :cond_1a
    move v3, v5

    .line 110
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->S0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 112
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->S0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 113
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->S0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 114
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->S0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_1b
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ab;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/ab;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ab;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ab;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/ab;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x73

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
    .locals 7

    const/16 p3, 0x33

    if-eqz p1, :cond_2

    const/4 p4, 0x5

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, -0x7d

    aput p3, p1, v3

    aput v5, p1, v5

    .line 2
    aget p3, p2, v4

    int-to-byte p3, p3

    aput p3, p1, v0

    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget p1, p0, Lk0/ab;->p:I

    add-int/2addr p1, v3

    iput p1, p0, Lk0/ab;->p:I

    .line 5
    rem-int/2addr p1, v5

    iput p1, p0, Lk0/ab;->p:I

    const/4 v6, 0x7

    new-array v6, v6, [I

    aput v1, v6, v4

    aput p3, v6, v3

    aput v2, v6, v5

    .line 6
    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, v6, v0

    iget-object p2, p0, Lk0/ab;->o:[I

    aget p1, p2, p1

    aput p1, v6, v2

    aput v4, v6, p4

    const/4 p1, 0x6

    aput v4, v6, p1

    invoke-static {v6}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x24

    .line 7
    invoke-virtual {p0, p1}, Lk0/ab;->a3(I)V

    const/16 p1, 0x25

    .line 8
    invoke-virtual {p0, p1}, Lk0/ab;->a3(I)V

    const/16 p1, 0x30

    .line 9
    invoke-virtual {p0, p1}, Lk0/ab;->a3(I)V

    const/16 p1, 0x32

    .line 10
    invoke-virtual {p0, p1}, Lk0/ab;->a3(I)V

    .line 11
    invoke-virtual {p0, p3}, Lk0/ab;->a3(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x70

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()I
    .locals 3

    .line 1
    sget v0, Lu0/b;->K3:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final c3(I)V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    const v4, 0x40146

    if-ne v0, v4, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v3, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array p1, v3, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x6

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v4, 0xe3

    aput v4, p1, v0

    const/16 v0, 0x32

    aput v0, p1, v2

    const/4 v0, 0x3

    aput v0, p1, v1

    .line 4
    iget-byte v1, p0, Lk0/ab;->j:B

    aput v1, p1, v0

    const/4 v0, 0x4

    iget-byte v1, p0, Lk0/ab;->k:B

    aput v1, p1, v0

    invoke-virtual {p0}, Lk0/ab;->b3()I

    move-result v0

    int-to-byte v0, v0

    aput v0, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x8
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x8
        0x0
    .end array-data
.end method
