.class public Lk0/em;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static u:I = 0x1


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Lo1/g0;

.field public final l:I

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:I

.field public s:Ljava/lang/Runnable;

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lk0/em;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/em;->c:I

    .line 4
    iput v0, p0, Lk0/em;->d:I

    .line 5
    iput v0, p0, Lk0/em;->e:I

    .line 6
    iput v0, p0, Lk0/em;->g:I

    const/16 v1, 0x18

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 7
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

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

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

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/em;->h:[[I

    .line 8
    new-instance v1, Lk0/em$a;

    invoke-direct {v1, p0}, Lk0/em$a;-><init>(Lk0/em;)V

    iput-object v1, p0, Lk0/em;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/em$b;

    invoke-direct {v1, p0}, Lk0/em$b;-><init>(Lk0/em;)V

    iput-object v1, p0, Lk0/em;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/em;->k:Lo1/g0;

    .line 11
    iput v4, p0, Lk0/em;->l:I

    .line 12
    new-instance v1, Lk0/em$c;

    invoke-direct {v1, p0}, Lk0/em$c;-><init>(Lk0/em;)V

    iput-object v1, p0, Lk0/em;->m:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lk0/em;->n:I

    .line 14
    new-instance v0, Lk0/em$d;

    invoke-direct {v0, p0}, Lk0/em$d;-><init>(Lk0/em;)V

    iput-object v0, p0, Lk0/em;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/em$e;

    invoke-direct {v0, p0}, Lk0/em$e;-><init>(Lk0/em;)V

    iput-object v0, p0, Lk0/em;->p:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lk0/em;->q:I

    .line 17
    iput v0, p0, Lk0/em;->r:I

    .line 18
    new-instance v1, Lk0/em$f;

    invoke-direct {v1, p0}, Lk0/em$f;-><init>(Lk0/em;)V

    iput-object v1, p0, Lk0/em;->s:Ljava/lang/Runnable;

    .line 19
    iput v0, p0, Lk0/em;->t:I

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
        0x6
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x7
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x8
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1f
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x36
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x3a
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x26
    .end array-data

    :array_12
    .array-data 4
        0x13
        0xb
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x35
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x12
    .end array-data

    :array_16
    .array-data 4
        0x17
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x37
    .end array-data
.end method

.method public static a3()V
    .locals 11

    const/4 v0, 0x7

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
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    aput v4, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v5, v3, :cond_3

    if-eq v5, v4, :cond_2

    if-eq v5, v7, :cond_1

    const/16 v3, 0xa

    if-eq v5, v3, :cond_1

    aput v6, v1, v9

    goto :goto_2

    :cond_1
    aput v9, v1, v9

    .line 3
    sget v3, Lu0/b;->r3:I

    aput v3, v1, v8

    goto :goto_2

    :cond_2
    aput v8, v1, v9

    goto :goto_2

    :cond_3
    aput v3, v1, v9

    .line 4
    sget v5, Lw0/d;->h:I

    const/high16 v10, 0x10000

    if-ne v5, v10, :cond_4

    aput v2, v1, v8

    goto :goto_1

    :cond_4
    const v10, 0x10001

    if-ne v5, v10, :cond_5

    aput v3, v1, v8

    goto :goto_1

    :cond_5
    const v10, 0x10002

    if-ne v5, v10, :cond_6

    aput v9, v1, v8

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    if-ne v5, v3, :cond_8

    :cond_7
    const/16 v3, 0x10

    aput v3, v1, v8

    .line 5
    :cond_8
    :goto_1
    sget v3, Lw0/d;->i:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v4

    .line 6
    :goto_2
    sget v3, Lu0/b;->a0:I

    if-nez v3, :cond_9

    aput v2, v1, v9

    :cond_9
    new-array v3, v7, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_a

    add-int/lit8 v4, v2, 0x1

    .line 7
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 8
    :cond_a
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3(I)I
    .locals 1

    const/16 v0, 0xa

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 1
    div-int/lit8 p0, p0, 0x3

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static synthetic d3(Lk0/em;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/em;->k:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3(Lk0/em;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/em;->h3(I)V

    return-void
.end method

.method public static i3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
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
    iget-object v0, p0, Lk0/em;->k:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/em;->o:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 11
    :goto_0
    iget-object v0, p0, Lk0/em;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/em;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/em;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x3

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x27

    const/16 v13, 0xa

    const/16 v14, 0x10

    const/16 v16, -0x2

    const/16 v12, 0x1c

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v15, 0x4

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x29

    const v17, 0xff00

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x35

    if-eq v2, v3, :cond_12

    const/16 v3, 0x38

    if-eq v2, v3, :cond_11

    const/16 v3, 0x55

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_19

    :pswitch_0
    const/16 v2, 0xab

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v7, v1, v4

    shr-int/lit8 v5, v7, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v9, [I

    .line 4
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v9, [I

    .line 5
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v9, [I

    .line 6
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v9, [I

    .line 7
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v9, [I

    .line 8
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_1
    const/16 v2, 0xa4

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 9
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 10
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 11
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 12
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 13
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 14
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 15
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    if-eqz v2, :cond_2

    if-eq v2, v9, :cond_1

    if-eq v2, v10, :cond_0

    goto/16 :goto_19

    :cond_0
    const/16 v2, 0x75

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 17
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int v5, v5, v17

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 18
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int v5, v5, v17

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x9

    .line 19
    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_1
    const/16 v2, 0x72

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 20
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int v5, v5, v17

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 21
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int v5, v5, v17

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x9

    .line 22
    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_2
    const/16 v2, 0x6f

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 23
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int v5, v5, v17

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 24
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int v5, v5, v17

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x9

    .line 25
    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 27
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 28
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 29
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 30
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 31
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 32
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 33
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 34
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 35
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    add-int/lit8 v4, p2, 0x3

    .line 37
    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    add-int/lit8 v6, p2, 0x4

    .line 38
    aget-byte v10, v1, v6

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x5

    .line 39
    aget-byte v12, v1, v11

    and-int/2addr v12, v7

    if-nez v3, :cond_4

    if-nez v5, :cond_4

    if-nez v10, :cond_4

    if-nez v12, :cond_4

    .line 40
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 41
    :cond_4
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_5

    sget v8, Ll0/c0;->h:I

    if-ne v8, v5, :cond_5

    sget v8, Ll0/c0;->i:I

    if-ne v8, v10, :cond_5

    sget v8, Ll0/c0;->j:I

    if-eq v8, v12, :cond_6

    .line 42
    :cond_5
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_6

    .line 43
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 44
    sput v15, Ll0/c0;->k:I

    .line 45
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 46
    :cond_6
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 47
    sput v5, Ll0/c0;->h:I

    .line 48
    sput v10, Ll0/c0;->i:I

    .line 49
    sput v12, Ll0/c0;->j:I

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Lk0/em;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 51
    aget-byte v2, v1, v4

    and-int/2addr v2, v7

    invoke-static {v2}, Lk0/em;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 52
    aget-byte v2, v1, v6

    and-int/2addr v2, v7

    invoke-static {v2}, Lk0/em;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 53
    aget-byte v1, v1, v11

    and-int/2addr v1, v7

    invoke-static {v1}, Lk0/em;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_19

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Lk0/em;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Lk0/em;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Lk0/em;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 57
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Lk0/em;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_19

    :cond_7
    const-string v2, "persist.fyt.reversetemp"

    .line 58
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v14, :cond_8

    new-array v2, v9, [I

    aput v16, v2, v8

    .line 60
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    add-int/lit8 v3, p2, 0x4

    .line 61
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    const/16 v4, 0x50

    if-ne v3, v4, :cond_9

    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 62
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v3, v9, [I

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v3, v8

    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v14, :cond_a

    new-array v2, v9, [I

    aput v16, v2, v8

    const/16 v3, 0x1b

    .line 65
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_a
    const/16 v3, 0x1b

    add-int/lit8 v4, p2, 0x5

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v12, 0x50

    if-ne v4, v12, :cond_b

    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 67
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v4, v9, [I

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    const/16 v3, 0x1b

    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    if-ne v4, v14, :cond_d

    new-array v2, v9, [I

    aput v16, v2, v8

    .line 70
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    add-int/lit8 v4, p2, 0x4

    .line 71
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    const/16 v13, 0x50

    if-ne v4, v13, :cond_e

    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 72
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v4, v9, [I

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v2, p2, 0x3

    .line 74
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v14, :cond_f

    new-array v2, v9, [I

    aput v16, v2, v8

    .line 75
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    add-int/lit8 v3, p2, 0x5

    .line 76
    aget-byte v3, v1, v3

    and-int/2addr v3, v7

    const/16 v4, 0x50

    if-ne v3, v4, :cond_10

    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 77
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v3, v9, [I

    .line 78
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v3, v8

    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x4

    .line 79
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_2

    move v3, v8

    :goto_5
    move v4, v3

    :goto_6
    move v7, v4

    goto :goto_7

    :pswitch_6
    move v3, v9

    goto :goto_5

    :pswitch_7
    move v4, v8

    move v7, v4

    move v3, v9

    goto :goto_7

    :pswitch_8
    move v7, v8

    move v3, v9

    move v4, v3

    goto :goto_7

    :pswitch_9
    move v4, v8

    move v3, v9

    move v7, v3

    goto :goto_7

    :pswitch_a
    move v3, v8

    move v4, v3

    move v7, v9

    goto :goto_7

    :pswitch_b
    move v3, v8

    move v4, v9

    goto :goto_6

    :pswitch_c
    move v3, v8

    move v7, v3

    move v4, v9

    :goto_7
    const/16 v12, 0x12

    new-array v13, v9, [I

    aput v3, v13, v8

    .line 80
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v12, v9, [I

    aput v4, v12, v8

    .line 81
    invoke-static {v3, v12}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    aput v7, v3, v8

    const/16 v4, 0x14

    .line 82
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v4, v9, [I

    .line 83
    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/lit8 v2, v2, 0xf

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 84
    aget-byte v7, v1, v4

    shr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v9, [I

    .line 85
    aget-byte v4, v1, v4

    shr-int/2addr v4, v15

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x6

    .line 86
    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0xd

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 87
    aget-byte v4, v1, v3

    shr-int/2addr v4, v9

    and-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0xb

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v4, v9, [I

    .line 88
    aget-byte v7, v1, v3

    shr-int/2addr v7, v10

    and-int/2addr v7, v9

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v9, [I

    .line 89
    aget-byte v7, v1, v3

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v9, [I

    .line 90
    aget-byte v7, v1, v3

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 91
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v4, v9, [I

    .line 92
    aget-byte v3, v1, v3

    shr-int/2addr v3, v5

    and-int/2addr v3, v9

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 93
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_11
    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 94
    aget-byte v12, v1, v4

    shr-int/2addr v12, v5

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 95
    aget-byte v12, v1, v4

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    .line 96
    aget-byte v12, v1, v4

    shr-int/2addr v12, v11

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    .line 97
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    .line 98
    aget-byte v12, v1, v4

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    .line 99
    aget-byte v12, v1, v4

    shr-int/2addr v12, v10

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 100
    aget-byte v12, v1, v4

    shr-int/2addr v12, v9

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    .line 101
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 102
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 103
    aget-byte v12, v1, v4

    shr-int/2addr v12, v5

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v9, [I

    .line 104
    aget-byte v12, v1, v4

    shr-int/2addr v12, v11

    and-int/2addr v12, v6

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v9, [I

    .line 105
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v9, [I

    .line 106
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 107
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v9, [I

    .line 108
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 109
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 111
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 112
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 113
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v9, [I

    .line 114
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v9, [I

    .line 115
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v9, [I

    .line 116
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 117
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v9, [I

    .line 118
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v9, [I

    .line 119
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x417

    new-array v3, v9, [I

    .line 120
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v9, [I

    .line 121
    aget-byte v7, v1, v4

    shr-int/2addr v7, v10

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v9, [I

    .line 122
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v9, [I

    .line 123
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xc

    .line 124
    aget-byte v7, v1, v4

    shr-int/lit8 v5, v7, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v9, [I

    .line 125
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v9, [I

    .line 126
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v9, [I

    .line 127
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v9, [I

    const/16 v4, 0xd

    add-int/lit8 v4, p2, 0xd

    .line 128
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v9, [I

    .line 129
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_12
    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 130
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 131
    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    and-int v6, v6, v17

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 132
    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    and-int v6, v6, v17

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0xd

    .line 133
    aget-byte v10, v1, v6

    shr-int/lit8 v5, v10, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v9, [I

    .line 134
    aget-byte v5, v1, v6

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 135
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 136
    sget-boolean v2, Ll0/c0;->p:Z

    if-nez v2, :cond_19

    add-int/lit8 v2, p2, 0x2

    .line 137
    aget-byte v3, v1, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v9

    .line 138
    aget-byte v2, v1, v2

    shr-int/2addr v2, v15

    and-int/2addr v2, v9

    if-nez v3, :cond_13

    if-ne v2, v9, :cond_13

    move v5, v9

    goto :goto_8

    :cond_13
    move v5, v8

    :goto_8
    if-ne v3, v9, :cond_14

    if-nez v2, :cond_14

    move v6, v9

    goto :goto_9

    :cond_14
    move v6, v8

    :goto_9
    if-ne v3, v9, :cond_15

    if-ne v2, v9, :cond_15

    move v2, v9

    goto :goto_a

    :cond_15
    move v2, v8

    .line 139
    :goto_a
    sput v8, Ll0/c0;->t:I

    .line 140
    sput v8, Ll0/c0;->r:I

    .line 141
    sput v8, Ll0/c0;->v:I

    const/16 v3, 0x14

    if-eqz v5, :cond_16

    .line 142
    sput v3, Ll0/c0;->t:I

    :cond_16
    if-eqz v6, :cond_17

    .line 143
    sput v3, Ll0/c0;->r:I

    :cond_17
    if-eqz v2, :cond_18

    .line 144
    sput v3, Ll0/c0;->v:I

    .line 145
    :cond_18
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v10, 0x1000

    invoke-virtual {v3, v10, v5}, Lu0/i;->g4(IZ)V

    .line 146
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    const/16 v5, 0x2000

    invoke-virtual {v3, v5, v6}, Lu0/i;->g4(IZ)V

    const/16 v3, 0x8b

    new-array v5, v9, [I

    aput v2, v5, v8

    .line 147
    invoke-static {v3, v5}, Lu0/d;->I3(I[I)V

    :cond_19
    add-int/lit8 v2, p2, 0x8

    .line 148
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    const-string v2, "persist.fyt.temperature"

    .line 149
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_1a

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1a
    mul-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x258

    .line 150
    :goto_b
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_19

    .line 151
    :cond_1b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_1c
    add-int/lit8 v2, p2, 0x3

    .line 152
    aget-byte v3, v1, v2

    shl-int/2addr v3, v4

    and-int v3, v3, v17

    add-int/lit8 v4, p2, 0x2

    aget-byte v5, v1, v4

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    const/16 v5, 0xbd

    new-array v6, v9, [I

    aput v3, v6, v8

    .line 153
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    .line 154
    aget-byte v3, v1, v4

    aget-byte v1, v1, v2

    const/16 v2, 0x2a00

    invoke-static {v3, v1, v8, v2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_19

    :cond_1d
    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 155
    aget-byte v4, v1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v2, v8

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 156
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0xb

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v4, v9, [I

    .line 157
    aget-byte v13, v1, v3

    shr-int/2addr v13, v11

    and-int/2addr v13, v9

    aput v13, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 158
    aget-byte v4, v1, v3

    shr-int/2addr v4, v15

    and-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0xd

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v4, v9, [I

    .line 159
    aget-byte v13, v1, v3

    shr-int/2addr v13, v6

    and-int/2addr v13, v9

    aput v13, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v4, v9, [I

    .line 160
    aget-byte v13, v1, v3

    shr-int/2addr v13, v10

    and-int/2addr v13, v9

    aput v13, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v9, [I

    .line 161
    aget-byte v13, v1, v3

    shr-int/2addr v13, v9

    and-int/2addr v13, v9

    aput v13, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 162
    aget-byte v3, v1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 163
    aget-byte v13, v1, v4

    shr-int/2addr v13, v5

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    .line 164
    aget-byte v13, v1, v4

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 165
    aget-byte v3, v1, v4

    shr-int/2addr v3, v11

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0x14

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v9, [I

    .line 166
    aget-byte v13, v1, v4

    shr-int/2addr v13, v15

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    .line 167
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 168
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-nez v3, :cond_1e

    new-array v2, v9, [I

    aput v16, v2, v8

    const/16 v3, 0x1b

    .line 169
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1e
    const/16 v3, 0x1b

    .line 170
    aget-byte v4, v1, v2

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1f

    new-array v2, v9, [I

    const/4 v4, -0x3

    aput v4, v2, v8

    .line 171
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1f
    new-array v4, v9, [I

    .line 172
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_c
    add-int/lit8 v2, p2, 0x5

    .line 173
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-nez v3, :cond_20

    new-array v2, v9, [I

    aput v16, v2, v8

    .line 174
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    .line 175
    :cond_20
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_21

    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 176
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_21
    new-array v3, v9, [I

    .line 177
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v3, v8

    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    :goto_d
    const/16 v2, 0x49

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 178
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4a

    new-array v3, v9, [I

    .line 179
    aget-byte v12, v1, v4

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v9, [I

    .line 180
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 181
    sget v2, Lk0/nt;->W:I

    if-nez v2, :cond_22

    const/16 v2, 0x1d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 182
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v9, [I

    .line 183
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_22
    const/16 v2, 0x1e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 184
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v9, [I

    .line 185
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_e
    add-int/lit8 v2, p2, 0x8

    .line 186
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_23

    .line 187
    invoke-virtual/range {p0 .. p0}, Lk0/em;->f3()V

    .line 188
    :cond_23
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_24

    .line 189
    invoke-virtual/range {p0 .. p0}, Lk0/em;->g3()V

    :cond_24
    const/16 v3, 0x35

    new-array v4, v9, [I

    .line 190
    aget-byte v12, v1, v2

    shr-int/2addr v12, v11

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x11

    new-array v4, v9, [I

    .line 191
    aget-byte v12, v1, v2

    shr-int/2addr v12, v15

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x22

    new-array v4, v9, [I

    .line 192
    aget-byte v12, v1, v2

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb9

    new-array v4, v9, [I

    .line 193
    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 194
    aget-byte v12, v1, v4

    shr-int/2addr v12, v8

    and-int/2addr v12, v5

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v9, [I

    add-int/lit8 v12, p2, 0x10

    .line 195
    aget-byte v13, v1, v12

    shr-int/2addr v13, v6

    and-int/2addr v13, v5

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v9, [I

    .line 196
    aget-byte v12, v1, v12

    shr-int/2addr v12, v8

    and-int/2addr v12, v5

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v9, [I

    .line 197
    aget-byte v12, v1, v4

    shr-int/2addr v12, v5

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v9, [I

    .line 198
    aget-byte v12, v1, v4

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v9, [I

    .line 199
    aget-byte v12, v1, v4

    shr-int/2addr v12, v11

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v9, [I

    .line 200
    aget-byte v4, v1, v4

    shr-int/2addr v4, v15

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 201
    aget-byte v12, v1, v4

    shr-int/2addr v12, v5

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    .line 202
    aget-byte v12, v1, v4

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v9, [I

    .line 203
    aget-byte v12, v1, v4

    shr-int/2addr v12, v11

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v9, [I

    .line 204
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 205
    sget v2, Lk0/nt;->W:I

    if-ne v2, v9, :cond_25

    const/16 v2, 0x7e

    new-array v3, v9, [I

    .line 206
    aget-byte v12, v1, v4

    shr-int/2addr v12, v10

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v9, [I

    .line 207
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_25
    const/16 v2, 0x7e

    new-array v3, v9, [I

    .line 208
    aget-byte v12, v1, v4

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v9, [I

    .line 209
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 210
    :goto_f
    sget v2, Lk0/nt;->W:I

    if-nez v2, :cond_26

    const/16 v2, 0x80

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 211
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v9, [I

    .line 212
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_26
    const/16 v2, 0x81

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 213
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/lit8 v12, v12, 0xf

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v9, [I

    .line 214
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_10
    const/16 v2, 0x43

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xc

    .line 215
    aget-byte v12, v1, v4

    shr-int/2addr v12, v5

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v9, [I

    .line 216
    aget-byte v12, v1, v4

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v9, [I

    .line 217
    aget-byte v12, v1, v4

    shr-int/2addr v12, v11

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v9, [I

    .line 218
    aget-byte v12, v1, v4

    shr-int/2addr v12, v15

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v9, [I

    .line 219
    aget-byte v12, v1, v4

    shr-int/2addr v12, v6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v9, [I

    .line 220
    aget-byte v12, v1, v4

    shr-int/lit8 v10, v12, 0x2

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v9, [I

    .line 221
    aget-byte v10, v1, v4

    shr-int/2addr v10, v9

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v9, [I

    .line 222
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xd

    .line 223
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-nez v3, :cond_27

    const/16 v2, 0x28

    new-array v3, v9, [I

    aput v16, v3, v8

    .line 224
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    .line 225
    :cond_27
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_28

    const/16 v2, 0x28

    new-array v3, v9, [I

    const/4 v4, -0x3

    aput v4, v3, v8

    .line 226
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_28
    const/16 v3, 0x28

    new-array v4, v9, [I

    .line 227
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_11
    add-int/lit8 v2, p2, 0xe

    .line 228
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-nez v3, :cond_29

    const/16 v2, 0x29

    new-array v3, v9, [I

    aput v16, v3, v8

    .line 229
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    .line 230
    :cond_29
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_2a

    const/16 v2, 0x29

    new-array v3, v9, [I

    const/4 v4, -0x3

    aput v4, v3, v8

    .line 231
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_2a
    const/16 v3, 0x29

    new-array v4, v9, [I

    .line 232
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    aput v2, v4, v8

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_12
    const/16 v2, 0x8b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xf

    .line 233
    aget-byte v7, v1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v9, [I

    .line 234
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v9, [I

    .line 235
    aget-byte v7, v1, v4

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v9, [I

    .line 236
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v3, v9, [I

    .line 237
    aget-byte v7, v1, v4

    shr-int/lit8 v6, v7, 0x3

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v9, [I

    .line 238
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_2b
    add-int/lit8 v2, p2, 0x2

    .line 239
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 240
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 241
    iput v2, v0, Lk0/em;->g:I

    move v2, v8

    .line 242
    :goto_13
    iget-object v3, v0, Lk0/em;->h:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_2d

    .line 243
    iget v6, v0, Lk0/em;->g:I

    aget-object v10, v3, v2

    aget v10, v10, v8

    if-ne v6, v10, :cond_2c

    if-eqz v6, :cond_2d

    .line 244
    iput v2, v0, Lk0/em;->f:I

    goto :goto_14

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 245
    :cond_2d
    :goto_14
    iget v6, v0, Lk0/em;->g:I

    const/16 v10, 0x17

    if-eq v6, v10, :cond_34

    packed-switch v6, :pswitch_data_3

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_2e

    .line 246
    array-length v1, v3

    if-ge v2, v1, :cond_37

    .line 247
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_2e
    if-nez v1, :cond_37

    .line 248
    iget v1, v0, Lk0/em;->f:I

    array-length v2, v3

    if-ge v1, v2, :cond_2f

    if-eq v1, v7, :cond_2f

    .line 249
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 250
    :cond_2f
    iput v7, v0, Lk0/em;->f:I

    goto/16 :goto_19

    :pswitch_d
    move v2, v8

    :goto_15
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_30

    const/16 v3, 0x1e

    .line 251
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_30
    const/16 v1, 0x1e

    .line 252
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_19

    :pswitch_e
    move v2, v8

    :goto_16
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_31

    const/16 v3, 0x1f

    .line 253
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_31
    const/16 v1, 0x1f

    .line 254
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_19

    :pswitch_f
    move v2, v8

    :goto_17
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_32

    .line 255
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 256
    :cond_32
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_19

    :pswitch_10
    move v2, v8

    :goto_18
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_33

    .line 257
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 258
    :cond_33
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    goto :goto_19

    :cond_34
    and-int/2addr v1, v7

    if-ne v1, v9, :cond_37

    .line 259
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_35

    const-string v1, "com.syu.fourcamera2"

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 260
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto :goto_19

    .line 261
    :cond_35
    sget v1, Lu0/b;->o:I

    if-eq v1, v9, :cond_36

    const-string v1, "com.syu.fourcamera2"

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 262
    :cond_36
    invoke-static {v8}, Lk0/qt;->a(I)V

    :cond_37
    :goto_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/em;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/em;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/em;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/em;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/em;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xbe

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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x1f

    const/16 v4, 0xc6

    const/16 v5, 0xe3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_10

    if-eq v1, v12, :cond_f

    const/16 v13, 0x9

    const/4 v15, 0x6

    const/16 v16, 0x7

    if-eq v1, v9, :cond_e

    if-eq v1, v7, :cond_d

    const/16 v14, 0x3ed

    if-eq v1, v14, :cond_9

    const/16 v13, 0x405

    if-eq v1, v13, :cond_7

    const/16 v8, 0x40e

    if-eq v1, v8, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v8, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "C_CMD_JAHUAR_LZ  ints[0] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v2, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "-----------  ints[1] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v2, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v8, v13}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    aget v1, v2, v11

    const/16 v8, 0xf8

    if-eq v1, v12, :cond_5

    if-eq v1, v9, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    goto/16 :goto_0

    :cond_1
    new-array v1, v10, [I

    aput v5, v1, v11

    aput v4, v1, v12

    aput v9, v1, v9

    aput v3, v1, v7

    .line 3
    aget v2, v2, v12

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array v1, v10, [I

    aput v5, v1, v11

    aput v4, v1, v12

    aput v9, v1, v9

    const/16 v3, 0x1b

    aput v3, v1, v7

    .line 4
    aget v2, v2, v12

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array v1, v10, [I

    aput v5, v1, v11

    aput v8, v1, v12

    aput v9, v1, v9

    aput v12, v1, v7

    .line 5
    aget v3, v2, v12

    aput v3, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    iput v12, v0, Lk0/em;->r:I

    .line 7
    aget v1, v2, v12

    if-ne v1, v12, :cond_4

    .line 8
    iput v11, v0, Lk0/em;->q:I

    .line 9
    iget-object v1, v0, Lk0/em;->s:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10
    :cond_4
    aget v1, v2, v12

    if-nez v1, :cond_26

    .line 11
    iput v11, v0, Lk0/em;->q:I

    .line 12
    iget-object v1, v0, Lk0/em;->s:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    new-array v1, v10, [I

    aput v5, v1, v11

    aput v8, v1, v12

    aput v9, v1, v9

    aput v11, v1, v7

    .line 13
    aget v3, v2, v12

    aput v3, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 14
    iput v11, v0, Lk0/em;->r:I

    .line 15
    aget v1, v2, v12

    if-ne v1, v12, :cond_6

    .line 16
    iput v11, v0, Lk0/em;->q:I

    .line 17
    iget-object v1, v0, Lk0/em;->s:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 18
    :cond_6
    aget v1, v2, v12

    if-nez v1, :cond_26

    .line 19
    iput v11, v0, Lk0/em;->q:I

    .line 20
    iget-object v1, v0, Lk0/em;->s:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 21
    :cond_7
    invoke-virtual {v0, v2, v9}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 22
    aget v1, v2, v12

    mul-int/lit16 v1, v1, 0x320

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 23
    aget v3, v2, v9

    mul-int/lit16 v3, v3, 0x1e0

    invoke-static {}, La/f;->i()I

    move-result v4

    div-int/2addr v3, v4

    .line 24
    aget v4, v2, v11

    const/16 v13, 0xa7

    if-nez v4, :cond_8

    new-array v2, v8, [I

    aput v5, v2, v11

    aput v13, v2, v12

    aput v10, v2, v9

    aput v12, v2, v7

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v10

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v15

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v16

    .line 25
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 26
    :cond_8
    aget v2, v2, v11

    if-ne v2, v12, :cond_26

    new-array v2, v8, [I

    aput v5, v2, v11

    aput v13, v2, v12

    aput v10, v2, v9

    aput v11, v2, v7

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v10

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v15

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v16

    .line 27
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 28
    :cond_9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FinalCanbus.C_CAMERA_MODE:ints[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 29
    aget v1, v2, v11

    if-ne v1, v8, :cond_a

    new-array v1, v10, [I

    .line 30
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 31
    :cond_a
    aget v1, v2, v11

    if-ne v1, v13, :cond_b

    new-array v1, v10, [I

    .line 32
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 33
    :cond_b
    aget v1, v2, v11

    const/16 v3, 0xa

    if-ne v1, v3, :cond_c

    new-array v1, v10, [I

    .line 34
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 35
    :cond_c
    aget v1, v2, v11

    const/16 v2, 0xb

    if-ne v1, v2, :cond_26

    new-array v1, v10, [I

    .line 36
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 37
    :cond_d
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lk0/em;->c3(I)V

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    new-array v1, v1, [I

    aput v5, v1, v11

    const/16 v3, 0xc7

    aput v3, v1, v12

    aput v16, v1, v9

    .line 38
    aget v3, v2, v11

    aput v3, v1, v7

    aget v3, v2, v12

    aput v3, v1, v6

    aget v3, v2, v9

    aput v3, v1, v10

    aget v3, v2, v7

    aput v3, v1, v15

    aget v3, v2, v6

    aput v3, v1, v16

    aget v3, v2, v10

    aput v3, v1, v8

    aget v2, v2, v15

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_f
    new-array v1, v10, [I

    aput v5, v1, v11

    const/16 v3, 0x90

    aput v3, v1, v12

    aput v9, v1, v9

    .line 39
    aget v3, v2, v11

    aput v3, v1, v7

    aget v2, v2, v12

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 40
    :cond_10
    aget v1, v2, v11

    if-ne v1, v8, :cond_12

    aget v1, v2, v12

    const/16 v13, 0x13

    if-ne v1, v13, :cond_12

    .line 41
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_11

    new-array v1, v10, [I

    .line 42
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_11
    new-array v1, v10, [I

    .line 43
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 44
    :cond_12
    aget v1, v2, v11

    if-ne v1, v8, :cond_14

    aget v1, v2, v12

    const/16 v13, 0x14

    if-ne v1, v13, :cond_14

    .line 45
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_13

    new-array v1, v10, [I

    .line 46
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_13
    new-array v1, v10, [I

    .line 47
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 48
    :cond_14
    aget v1, v2, v11

    if-ne v1, v8, :cond_16

    aget v1, v2, v12

    const/16 v13, 0x1e

    if-ne v1, v13, :cond_16

    .line 49
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_15

    new-array v1, v10, [I

    .line 50
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_15
    new-array v1, v10, [I

    .line 51
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 52
    :cond_16
    aget v1, v2, v11

    if-ne v1, v8, :cond_18

    aget v1, v2, v12

    if-ne v1, v3, :cond_18

    .line 53
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_17

    new-array v1, v10, [I

    .line 54
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_17
    new-array v1, v10, [I

    .line 55
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 56
    :cond_18
    aget v1, v2, v11

    if-ne v1, v8, :cond_1a

    aget v1, v2, v12

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1a

    .line 57
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_19

    new-array v1, v10, [I

    .line 58
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_19
    new-array v1, v10, [I

    .line 59
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 60
    :cond_1a
    aget v1, v2, v11

    if-ne v1, v8, :cond_1c

    aget v1, v2, v12

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_1c

    .line 61
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_1b

    new-array v1, v10, [I

    .line 62
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1b
    new-array v1, v10, [I

    .line 63
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 64
    :cond_1c
    aget v1, v2, v11

    if-ne v1, v8, :cond_1e

    aget v1, v2, v12

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_1e

    .line 65
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_1d

    new-array v1, v10, [I

    .line 66
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1d
    new-array v1, v10, [I

    .line 67
    fill-array-data v1, :array_11

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 68
    :cond_1e
    aget v1, v2, v11

    if-ne v1, v8, :cond_20

    aget v1, v2, v12

    const/16 v3, 0x30

    if-ne v1, v3, :cond_20

    .line 69
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_1f

    new-array v1, v10, [I

    .line 70
    fill-array-data v1, :array_12

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1f
    new-array v1, v10, [I

    .line 71
    fill-array-data v1, :array_13

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 72
    :cond_20
    aget v1, v2, v11

    if-ne v1, v8, :cond_22

    aget v1, v2, v12

    const/16 v3, 0x22

    if-ne v1, v3, :cond_22

    .line 73
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_21

    new-array v1, v10, [I

    .line 74
    fill-array-data v1, :array_14

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_21
    new-array v1, v10, [I

    .line 75
    fill-array-data v1, :array_15

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 76
    :cond_22
    aget v1, v2, v11

    if-ne v1, v8, :cond_24

    aget v1, v2, v12

    const/16 v3, 0x23

    if-ne v1, v3, :cond_24

    .line 77
    sget v1, Lk0/nt;->W:I

    if-ne v1, v12, :cond_23

    new-array v1, v10, [I

    .line 78
    fill-array-data v1, :array_16

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_23
    new-array v1, v10, [I

    .line 79
    fill-array-data v1, :array_17

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 80
    :cond_24
    aget v1, v2, v11

    const/16 v3, 0xe

    if-ne v1, v3, :cond_25

    .line 81
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/em;->h3(I)V

    goto :goto_0

    :cond_25
    new-array v1, v10, [I

    aput v5, v1, v11

    aput v4, v1, v12

    aput v9, v1, v9

    .line 82
    aget v3, v2, v11

    aput v3, v1, v7

    aget v2, v2, v12

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_26
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1b
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1b
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1f
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x14
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x13
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x13
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x14
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x1f
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x1e
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x1e
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x1f
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x2e
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x2d
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x2d
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x2e
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x30
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x2f
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x2f
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x30
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x23
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x22
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x22
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0xc6
        0x2
        0x8
        0x23
    .end array-data
.end method

.method public b([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    iget v1, p0, Lk0/em;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/em;->c:I

    .line 5
    iput v0, p0, Lk0/em;->d:I

    .line 6
    iput v0, p0, Lk0/em;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/em;->b:[B

    iget v2, p0, Lk0/em;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/em;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/em;->c:I

    .line 9
    iget p1, p0, Lk0/em;->e:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/em;->b:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/em;->e:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/em;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/em;->b:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/em;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/em;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/em;->d:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/em;->d:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/em;->e:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/em;->c:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/em;->d:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/em;->b:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/em;->e:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/em;->e:I

    .line 23
    iget v6, p0, Lk0/em;->c:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/em;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/em;->e:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/em;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/em;->b:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/em;->d:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/em;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/em;->e:I

    iput v1, p0, Lk0/em;->d:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/em;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/em;->d:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/em;->e:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/em;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/em;->d:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/em;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/em;->c:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/em;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/em;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final c3(I)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lk0/em;->t:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    iput v1, v0, Lk0/em;->t:I

    const/16 v4, 0x8

    new-array v5, v4, [I

    const/4 v6, 0x0

    const/16 v7, 0xe3

    aput v7, v5, v6

    const/16 v8, 0x33

    aput v8, v5, v2

    const/4 v9, 0x5

    aput v9, v5, v3

    move/from16 v10, p1

    int-to-byte v10, v10

    const/4 v11, 0x3

    aput v10, v5, v11

    if-nez v1, :cond_0

    const/16 v1, 0x22

    goto :goto_0

    :cond_0
    const/16 v1, 0xcc

    :goto_0
    const/4 v14, 0x4

    aput v1, v5, v14

    const/16 v1, 0x25

    aput v1, v5, v9

    const/4 v15, 0x6

    aput v6, v5, v15

    const/16 v16, 0x7

    const/16 v17, 0xaa

    aput v17, v5, v16

    .line 2
    invoke-static {v5}, Lz/k;->s([I)V

    new-array v5, v4, [I

    aput v7, v5, v6

    aput v8, v5, v2

    aput v9, v5, v3

    aput v10, v5, v11

    .line 3
    iget v12, v0, Lk0/em;->t:I

    if-nez v12, :cond_1

    const/16 v12, 0x22

    goto :goto_1

    :cond_1
    const/16 v12, 0xcc

    :goto_1
    aput v12, v5, v14

    aput v1, v5, v9

    aput v6, v5, v15

    aput v17, v5, v16

    invoke-static {v5}, Lz/k;->s([I)V

    new-array v5, v4, [I

    aput v7, v5, v6

    aput v8, v5, v2

    aput v9, v5, v3

    aput v10, v5, v11

    .line 4
    iget v7, v0, Lk0/em;->t:I

    if-nez v7, :cond_2

    const/16 v7, 0x22

    goto :goto_2

    :cond_2
    const/16 v7, 0xcc

    :goto_2
    aput v7, v5, v14

    aput v1, v5, v9

    aput v6, v5, v15

    aput v17, v5, v16

    invoke-static {v5}, Lz/k;->s([I)V

    const/16 v5, 0x9

    new-array v7, v5, [B

    const/16 v12, 0x2e

    aput-byte v12, v7, v6

    aput-byte v8, v7, v2

    aput-byte v9, v7, v3

    aput-byte v10, v7, v11

    .line 5
    iget v13, v0, Lk0/em;->t:I

    if-nez v13, :cond_3

    const/16 v13, 0x22

    goto :goto_3

    :cond_3
    const/16 v13, 0xcc

    :goto_3
    int-to-byte v13, v13

    aput-byte v13, v7, v14

    aput-byte v1, v7, v9

    aput-byte v6, v7, v15

    const/16 v13, -0x56

    aput-byte v13, v7, v16

    aput-byte v6, v7, v4

    invoke-static {v7}, Lk0/em;->i3([B)V

    new-array v7, v5, [B

    aput-byte v12, v7, v6

    aput-byte v8, v7, v2

    aput-byte v9, v7, v3

    aput-byte v10, v7, v11

    .line 6
    iget v11, v0, Lk0/em;->t:I

    if-nez v11, :cond_4

    const/16 v11, 0x22

    goto :goto_4

    :cond_4
    const/16 v11, 0xcc

    :goto_4
    int-to-byte v11, v11

    aput-byte v11, v7, v14

    aput-byte v1, v7, v9

    aput-byte v6, v7, v15

    aput-byte v13, v7, v16

    aput-byte v6, v7, v4

    invoke-static {v7}, Lk0/em;->i3([B)V

    new-array v5, v5, [B

    aput-byte v12, v5, v6

    aput-byte v8, v5, v2

    aput-byte v9, v5, v3

    const/4 v2, 0x3

    aput-byte v10, v5, v2

    .line 7
    iget v2, v0, Lk0/em;->t:I

    if-nez v2, :cond_5

    const/16 v12, 0x22

    goto :goto_5

    :cond_5
    const/16 v12, 0xcc

    :goto_5
    int-to-byte v2, v12

    aput-byte v2, v5, v14

    aput-byte v1, v5, v9

    aput-byte v6, v5, v15

    aput-byte v13, v5, v16

    aput-byte v6, v5, v4

    invoke-static {v5}, Lk0/em;->i3([B)V

    return-void
.end method

.method public final f3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.carinfo.wc.ruijie15.LZJaguarXJLFrontAirControlAct_SP"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final g3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.carinfo.lz.jaguar.JaguarCarSeatSet"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final h3(I)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc6

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0xe

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    if-eqz p1, :cond_0

    .line 2
    sput p1, Lk0/em;->u:I

    const/16 v0, 0xb2

    new-array v1, v3, [I

    aput p1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lk0/em;->k:Lo1/g0;

    invoke-virtual {p1, v3, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/em;->u:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/em;->k:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
