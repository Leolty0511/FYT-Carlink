.class public Lk0/uk;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/uk$f;
    }
.end annotation


# static fields
.field public static x:[I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:Lk0/uk$f;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/uk;->x:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x7
        0x3
        0x8
        0x2
        0x6
        0x4
        0x6
        0x1
        0x9
        0x9
        0x9
        0x9
        0x9
        0xe
        0x9
        0x9
        0x9
        0x4
        0x1
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/uk;->e:I

    const/16 v1, 0x9

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v12, 0x8

    aput-object v4, v2, v12

    iput-object v2, p0, Lk0/uk;->f:[[I

    const/16 v2, 0xa

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_9

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v12

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v1

    iput-object v2, p0, Lk0/uk;->g:[[I

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lk0/uk;->i:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lk0/uk;->j:Ljava/lang/String;

    .line 7
    iput v5, p0, Lk0/uk;->k:I

    .line 8
    iput v5, p0, Lk0/uk;->l:I

    .line 9
    iput v5, p0, Lk0/uk;->m:I

    .line 10
    iput v5, p0, Lk0/uk;->n:I

    .line 11
    iput v5, p0, Lk0/uk;->o:I

    .line 12
    iput v6, p0, Lk0/uk;->p:I

    .line 13
    iput v0, p0, Lk0/uk;->q:I

    .line 14
    new-instance v0, Lk0/uk$a;

    invoke-direct {v0, p0}, Lk0/uk$a;-><init>(Lk0/uk;)V

    iput-object v0, p0, Lk0/uk;->r:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/uk$b;

    invoke-direct {v0, p0}, Lk0/uk$b;-><init>(Lk0/uk;)V

    iput-object v0, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lk0/uk$c;

    invoke-direct {v0, p0}, Lk0/uk$c;-><init>(Lk0/uk;)V

    iput-object v0, p0, Lk0/uk;->t:Ljava/lang/Runnable;

    .line 17
    iput v5, p0, Lk0/uk;->u:I

    .line 18
    new-instance v0, Lk0/uk$d;

    invoke-direct {v0, p0}, Lk0/uk$d;-><init>(Lk0/uk;)V

    iput-object v0, p0, Lk0/uk;->v:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lk0/uk$e;

    invoke-direct {v0, p0}, Lk0/uk$e;-><init>(Lk0/uk;)V

    iput-object v0, p0, Lk0/uk;->w:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
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
        0xb
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x33
        0x15
    .end array-data

    :array_10
    .array-data 4
        0x3e
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x46
        0x8
    .end array-data
.end method

.method public static a3()V
    .locals 17

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v4, 0x91

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 2
    invoke-static {}, Lk0/uk;->b3()I

    move-result v4

    const/4 v6, 0x2

    aput v4, v1, v6

    .line 3
    sget v4, Lu0/b;->D:I

    const/4 v7, 0x3

    const/16 v8, 0x30

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    sget v3, Lu0/b;->m3:I

    if-nez v3, :cond_6

    aput v8, v1, v7

    goto/16 :goto_2

    .line 5
    :cond_1
    sget v4, Lw0/d;->h:I

    const/high16 v9, 0x10000

    sub-int v10, v4, v9

    const/16 v11, 0xe

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/4 v14, 0x4

    const/16 v15, 0x3e8

    const/16 v16, 0xa

    if-eqz v10, :cond_4

    sub-int v10, v4, v9

    if-eq v5, v10, :cond_4

    sub-int/2addr v4, v9

    if-ne v6, v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget v4, Lw0/d;->j:I

    div-int/lit8 v5, v4, 0xa

    add-int/2addr v5, v8

    aput v5, v1, v7

    .line 7
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v8

    aput v4, v1, v14

    .line 8
    sget v4, Lw0/d;->i:I

    if-le v4, v15, :cond_3

    .line 9
    rem-int/lit16 v5, v4, 0x2710

    div-int/2addr v5, v15

    add-int/2addr v5, v8

    aput v5, v1, v13

    .line 10
    :cond_3
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v8

    aput v5, v1, v12

    .line 11
    rem-int/lit8 v5, v4, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    aput v5, v1, v3

    .line 12
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v8

    aput v4, v1, v11

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    sget v4, Lw0/d;->j:I

    and-int/lit16 v4, v4, 0xff

    .line 14
    div-int/lit8 v5, v4, 0xa

    add-int/2addr v5, v8

    aput v5, v1, v7

    .line 15
    rem-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v8

    aput v4, v1, v14

    .line 16
    sget v4, Lw0/d;->i:I

    const/16 v5, 0x2710

    if-le v4, v5, :cond_5

    const v6, 0x186a0

    .line 17
    rem-int v6, v4, v6

    div-int/2addr v6, v5

    add-int/2addr v6, v8

    aput v6, v1, v16

    .line 18
    :cond_5
    rem-int/lit16 v5, v4, 0x2710

    div-int/2addr v5, v15

    add-int/2addr v5, v8

    aput v5, v1, v13

    .line 19
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v8

    aput v5, v1, v12

    const/16 v5, 0x2e

    aput v5, v1, v3

    .line 20
    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v8

    aput v4, v1, v11

    :cond_6
    :goto_2
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_7

    add-int/lit8 v4, v2, 0x1

    .line 21
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 22
    :cond_7
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    move v1, v2

    goto :goto_1

    :pswitch_1
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_1

    .line 2
    :pswitch_3
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x85

    goto :goto_1

    :pswitch_5
    const/16 v1, 0xa

    goto :goto_1

    .line 3
    :pswitch_6
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v5, v0, v2

    if-nez v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    sub-int v5, v0, v2

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, v0, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v3

    if-ne v4, v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_6
    :pswitch_7
    const/16 v1, 0xc

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v4, :cond_7

    const/16 v1, 0x10

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic e3(Lk0/uk;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/uk;->c3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic f3(Lk0/uk;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/uk;->d3()V

    return-void
.end method

.method public static synthetic g3(Lk0/uk;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/uk;->h3(BLjava/lang/String;)V

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

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/uk;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v2, p0, Lk0/uk;->t:Ljava/lang/Runnable;

    invoke-static {v2}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    iget-object v2, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v2, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/uk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    new-instance v0, Lk0/uk$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk0/uk$f;-><init>(Lk0/uk;Lk0/uk$a;)V

    iput-object v0, p0, Lk0/uk;->h:Lk0/uk$f;

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/uk;->h:Lk0/uk$f;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0}, Lk0/uk;->d3()V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_20

    const/16 v3, 0x21

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_19

    const/16 v3, 0x41

    const/4 v9, 0x4

    if-eq v2, v3, :cond_15

    const/16 v10, 0x48

    if-eq v2, v10, :cond_14

    const/16 v10, 0x61

    if-eq v2, v10, :cond_13

    const/16 v10, 0x11

    const/16 v13, 0xc

    if-eq v2, v10, :cond_a

    const/16 v10, 0x12

    if-eq v2, v10, :cond_8

    const/16 v14, 0x31

    const/16 v15, 0x10

    if-eq v2, v14, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x4

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x5

    .line 3
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    add-int/lit8 v5, p2, 0x6

    .line 4
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x7

    .line 5
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    const/16 v10, 0x408

    new-array v11, v8, [I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    aput v2, v11, v7

    .line 6
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v8, [I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v9

    aput v5, v3, v7

    .line 7
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 8
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v4, [I

    aput v8, v4, v7

    aput v5, v4, v8

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 10
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 11
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v9, p2, 0xb

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 12
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const/high16 v9, 0xff0000

    and-int/2addr v4, v9

    add-int/lit8 v9, p2, 0xd

    aget-byte v9, v1, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 13
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    add-int/lit8 v14, p2, 0x3

    .line 15
    aget-byte v14, v1, v14

    add-int/lit8 v16, p2, 0x4

    .line 16
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x6

    .line 17
    aget-byte v6, v1, v17

    add-int/lit8 v17, p2, 0x7

    .line 18
    aget-byte v10, v1, v17

    new-array v11, v8, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v7

    const/16 v12, 0xa

    .line 19
    invoke-static {v12, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v8, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    aput v2, v11, v7

    const/16 v2, 0xd

    .line 20
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v11, v14, 0x6

    and-int/2addr v11, v8

    aput v11, v2, v7

    const/16 v11, 0xb

    .line 21
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v9, v14, 0x4

    and-int/2addr v9, v8

    aput v9, v2, v7

    .line 22
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v9, v16, 0x5

    and-int/2addr v9, v8

    aput v9, v2, v7

    .line 23
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v9, v16, 0x4

    and-int/2addr v9, v8

    aput v9, v2, v7

    .line 24
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v9, v16, 0x0

    and-int/2addr v9, v5

    aput v9, v3, v7

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    shr-int/lit8 v4, v16, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eq v6, v5, :cond_5

    if-eq v6, v13, :cond_4

    const/4 v2, 0x5

    if-eq v6, v2, :cond_3

    const/4 v2, 0x6

    if-eq v6, v2, :cond_2

    move v2, v7

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_2
    move v2, v7

    move v4, v2

    move v3, v8

    goto :goto_1

    :cond_3
    move v2, v7

    move v3, v8

    goto :goto_0

    :cond_4
    move v3, v7

    move v2, v8

    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v7

    move v3, v2

    move v4, v8

    :goto_1
    new-array v5, v8, [I

    aput v2, v5, v7

    const/16 v2, 0x12

    .line 27
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v8, [I

    aput v3, v5, v7

    .line 28
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v10, 0xff

    aput v5, v3, v7

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 31
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    const/16 v5, 0xfe

    const/16 v6, 0x1b

    if-ne v3, v5, :cond_6

    new-array v1, v8, [I

    const/4 v2, -0x2

    aput v2, v1, v7

    .line 32
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 33
    :cond_6
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    new-array v1, v8, [I

    const/4 v2, -0x3

    aput v2, v1, v7

    .line 34
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_7
    new-array v3, v8, [I

    .line 35
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_8
    add-int/lit8 v2, p2, 0x4

    .line 36
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 37
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 38
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 39
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 40
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 41
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 42
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 43
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x5

    .line 44
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 45
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_a
    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 47
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 48
    iput v2, v0, Lk0/uk;->c:I

    move v2, v7

    .line 49
    :goto_3
    iget-object v4, v0, Lk0/uk;->f:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_c

    .line 50
    iget v6, v0, Lk0/uk;->c:I

    aget-object v10, v4, v2

    aget v10, v10, v7

    if-ne v6, v10, :cond_b

    if-eqz v6, :cond_c

    .line 51
    iput v2, v0, Lk0/uk;->b:I

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 52
    :cond_c
    :goto_4
    iget v6, v0, Lk0/uk;->c:I

    const/4 v10, 0x6

    if-eq v6, v10, :cond_f

    const/16 v6, 0xff

    and-int/2addr v3, v6

    if-ne v3, v8, :cond_d

    .line 53
    array-length v3, v4

    if-ge v2, v3, :cond_12

    .line 54
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_d
    if-nez v3, :cond_12

    .line 55
    iget v2, v0, Lk0/uk;->b:I

    array-length v3, v4

    const/16 v6, 0xff

    if-ge v2, v3, :cond_e

    if-eq v2, v6, :cond_e

    .line 56
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 57
    :cond_e
    iput v6, v0, Lk0/uk;->b:I

    goto :goto_5

    :cond_f
    const/16 v6, 0xff

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v8, :cond_12

    .line 58
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    const/16 v3, 0x1a

    if-eqz v2, :cond_10

    .line 59
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 60
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 61
    :cond_10
    sget v2, Lh0/c;->E:I

    if-eq v2, v5, :cond_11

    if-eq v2, v9, :cond_11

    const/4 v4, 0x5

    if-eq v2, v4, :cond_11

    .line 62
    invoke-static {v13, v7}, Ll0/b0;->l0(II)V

    .line 63
    invoke-static {v13, v8}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 64
    :cond_11
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 65
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    :cond_12
    :goto_5
    add-int/lit8 v2, p2, 0x9

    .line 66
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_13
    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 67
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 68
    aget-byte v6, v1, v4

    const/4 v10, 0x6

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 69
    aget-byte v6, v1, v4

    const/4 v10, 0x5

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 70
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 71
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 72
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 73
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    .line 74
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_14
    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 75
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 76
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 77
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 78
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 80
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 81
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 82
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_15
    move v5, v6

    add-int/lit8 v2, p2, 0x2

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 87
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    .line 88
    aget-byte v4, v1, v2

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x9

    .line 89
    aget-byte v10, v1, v6

    and-int/2addr v10, v5

    .line 90
    aget-byte v11, v1, v6

    and-int/2addr v11, v5

    if-ne v3, v5, :cond_16

    if-ne v4, v5, :cond_16

    if-ne v10, v5, :cond_16

    if-ne v11, v5, :cond_16

    .line 91
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_6

    .line 92
    :cond_16
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_17

    sget v5, Ll0/c0;->h:I

    if-ne v5, v4, :cond_17

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_17

    sget v5, Ll0/c0;->j:I

    if-eq v5, v11, :cond_18

    .line 93
    :cond_17
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_18

    .line 94
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 95
    sput v9, Ll0/c0;->k:I

    .line 96
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 97
    :cond_18
    :goto_6
    sput v3, Ll0/c0;->g:I

    .line 98
    sput v4, Ll0/c0;->h:I

    .line 99
    sput v10, Ll0/c0;->i:I

    .line 100
    sput v11, Ll0/c0;->j:I

    .line 101
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    invoke-static {v3}, Ll0/c0;->k1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 102
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 103
    aget-byte v2, v1, v6

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->k1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 104
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->k1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    :cond_19
    move v4, v6

    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    iput v2, v0, Lk0/uk;->d:I

    add-int/lit8 v2, p2, 0x3

    .line 106
    aget-byte v1, v1, v2

    move v2, v7

    .line 107
    :goto_7
    iget-object v3, v0, Lk0/uk;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 108
    iget v4, v0, Lk0/uk;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_1a

    if-eqz v4, :cond_1b

    .line 109
    iput v2, v0, Lk0/uk;->e:I

    goto :goto_8

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 110
    :cond_1b
    :goto_8
    iget v4, v0, Lk0/uk;->d:I

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_1f

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_1c

    .line 111
    array-length v1, v3

    if-ge v2, v1, :cond_21

    .line 112
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_a

    .line 113
    :cond_1c
    iget v1, v0, Lk0/uk;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_1d

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1e

    .line 114
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_1d
    const/16 v2, 0xff

    .line 115
    :cond_1e
    :goto_9
    iput v2, v0, Lk0/uk;->e:I

    goto :goto_a

    :cond_1f
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v8, :cond_21

    const-string v1, "com.syu.carlink"

    .line 116
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "com.syu.carlink"

    .line 117
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_a

    .line 118
    :cond_20
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_21
    :goto_a
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/uk;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v1, p0, Lk0/uk;->w:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/uk;->t:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v1, p0, Lk0/uk;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/uk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/uk;->h:Lk0/uk$f;

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Lk0/uk;->h:Lk0/uk$f;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x78

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

    const/16 v2, 0xe3

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    const/4 v9, 0x7

    const/4 v10, 0x6

    if-eq v0, v7, :cond_2

    const/16 v11, 0x405

    if-eq v0, v11, :cond_0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0, v1, v6}, Lk0/lt;->T2([II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2
    aget v11, v1, v7

    mul-int/lit16 v11, v11, 0xa0

    invoke-static {}, La/f;->w()I

    move-result v12

    div-int/2addr v11, v12

    .line 3
    aget v12, v1, v6

    mul-int/lit8 v12, v12, 0x5a

    invoke-static {}, La/f;->i()I

    move-result v13

    div-int/2addr v12, v13

    .line 4
    aget v13, v1, v8

    const/16 v14, 0x2c

    const/16 v15, 0x9

    const/16 v16, 0x8

    if-nez v13, :cond_1

    new-array v1, v15, [I

    aput v2, v1, v8

    aput v10, v1, v7

    aput v14, v1, v6

    aput v7, v1, v5

    shr-int/lit8 v2, v11, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v2, v11, 0xff

    aput v2, v1, v3

    shr-int/lit8 v2, v12, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    and-int/lit16 v2, v12, 0xff

    aput v2, v1, v9

    aput v8, v1, v16

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_1
    aget v1, v1, v8

    if-ne v1, v7, :cond_4

    new-array v1, v15, [I

    aput v2, v1, v8

    aput v10, v1, v7

    aput v14, v1, v6

    aput v8, v1, v5

    shr-int/lit8 v2, v11, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v2, v11, 0xff

    aput v2, v1, v3

    shr-int/lit8 v2, v12, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v10

    and-int/lit16 v2, v12, 0xff

    aput v2, v1, v9

    aput v8, v1, v16

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    new-array v9, v9, [I

    aput v2, v9, v8

    aput v4, v9, v7

    const/16 v2, 0x6f

    aput v2, v9, v6

    .line 8
    aget v2, v1, v8

    aput v2, v9, v5

    aget v2, v1, v7

    aput v2, v9, v4

    aget v2, v1, v6

    aput v2, v9, v3

    aget v1, v1, v5

    aput v1, v9, v10

    invoke-static {v9}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    new-array v3, v3, [I

    aput v2, v3, v8

    aput v6, v3, v7

    const/16 v2, 0x3d

    aput v2, v3, v6

    .line 9
    aget v2, v1, v8

    aput v2, v3, v5

    aget v1, v1, v7

    aput v1, v3, v4

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final c3(ILjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3()V
    .locals 11

    .line 1
    iget v0, p0, Lk0/uk;->o:I

    if-ltz v0, :cond_2

    sget-object v1, Lk0/uk;->x:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v2, p0, Lk0/uk;->l:I

    const/16 v3, 0xa

    mul-int/2addr v2, v3

    const/16 v4, 0x2710

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_1

    .line 3
    div-int/lit16 v2, v2, 0x3e8

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    const/16 v7, 0x16

    new-array v7, v7, [I

    const/16 v8, 0xe3

    aput v8, v7, v6

    const/16 v8, 0x13

    aput v8, v7, v5

    const/4 v5, 0x2

    const/16 v9, 0xe4

    aput v9, v7, v5

    const/4 v5, 0x3

    .line 4
    iget v9, p0, Lk0/uk;->p:I

    const/4 v10, 0x7

    shl-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v5

    const/4 v5, 0x4

    aput v6, v7, v5

    const/4 v5, 0x5

    shr-int/lit8 v9, v2, 0x18

    and-int/lit16 v9, v9, 0xff

    aput v9, v7, v5

    const/4 v5, 0x6

    shr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    aput v9, v7, v5

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v7, v10

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x8

    aput v2, v7, v5

    const/16 v2, 0x9

    aput v4, v7, v2

    aput v6, v7, v3

    const/16 v2, 0xb

    aput v6, v7, v2

    const/16 v2, 0xc

    aput v6, v7, v2

    const/16 v2, 0xd

    aput v6, v7, v2

    const/16 v2, 0xe

    aput v6, v7, v2

    const/16 v2, 0xf

    aput v6, v7, v2

    const/16 v2, 0x10

    aput v6, v7, v2

    const/16 v2, 0x11

    aput v6, v7, v2

    const/16 v2, 0x12

    aput v6, v7, v2

    aget v0, v1, v0

    aput v0, v7, v8

    const/16 v0, 0x14

    aput v6, v7, v0

    const/16 v0, 0x15

    aput v6, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final h3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
