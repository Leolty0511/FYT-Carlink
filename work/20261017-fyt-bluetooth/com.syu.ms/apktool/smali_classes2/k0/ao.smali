.class public Lk0/ao;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/ao$g;
    }
.end annotation


# static fields
.field public static r:I

.field public static final s:[I


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Lk0/ao$g;

.field public i:Lo1/g0;

.field public final j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/ao;->s:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x18
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x30
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/ao;->b:[[I

    const/16 v1, 0xf

    new-array v2, v1, [[I

    .line 3
    iput-object v2, p0, Lk0/ao;->c:[[I

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lk0/ao;->d:I

    .line 5
    iput v2, p0, Lk0/ao;->f:I

    const/16 v3, 0x22

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 6
    fill-array-data v5, :array_0

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x3

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v6, 0x4

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    const/4 v5, 0x6

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    const/4 v5, 0x7

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/16 v5, 0x8

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/16 v5, 0x9

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v5, 0xa

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v5, 0xb

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_c

    const/16 v5, 0xc

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_d

    const/16 v5, 0xd

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_e

    const/16 v5, 0xe

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_f

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_15

    const/16 v1, 0x15

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_16

    const/16 v1, 0x16

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_17

    const/16 v1, 0x17

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_18

    const/16 v1, 0x18

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_19

    const/16 v1, 0x19

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_1a

    const/16 v5, 0x1a

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1b

    const/16 v5, 0x1b

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1c

    const/16 v5, 0x1c

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1d

    const/16 v5, 0x1d

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1e

    const/16 v5, 0x1e

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_1f

    const/16 v5, 0x1f

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_20

    const/16 v5, 0x20

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_21

    const/16 v4, 0x21

    aput-object v0, v3, v4

    iput-object v3, p0, Lk0/ao;->g:[[I

    .line 7
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ao;->i:Lo1/g0;

    .line 8
    iput v1, p0, Lk0/ao;->j:I

    .line 9
    new-instance v0, Lk0/ao$a;

    invoke-direct {v0, p0}, Lk0/ao$a;-><init>(Lk0/ao;)V

    iput-object v0, p0, Lk0/ao;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/ao$b;

    invoke-direct {v0, p0}, Lk0/ao$b;-><init>(Lk0/ao;)V

    iput-object v0, p0, Lk0/ao;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/ao$c;

    invoke-direct {v0, p0}, Lk0/ao$c;-><init>(Lk0/ao;)V

    iput-object v0, p0, Lk0/ao;->m:Ljava/lang/Runnable;

    .line 12
    iput v2, p0, Lk0/ao;->n:I

    .line 13
    new-instance v0, Lk0/ao$d;

    invoke-direct {v0, p0}, Lk0/ao$d;-><init>(Lk0/ao;)V

    iput-object v0, p0, Lk0/ao;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/ao$e;

    invoke-direct {v0, p0}, Lk0/ao$e;-><init>(Lk0/ao;)V

    iput-object v0, p0, Lk0/ao;->p:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/ao$f;

    invoke-direct {v0, p0}, Lk0/ao$f;-><init>(Lk0/ao;)V

    iput-object v0, p0, Lk0/ao;->q:Ljava/lang/Runnable;

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

    :array_8
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_15
    .array-data 4
        0xb1
        0x36
    .end array-data

    :array_16
    .array-data 4
        0xb2
        0x36
    .end array-data

    :array_17
    .array-data 4
        0xb3
        0x4a
    .end array-data

    :array_18
    .array-data 4
        0xb4
        0x4b
    .end array-data

    :array_19
    .array-data 4
        0xb5
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0xb6
        0xc
    .end array-data

    :array_1b
    .array-data 4
        0xb7
        0x1b
    .end array-data

    :array_1c
    .array-data 4
        0xb8
        0x1c
    .end array-data

    :array_1d
    .array-data 4
        0xb9
        0x16
    .end array-data

    :array_1e
    .array-data 4
        0xba
        0x18
    .end array-data

    :array_1f
    .array-data 4
        0xbb
        0x9
    .end array-data

    :array_20
    .array-data 4
        0xbc
        0x1
    .end array-data

    :array_21
    .array-data 4
        0xd0
        0x3e
    .end array-data
.end method

.method public static synthetic c3(Lk0/ao;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ao;->b3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/ao;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/ao;->a3()V

    return-void
.end method

.method public static synthetic e3(Lk0/ao;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ao;->i:Lo1/g0;

    return-object p0
.end method

.method public static synthetic f3(Lk0/ao;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ao;->j3(I)V

    return-void
.end method

.method public static synthetic g3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/ao;->s:[I

    return-object v0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0x8901c4

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ao;->i:Lo1/g0;

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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->l:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->o:I

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

    iget-object v3, p0, Lk0/ao;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v0, p0, Lk0/ao;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/ao;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 15
    :sswitch_0
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lk0/ao;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 16
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 17
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/ao;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 18
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->b:I

    .line 19
    :goto_0
    sget v0, Lk0/nt;->a:I

    const v1, 0xed01c7

    if-eq v0, v1, :cond_1

    const v1, 0xee01c7

    if-eq v0, v1, :cond_1

    const v1, 0xef01c7

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    new-instance v0, Lk0/ao$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk0/ao$g;-><init>(Lk0/ao;Lk0/ao$a;)V

    iput-object v0, p0, Lk0/ao;->h:Lk0/ao$g;

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.syu.canbus.fb.click"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/ao;->h:Lk0/ao$g;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8801c4 -> :sswitch_2
        0x8901c4 -> :sswitch_1
        0xed01c7 -> :sswitch_0
        0xee01c7 -> :sswitch_0
        0xef01c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x30

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x31

    const/16 v5, 0xf

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x35

    const/16 v11, 0x1f

    const/16 v12, 0x1d

    const/4 v13, 0x3

    if-eq v2, v3, :cond_39

    const/16 v3, 0x66

    if-eq v2, v3, :cond_38

    const/16 v3, 0x68

    if-eq v2, v3, :cond_37

    const/16 v3, 0x52

    if-eq v2, v3, :cond_36

    const/16 v3, 0x53

    if-eq v2, v3, :cond_35

    const/16 v3, 0x18

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_18

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x17c

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_18

    :pswitch_1
    const/16 v2, 0xa

    new-array v14, v10, [I

    add-int/lit8 v15, p2, 0x2

    .line 3
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v14, v10, [I

    .line 4
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v14, v10, [I

    .line 5
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v14, v10, [I

    .line 6
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v14, v10, [I

    .line 7
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v14, v10, [I

    .line 8
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 9
    aget-byte v14, v1, v15

    shr-int/2addr v14, v10

    and-int/2addr v14, v10

    aput v14, v2, v9

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v14, v10, [I

    .line 10
    aget-byte v15, v1, v15

    shr-int/2addr v15, v9

    and-int/2addr v15, v10

    aput v15, v14, v9

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    .line 11
    sget v2, Lk0/nt;->a:I

    const v14, 0xae01c5

    if-eq v2, v14, :cond_1

    const v14, 0xaf01c5

    if-eq v2, v14, :cond_1

    const v14, 0xb601c5

    if-eq v2, v14, :cond_1

    const v14, 0xb701c5

    if-eq v2, v14, :cond_1

    const v14, 0xbb01c5

    if-eq v2, v14, :cond_1

    const v14, 0xbc01c5

    if-ne v2, v14, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x12

    new-array v3, v10, [I

    add-int/lit8 v13, p2, 0x3

    .line 12
    aget-byte v14, v1, v13

    shr-int/lit8 v14, v14, 0x7

    and-int/2addr v14, v10

    aput v14, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v10, [I

    .line 13
    aget-byte v14, v1, v13

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v10

    aput v14, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    .line 14
    aget-byte v13, v1, v13

    shr-int/2addr v13, v6

    and-int/2addr v13, v10

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_1
    :goto_0
    add-int/lit8 v2, p2, 0xb

    .line 15
    aget-byte v14, v1, v2

    shr-int/2addr v14, v9

    and-int/2addr v14, v13

    if-eq v14, v10, :cond_4

    if-eq v14, v4, :cond_3

    if-eq v14, v13, :cond_2

    move v14, v9

    :goto_1
    move v15, v14

    goto :goto_2

    :cond_2
    move v14, v9

    move v15, v10

    goto :goto_2

    :cond_3
    move v14, v10

    goto :goto_1

    :cond_4
    move v15, v9

    move v14, v10

    .line 16
    :goto_2
    aget-byte v16, v1, v2

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v6, v16, 0x3

    if-eq v6, v10, :cond_7

    if-eq v6, v4, :cond_6

    if-eq v6, v13, :cond_5

    move v6, v9

    :goto_3
    move v13, v6

    goto :goto_4

    :cond_5
    move v6, v9

    move v13, v10

    goto :goto_4

    :cond_6
    move v6, v10

    goto :goto_3

    :cond_7
    move v13, v9

    move v6, v10

    .line 17
    :goto_4
    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_8

    move v2, v10

    move v13, v2

    move v15, v13

    move/from16 v16, v15

    goto :goto_5

    :cond_8
    move v2, v9

    move/from16 v16, v2

    :goto_5
    const/16 v4, 0x12

    new-array v7, v10, [I

    aput v2, v7, v9

    .line 18
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 19
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v10, [I

    aput v15, v4, v9

    .line 20
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v4, v10, [I

    aput v16, v4, v9

    .line 21
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v4, v10, [I

    aput v6, v4, v9

    .line 22
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v13, v2, v9

    .line 23
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v2, 0x15

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 24
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 25
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x5

    .line 26
    aget-byte v6, v1, v4

    and-int/2addr v6, v8

    const-string v7, "persist.fyt.reversetemp"

    .line 27
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 28
    aget-byte v3, v1, v4

    and-int/2addr v3, v8

    .line 29
    aget-byte v2, v1, v2

    and-int/lit16 v6, v2, 0xff

    :cond_9
    const/4 v2, -0x1

    const/4 v4, -0x3

    const/4 v7, -0x2

    const/16 v13, 0x1b

    const/16 v14, 0x26

    const/16 v15, 0x21

    if-eqz v3, :cond_e

    if-eq v3, v11, :cond_d

    if-lt v3, v10, :cond_a

    if-le v3, v12, :cond_b

    :cond_a
    if-lt v3, v15, :cond_c

    if-gt v3, v14, :cond_c

    :cond_b
    new-array v5, v10, [I

    aput v3, v5, v9

    .line 30
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_c
    new-array v3, v10, [I

    aput v2, v3, v9

    .line 31
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_d
    new-array v3, v10, [I

    aput v4, v3, v9

    .line 32
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_e
    new-array v3, v10, [I

    aput v7, v3, v9

    .line 33
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v3, 0x1c

    if-eqz v6, :cond_13

    if-eq v6, v11, :cond_12

    if-lt v6, v10, :cond_f

    if-le v6, v12, :cond_10

    :cond_f
    if-lt v6, v15, :cond_11

    if-gt v6, v14, :cond_11

    :cond_10
    new-array v5, v10, [I

    aput v6, v5, v9

    .line 34
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array v5, v10, [I

    aput v2, v5, v9

    .line 35
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    new-array v5, v10, [I

    aput v4, v5, v9

    .line 36
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    new-array v5, v10, [I

    aput v7, v5, v9

    .line 37
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 38
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v6, v10, [I

    .line 39
    aget-byte v13, v1, v5

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v10

    aput v13, v6, v9

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x23

    new-array v6, v10, [I

    .line 40
    aget-byte v13, v1, v5

    const/16 v19, 0x5

    shr-int/lit8 v13, v13, 0x5

    and-int/2addr v13, v10

    aput v13, v6, v9

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x24

    new-array v6, v10, [I

    .line 41
    aget-byte v13, v1, v5

    const/16 v18, 0x4

    shr-int/lit8 v13, v13, 0x4

    and-int/2addr v13, v10

    aput v13, v6, v9

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    .line 42
    aget-byte v6, v1, v5

    const/4 v13, 0x2

    shr-int/2addr v6, v13

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x27

    new-array v6, v10, [I

    .line 43
    aget-byte v13, v1, v5

    shr-int/2addr v13, v10

    and-int/2addr v13, v10

    aput v13, v6, v9

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v6, v10, [I

    .line 44
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v6, v9

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x7

    .line 45
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    if-eq v3, v8, :cond_15

    if-nez v3, :cond_14

    goto :goto_9

    :cond_14
    const/4 v5, 0x5

    mul-int/2addr v3, v5

    add-int/lit16 v3, v3, 0x258

    .line 46
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto :goto_a

    .line 47
    :cond_15
    :goto_9
    invoke-static {v9}, Lu0/d;->A3(I)V

    :goto_a
    add-int/lit8 v3, p2, 0x8

    .line 48
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    if-eqz v3, :cond_1a

    if-eq v3, v11, :cond_19

    if-lt v3, v10, :cond_16

    if-le v3, v12, :cond_17

    :cond_16
    if-lt v3, v15, :cond_18

    if-gt v3, v14, :cond_18

    :cond_17
    const/16 v5, 0x28

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 49
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_18
    const/16 v3, 0x28

    new-array v5, v10, [I

    aput v2, v5, v9

    .line 50
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_19
    const/16 v3, 0x28

    new-array v5, v10, [I

    aput v4, v5, v9

    .line 51
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1a
    const/16 v3, 0x28

    new-array v5, v10, [I

    aput v7, v5, v9

    .line 52
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v3, 0x2a

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x9

    .line 53
    aget-byte v13, v1, v6

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v10

    aput v13, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2e

    new-array v5, v10, [I

    .line 54
    aget-byte v13, v1, v6

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v10

    aput v13, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v5, v10, [I

    .line 55
    aget-byte v13, v1, v6

    const/16 v17, 0x5

    shr-int/lit8 v13, v13, 0x5

    and-int/2addr v13, v10

    aput v13, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2b

    new-array v5, v10, [I

    .line 56
    aget-byte v13, v1, v6

    const/16 v17, 0x4

    shr-int/lit8 v13, v13, 0x4

    and-int/2addr v13, v10

    aput v13, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v5, v10, [I

    .line 57
    aget-byte v6, v1, v6

    shr-int/2addr v6, v9

    const/16 v13, 0xf

    and-int/2addr v6, v13

    aput v6, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0xa

    .line 58
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    if-eqz v3, :cond_1f

    if-eq v3, v11, :cond_1e

    if-lt v3, v10, :cond_1b

    if-le v3, v12, :cond_1c

    :cond_1b
    if-lt v3, v15, :cond_1d

    if-gt v3, v14, :cond_1d

    :cond_1c
    const/16 v2, 0x29

    new-array v4, v10, [I

    aput v3, v4, v9

    .line 59
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1d
    const/16 v3, 0x29

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 60
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1e
    const/16 v2, 0x29

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1f
    const/16 v2, 0x29

    new-array v3, v10, [I

    aput v7, v3, v9

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v2, 0x2d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 63
    aget-byte v4, v1, v4

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 64
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v3

    move v3, v9

    :goto_d
    const/16 v4, 0xf

    if-ge v3, v4, :cond_3c

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v9

    mul-int/lit8 v4, v3, 0x2

    add-int v4, p2, v4

    add-int/lit8 v6, v4, 0x3

    .line 66
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x4

    add-int/2addr v4, v7

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    or-int/2addr v4, v6

    or-int/2addr v4, v2

    aput v4, v5, v10

    const/16 v4, 0x8a

    .line 67
    iget-object v6, v0, Lk0/ao;->c:[[I

    aget-object v6, v6, v3

    invoke-static {v4, v5, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 68
    iget-object v4, v0, Lk0/ao;->c:[[I

    aput-object v5, v4, v3

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :pswitch_3
    const/16 v2, 0x78

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 69
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    .line 70
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    .line 71
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v13

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    .line 72
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v13

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 73
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    .line 74
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    .line 75
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v10, [I

    .line 76
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v10, [I

    .line 77
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    .line 78
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 79
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    .line 80
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    .line 81
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    .line 82
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    .line 83
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 84
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    .line 85
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 86
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v13

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 87
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 88
    aget-byte v2, v1, v2

    const/16 v4, 0x6f

    new-array v5, v10, [I

    and-int/lit16 v6, v2, 0x80

    if-nez v6, :cond_21

    move v6, v9

    goto :goto_e

    :cond_21
    move v6, v10

    :goto_e
    aput v6, v5, v9

    .line 89
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x70

    new-array v5, v10, [I

    and-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_22

    move v6, v9

    goto :goto_f

    :cond_22
    move v6, v10

    :goto_f
    aput v6, v5, v9

    .line 90
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x71

    new-array v5, v10, [I

    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_23

    move v6, v9

    goto :goto_10

    :cond_23
    move v6, v10

    :goto_10
    aput v6, v5, v9

    .line 91
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x72

    new-array v5, v10, [I

    and-int/lit8 v6, v2, 0x4

    if-nez v6, :cond_24

    move v6, v9

    goto :goto_11

    :cond_24
    move v6, v10

    :goto_11
    aput v6, v5, v9

    .line 92
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v13

    shl-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    .line 93
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    const v4, 0xffffff

    if-ne v3, v8, :cond_25

    move v3, v4

    :cond_25
    const/16 v5, 0x73

    new-array v6, v10, [I

    or-int/2addr v3, v2

    aput v3, v6, v9

    .line 94
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 95
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_26

    move v3, v4

    :cond_26
    const/16 v5, 0x74

    new-array v6, v10, [I

    or-int/2addr v3, v2

    aput v3, v6, v9

    .line 96
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x5

    .line 97
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_27

    move v3, v4

    :cond_27
    const/16 v5, 0x75

    new-array v6, v10, [I

    or-int/2addr v3, v2

    aput v3, v6, v9

    .line 98
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x6

    .line 99
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_28

    move v3, v4

    :cond_28
    const/16 v5, 0x76

    new-array v6, v10, [I

    or-int/2addr v3, v2

    aput v3, v6, v9

    .line 100
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x7

    .line 101
    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_29

    goto :goto_12

    :cond_29
    move v4, v1

    :goto_12
    const/16 v1, 0x77

    new-array v3, v10, [I

    or-int/2addr v2, v4

    aput v2, v3, v9

    .line 102
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_5
    move v2, v4

    add-int/lit8 v3, p2, 0x2

    .line 103
    aget-byte v1, v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 104
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 105
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 106
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_2a
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 107
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 108
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_13
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 109
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 110
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v10

    aput v1, v2, v9

    const/4 v1, 0x5

    .line 111
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 112
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    .line 113
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    or-int/2addr v3, v4

    const v4, 0xffff

    if-ne v3, v4, :cond_2b

    move v3, v9

    :cond_2b
    const/16 v4, 0x6c

    new-array v5, v10, [I

    or-int/2addr v3, v2

    aput v3, v5, v9

    .line 114
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    move v3, v9

    :goto_14
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3c

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v9

    mul-int/lit8 v4, v3, 0x2

    add-int v4, p2, v4

    add-int/lit8 v6, v4, 0x5

    .line 115
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    or-int/2addr v4, v6

    or-int/2addr v4, v2

    aput v4, v5, v10

    const/16 v4, 0x6d

    .line 116
    iget-object v6, v0, Lk0/ao;->b:[[I

    aget-object v6, v6, v3

    invoke-static {v4, v5, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 117
    iget-object v4, v0, Lk0/ao;->b:[[I

    aput-object v5, v4, v3

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v4, v1, v2

    and-int/2addr v4, v8

    shl-int/lit8 v3, v4, 0x18

    add-int/lit8 v4, p2, 0x3

    .line 119
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    const v5, 0xffff

    if-ne v4, v5, :cond_2d

    move v4, v9

    :cond_2d
    const/16 v5, 0x6b

    new-array v6, v10, [I

    or-int/2addr v3, v4

    aput v3, v6, v9

    .line 120
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v10, [I

    .line 121
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_8
    add-int/lit8 v2, p2, 0x8

    .line 122
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/2addr v2, v3

    const/16 v3, 0x68

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 123
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    or-int/2addr v5, v2

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 124
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 125
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x7

    aget-byte v1, v1, v6

    and-int/2addr v1, v8

    or-int/2addr v1, v5

    or-int/2addr v1, v2

    aput v1, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 126
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 127
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 128
    iput v2, v0, Lk0/ao;->f:I

    move v2, v9

    .line 129
    :goto_15
    iget-object v3, v0, Lk0/ao;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2f

    .line 130
    iget v4, v0, Lk0/ao;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_2e

    if-eqz v4, :cond_2f

    .line 131
    iput v2, v0, Lk0/ao;->e:I

    goto :goto_16

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2f
    :goto_16
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_30

    .line 132
    array-length v1, v3

    if-ge v2, v1, :cond_3c

    .line 133
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :cond_30
    if-nez v1, :cond_3c

    .line 134
    iget v1, v0, Lk0/ao;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_31

    if-eq v1, v8, :cond_31

    .line 135
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 136
    :cond_31
    iput v8, v0, Lk0/ao;->e:I

    goto/16 :goto_18

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 137
    aget-byte v2, v1, v2

    const/16 v3, 0x63

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x0

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 138
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v4, v10, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v10

    aput v2, v4, v9

    .line 139
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 140
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 141
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 142
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 143
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 144
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->e1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_18

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 145
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x3

    .line 146
    aget-byte v5, v1, v4

    and-int/2addr v5, v8

    add-int/lit8 v6, p2, 0x4

    .line 147
    aget-byte v7, v1, v6

    and-int/2addr v7, v8

    add-int/lit8 v11, p2, 0x5

    .line 148
    aget-byte v12, v1, v11

    and-int/2addr v8, v12

    if-nez v3, :cond_32

    if-nez v5, :cond_32

    if-nez v7, :cond_32

    if-nez v8, :cond_32

    .line 149
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_17

    .line 150
    :cond_32
    sget v12, Ll0/c0;->g:I

    if-ne v12, v3, :cond_33

    sget v12, Ll0/c0;->h:I

    if-ne v12, v5, :cond_33

    sget v12, Ll0/c0;->i:I

    if-ne v12, v7, :cond_33

    sget v12, Ll0/c0;->j:I

    if-eq v12, v8, :cond_34

    .line 151
    :cond_33
    sget v12, Lu0/b;->o:I

    if-nez v12, :cond_34

    .line 152
    invoke-static {v10}, Lu0/d;->C2(I)V

    const/4 v12, 0x4

    .line 153
    sput v12, Ll0/c0;->k:I

    .line 154
    sget-object v12, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v12}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 155
    :cond_34
    :goto_17
    sput v3, Ll0/c0;->g:I

    .line 156
    sput v5, Ll0/c0;->h:I

    .line 157
    sput v7, Ll0/c0;->i:I

    .line 158
    sput v8, Ll0/c0;->j:I

    .line 159
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 160
    aget-byte v2, v1, v4

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 161
    aget-byte v2, v1, v6

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 162
    aget-byte v2, v1, v11

    invoke-static {v2}, Ll0/c0;->e1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 163
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    .line 164
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    .line 165
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v10, [I

    .line 166
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v10, [I

    .line 167
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_35
    const/16 v2, 0x99

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 168
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v10, [I

    .line 169
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v10, [I

    .line 170
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v10, [I

    .line 171
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v10, [I

    .line 172
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v13

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 173
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v10, [I

    .line 174
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v10, [I

    .line 175
    aget-byte v4, v1, v4

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v10, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 176
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v10, [I

    .line 177
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_36
    move v2, v4

    add-int/lit8 v2, p2, 0x2

    .line 178
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->N1(III)V

    goto/16 :goto_18

    :cond_37
    move v2, v4

    const/16 v3, 0xa3

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 179
    aget-byte v2, v1, v5

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v10, [I

    .line 180
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v10, [I

    .line 181
    aget-byte v4, v1, v5

    const/4 v6, 0x2

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v10, [I

    .line 182
    aget-byte v4, v1, v5

    shr-int/2addr v4, v13

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v10, [I

    .line 183
    aget-byte v4, v1, v5

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v10, [I

    .line 184
    aget-byte v1, v1, v5

    const/4 v4, 0x5

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_38
    const/16 v2, 0x97

    new-array v3, v10, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 185
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    .line 186
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_39
    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x2

    .line 187
    aget-byte v4, v1, v3

    shr-int/2addr v4, v9

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v2, v9

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 188
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v2, v9

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 189
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v10, [I

    .line 190
    aget-byte v1, v1, v4

    const/4 v4, 0x4

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_3a
    move v4, v7

    const/16 v2, 0x8b

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x2

    .line 191
    aget-byte v7, v1, v6

    shr-int/2addr v7, v4

    and-int/lit8 v4, v7, 0xf

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 192
    aget-byte v4, v1, v6

    shr-int/2addr v4, v9

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 193
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    .line 194
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 195
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v10, [I

    .line 196
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 197
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    .line 198
    :cond_3b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_3c
    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ao;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ao;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ao;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ao;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/ao;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lk0/ao;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0xac

    if-ge p2, p3, :cond_2

    const/16 p3, 0x6d

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x8a

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/16 p3, 0xf

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lk0/ao;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lk0/ao;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 9

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_7

    const/4 v5, 0x6

    if-eq p1, v5, :cond_6

    const/16 v6, 0x405

    if-eq p1, v6, :cond_4

    const/16 p3, 0x22

    if-eq p1, p3, :cond_1

    const/16 p3, 0x23

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0xa9

    new-array p3, v3, [I

    .line 1
    aget p2, p2, v4

    aput p2, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_0

    .line 2
    :cond_1
    aget p1, p2, v4

    if-ne p1, v3, :cond_3

    .line 3
    sget p1, Lk0/nt;->a:I

    const p2, 0xed01c7

    if-eq p1, p2, :cond_2

    const p2, 0xee01c7

    if-eq p1, p2, :cond_2

    const p2, 0xef01c7

    if-eq p1, p2, :cond_2

    .line 4
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_Prdao_UI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 5
    invoke-virtual {p0}, Lk0/ao;->i3()V

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.carinfo.air.Air_Activity_Tangdu_AnC_Toyota_ALpha_UI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 7
    invoke-virtual {p0}, Lk0/ao;->h3()V

    goto/16 :goto_0

    .line 8
    :cond_3
    aget p1, p2, v4

    if-nez p1, :cond_d

    const/16 p1, 0x3e

    .line 9
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 10
    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 12
    aget p1, p2, v3

    mul-int/lit16 p1, p1, 0xff

    invoke-static {}, La/f;->w()I

    move-result v6

    div-int/2addr p1, v6

    .line 13
    aget v6, p2, v2

    mul-int/lit16 v6, v6, 0xff

    invoke-static {}, La/f;->i()I

    move-result v7

    div-int/2addr v6, v7

    .line 14
    aget v7, p2, v4

    const/16 v8, 0x85

    if-nez v7, :cond_5

    new-array p2, v5, [I

    aput p4, p2, v4

    aput v8, p2, v3

    aput v1, p2, v2

    aput p1, p2, v1

    aput v6, p2, v0

    aput v3, p2, p3

    .line 15
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :cond_5
    aget p2, p2, v4

    if-ne p2, v3, :cond_d

    new-array p2, v5, [I

    aput p4, p2, v4

    aput v8, p2, v3

    aput v1, p2, v2

    aput p1, p2, v1

    aput v6, p2, v0

    aput v4, p2, p3

    .line 17
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_6
    const/16 p1, 0xaa

    new-array p3, v3, [I

    .line 18
    aget v5, p2, v4

    aput v5, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, 0xe5

    aput p3, p1, v3

    aput v3, p1, v2

    .line 19
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 20
    :cond_7
    aget p1, p2, v4

    const/16 v5, 0x63

    if-eq p1, v5, :cond_8

    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0x8d

    aput p3, p1, v3

    aput v2, p1, v2

    .line 21
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 22
    :cond_8
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ao;->j3(I)V

    goto :goto_0

    :cond_9
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0xe0

    aput p3, p1, v3

    aput v2, p1, v2

    .line 23
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 24
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0x84

    aput p3, p1, v3

    aput v2, p1, v2

    .line 25
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_c
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0x83

    aput p3, p1, v3

    aput v2, p1, v2

    .line 26
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_d
    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 16

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xb

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v5, v2, :cond_1

    const/16 v2, 0x21

    if-eq v5, v11, :cond_0

    if-eq v5, v10, :cond_0

    const/16 v12, 0x9

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aput v10, v1, v11

    aput v2, v1, v10

    .line 2
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 3
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 4
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v9

    .line 5
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v12

    goto/16 :goto_2

    :pswitch_1
    aput v4, v1, v11

    aput v2, v1, v10

    .line 7
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 8
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 9
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v9

    .line 10
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 11
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v12

    goto :goto_2

    :cond_0
    aput v6, v1, v11

    aput v2, v1, v10

    :goto_0
    aput v9, v1, v11

    aput v2, v1, v10

    goto :goto_2

    .line 12
    :cond_1
    sget v5, Lw0/d;->i:I

    .line 13
    sget v12, Lw0/d;->j:I

    aput v2, v1, v11

    aput v2, v1, v10

    .line 14
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    const/4 v15, 0x4

    if-ne v13, v14, :cond_2

    aput v3, v1, v15

    goto :goto_1

    :cond_2
    const v0, 0x10001

    if-ne v13, v0, :cond_3

    aput v2, v1, v15

    goto :goto_1

    :cond_3
    const v0, 0x10002

    if-ne v13, v0, :cond_4

    aput v11, v1, v15

    goto :goto_1

    :cond_4
    if-nez v13, :cond_5

    const/16 v0, 0x10

    aput v0, v1, v15

    goto :goto_1

    :cond_5
    if-ne v13, v2, :cond_6

    const/16 v0, 0x11

    aput v0, v1, v15

    :cond_6
    :goto_1
    and-int/lit16 v0, v5, 0xff

    aput v0, v1, v7

    shr-int/lit8 v0, v5, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v8

    if-lt v12, v14, :cond_7

    sub-int/2addr v12, v14

    .line 15
    :cond_7
    rem-int/lit8 v0, v12, 0x6

    if-nez v0, :cond_8

    if-eqz v12, :cond_8

    aput v8, v1, v9

    goto :goto_2

    :cond_8
    aput v0, v1, v9

    .line 16
    :goto_2
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_9

    aput v3, v1, v11

    aput v3, v1, v10

    :cond_9
    new-array v0, v6, [I

    const/16 v2, 0xe3

    aput v2, v0, v3

    const/16 v2, 0xa

    :goto_3
    if-ge v3, v2, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 17
    aget v3, v1, v3

    aput v3, v0, v4

    move v3, v4

    goto :goto_3

    .line 18
    :cond_a
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0xe0

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final h3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.Air_Activity_Tangdu_AnC_Toyota_ALpha_UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final i3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.Air_Activity_Tangdu_YL_Toyota_Prdao_UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final j3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xab

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ao;->r:I

    const-string v1, "com.fyt.screenbutton"

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.fyt.screenbutton.CanbusShow"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.fyt.screenbutton.CanbusHide"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lk0/ao;->i:Lo1/g0;

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ao;->r:I

    if-eq p1, v1, :cond_2

    .line 10
    iget-object p1, p0, Lk0/ao;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
