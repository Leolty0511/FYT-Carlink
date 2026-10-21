.class public Lk0/ah;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x7

.field public static B:I = 0x7

.field public static C:I = 0x7

.field public static D:I = 0x7

.field public static E:I = 0x7

.field public static F:I = 0x0

.field public static G:I = 0x3

.field public static H:I = 0x1

.field public static I:I = 0x1

.field public static x:I = 0xff

.field public static y:I = 0x0

.field public static z:I = 0x10


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Lo1/g0;

.field public t:Ljava/lang/Runnable;

.field public u:B

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ah;->c:I

    const/16 v1, 0x14

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x3

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v5, 0x4

    aput-object v0, v1, v5

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v6, 0x5

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v7, 0x6

    aput-object v0, v1, v7

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v8, 0x7

    aput-object v0, v1, v8

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v9, 0x8

    aput-object v0, v1, v9

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v10, 0x9

    aput-object v0, v1, v10

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v11, 0xa

    aput-object v0, v1, v11

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v12, 0xb

    aput-object v0, v1, v12

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v13, 0xc

    aput-object v0, v1, v13

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v13, 0xd

    aput-object v0, v1, v13

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v13, 0xe

    aput-object v0, v1, v13

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v13, 0xf

    aput-object v0, v1, v13

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v13, 0x10

    aput-object v0, v1, v13

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v13, 0x11

    aput-object v0, v1, v13

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v13, 0x12

    aput-object v0, v1, v13

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v13, 0x13

    aput-object v0, v1, v13

    iput-object v1, p0, Lk0/ah;->d:[[I

    .line 4
    new-instance v0, Lk0/ah$a;

    invoke-direct {v0, p0}, Lk0/ah$a;-><init>(Lk0/ah;)V

    iput-object v0, p0, Lk0/ah;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/ah$b;

    invoke-direct {v0, p0}, Lk0/ah$b;-><init>(Lk0/ah;)V

    iput-object v0, p0, Lk0/ah;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ah$c;

    invoke-direct {v0, p0}, Lk0/ah$c;-><init>(Lk0/ah;)V

    iput-object v0, p0, Lk0/ah;->g:Ljava/lang/Runnable;

    .line 7
    iput v3, p0, Lk0/ah;->h:I

    .line 8
    iput v2, p0, Lk0/ah;->i:I

    .line 9
    iput v4, p0, Lk0/ah;->j:I

    .line 10
    iput v5, p0, Lk0/ah;->k:I

    .line 11
    iput v6, p0, Lk0/ah;->l:I

    .line 12
    iput v7, p0, Lk0/ah;->m:I

    .line 13
    iput v8, p0, Lk0/ah;->n:I

    .line 14
    iput v9, p0, Lk0/ah;->o:I

    .line 15
    iput v10, p0, Lk0/ah;->p:I

    .line 16
    iput v11, p0, Lk0/ah;->q:I

    .line 17
    iput v12, p0, Lk0/ah;->r:I

    .line 18
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ah;->s:Lo1/g0;

    .line 19
    new-instance v0, Lk0/ah$d;

    invoke-direct {v0, p0}, Lk0/ah$d;-><init>(Lk0/ah;)V

    iput-object v0, p0, Lk0/ah;->t:Ljava/lang/Runnable;

    .line 20
    iput-byte v6, p0, Lk0/ah;->u:B

    .line 21
    new-instance v0, Lk0/ah$e;

    invoke-direct {v0, p0}, Lk0/ah$e;-><init>(Lk0/ah;)V

    iput-object v0, p0, Lk0/ah;->v:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lk0/ah$f;

    invoke-direct {v0, p0}, Lk0/ah$f;-><init>(Lk0/ah;)V

    iput-object v0, p0, Lk0/ah;->w:Ljava/lang/Runnable;

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
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x15
    .end array-data

    :array_c
    .array-data 4
        0xd
        0xc
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x7
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1e
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x50
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x51
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x52
    .end array-data
.end method

.method public static a3()V
    .locals 10

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

    if-eq v5, v3, :cond_4

    if-eq v5, v6, :cond_3

    const/16 v3, 0xa

    if-eq v5, v3, :cond_2

    const/16 v3, 0xd

    if-eq v5, v3, :cond_1

    if-eq v5, v0, :cond_3

    if-eq v5, v7, :cond_2

    aput v0, v1, v9

    goto :goto_2

    :cond_1
    const/16 v3, 0xc

    aput v3, v1, v9

    goto :goto_2

    :cond_2
    aput v7, v1, v9

    .line 3
    sget v3, Lu0/b;->r3:I

    aput v3, v1, v8

    goto :goto_2

    :cond_3
    aput v9, v1, v9

    .line 4
    sget v3, Lo0/e;->C:I

    aput v3, v1, v8

    goto :goto_2

    :cond_4
    aput v3, v1, v9

    .line 5
    sget v5, Lw0/d;->h:I

    const/high16 v9, 0x10000

    if-ne v5, v9, :cond_5

    aput v2, v1, v8

    goto :goto_1

    :cond_5
    const v9, 0x10001

    if-ne v5, v9, :cond_6

    aput v2, v1, v8

    goto :goto_1

    :cond_6
    const v9, 0x10002

    if-ne v5, v9, :cond_7

    aput v2, v1, v8

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    if-ne v5, v3, :cond_9

    :cond_8
    const/16 v3, 0x10

    aput v3, v1, v8

    .line 6
    :cond_9
    :goto_1
    sget v3, Lw0/d;->i:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v4

    :goto_2
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

.method public static synthetic c3(Lk0/ah;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ah;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic d3(Lk0/ah;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ah;->s:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3(Lk0/ah;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ah;->g3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/ah;IIIIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p10}, Lk0/ah;->b3(IIIIIIIIII)V

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
    iget-object v0, p0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ah;->v:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ah;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lk0/ah;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/ah;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    .line 6
    iput-byte v0, p0, Lk0/ah;->u:B

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v2, v0, Lk0/mt;->e:I

    .line 9
    iput v2, v0, Lk0/mt;->f:I

    .line 10
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lk0/mt;->l:I

    .line 12
    iput v1, v0, Lk0/mt;->o:I

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 14
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 16
    :goto_0
    iget-object v0, p0, Lk0/ah;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

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

    if-eq v2, v3, :cond_b

    const/16 v3, 0x27

    const/16 v10, 0x10

    const/16 v11, 0xa

    if-eq v2, v3, :cond_5

    const/16 v3, 0x29

    if-eq v2, v3, :cond_4

    const/16 v3, 0x30

    const/4 v12, 0x2

    if-eq v2, v3, :cond_3

    const/16 v3, 0x35

    const v13, 0xff00

    const/4 v14, 0x4

    const/4 v15, 0x5

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_0
    const/16 v2, 0x80

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 3
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 4
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x8

    .line 5
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0xb

    .line 6
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x9

    .line 7
    aget-byte v5, v1, v5

    shl-int/lit8 v4, v5, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    const/16 v2, 0x7c

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 8
    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    and-int/2addr v6, v13

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 9
    aget-byte v6, v1, v6

    shl-int/lit8 v4, v6, 0x8

    and-int/2addr v4, v13

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 11
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_2
    const/16 v2, 0x87

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 12
    aget-byte v10, v1, v4

    shr-int/2addr v10, v8

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v9, [I

    .line 13
    aget-byte v10, v1, v4

    shr-int/2addr v10, v9

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v9, [I

    .line 14
    aget-byte v10, v1, v4

    shr-int/2addr v10, v12

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v9, [I

    .line 15
    aget-byte v10, v1, v4

    shr-int/2addr v10, v6

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v9, [I

    .line 16
    aget-byte v10, v1, v4

    shr-int/2addr v10, v14

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v9, [I

    .line 17
    aget-byte v4, v1, v4

    shr-int/2addr v4, v15

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 18
    aget-byte v10, v1, v4

    shr-int/2addr v10, v14

    and-int/lit8 v10, v10, 0xf

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v9, [I

    .line 19
    aget-byte v10, v1, v4

    shr-int/2addr v10, v12

    and-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v9, [I

    .line 20
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v9, [I

    .line 21
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 25
    aget-byte v1, v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_3
    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 26
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v9, [I

    .line 27
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v6

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v9, [I

    .line 28
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_4
    const/16 v2, 0x65

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x2

    .line 29
    aget-byte v11, v1, v10

    shr-int/2addr v11, v8

    and-int/2addr v11, v9

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    .line 30
    aget-byte v11, v1, v10

    shr-int/2addr v11, v9

    and-int/2addr v11, v6

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    .line 31
    aget-byte v11, v1, v10

    shr-int/2addr v11, v6

    and-int/2addr v11, v6

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    .line 32
    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    and-int/2addr v11, v6

    aput v11, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 33
    aget-byte v10, v1, v10

    shr-int/2addr v10, v5

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x3

    .line 34
    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x4

    .line 35
    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x5

    .line 36
    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x6

    .line 37
    aget-byte v10, v1, v10

    and-int/2addr v7, v10

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v7, p2, 0x7

    .line 38
    aget-byte v10, v1, v7

    shr-int/2addr v10, v5

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    .line 39
    aget-byte v10, v1, v7

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    .line 40
    aget-byte v7, v1, v7

    shr-int/2addr v7, v15

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 41
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    and-int/2addr v5, v7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v9, [I

    .line 42
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v9, [I

    .line 43
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v9

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_5
    const/16 v2, 0x63

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 44
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    .line 45
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v3, v1, v2

    and-int/2addr v3, v7

    .line 47
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_16

    const-string v1, "persist.syu.reversefrontdoor"

    .line 48
    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 49
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 50
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 51
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 52
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 53
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x4

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 54
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 55
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v9, [I

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v9

    aput v2, v1, v8

    .line 56
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->t1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->t1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->t1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 60
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->t1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->t1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->t1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v7

    invoke-static {v2}, Ll0/c0;->t1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 64
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->t1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :cond_1
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 65
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    and-int/2addr v3, v9

    aget-byte v2, v1, v2

    shr-int/2addr v2, v14

    and-int/2addr v2, v9

    invoke-static {v3, v2, v8}, Ll0/c0;->b(III)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v3, v1, v2

    shr-int/2addr v3, v15

    and-int/2addr v3, v9

    aget-byte v2, v1, v2

    shr-int/2addr v2, v14

    and-int/2addr v2, v9

    invoke-static {v3, v2, v8}, Ll0/c0;->a(III)V

    :goto_1
    const/16 v2, 0x74

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 68
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 69
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 70
    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    and-int/2addr v6, v13

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v6, v11

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 71
    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    and-int/2addr v6, v13

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, v1, v11

    and-int/2addr v11, v7

    or-int/2addr v6, v11

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x9

    .line 72
    aget-byte v6, v1, v6

    shl-int/2addr v6, v10

    const/high16 v10, 0xff0000

    and-int/2addr v6, v10

    add-int/lit8 v10, p2, 0xa

    aget-byte v10, v1, v10

    shl-int/2addr v10, v4

    and-int/2addr v10, v13

    or-int/2addr v6, v10

    add-int/lit8 v10, p2, 0xb

    aget-byte v10, v1, v10

    and-int/2addr v10, v7

    or-int/2addr v6, v10

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0xc

    .line 73
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0xd

    .line 74
    aget-byte v10, v1, v6

    shr-int/lit8 v5, v10, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    .line 75
    aget-byte v5, v1, v6

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 76
    aget-byte v1, v1, v2

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/h0;->u(I)V

    goto/16 :goto_c

    .line 77
    :cond_3
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    .line 78
    iput-byte v8, v0, Lk0/ah;->u:B

    goto/16 :goto_c

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x2a80

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 81
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 82
    aget-byte v6, v1, v4

    add-int/lit8 v12, p2, 0x5

    .line 83
    aget-byte v13, v1, v12

    add-int/lit8 v14, p2, 0x6

    .line 84
    aget-byte v14, v1, v14

    new-array v15, v9, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 85
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    new-array v11, v9, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v9

    aput v15, v11, v8

    const/16 v15, 0xb

    .line 86
    invoke-static {v15, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v9, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v9

    aput v15, v11, v8

    const/16 v15, 0xc

    .line 87
    invoke-static {v15, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v9, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v9

    aput v15, v11, v8

    const/16 v15, 0xd

    .line 88
    invoke-static {v15, v11}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x1a

    new-array v15, v9, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 89
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xe

    new-array v15, v9, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 90
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x41

    new-array v15, v9, [I

    shr-int/lit8 v16, v2, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 91
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    new-array v11, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v11, v8

    .line 92
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v10, v9, [I

    shr-int/lit8 v11, v3, 0x7

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 93
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v10, v9, [I

    shr-int/lit8 v11, v3, 0x6

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 94
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v10, v9, [I

    shr-int/lit8 v11, v3, 0x5

    and-int/lit8 v15, v11, 0x1

    aput v15, v10, v8

    .line 95
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v10, v9, [I

    and-int/2addr v5, v11

    aput v5, v10, v8

    .line 96
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v9, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v5, v8

    .line 97
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 98
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    aget-byte v2, v1, v12

    and-int/lit16 v6, v2, 0xff

    .line 100
    aget-byte v1, v1, v4

    and-int/lit16 v13, v1, 0xff

    :cond_6
    and-int/lit16 v1, v6, 0xff

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x1b

    if-nez v6, :cond_7

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 101
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    if-ne v6, v3, :cond_8

    new-array v1, v9, [I

    const/4 v5, -0x3

    aput v5, v1, v8

    .line 102
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v5, v9, [I

    aput v1, v5, v8

    .line 103
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 v1, v13, 0xff

    const/16 v4, 0x1c

    if-nez v13, :cond_9

    new-array v1, v9, [I

    aput v2, v1, v8

    .line 104
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    if-ne v13, v3, :cond_a

    new-array v1, v9, [I

    const/4 v2, -0x3

    aput v2, v1, v8

    .line 105
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v9, [I

    aput v1, v2, v8

    .line 106
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x16

    new-array v2, v9, [I

    shr-int/lit8 v3, v14, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 107
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x17

    new-array v2, v9, [I

    shr-int/lit8 v3, v14, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 108
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x18

    new-array v2, v9, [I

    shr-int/lit8 v3, v14, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 109
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v9, [I

    shr-int/lit8 v3, v14, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 110
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x36

    new-array v2, v9, [I

    shr-int/lit8 v3, v14, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 111
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x34

    new-array v2, v9, [I

    shr-int/lit8 v3, v14, 0x1

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 112
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v9, [I

    shr-int/lit8 v3, v14, 0x0

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 113
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 115
    aget-byte v1, v1, v3

    and-int/2addr v2, v7

    .line 116
    iput v2, v0, Lk0/ah;->c:I

    move v2, v8

    .line 117
    :goto_4
    iget-object v3, v0, Lk0/ah;->d:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_d

    .line 118
    iget v6, v0, Lk0/ah;->c:I

    aget-object v10, v3, v2

    aget v10, v10, v8

    if-ne v6, v10, :cond_c

    if-eqz v6, :cond_d

    .line 119
    iput v2, v0, Lk0/ah;->b:I

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 120
    :cond_d
    :goto_5
    iget v6, v0, Lk0/ah;->c:I

    packed-switch v6, :pswitch_data_2

    and-int/2addr v1, v7

    if-ne v1, v9, :cond_14

    .line 121
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 122
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :pswitch_9
    move v2, v8

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_e

    const/16 v3, 0x50

    .line 123
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    const/16 v1, 0x50

    .line 124
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :pswitch_a
    move v2, v8

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_f

    const/16 v3, 0x51

    .line 125
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    const/16 v1, 0x51

    .line 126
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_c

    :pswitch_b
    move v2, v8

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_10

    const/16 v3, 0x1e

    .line 127
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    const/16 v1, 0x1e

    .line 128
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_c

    :pswitch_c
    move v2, v8

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_11

    const/16 v3, 0x1f

    .line 129
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_11
    const/16 v1, 0x1f

    .line 130
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_c

    :pswitch_d
    move v2, v8

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_12

    .line 131
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 132
    :cond_12
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto :goto_c

    :pswitch_e
    move v2, v8

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_13

    .line 133
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 134
    :cond_13
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_14
    if-nez v1, :cond_16

    .line 135
    iget v1, v0, Lk0/ah;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_15

    if-eq v1, v7, :cond_15

    .line 136
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 137
    :cond_15
    iput v7, v0, Lk0/ah;->b:I

    :cond_16
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ah;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ah;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ah;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/ah;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/ah;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/ah;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa3

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
    .locals 21

    move/from16 v0, p1

    const/16 v1, 0x8

    const/16 v2, 0xc6

    const/16 v3, 0xe3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v9, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    :goto_0
    move-object/from16 v10, p0

    goto/16 :goto_1

    .line 1
    :cond_0
    aget v11, p2, v7

    aget v12, p2, v9

    aget v13, p2, v8

    aget v14, p2, v6

    aget v15, p2, v5

    aget v16, p2, v4

    const/4 v0, 0x6

    aget v17, p2, v0

    const/4 v0, 0x7

    aget v18, p2, v0

    aget v19, p2, v1

    const/16 v0, 0x9

    aget v20, p2, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v20}, Lk0/ah;->b3(IIIIIIIIII)V

    goto :goto_1

    :cond_1
    new-array v0, v4, [I

    aput v3, v0, v7

    const/16 v1, 0x90

    aput v1, v0, v9

    aput v8, v0, v8

    .line 2
    aget v1, p2, v7

    aput v1, v0, v6

    aget v1, p2, v9

    aput v1, v0, v5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v4, [I

    aput v3, v0, v7

    const/16 v1, 0xc8

    aput v1, v0, v9

    aput v8, v0, v8

    .line 3
    aget v1, p2, v7

    aput v1, v0, v6

    aget v1, p2, v9

    aput v1, v0, v5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_3
    aget v0, p2, v7

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4

    new-array v0, v4, [I

    aput v3, v0, v7

    aput v2, v0, v9

    aput v8, v0, v8

    .line 5
    aget v1, p2, v7

    aput v1, v0, v6

    aget v1, p2, v9

    aput v1, v0, v5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_4
    aget v0, p2, v9

    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Lk0/ah;->g3(I)V

    goto :goto_1

    :cond_5
    move-object/from16 v10, p0

    new-array v0, v4, [I

    aput v3, v0, v7

    aput v2, v0, v9

    aput v8, v0, v8

    aput v1, v0, v6

    .line 7
    aget v1, p2, v7

    aput v1, v0, v5

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final b3(IIIIIIIIII)V
    .locals 15

    move-object v0, p0

    .line 1
    sput p1, Lk0/ah;->z:I

    .line 2
    sput p2, Lk0/ah;->A:I

    .line 3
    sput p3, Lk0/ah;->B:I

    .line 4
    sput p4, Lk0/ah;->C:I

    .line 5
    sput p5, Lk0/ah;->D:I

    .line 6
    sput p6, Lk0/ah;->E:I

    .line 7
    sput p7, Lk0/ah;->F:I

    .line 8
    sput p8, Lk0/ah;->G:I

    .line 9
    sput p9, Lk0/ah;->H:I

    .line 10
    sput p10, Lk0/ah;->I:I

    const/16 v1, 0xb

    new-array v2, v1, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xc9

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x2

    const/16 v6, 0x8

    aput v6, v2, v3

    const/4 v7, 0x3

    aput p1, v2, v7

    const/4 v8, 0x4

    aput p2, v2, v8

    const/4 v9, 0x5

    aput p3, v2, v9

    const/4 v10, 0x6

    aput p4, v2, v10

    const/4 v11, 0x7

    aput p5, v2, v11

    aput p6, v2, v6

    shl-int/lit8 v12, p7, 0x4

    and-int/lit16 v12, v12, 0xf0

    and-int/lit8 v13, p8, 0xf

    or-int/2addr v12, v13

    const/16 v13, 0x9

    aput v12, v2, v13

    shl-int/lit8 v12, p9, 0x7

    and-int/lit16 v12, v12, 0x80

    shl-int/lit8 v14, p10, 0x6

    and-int/lit8 v14, v14, 0x40

    or-int/2addr v12, v14

    const/16 v14, 0xa

    aput v12, v2, v14

    .line 11
    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v5, [I

    .line 12
    sget v12, Lk0/ah;->z:I

    aput v12, v2, v4

    const/16 v12, 0x99

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    .line 13
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    const/16 v12, 0x10

    invoke-virtual {v2, v3, v12}, Lo1/g0;->b(II)I

    move-result v2

    sget v12, Lk0/ah;->z:I

    if-eq v2, v12, :cond_0

    .line 14
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v3, v12}, Lo1/g0;->g(II)V

    :cond_0
    const/16 v2, 0x9a

    new-array v3, v5, [I

    .line 15
    sget v12, Lk0/ah;->A:I

    aput v12, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 16
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v7, v11}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->A:I

    if-eq v2, v3, :cond_1

    .line 17
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v7, v3}, Lo1/g0;->g(II)V

    :cond_1
    const/16 v2, 0x9b

    new-array v3, v5, [I

    .line 18
    sget v12, Lk0/ah;->B:I

    aput v12, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 19
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v8, v11}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->B:I

    if-eq v2, v3, :cond_2

    .line 20
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v8, v3}, Lo1/g0;->g(II)V

    :cond_2
    const/16 v2, 0x9c

    new-array v3, v5, [I

    .line 21
    sget v8, Lk0/ah;->C:I

    aput v8, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 22
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v9, v11}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->C:I

    if-eq v2, v3, :cond_3

    .line 23
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v9, v3}, Lo1/g0;->g(II)V

    :cond_3
    const/16 v2, 0x9d

    new-array v3, v5, [I

    .line 24
    sget v8, Lk0/ah;->D:I

    aput v8, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 25
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v10, v11}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->D:I

    if-eq v2, v3, :cond_4

    .line 26
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v10, v3}, Lo1/g0;->g(II)V

    :cond_4
    const/16 v2, 0x9e

    new-array v3, v5, [I

    .line 27
    sget v8, Lk0/ah;->E:I

    aput v8, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 28
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v11, v11}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->E:I

    if-eq v2, v3, :cond_5

    .line 29
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v11, v3}, Lo1/g0;->g(II)V

    :cond_5
    const/16 v2, 0x9f

    new-array v3, v5, [I

    .line 30
    sget v8, Lk0/ah;->F:I

    aput v8, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 31
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v6, v4}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->F:I

    if-eq v2, v3, :cond_6

    .line 32
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v6, v3}, Lo1/g0;->g(II)V

    :cond_6
    const/16 v2, 0xa0

    new-array v3, v5, [I

    .line 33
    sget v6, Lk0/ah;->G:I

    aput v6, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 34
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v13, v7}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->G:I

    if-eq v2, v3, :cond_7

    .line 35
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v13, v3}, Lo1/g0;->g(II)V

    :cond_7
    const/16 v2, 0xa1

    new-array v3, v5, [I

    .line 36
    sget v6, Lk0/ah;->H:I

    aput v6, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 37
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v14, v5}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->H:I

    if-eq v2, v3, :cond_8

    .line 38
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v14, v3}, Lo1/g0;->g(II)V

    :cond_8
    const/16 v2, 0xa2

    new-array v3, v5, [I

    .line 39
    sget v6, Lk0/ah;->I:I

    aput v6, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 40
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v1, v5}, Lo1/g0;->b(II)I

    move-result v2

    sget v3, Lk0/ah;->I:I

    if-eq v2, v3, :cond_9

    .line 41
    iget-object v2, v0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {v2, v1, v3}, Lo1/g0;->g(II)V

    :cond_9
    return-void
.end method

.method public final g3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x98

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x14

    aput v4, v1, v3

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/ah;->y:I

    .line 4
    iget-object p1, p0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ah;->y:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ah;->s:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
