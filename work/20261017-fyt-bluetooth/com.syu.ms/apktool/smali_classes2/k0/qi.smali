.class public Lk0/qi;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static r:I = 0xff


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:B

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qi;->c:I

    const/16 v1, 0x8

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

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/qi;->d:[[I

    .line 4
    iput v0, p0, Lk0/qi;->e:I

    .line 5
    iput-byte v0, p0, Lk0/qi;->f:B

    .line 6
    new-instance v1, Lk0/qi$a;

    invoke-direct {v1, p0}, Lk0/qi$a;-><init>(Lk0/qi;)V

    iput-object v1, p0, Lk0/qi;->g:Ljava/lang/Runnable;

    .line 7
    iput v0, p0, Lk0/qi;->h:I

    .line 8
    iput v0, p0, Lk0/qi;->i:I

    .line 9
    new-instance v1, Lk0/qi$b;

    invoke-direct {v1, p0}, Lk0/qi$b;-><init>(Lk0/qi;)V

    iput-object v1, p0, Lk0/qi;->j:Ljava/lang/Runnable;

    .line 10
    iput v0, p0, Lk0/qi;->k:I

    .line 11
    new-instance v1, Lk0/qi$c;

    invoke-direct {v1, p0}, Lk0/qi$c;-><init>(Lk0/qi;)V

    iput-object v1, p0, Lk0/qi;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/qi$d;

    invoke-direct {v1, p0}, Lk0/qi$d;-><init>(Lk0/qi;)V

    iput-object v1, p0, Lk0/qi;->m:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lk0/qi;->n:I

    .line 14
    new-instance v0, Lk0/qi$e;

    invoke-direct {v0, p0}, Lk0/qi$e;-><init>(Lk0/qi;)V

    iput-object v0, p0, Lk0/qi;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/qi$f;

    invoke-direct {v0, p0}, Lk0/qi$f;-><init>(Lk0/qi;)V

    iput-object v0, p0, Lk0/qi;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/qi$g;

    invoke-direct {v0, p0}, Lk0/qi$g;-><init>(Lk0/qi;)V

    iput-object v0, p0, Lk0/qi;->q:Ljava/lang/Runnable;

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
.end method

.method public static synthetic a3(Lk0/qi;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/qi;->g:Ljava/lang/Runnable;

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/qi;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/qi;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x9

    const/16 v4, 0x10

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_16

    const/16 v8, 0x7f

    const/4 v9, 0x2

    if-eq v2, v8, :cond_15

    const/16 v11, 0xd

    const/4 v12, 0x6

    const v13, 0xff00

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v10, 0x3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 4
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 6
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 7
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 8
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 9
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 10
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_1
    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 11
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    .line 12
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x1f

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1e0

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :pswitch_3
    const/16 v2, 0x8c

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 14
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 15
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v13

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x6

    .line 16
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v13

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x7

    .line 17
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x8

    .line 18
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x9

    .line 19
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0xb

    .line 20
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v13

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    add-int/lit8 v7, p2, 0xe

    .line 21
    aget-byte v7, v1, v7

    shl-int/lit8 v4, v7, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xd

    aget-byte v7, v1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v13

    or-int/2addr v4, v7

    add-int/lit8 v7, p2, 0xc

    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    .line 22
    :pswitch_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x3

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v3, p2, 0x2

    .line 23
    aget-byte v1, v1, v3

    if-eqz v1, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v10, :cond_1

    goto/16 :goto_5

    :cond_1
    const/16 v1, 0x69

    .line 24
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    const/16 v1, 0x67

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    const/16 v1, 0x68

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 27
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    .line 28
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 29
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 30
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 31
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 32
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_6
    const/16 v2, 0x71

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 33
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 34
    aget-byte v9, v1, v8

    and-int/lit8 v9, v9, 0xf

    aput v9, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v7, [I

    .line 35
    aget-byte v8, v1, v8

    shr-int/2addr v8, v15

    and-int/lit8 v8, v8, 0xf

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x6

    .line 36
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v13

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x8

    .line 37
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v7, [I

    add-int/lit8 v3, p2, 0x9

    .line 38
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_7
    const/16 v2, 0x73

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 39
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 40
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 41
    aget-byte v2, v1, v4

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_8
    const/16 v2, 0x7d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 42
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 43
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_a
    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 44
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_b
    const/16 v2, 0x7a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 45
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_c
    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 46
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_d
    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 47
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_e
    const/16 v2, 0x77

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 48
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 49
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 50
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_f
    const/16 v2, 0x8b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 51
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 52
    iget v2, v0, Lk0/qi;->e:I

    aget-byte v3, v1, v4

    and-int/lit8 v3, v3, 0xf

    if-eq v2, v3, :cond_5

    .line 53
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0xf

    iput v2, v0, Lk0/qi;->e:I

    .line 54
    iget v2, v0, Lk0/qi;->n:I

    if-lt v2, v11, :cond_4

    const/16 v2, 0x62

    new-array v3, v7, [I

    .line 55
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 56
    :cond_4
    iget v2, v0, Lk0/qi;->e:I

    if-ne v2, v9, :cond_5

    sget v2, Lu0/b;->D:I

    if-ne v2, v11, :cond_5

    .line 57
    invoke-static {v14, v6}, Ll0/b0;->l0(II)V

    .line 58
    invoke-static {v14, v7}, Ll0/b0;->l0(II)V

    .line 59
    sget-object v2, Lu0/b;->c:Lu0/h;

    invoke-interface {v2, v6}, Lu0/h;->c(I)V

    :cond_5
    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 60
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_10
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 62
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 63
    aget-byte v8, v1, v4

    add-int/lit8 v9, p2, 0x5

    .line 64
    aget-byte v12, v1, v9

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v7

    aput v14, v13, v6

    const/16 v14, 0xa

    .line 65
    invoke-static {v14, v13}, Lk0/qt;->y0(I[I)V

    new-array v13, v7, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v7

    aput v14, v13, v6

    const/16 v14, 0xb

    .line 66
    invoke-static {v14, v13}, Lk0/qt;->y0(I[I)V

    new-array v13, v7, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v7

    aput v2, v13, v6

    .line 67
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v10, v7, [I

    shr-int/lit8 v11, v3, 0x7

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 68
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v10, v3, 0x6

    and-int/2addr v10, v7

    aput v10, v2, v6

    const/16 v10, 0x13

    .line 69
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v10, v7, [I

    shr-int/lit8 v11, v3, 0x5

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 70
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v10, v7, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v10, v6

    .line 71
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 72
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    aget-byte v2, v1, v9

    and-int/lit16 v8, v2, 0xff

    .line 74
    aget-byte v1, v1, v4

    and-int/lit16 v12, v1, 0xff

    :cond_6
    and-int/lit16 v1, v8, 0xff

    const/4 v2, -0x1

    const/16 v3, 0x1b

    if-ne v8, v7, :cond_7

    new-array v1, v7, [I

    const/4 v4, -0x2

    aput v4, v1, v6

    .line 75
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    if-ne v8, v2, :cond_8

    new-array v1, v7, [I

    const/4 v4, -0x3

    aput v4, v1, v6

    .line 76
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v4, v7, [I

    aput v1, v4, v6

    .line 77
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 v1, v12, 0xff

    const/16 v3, 0x1c

    if-ne v12, v7, :cond_9

    new-array v1, v7, [I

    const/4 v2, -0x2

    aput v2, v1, v6

    .line 78
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_9
    if-ne v12, v2, :cond_a

    new-array v1, v7, [I

    const/4 v2, -0x3

    aput v2, v1, v6

    .line 79
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_a
    new-array v2, v7, [I

    aput v1, v2, v6

    .line 80
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :pswitch_11
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 82
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 83
    iput v2, v0, Lk0/qi;->c:I

    move v2, v6

    .line 84
    :goto_3
    iget-object v3, v0, Lk0/qi;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 85
    iget v4, v0, Lk0/qi;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_b

    if-eqz v4, :cond_c

    .line 86
    iput v2, v0, Lk0/qi;->b:I

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 87
    :cond_c
    :goto_4
    iget v4, v0, Lk0/qi;->c:I

    if-eq v4, v10, :cond_13

    if-eq v4, v15, :cond_11

    const/16 v8, 0xa

    if-eq v4, v8, :cond_f

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_d

    .line 88
    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 89
    iget-byte v1, v0, Lk0/qi;->f:B

    if-nez v1, :cond_17

    add-int/2addr v1, v7

    int-to-byte v1, v1

    .line 90
    iput-byte v1, v0, Lk0/qi;->f:B

    .line 91
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 92
    iget-object v1, v0, Lk0/qi;->g:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_d
    if-nez v1, :cond_17

    .line 93
    iget v1, v0, Lk0/qi;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_e

    if-eq v1, v5, :cond_e

    .line 94
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 95
    iget-object v1, v0, Lk0/qi;->g:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 96
    iput-byte v6, v0, Lk0/qi;->f:B

    .line 97
    :cond_e
    iput v5, v0, Lk0/qi;->b:I

    goto/16 :goto_5

    :cond_f
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_17

    .line 98
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_10

    if-eq v1, v15, :cond_10

    if-eq v1, v14, :cond_10

    .line 99
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    .line 100
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_10
    const/16 v1, 0x1a

    .line 101
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 102
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_5

    :cond_11
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_17

    .line 103
    sget v1, Lu0/b;->D:I

    if-ne v1, v11, :cond_12

    new-array v1, v14, [I

    .line 104
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    .line 105
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_5

    .line 106
    :cond_12
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 107
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_13
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_17

    .line 108
    sget v1, Lu0/b;->D:I

    if-ne v1, v11, :cond_14

    new-array v1, v14, [I

    .line 109
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v14, [I

    .line 110
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_5

    .line 111
    :cond_14
    invoke-static {v15, v6}, Ll0/b0;->l0(II)V

    .line 112
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 113
    :cond_15
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    const/16 v2, 0x8a

    new-array v3, v7, [I

    add-int/lit8 v7, p2, 0x2

    .line 114
    aget-byte v7, v1, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 115
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x87

    .line 116
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 117
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x13

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x88

    .line 118
    invoke-static {v3, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x23

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x89

    .line 120
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    :cond_17
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x82
        0x2
        0x4
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x82
        0x2
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x82
        0x2
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x82
        0x2
        0x3
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/qi;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/qi;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/qi;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/qi;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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
    .locals 4

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0x83

    aput p3, p1, v3

    aput v3, p1, v1

    .line 1
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v0, p1, v2

    const/16 v0, 0x82

    aput v0, p1, v3

    aput v1, p1, v1

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
