.class public Lk0/jp;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static s:I = 0xa

.field public static t:I = 0x0

.field public static u:I = 0x9

.field public static v:I = 0x9

.field public static w:I = 0x9

.field public static x:I = 0x9

.field public static y:I = 0x9

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Lo1/g0;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/jp;->c:I

    const/16 v1, 0x1b

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

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v11, 0x9

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v11, 0xa

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v11, 0xb

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v11, 0xc

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v11, 0xd

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v11, 0xe

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v11, 0xf

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v11, 0x10

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v11, 0x11

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v11, 0x12

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v11, 0x13

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v11, 0x14

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v11, 0x15

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v11, 0x16

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v11, 0x17

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v11, 0x18

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v11, 0x19

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v11, 0x1a

    aput-object v3, v1, v11

    iput-object v1, p0, Lk0/jp;->d:[[I

    .line 4
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x20

    invoke-direct {v1, v3, v11}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/jp;->e:Lo1/g0;

    .line 5
    iput v4, p0, Lk0/jp;->f:I

    .line 6
    iput v2, p0, Lk0/jp;->g:I

    .line 7
    iput v5, p0, Lk0/jp;->h:I

    .line 8
    iput v6, p0, Lk0/jp;->i:I

    .line 9
    iput v7, p0, Lk0/jp;->j:I

    .line 10
    iput v8, p0, Lk0/jp;->k:I

    .line 11
    iput v9, p0, Lk0/jp;->l:I

    .line 12
    iput v10, p0, Lk0/jp;->m:I

    .line 13
    new-instance v1, Lk0/jp$a;

    invoke-direct {v1, p0}, Lk0/jp$a;-><init>(Lk0/jp;)V

    iput-object v1, p0, Lk0/jp;->n:Ljava/lang/Runnable;

    .line 14
    iput v0, p0, Lk0/jp;->o:I

    .line 15
    new-instance v0, Lk0/jp$b;

    invoke-direct {v0, p0}, Lk0/jp$b;-><init>(Lk0/jp;)V

    iput-object v0, p0, Lk0/jp;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/jp$c;

    invoke-direct {v0, p0}, Lk0/jp$c;-><init>(Lk0/jp;)V

    iput-object v0, p0, Lk0/jp;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lk0/jp$d;

    invoke-direct {v0, p0}, Lk0/jp$d;-><init>(Lk0/jp;)V

    iput-object v0, p0, Lk0/jp;->r:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x9
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x13
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x14
        0x1e
    .end array-data

    :array_12
    .array-data 4
        0x15
        0x18
    .end array-data

    :array_13
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x18
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x19
        0xd
    .end array-data

    :array_17
    .array-data 4
        0x1b
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x1c
        0xb
    .end array-data

    :array_19
    .array-data 4
        0x1d
        0x19
    .end array-data

    :array_1a
    .array-data 4
        0x1e
        0x10
    .end array-data
.end method

.method public static a3()V
    .locals 13

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

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_1

    packed-switch v5, :pswitch_data_0

    const/16 v3, 0xc

    aput v3, v1, v9

    goto :goto_2

    :pswitch_0
    aput v7, v1, v9

    .line 3
    sget v3, Lu0/b;->r3:I

    aput v3, v1, v8

    goto :goto_2

    :cond_1
    aput v0, v1, v9

    goto :goto_2

    :cond_2
    :pswitch_1
    aput v9, v1, v9

    .line 4
    sget v3, Lo0/e;->C:I

    aput v3, v1, v8

    goto :goto_2

    :cond_3
    aput v3, v1, v9

    .line 5
    sget v5, Lw0/d;->h:I

    const v10, 0x10002

    const/high16 v11, 0x10000

    if-ne v5, v11, :cond_4

    aput v2, v1, v8

    goto :goto_1

    :cond_4
    const v12, 0x10001

    if-ne v5, v12, :cond_5

    aput v3, v1, v8

    goto :goto_1

    :cond_5
    if-ne v5, v10, :cond_6

    aput v9, v1, v8

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    if-ne v5, v3, :cond_8

    :cond_7
    const/16 v3, 0x10

    aput v3, v1, v8

    :cond_8
    :goto_1
    if-lt v5, v11, :cond_9

    if-gt v5, v10, :cond_9

    .line 6
    sget v3, Lw0/d;->i:I

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v6

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v4

    goto :goto_2

    .line 7
    :cond_9
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

    .line 8
    aget v2, v1, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 9
    :cond_a
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c3(Lk0/jp;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/jp;->e:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/jp;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lk0/jp;->b3(IIIIIIII)V

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
    iget-object v0, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 11
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/jp;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/jp;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x7

    const/16 v4, 0xff

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v5, :cond_17

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/4 v11, -0x1

    const/16 v12, 0x7f

    const/4 v13, 0x5

    const/4 v14, 0x6

    const/4 v15, 0x4

    if-eq v2, v6, :cond_9

    if-eq v2, v14, :cond_7

    if-eq v2, v10, :cond_5

    const/16 v10, 0x35

    if-eq v2, v10, :cond_2

    const/16 v10, 0x38

    if-eq v2, v10, :cond_1

    if-eq v2, v12, :cond_0

    goto/16 :goto_e

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1
    const/16 v2, 0x63

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x2

    .line 3
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v10, v8, [I

    .line 4
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x3

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v10, v8, [I

    .line 5
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v10, v8, [I

    .line 6
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v10, v8, [I

    .line 7
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v10, v8, [I

    .line 8
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v6

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x3

    .line 9
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x3

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v10, v8, [I

    .line 10
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v10, v8, [I

    .line 11
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v10, v8, [I

    .line 12
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v10, v8, [I

    .line 13
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v10, v8, [I

    .line 14
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v10, v8, [I

    .line 15
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x4

    .line 16
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v10, v8, [I

    .line 17
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v10, v8, [I

    .line 18
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v10, v8, [I

    .line 19
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v10, v8, [I

    .line 20
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v10, v8, [I

    .line 21
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v10, v8, [I

    .line 22
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v10, v8, [I

    .line 23
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x5

    .line 24
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x3

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v10, v8, [I

    .line 25
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x3

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v10, v8, [I

    .line 26
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v10, v8, [I

    .line 27
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v10, v8, [I

    .line 28
    aget-byte v16, v1, v11

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v10, v8, [I

    .line 29
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v10, v8, [I

    add-int/lit8 v11, p2, 0x6

    .line 30
    aget-byte v11, v1, v11

    and-int/2addr v4, v11

    aput v4, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 31
    aget-byte v10, v1, v4

    shr-int/2addr v10, v3

    and-int/2addr v10, v8

    aput v10, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v10, v8, [I

    .line 32
    aget-byte v11, v1, v4

    shr-int/2addr v11, v14

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v10, v8, [I

    .line 33
    aget-byte v11, v1, v4

    shr-int/2addr v11, v13

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v10, v8, [I

    .line 34
    aget-byte v11, v1, v4

    shr-int/2addr v11, v15

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v10, v8, [I

    .line 35
    aget-byte v11, v1, v4

    shr-int/2addr v11, v6

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v10, v8, [I

    .line 36
    aget-byte v11, v1, v4

    shr-int/2addr v11, v5

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v10, v8, [I

    .line 37
    aget-byte v11, v1, v4

    shr-int/2addr v11, v8

    and-int/2addr v11, v8

    aput v11, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v10, v8, [I

    .line 38
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v10, v7

    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v4, v8, [I

    add-int/lit8 v10, p2, 0x8

    .line 39
    aget-byte v11, v1, v10

    shr-int/2addr v11, v14

    and-int/2addr v11, v6

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v4, v8, [I

    .line 40
    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    and-int/2addr v11, v6

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v8, [I

    .line 41
    aget-byte v11, v1, v10

    shr-int/2addr v11, v5

    and-int/2addr v11, v6

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v8, [I

    .line 42
    aget-byte v10, v1, v10

    shr-int/2addr v10, v7

    and-int/2addr v10, v6

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v8, [I

    add-int/lit8 v10, p2, 0x9

    .line 43
    aget-byte v11, v1, v10

    shr-int/2addr v11, v14

    and-int/2addr v11, v6

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v8, [I

    .line 44
    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    and-int/2addr v11, v6

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v8, [I

    .line 45
    aget-byte v11, v1, v10

    shr-int/2addr v11, v6

    and-int/2addr v11, v8

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v8, [I

    .line 46
    aget-byte v11, v1, v10

    shr-int/2addr v11, v5

    and-int/2addr v11, v8

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v8, [I

    .line 47
    aget-byte v11, v1, v10

    shr-int/2addr v11, v8

    and-int/2addr v11, v8

    aput v11, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v8, [I

    .line 48
    aget-byte v10, v1, v10

    shr-int/2addr v10, v7

    and-int/2addr v10, v8

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v8, [I

    add-int/lit8 v10, p2, 0xa

    .line 49
    aget-byte v11, v1, v10

    shr-int/lit8 v3, v11, 0x7

    and-int/2addr v3, v8

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    .line 50
    aget-byte v4, v1, v10

    shr-int/2addr v4, v14

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    .line 51
    aget-byte v4, v1, v10

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    .line 52
    aget-byte v4, v1, v10

    shr-int/2addr v4, v15

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    .line 53
    aget-byte v4, v1, v10

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    .line 54
    aget-byte v4, v1, v10

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    .line 55
    aget-byte v4, v1, v10

    shr-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 56
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    .line 57
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    .line 58
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 59
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_2
    add-int/lit8 v2, p2, 0x8

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    const-string v3, "persist.fyt.temperature"

    .line 61
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_3

    mul-int/lit8 v2, v2, 0x9

    add-int/lit16 v2, v2, 0x258

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    and-int/2addr v2, v11

    goto :goto_0

    :cond_3
    mul-int/2addr v2, v13

    add-int/lit16 v2, v2, 0x258

    .line 62
    :goto_0
    invoke-static {v2}, Lu0/d;->B3(I)V

    goto :goto_1

    .line 63
    :cond_4
    invoke-static {v7}, Lu0/d;->B3(I)V

    :goto_1
    add-int/lit8 v2, p2, 0x2

    .line 64
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v8

    aget-byte v1, v1, v2

    shr-int/2addr v1, v15

    and-int/2addr v1, v8

    invoke-static {v3, v1, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_e

    :cond_5
    add-int/lit8 v2, p2, 0x3

    .line 65
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_6

    goto :goto_2

    :cond_6
    move v7, v8

    :goto_2
    const/16 v1, 0x1e0

    invoke-static {v2, v3, v7, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_e

    :cond_7
    const-string v2, "persist.syu.reversefrontdoor"

    .line 66
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 67
    aget-byte v9, v1, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 68
    aget-byte v4, v1, v4

    shr-int/lit8 v3, v4, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v2, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 69
    aget-byte v9, v1, v4

    shr-int/lit8 v3, v9, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 70
    aget-byte v3, v1, v4

    shr-int/2addr v3, v14

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 71
    aget-byte v4, v1, v3

    shr-int/2addr v4, v15

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 72
    aget-byte v4, v1, v3

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 73
    aget-byte v4, v1, v3

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 74
    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    aput v1, v2, v7

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v16, p2, 0x3

    .line 76
    aget-byte v13, v1, v16

    and-int/2addr v13, v4

    new-array v3, v8, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v3, v7

    .line 77
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 78
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v10, v8, [I

    shr-int/lit8 v17, v2, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v7

    .line 79
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v10, v8, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v7

    .line 80
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1a

    new-array v10, v8, [I

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v7

    .line 81
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v10, v8, [I

    shr-int/lit8 v17, v2, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v7

    .line 82
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v10, v8, [I

    shr-int/lit8 v17, v2, 0x1

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v7

    .line 83
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v10, v8, [I

    and-int/2addr v2, v8

    aput v2, v10, v7

    .line 84
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    shr-int/lit8 v10, v13, 0x7

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    shr-int/lit8 v10, v13, 0x6

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    shr-int/lit8 v10, v13, 0x5

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    const/16 v10, 0xf

    and-int/2addr v13, v10

    aput v13, v3, v7

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 89
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v13, p2, 0x5

    .line 90
    aget-byte v9, v1, v13

    and-int/2addr v9, v4

    const-string v14, "persist.fyt.reversetemp"

    .line 91
    invoke-static {v14, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 92
    aget-byte v3, v1, v13

    and-int/2addr v3, v4

    .line 93
    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    :cond_a
    const/4 v2, -0x3

    const/4 v13, -0x2

    const/16 v14, 0x1b

    if-nez v3, :cond_b

    new-array v3, v8, [I

    aput v13, v3, v7

    .line 94
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    if-ne v3, v4, :cond_c

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 95
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    if-ne v3, v12, :cond_d

    new-array v3, v8, [I

    aput v11, v3, v7

    .line 96
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array v5, v8, [I

    aput v3, v5, v7

    .line 97
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v3, 0x1c

    if-nez v9, :cond_e

    new-array v5, v8, [I

    aput v13, v5, v7

    .line 98
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    if-ne v9, v4, :cond_f

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 99
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    if-ne v9, v12, :cond_10

    new-array v5, v8, [I

    aput v11, v5, v7

    .line 100
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v5, v8, [I

    aput v9, v5, v7

    .line 101
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v3, 0x2c

    new-array v5, v8, [I

    add-int/lit8 v9, p2, 0x6

    .line 102
    aget-byte v14, v1, v9

    shr-int/2addr v14, v15

    and-int/2addr v14, v10

    aput v14, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v5, v8, [I

    .line 103
    aget-byte v14, v1, v9

    shr-int/2addr v14, v6

    and-int/2addr v14, v8

    aput v14, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    .line 104
    aget-byte v5, v1, v9

    const/4 v14, 0x2

    shr-int/2addr v5, v14

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x42

    new-array v5, v8, [I

    .line 105
    aget-byte v10, v1, v9

    shr-int/2addr v10, v8

    and-int/2addr v10, v8

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v5, v8, [I

    .line 106
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1f

    new-array v5, v8, [I

    add-int/lit8 v9, p2, 0x7

    .line 107
    aget-byte v10, v1, v9

    const/4 v14, 0x6

    shr-int/2addr v10, v14

    and-int/2addr v10, v6

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1d

    new-array v5, v8, [I

    .line 108
    aget-byte v10, v1, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v6

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x20

    new-array v5, v8, [I

    .line 109
    aget-byte v10, v1, v9

    const/4 v14, 0x2

    shr-int/2addr v10, v14

    and-int/2addr v10, v6

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1e

    new-array v5, v8, [I

    .line 110
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v6

    aput v9, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2a

    new-array v5, v8, [I

    add-int/lit8 v9, p2, 0x8

    .line 111
    aget-byte v10, v1, v9

    const/4 v14, 0x7

    shr-int/2addr v10, v14

    and-int/2addr v10, v8

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4e

    new-array v5, v8, [I

    .line 112
    aget-byte v10, v1, v9

    const/4 v14, 0x6

    shr-int/2addr v10, v14

    and-int/2addr v10, v8

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2b

    new-array v5, v8, [I

    .line 113
    aget-byte v10, v1, v9

    const/4 v14, 0x5

    shr-int/2addr v10, v14

    and-int/2addr v10, v8

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x27

    new-array v5, v8, [I

    .line 114
    aget-byte v10, v1, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v8

    aput v10, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v5, v8, [I

    .line 115
    aget-byte v10, v1, v9

    shr-int/lit8 v6, v10, 0x3

    and-int/2addr v6, v8

    aput v6, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x30

    new-array v5, v8, [I

    .line 116
    aget-byte v6, v1, v9

    const/4 v10, 0x2

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2e

    new-array v5, v8, [I

    .line 117
    aget-byte v6, v1, v9

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v5, v8, [I

    .line 118
    aget-byte v6, v1, v9

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x9

    .line 119
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    const/16 v5, 0x28

    if-nez v3, :cond_11

    new-array v3, v8, [I

    aput v13, v3, v7

    .line 120
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    if-ne v3, v4, :cond_12

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 121
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    if-ne v3, v12, :cond_13

    new-array v3, v8, [I

    aput v11, v3, v7

    .line 122
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    new-array v6, v8, [I

    aput v3, v6, v7

    .line 123
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v3, p2, 0xa

    .line 124
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    const/16 v5, 0x29

    if-nez v3, :cond_14

    new-array v2, v8, [I

    aput v13, v2, v7

    .line 125
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    if-ne v3, v4, :cond_15

    new-array v3, v8, [I

    aput v2, v3, v7

    .line 126
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    if-ne v3, v12, :cond_16

    new-array v2, v8, [I

    aput v11, v2, v7

    .line 127
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 128
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x16

    new-array v3, v8, [I

    const/16 v4, 0xb

    add-int/lit8 v4, p2, 0xb

    .line 129
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v8, [I

    .line 130
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v8, [I

    .line 131
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v3, v8, [I

    .line 132
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 133
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 134
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 135
    iput v2, v0, Lk0/jp;->c:I

    move v2, v7

    .line 136
    :goto_8
    iget-object v3, v0, Lk0/jp;->d:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_19

    .line 137
    iget v5, v0, Lk0/jp;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_18

    if-eqz v5, :cond_19

    .line 138
    iput v2, v0, Lk0/jp;->b:I

    goto :goto_9

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 139
    :cond_19
    :goto_9
    iget v5, v0, Lk0/jp;->c:I

    packed-switch v5, :pswitch_data_0

    and-int/2addr v1, v4

    if-ne v1, v8, :cond_1e

    .line 140
    array-length v1, v3

    if-ge v2, v1, :cond_20

    .line 141
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    :pswitch_0
    move v2, v7

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1a

    const/16 v3, 0x1e

    .line 142
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    const/16 v1, 0x1e

    .line 143
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :pswitch_1
    move v2, v7

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1b

    const/16 v3, 0x1f

    .line 144
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    const/16 v1, 0x1f

    .line 145
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :pswitch_2
    move v2, v7

    :goto_c
    and-int/lit16 v3, v1, 0xff

    const/16 v5, 0x8

    if-ge v2, v3, :cond_1c

    .line 146
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 147
    :cond_1c
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :pswitch_3
    move v2, v7

    :goto_d
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1d

    const/4 v3, 0x7

    .line 148
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    const/4 v3, 0x7

    .line 149
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1e
    if-nez v1, :cond_20

    .line 150
    iget v1, v0, Lk0/jp;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1f

    if-eq v1, v4, :cond_1f

    .line 151
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 152
    :cond_1f
    iput v4, v0, Lk0/jp;->b:I

    :cond_20
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jp;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/jp;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/jp;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/jp;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa4

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

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget v9, p2, v5

    aget v10, p2, v7

    aget v11, p2, v6

    aget v12, p2, v4

    aget v13, p2, v3

    aget v14, p2, v2

    const/4 v0, 0x6

    aget v15, p2, v0

    const/4 v0, 0x7

    aget v16, p2, v0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v16}, Lk0/jp;->b3(IIIIIIII)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    aput v1, v0, v5

    const/4 v1, -0x1

    aput v1, v0, v7

    aput v7, v0, v6

    .line 2
    aget v1, p2, v5

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    aput v1, v0, v5

    const/16 v1, -0x3a

    aput v1, v0, v7

    aput v6, v0, v6

    .line 3
    aget v1, p2, v5

    aput v1, v0, v4

    aget v1, p2, v7

    aput v1, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final b3(IIIIIIII)V
    .locals 7

    .line 1
    sput p1, Lk0/jp;->s:I

    .line 2
    sput p7, Lk0/jp;->t:I

    .line 3
    sput p3, Lk0/jp;->x:I

    .line 4
    sput p2, Lk0/jp;->y:I

    .line 5
    sput p4, Lk0/jp;->u:I

    .line 6
    sput p5, Lk0/jp;->v:I

    .line 7
    sput p6, Lk0/jp;->w:I

    .line 8
    sput p8, Lk0/jp;->z:I

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xc7

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    const/4 v5, 0x7

    aput v5, v1, v2

    const/4 v6, 0x3

    aput p1, v1, v6

    const/4 p1, 0x4

    aput p2, v1, p1

    const/4 p2, 0x5

    aput p3, v1, p2

    const/4 p3, 0x6

    aput p4, v1, p3

    aput p5, v1, v5

    const/16 p4, 0x8

    aput p6, v1, p4

    shl-int/lit8 p5, p7, 0x7

    and-int/lit16 p5, p5, 0x80

    and-int/lit8 p6, p8, 0xf

    or-int/2addr p5, p6

    const/16 p6, 0x9

    aput p5, v1, p6

    .line 9
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p5, v4, [I

    .line 10
    sget p7, Lk0/jp;->y:I

    aput p7, p5, v3

    const/16 p7, 0xa0

    invoke-static {p7, p5}, Lk0/qt;->y0(I[I)V

    .line 11
    iget-object p5, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p5, v5, p6}, Lo1/g0;->b(II)I

    move-result p5

    sget p7, Lk0/jp;->y:I

    if-eq p5, p7, :cond_0

    .line 12
    iget-object p5, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p5, v5, p7}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p5, 0x9f

    new-array p7, v4, [I

    .line 13
    sget p8, Lk0/jp;->x:I

    aput p8, p7, v3

    invoke-static {p5, p7}, Lk0/qt;->y0(I[I)V

    .line 14
    iget-object p5, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p5, p3, p6}, Lo1/g0;->b(II)I

    move-result p5

    sget p7, Lk0/jp;->x:I

    if-eq p5, p7, :cond_1

    .line 15
    iget-object p5, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p5, p3, p7}, Lo1/g0;->g(II)V

    :cond_1
    const/16 p3, 0x9c

    new-array p5, v4, [I

    .line 16
    sget p7, Lk0/jp;->u:I

    aput p7, p5, v3

    invoke-static {p3, p5}, Lk0/qt;->y0(I[I)V

    .line 17
    iget-object p3, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p3, v6, p6}, Lo1/g0;->b(II)I

    move-result p3

    sget p5, Lk0/jp;->u:I

    if-eq p3, p5, :cond_2

    .line 18
    iget-object p3, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p3, v6, p5}, Lo1/g0;->g(II)V

    :cond_2
    const/16 p3, 0x9d

    new-array p5, v4, [I

    .line 19
    sget p7, Lk0/jp;->v:I

    aput p7, p5, v3

    invoke-static {p3, p5}, Lk0/qt;->y0(I[I)V

    .line 20
    iget-object p3, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p3, p1, p6}, Lo1/g0;->b(II)I

    move-result p3

    sget p5, Lk0/jp;->v:I

    if-eq p3, p5, :cond_3

    .line 21
    iget-object p3, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p3, p1, p5}, Lo1/g0;->g(II)V

    :cond_3
    const/16 p1, 0x9e

    new-array p3, v4, [I

    .line 22
    sget p5, Lk0/jp;->w:I

    aput p5, p3, v3

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 23
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, p2, p6}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/jp;->w:I

    if-eq p1, p3, :cond_4

    .line 24
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_4
    const/16 p1, 0xa1

    new-array p2, v4, [I

    .line 25
    sget p3, Lk0/jp;->s:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 26
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/jp;->s:I

    if-eq p1, p2, :cond_5

    .line 27
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, v4, p2}, Lo1/g0;->g(II)V

    :cond_5
    const/16 p1, 0xa2

    new-array p2, v4, [I

    .line 28
    sget p3, Lk0/jp;->t:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 29
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, v2, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/jp;->t:I

    if-eq p1, p2, :cond_6

    .line 30
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, v2, p2}, Lo1/g0;->g(II)V

    :cond_6
    const/16 p1, 0xa3

    new-array p2, v4, [I

    .line 31
    sget p3, Lk0/jp;->z:I

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 32
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, p4, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/jp;->z:I

    if-eq p1, p2, :cond_7

    .line 33
    iget-object p1, p0, Lk0/jp;->e:Lo1/g0;

    invoke-virtual {p1, p4, p2}, Lo1/g0;->g(II)V

    :cond_7
    return-void
.end method
