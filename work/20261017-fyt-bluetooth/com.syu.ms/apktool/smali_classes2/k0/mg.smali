.class public Lk0/mg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:J

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:B

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/mg;->c:I

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v8, 0x7

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v8, 0x8

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v8, 0x9

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v8, 0xa

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v8, 0xb

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v8, 0xc

    aput-object v3, v1, v8

    iput-object v1, p0, Lk0/mg;->d:[[I

    .line 4
    iput v0, p0, Lk0/mg;->f:I

    new-array v1, v6, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_d

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v5

    iput-object v1, p0, Lk0/mg;->g:[[I

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lk0/mg;->h:J

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lk0/mg;->i:I

    .line 8
    new-instance v1, Lk0/mg$a;

    invoke-direct {v1, p0}, Lk0/mg$a;-><init>(Lk0/mg;)V

    iput-object v1, p0, Lk0/mg;->j:Ljava/lang/Runnable;

    .line 9
    iput v0, p0, Lk0/mg;->k:I

    .line 10
    new-instance v0, Lk0/mg$b;

    invoke-direct {v0, p0}, Lk0/mg$b;-><init>(Lk0/mg;)V

    iput-object v0, p0, Lk0/mg;->l:Ljava/lang/Runnable;

    .line 11
    iput-byte v7, p0, Lk0/mg;->m:B

    .line 12
    new-instance v0, Lk0/mg$c;

    invoke-direct {v0, p0}, Lk0/mg$c;-><init>(Lk0/mg;)V

    iput-object v0, p0, Lk0/mg;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/mg$d;

    invoke-direct {v0, p0}, Lk0/mg$d;-><init>(Lk0/mg;)V

    iput-object v0, p0, Lk0/mg;->o:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x10
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_c
    .array-data 4
        0x13
        0x12
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x4
        0x1
    .end array-data
.end method

.method public static synthetic c3(Lk0/mg;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/mg;->h:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/mg;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/mg;->h:J

    return-wide p1
.end method

.method public static synthetic e3(Lk0/mg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/mg;->i:I

    return p0
.end method

.method public static synthetic f3(Lk0/mg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/mg;->i:I

    return p1
.end method

.method public static synthetic g3(Lk0/mg;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/mg;->b3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/mg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mg;->o:Ljava/lang/Runnable;

    return-object p0
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->l:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/mg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/mg;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v3, p0, Lk0/mg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1c

    const/16 v7, 0x68

    const/16 v8, 0x69

    const/4 v9, 0x2

    if-eq v2, v9, :cond_12

    const/16 v10, 0x1e

    const/16 v11, 0x14

    const/4 v12, 0x5

    if-eq v2, v3, :cond_b

    const/4 v13, 0x4

    if-eq v2, v13, :cond_9

    if-eq v2, v11, :cond_8

    if-eq v2, v10, :cond_7

    const/16 v3, 0x71

    if-eq v2, v3, :cond_6

    const/16 v3, 0x22

    if-eq v2, v3, :cond_5

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/16 v2, 0x6f

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v7, v1, v4

    shr-int/2addr v7, v13

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v6, [I

    .line 3
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 4
    :pswitch_1
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_0

    goto/16 :goto_b

    :cond_0
    const/16 v2, 0x67

    new-array v3, v6, [I

    add-int/lit8 v9, p2, 0x3

    .line 5
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 6
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x5

    .line 7
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 8
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 9
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 10
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x9

    .line 11
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    const/16 v2, 0x80

    invoke-static {v3, v5, v1, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_b

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x3

    .line 14
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x4

    .line 15
    aget-byte v10, v1, v9

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x5

    .line 16
    aget-byte v12, v1, v11

    and-int/2addr v12, v4

    if-nez v3, :cond_2

    if-nez v8, :cond_2

    if-nez v10, :cond_2

    if-nez v12, :cond_2

    .line 17
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 18
    :cond_2
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_3

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_3

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_3

    sget v5, Ll0/c0;->j:I

    if-eq v5, v12, :cond_4

    .line 19
    :cond_3
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_4

    .line 20
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 21
    sput v13, Ll0/c0;->k:I

    .line 22
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    :cond_4
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 24
    sput v8, Ll0/c0;->h:I

    .line 25
    sput v10, Ll0/c0;->i:I

    .line 26
    sput v12, Ll0/c0;->j:I

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/mg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 28
    aget-byte v2, v1, v7

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/mg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 29
    aget-byte v2, v1, v9

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/mg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 30
    aget-byte v1, v1, v11

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/mg;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/mg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/mg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 33
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/mg;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 34
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/mg;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    .line 35
    :cond_6
    iput-byte v5, v0, Lk0/mg;->m:B

    .line 36
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_7
    const/16 v2, 0x63

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 37
    aget-byte v9, v1, v8

    and-int/2addr v9, v4

    aput v9, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    .line 38
    aget-byte v2, v1, v8

    and-int/2addr v2, v4

    iput v2, v0, Lk0/mg;->k:I

    const/16 v2, 0x64

    new-array v6, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 39
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    aput v1, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_8
    add-int/lit8 v2, p2, 0x3

    .line 40
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x408

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 42
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 43
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 44
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 45
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 46
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 47
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 48
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 49
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 50
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 51
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 52
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 53
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x4

    .line 54
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x5

    .line 55
    aget-byte v13, v1, v9

    add-int/lit8 v14, p2, 0x6

    .line 56
    aget-byte v15, v1, v14

    add-int/lit8 v16, p2, 0x7

    .line 57
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x8

    .line 58
    aget-byte v4, v1, v17

    const/16 v10, 0xa

    new-array v11, v6, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v5

    .line 59
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xb

    new-array v11, v6, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v5

    .line 60
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v11, v6, [I

    shr-int/lit8 v18, v2, 0x4

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v5

    .line 61
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xc

    new-array v11, v6, [I

    shr-int/lit8 v18, v2, 0x2

    and-int/lit8 v3, v18, 0x3

    aput v3, v11, v5

    .line 62
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 63
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v10, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v10, v5

    .line 64
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v6, [I

    shr-int/lit8 v10, v7, 0x6

    and-int/2addr v10, v6

    aput v10, v3, v5

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v6, [I

    shr-int/lit8 v10, v7, 0x5

    and-int/2addr v10, v6

    aput v10, v3, v5

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v5

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v6, [I

    shr-int/lit8 v7, v8, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 68
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    shr-int/lit8 v7, v8, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 69
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    shr-int/lit8 v7, v8, 0x4

    and-int/lit8 v10, v7, 0x1

    aput v10, v3, v5

    .line 70
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v8, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0x14

    .line 71
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v6, [I

    and-int/lit8 v7, v7, 0x7

    aput v7, v3, v5

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 73
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 74
    aget-byte v13, v1, v14

    .line 75
    aget-byte v15, v1, v9

    :cond_c
    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v7, 0x3f

    const/16 v8, 0x1b

    if-nez v13, :cond_d

    new-array v9, v6, [I

    aput v3, v9, v5

    .line 76
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    if-ne v13, v7, :cond_e

    new-array v9, v6, [I

    aput v2, v9, v5

    .line 77
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    new-array v9, v6, [I

    aput v13, v9, v5

    .line 78
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v8, 0x1c

    if-nez v15, :cond_f

    new-array v2, v6, [I

    aput v3, v2, v5

    .line 79
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    if-ne v15, v7, :cond_10

    new-array v3, v6, [I

    aput v2, v3, v5

    .line 80
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array v2, v6, [I

    aput v15, v2, v5

    .line 81
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x1d

    new-array v3, v6, [I

    shr-int/lit8 v7, v16, 0x4

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v5

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v16, 0x0

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v5

    const/16 v3, 0x1e

    .line 83
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xff

    and-int/lit16 v3, v4, 0xff

    .line 84
    iget v4, v0, Lk0/mg;->k:I

    if-ne v4, v6, :cond_11

    .line 85
    aget-byte v1, v1, v17

    and-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const v2, 0x8000

    or-int/2addr v1, v2

    goto :goto_4

    :cond_11
    mul-int/2addr v3, v12

    add-int/lit16 v1, v3, 0x258

    .line 86
    :goto_4
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_b

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 88
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 89
    iput v2, v0, Lk0/mg;->f:I

    move v2, v5

    .line 90
    :goto_5
    iget-object v3, v0, Lk0/mg;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 91
    iget v4, v0, Lk0/mg;->f:I

    aget-object v10, v3, v2

    aget v10, v10, v5

    if-ne v4, v10, :cond_13

    if-eqz v4, :cond_14

    .line 92
    iput v2, v0, Lk0/mg;->e:I

    goto :goto_6

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 93
    :cond_14
    :goto_6
    sget v4, Lk0/nt;->c:I

    if-ne v4, v7, :cond_17

    const/16 v7, 0xff

    and-int/2addr v1, v7

    if-ne v1, v6, :cond_15

    .line 94
    array-length v1, v3

    if-ge v2, v1, :cond_22

    .line 95
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_15
    if-nez v1, :cond_22

    .line 96
    iget v1, v0, Lk0/mg;->e:I

    array-length v2, v3

    const/16 v7, 0xff

    if-ge v1, v2, :cond_16

    if-eq v1, v7, :cond_16

    .line 97
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 98
    :cond_16
    iput v7, v0, Lk0/mg;->e:I

    goto/16 :goto_b

    :cond_17
    const/16 v7, 0xff

    if-ne v4, v8, :cond_22

    .line 99
    iget v4, v0, Lk0/mg;->f:I

    if-eq v4, v6, :cond_1b

    if-eq v4, v9, :cond_1b

    and-int/2addr v1, v7

    if-ne v1, v6, :cond_18

    .line 100
    array-length v1, v3

    if-ge v2, v1, :cond_22

    .line 101
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_18
    if-nez v1, :cond_22

    .line 102
    iget v1, v0, Lk0/mg;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_19

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1a

    .line 103
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_19
    const/16 v2, 0xff

    .line 104
    :cond_1a
    :goto_7
    iput v2, v0, Lk0/mg;->e:I

    goto :goto_b

    .line 105
    :cond_1b
    sget v1, Ly0/f;->i:I

    if-eqz v1, :cond_22

    const/4 v1, -0x4

    .line 106
    invoke-static {v1}, Ly0/h;->u0(I)V

    goto :goto_b

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 107
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 108
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 109
    iput v2, v0, Lk0/mg;->c:I

    move v2, v5

    .line 110
    :goto_8
    iget-object v3, v0, Lk0/mg;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 111
    iget v4, v0, Lk0/mg;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_1d

    if-eqz v4, :cond_1e

    .line 112
    iput v2, v0, Lk0/mg;->b:I

    goto :goto_9

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    :goto_9
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v6, :cond_1f

    .line 113
    array-length v1, v3

    if-ge v2, v1, :cond_22

    .line 114
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_1f
    if-nez v1, :cond_22

    .line 115
    iget v1, v0, Lk0/mg;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_20

    const/16 v2, 0xff

    if-eq v1, v2, :cond_21

    .line 116
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_20
    const/16 v2, 0xff

    .line 117
    :cond_21
    :goto_a
    iput v2, v0, Lk0/mg;->b:I

    :cond_22
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/mg;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/mg;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/mg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/mg;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x71

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

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xa8

    aput p4, p1, v4

    aput v3, p1, v3

    .line 1
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xa0

    aput p4, p1, v4

    aput v3, p1, v3

    .line 2
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_2
    sget p1, Lu0/b;->K3:I

    if-ne p1, v4, :cond_3

    move p1, v4

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    new-array v0, v0, [I

    aput p4, v0, v2

    const/16 p4, 0x86

    aput p4, v0, v4

    aput v3, v0, v3

    .line 4
    aget p2, p2, v2

    aput p2, v0, v1

    aput p1, v0, p3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array p1, v0, [I

    aput p4, p1, v2

    const/16 p4, 0xe8

    aput p4, p1, v4

    aput v3, p1, v3

    .line 5
    aget p4, p2, v2

    aput p4, p1, v1

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final a3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    :cond_3
    :goto_0
    return v1
.end method

.method public final b3(I)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x86

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    .line 1
    iget v1, p0, Lk0/mg;->k:I

    const/4 v4, 0x3

    aput v1, v0, v4

    if-ne p1, v3, :cond_0

    move v2, v3

    :cond_0
    const/4 p1, 0x4

    aput v2, v0, p1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
