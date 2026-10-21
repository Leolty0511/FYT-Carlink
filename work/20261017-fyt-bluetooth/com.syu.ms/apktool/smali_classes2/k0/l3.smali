.class public Lk0/l3;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/l3$d;
    }
.end annotation


# static fields
.field public static F:I

.field public static G:I

.field public static H:[I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:Lo1/g0;

.field public final i:I

.field public final j:I

.field public k:Lk0/l3$d;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/l3;->H:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x13
        0xf
        0x14
        0xe
        0x12
        0x10
        0x17
        0x1
        0x31
        0x15
        0x18
        0x31
        0x30
        0xd
        0x8
        0x16
        0x1a
        0x11
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/l3;->e:I

    const/16 v2, 0xf

    new-array v2, v2, [[I

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

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v13, 0x9

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v14, 0xa

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v15, 0xb

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v16, 0xc

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v16, 0xd

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v16, 0xe

    aput-object v4, v2, v16

    iput-object v2, v0, Lk0/l3;->f:[[I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_f

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    aput-object v4, v2, v14

    iput-object v2, v0, Lk0/l3;->g:[[I

    .line 5
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x20

    invoke-direct {v2, v4, v7}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/l3;->h:Lo1/g0;

    .line 6
    iput v6, v0, Lk0/l3;->i:I

    .line 7
    iput v3, v0, Lk0/l3;->j:I

    .line 8
    iput v5, v0, Lk0/l3;->l:I

    .line 9
    iput v5, v0, Lk0/l3;->m:I

    .line 10
    iput v5, v0, Lk0/l3;->n:I

    .line 11
    iput v5, v0, Lk0/l3;->o:I

    .line 12
    iput-boolean v5, v0, Lk0/l3;->p:Z

    .line 13
    iput v5, v0, Lk0/l3;->q:I

    .line 14
    new-instance v2, Lk0/l3$a;

    invoke-direct {v2, v0}, Lk0/l3$a;-><init>(Lk0/l3;)V

    iput-object v2, v0, Lk0/l3;->r:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lk0/l3$b;

    invoke-direct {v2, v0}, Lk0/l3$b;-><init>(Lk0/l3;)V

    iput-object v2, v0, Lk0/l3;->s:Ljava/lang/Runnable;

    const-string v2, ""

    .line 16
    iput-object v2, v0, Lk0/l3;->t:Ljava/lang/String;

    .line 17
    iput-object v2, v0, Lk0/l3;->u:Ljava/lang/String;

    .line 18
    iput v5, v0, Lk0/l3;->v:I

    .line 19
    iput v5, v0, Lk0/l3;->w:I

    .line 20
    iput v5, v0, Lk0/l3;->x:I

    .line 21
    iput v5, v0, Lk0/l3;->y:I

    .line 22
    iput v5, v0, Lk0/l3;->z:I

    .line 23
    iput v5, v0, Lk0/l3;->A:I

    .line 24
    iput v5, v0, Lk0/l3;->B:I

    .line 25
    iput v6, v0, Lk0/l3;->C:I

    .line 26
    iput v1, v0, Lk0/l3;->D:I

    .line 27
    new-instance v1, Lk0/l3$c;

    invoke-direct {v1, v0}, Lk0/l3$c;-><init>(Lk0/l3;)V

    iput-object v1, v0, Lk0/l3;->E:Ljava/lang/Runnable;

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
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1c
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x4
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_14
    .array-data 4
        0x2d
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_16
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_17
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_18
    .array-data 4
        0x5f
        0x1
    .end array-data

    :array_19
    .array-data 4
        0x60
        -0x1
    .end array-data
.end method

.method public static a3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic d3(Lk0/l3;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/l3;->h:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3(Lk0/l3;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l3;->j3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/l3;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/l3;->k3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/l3;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/l3;->c3()V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/l3;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lk0/l3;->h:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/l3;->j3(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/l3;->h:Lo1/g0;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/l3;->k3(I)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    .line 8
    iput v1, v0, Lk0/mt;->g:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    sget v4, Lk0/nt;->a:I

    const v5, 0x20080

    if-eq v4, v5, :cond_1

    const v5, 0x60080

    if-eq v4, v5, :cond_1

    const v5, 0x40080

    if-eq v4, v5, :cond_1

    const v5, 0x10080

    if-eq v4, v5, :cond_1

    const v5, 0x50080

    if-eq v4, v5, :cond_1

    const v5, 0x80080

    if-eq v4, v5, :cond_1

    const v5, 0x70080

    if-eq v4, v5, :cond_1

    const v5, 0x30080

    if-eq v4, v5, :cond_1

    const v5, 0x90080

    if-eq v4, v5, :cond_1

    const v5, 0xa0080

    if-eq v4, v5, :cond_1

    const v5, 0xb0080

    if-eq v4, v5, :cond_1

    const v5, 0xc0080

    if-eq v4, v5, :cond_1

    const v5, 0xd0080

    if-eq v4, v5, :cond_1

    const v5, 0xe0080

    if-eq v4, v5, :cond_1

    const v5, 0xf0080

    if-ne v4, v5, :cond_2

    :cond_1
    const-string v4, "com.syu.canbus"

    .line 11
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    :cond_2
    iput v1, v0, Lk0/mt;->i:I

    .line 13
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xb

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/4 v5, 0x6

    if-eq v0, v5, :cond_3

    const/4 v5, 0x7

    if-eq v0, v5, :cond_3

    const/16 v5, 0xa

    if-eq v0, v5, :cond_3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_4

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 16
    :cond_4
    :goto_0
    sget v0, Lk0/nt;->c:I

    if-eq v0, v4, :cond_5

    if-ne v0, v1, :cond_6

    .line 17
    :cond_5
    new-instance v0, Lk0/l3$d;

    invoke-direct {v0, p0, v3}, Lk0/l3$d;-><init>(Lk0/l3;Lk0/l3$a;)V

    iput-object v0, p0, Lk0/l3;->k:Lk0/l3$d;

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v3, p0, Lk0/l3;->k:Lk0/l3$d;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Lk0/l3;->c3()V

    .line 22
    :cond_6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/l3;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x79

    const/16 v4, 0x78

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_4b

    const/16 v3, -0x18

    const/16 v12, 0xff

    if-eq v2, v3, :cond_46

    const/16 v3, -0x10

    if-eq v2, v3, :cond_45

    const/16 v3, 0x21

    if-eq v2, v3, :cond_40

    const/16 v3, 0x41

    if-eq v2, v3, :cond_3d

    const/16 v13, 0x45

    if-eq v2, v13, :cond_3c

    const/16 v13, 0x48

    const/4 v15, 0x5

    const/4 v6, 0x4

    if-eq v2, v13, :cond_38

    if-eq v2, v4, :cond_37

    const/16 v4, 0x11

    const/16 v13, 0xd

    const/16 v5, 0xc

    const/16 v14, 0x12

    if-eq v2, v4, :cond_14

    if-eq v2, v14, :cond_12

    const/16 v4, 0x31

    if-eq v2, v4, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_11

    :cond_0
    const/16 v2, 0x64

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v5, v1, v4

    shl-int/2addr v5, v9

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 v7, p2, 0x5

    aget-byte v8, v1, v7

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v11, [I

    .line 3
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int/2addr v4, v6

    aget-byte v5, v1, v7

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v12

    or-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    const/16 v4, 0xa

    new-array v9, v11, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v10

    .line 6
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x35

    new-array v9, v11, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v10

    .line 7
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x26

    new-array v9, v11, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v10

    .line 8
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v11

    aput v9, v4, v10

    .line 9
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3e

    new-array v9, v11, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v11

    aput v13, v9, v10

    .line 10
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v9, v11, [I

    and-int/2addr v2, v8

    if-nez v2, :cond_2

    move v2, v10

    goto :goto_0

    :cond_2
    move v2, v11

    :goto_0
    aput v2, v9, v10

    .line 11
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 12
    aget-byte v2, v1, v2

    const/16 v4, 0x44

    new-array v9, v11, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v11

    aput v13, v9, v10

    .line 13
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    const/16 v9, 0x10

    and-int/2addr v2, v9

    if-nez v2, :cond_3

    move v2, v10

    goto :goto_1

    :cond_3
    move v2, v11

    :goto_1
    aput v2, v4, v10

    .line 14
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 15
    aget-byte v2, v1, v2

    new-array v4, v11, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v11

    aput v13, v4, v10

    .line 16
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 17
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 18
    aget-byte v2, v1, v2

    if-eq v2, v7, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v15, :cond_6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    if-eq v2, v5, :cond_4

    move v3, v10

    move v4, v3

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_4
    move v4, v10

    move v3, v11

    move v5, v3

    goto :goto_3

    :cond_5
    move v3, v10

    move v5, v3

    move v4, v11

    goto :goto_3

    :cond_6
    move v3, v10

    move v4, v11

    goto :goto_2

    :cond_7
    move v3, v10

    move v4, v3

    move v5, v11

    goto :goto_3

    :cond_8
    move v4, v10

    move v5, v4

    move v3, v11

    :goto_3
    new-array v6, v11, [I

    aput v3, v6, v10

    .line 19
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v6, v11, [I

    aput v4, v6, v10

    .line 20
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v11, [I

    aput v5, v4, v10

    .line 21
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 22
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-gez v2, :cond_9

    move/from16 v18, v10

    const/16 v3, 0x8

    goto :goto_4

    :cond_9
    const/16 v3, 0x8

    if-le v2, v3, :cond_a

    move/from16 v18, v3

    goto :goto_4

    :cond_a
    move/from16 v18, v2

    :goto_4
    const/16 v2, 0x15

    new-array v4, v11, [I

    aput v18, v4, v10

    .line 24
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 25
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    .line 26
    sget v2, Lk0/nt;->a:I

    const v3, 0x20080

    const/16 v4, 0x1b

    if-eq v2, v3, :cond_f

    const v3, 0x40080

    if-eq v2, v3, :cond_f

    const v3, 0xa0080

    if-eq v2, v3, :cond_f

    const v3, 0xb0080

    if-eq v2, v3, :cond_f

    const v3, 0xc0080

    if-eq v2, v3, :cond_f

    const v3, 0xd0080

    if-eq v2, v3, :cond_f

    const v3, 0xe0080

    if-eq v2, v3, :cond_f

    const v3, 0xf0080

    if-ne v2, v3, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_e

    if-eq v1, v11, :cond_d

    if-eq v1, v9, :cond_c

    if-le v1, v11, :cond_4d

    if-ge v1, v9, :cond_4d

    new-array v2, v11, [I

    add-int/lit8 v1, v1, 0xe

    mul-int/2addr v1, v7

    aput v1, v2, v10

    .line 27
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_c
    new-array v1, v11, [I

    const/4 v2, -0x3

    aput v2, v1, v10

    .line 28
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_d
    new-array v1, v11, [I

    const/4 v2, -0x2

    aput v2, v1, v10

    .line 29
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_e
    new-array v1, v11, [I

    const/4 v2, -0x1

    aput v2, v1, v10

    .line 30
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_f
    :goto_5
    const/16 v2, 0xfe

    if-eq v1, v2, :cond_11

    if-eq v1, v12, :cond_10

    new-array v2, v11, [I

    aput v1, v2, v10

    .line 31
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_10
    new-array v1, v11, [I

    const/4 v2, -0x3

    aput v2, v1, v10

    .line 32
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_11
    new-array v1, v11, [I

    const/4 v2, -0x2

    aput v2, v1, v10

    .line 33
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 34
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 35
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_13

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 36
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 37
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 38
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 39
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 40
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 41
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 42
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 43
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_14
    add-int/lit8 v2, p2, 0x4

    .line 44
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 45
    aget-byte v3, v1, v3

    and-int/2addr v2, v12

    .line 46
    iput v2, v0, Lk0/l3;->c:I

    move v2, v10

    .line 47
    :goto_7
    iget-object v4, v0, Lk0/l3;->f:[[I

    array-length v9, v4

    if-ge v2, v9, :cond_16

    .line 48
    iget v9, v0, Lk0/l3;->c:I

    aget-object v19, v4, v2

    aget v13, v19, v10

    if-ne v9, v13, :cond_15

    if-eqz v9, :cond_16

    .line 49
    iput v2, v0, Lk0/l3;->b:I

    goto :goto_8

    :cond_15
    add-int/lit8 v2, v2, 0x1

    const/16 v13, 0xd

    goto :goto_7

    .line 50
    :cond_16
    :goto_8
    sget v9, Lk0/nt;->a:I

    const v13, 0x40080

    const/16 v15, 0x1a

    if-eq v9, v13, :cond_2f

    const v13, 0x50080

    if-eq v9, v13, :cond_2f

    const v13, 0x80080

    if-ne v9, v13, :cond_17

    goto/16 :goto_b

    :cond_17
    const v13, 0x90080

    if-eq v9, v13, :cond_28

    const v13, 0xa0080

    if-eq v9, v13, :cond_28

    const v13, 0xb0080

    if-ne v9, v13, :cond_18

    goto/16 :goto_a

    :cond_18
    const v13, 0x70080

    if-eq v9, v13, :cond_23

    const v13, 0xc0080

    if-eq v9, v13, :cond_23

    const v13, 0xd0080

    if-eq v9, v13, :cond_23

    const v13, 0xe0080

    if-eq v9, v13, :cond_23

    const v13, 0xf0080

    if-ne v9, v13, :cond_19

    goto/16 :goto_9

    :cond_19
    const v13, 0x60080

    if-ne v9, v13, :cond_20

    .line 51
    iget v9, v0, Lk0/l3;->c:I

    if-eq v9, v8, :cond_1e

    if-eq v9, v5, :cond_1c

    and-int/2addr v3, v12

    if-eqz v3, :cond_1a

    .line 52
    array-length v3, v4

    if-ge v2, v3, :cond_36

    .line 53
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 54
    :cond_1a
    iget v2, v0, Lk0/l3;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_1b

    if-eq v2, v12, :cond_1b

    .line 55
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 56
    :cond_1b
    iput v12, v0, Lk0/l3;->b:I

    goto/16 :goto_c

    :cond_1c
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v11, :cond_36

    .line 57
    sget v2, Lh0/c;->E:I

    if-eq v2, v6, :cond_1d

    .line 58
    invoke-static {v7, v10}, Ll0/b0;->l0(II)V

    .line 59
    invoke-static {v7, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 60
    :cond_1d
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    .line 61
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_1e
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v11, :cond_36

    .line 62
    sget v2, Lh0/c;->E:I

    if-eq v2, v8, :cond_1f

    if-eq v2, v6, :cond_1f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1f

    .line 63
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 65
    :cond_1f
    invoke-static {v15, v10}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v15, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_20
    and-int/2addr v3, v12

    if-eqz v3, :cond_21

    .line 67
    array-length v3, v4

    if-ge v2, v3, :cond_36

    .line 68
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 69
    :cond_21
    iget v2, v0, Lk0/l3;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_22

    if-eq v2, v12, :cond_22

    .line 70
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 71
    :cond_22
    iput v12, v0, Lk0/l3;->b:I

    goto/16 :goto_c

    .line 72
    :cond_23
    :goto_9
    iget v5, v0, Lk0/l3;->c:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_26

    and-int/2addr v3, v12

    if-eqz v3, :cond_24

    .line 73
    array-length v3, v4

    if-ge v2, v3, :cond_36

    .line 74
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 75
    :cond_24
    iget v2, v0, Lk0/l3;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_25

    if-eq v2, v12, :cond_25

    .line 76
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 77
    :cond_25
    iput v12, v0, Lk0/l3;->b:I

    goto/16 :goto_c

    :cond_26
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v11, :cond_36

    .line 78
    sget v2, Lh0/c;->E:I

    if-eq v2, v6, :cond_27

    const/16 v2, 0xd

    .line 79
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 81
    :cond_27
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    .line 82
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 83
    :cond_28
    :goto_a
    iget v5, v0, Lk0/l3;->c:I

    const/16 v7, 0x8

    if-eq v5, v7, :cond_2d

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2b

    and-int/2addr v3, v12

    if-eqz v3, :cond_29

    .line 84
    array-length v3, v4

    if-ge v2, v3, :cond_36

    .line 85
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 86
    :cond_29
    iget v2, v0, Lk0/l3;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_2a

    if-eq v2, v12, :cond_2a

    .line 87
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 88
    :cond_2a
    iput v12, v0, Lk0/l3;->b:I

    goto/16 :goto_c

    :cond_2b
    and-int/lit16 v2, v3, 0xff

    if-eqz v2, :cond_36

    .line 89
    sget v2, Lh0/c;->E:I

    if-eq v2, v6, :cond_2c

    .line 90
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    .line 91
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 92
    :cond_2c
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    .line 93
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_2d
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v11, :cond_36

    .line 94
    sget v2, Lh0/c;->E:I

    if-eq v2, v8, :cond_2e

    if-eq v2, v6, :cond_2e

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2e

    .line 95
    invoke-static {v8, v10}, Ll0/b0;->l0(II)V

    .line 96
    invoke-static {v8, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 97
    :cond_2e
    invoke-static {v15, v10}, Ll0/b0;->l0(II)V

    .line 98
    invoke-static {v15, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 99
    :cond_2f
    :goto_b
    iget v5, v0, Lk0/l3;->c:I

    const/16 v7, 0x8

    if-eq v5, v7, :cond_34

    const/16 v7, 0x9

    if-eq v5, v7, :cond_32

    and-int/2addr v3, v12

    if-eqz v3, :cond_30

    .line 100
    array-length v3, v4

    if-ge v2, v3, :cond_36

    .line 101
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 102
    :cond_30
    iget v2, v0, Lk0/l3;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_31

    if-eq v2, v12, :cond_31

    .line 103
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 104
    :cond_31
    iput v12, v0, Lk0/l3;->b:I

    goto :goto_c

    :cond_32
    and-int/lit16 v2, v3, 0xff

    if-eqz v2, :cond_36

    .line 105
    sget v2, Lh0/c;->E:I

    if-eq v2, v8, :cond_33

    if-eq v2, v6, :cond_33

    const/4 v3, 0x5

    if-eq v2, v3, :cond_33

    .line 106
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    .line 107
    invoke-static {v6, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 108
    :cond_33
    invoke-static {v15, v10}, Ll0/b0;->l0(II)V

    .line 109
    invoke-static {v15, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_34
    and-int/lit16 v2, v3, 0xff

    if-ne v2, v11, :cond_36

    .line 110
    sget v2, Lh0/c;->E:I

    if-eq v2, v6, :cond_35

    .line 111
    invoke-static {v8, v10}, Ll0/b0;->l0(II)V

    .line 112
    invoke-static {v8, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 113
    :cond_35
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    .line 114
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    :cond_36
    :goto_c
    add-int/lit8 v2, p2, 0x9

    .line 115
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_11

    :cond_37
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 117
    aget-byte v3, v1, v3

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 118
    aget-byte v1, v1, v4

    const/16 v4, 0x84

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v11

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    shr-int/lit8 v9, v3, 0x7

    and-int/2addr v9, v11

    or-int/2addr v6, v9

    aput v6, v5, v10

    .line 119
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x85

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v11

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    shr-int/lit8 v9, v3, 0x5

    and-int/2addr v9, v8

    or-int/2addr v6, v9

    aput v6, v5, v10

    .line 120
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x86

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v11

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    or-int/2addr v3, v6

    aput v3, v5, v10

    .line 121
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x87

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v11

    shl-int/2addr v5, v9

    shr-int/lit8 v6, v1, 0x7

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    aput v5, v4, v10

    .line 122
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x88

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v11

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v11

    or-int/2addr v5, v6

    aput v5, v4, v10

    .line 123
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x89

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v11

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v9, v1, 0x4

    and-int/2addr v9, v8

    or-int/2addr v5, v9

    aput v5, v4, v10

    .line 124
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8a

    new-array v4, v11, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v11

    shl-int/2addr v2, v6

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    aput v1, v4, v10

    .line 125
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_38
    const/16 v2, 0x80

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 126
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 127
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 128
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 129
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 130
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 131
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 132
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 133
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 134
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v11, [I

    .line 135
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v11, [I

    .line 136
    aget-byte v5, v1, v4

    const/4 v7, 0x5

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v11, [I

    .line 137
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 138
    sget v2, Lk0/nt;->a:I

    const v3, 0x60080

    if-ne v2, v3, :cond_3b

    .line 139
    iget-boolean v2, v0, Lk0/l3;->p:Z

    if-nez v2, :cond_3b

    .line 140
    iget v2, v0, Lk0/l3;->l:I

    aget-byte v3, v1, v4

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v11

    if-ne v2, v3, :cond_39

    iget v2, v0, Lk0/l3;->m:I

    aget-byte v3, v1, v4

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    if-ne v2, v3, :cond_39

    iget v2, v0, Lk0/l3;->n:I

    aget-byte v3, v1, v4

    const/4 v5, 0x5

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    if-ne v2, v3, :cond_39

    iget v2, v0, Lk0/l3;->o:I

    aget-byte v3, v1, v4

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    if-eq v2, v3, :cond_3b

    .line 141
    :cond_39
    aget-byte v2, v1, v4

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v11

    iput v2, v0, Lk0/l3;->l:I

    .line 142
    aget-byte v3, v1, v4

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    iput v3, v0, Lk0/l3;->m:I

    .line 143
    aget-byte v5, v1, v4

    const/4 v7, 0x5

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    iput v5, v0, Lk0/l3;->n:I

    .line 144
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    iput v4, v0, Lk0/l3;->o:I

    if-eq v2, v11, :cond_3a

    if-eq v3, v11, :cond_3a

    if-eq v5, v11, :cond_3a

    if-ne v4, v11, :cond_3b

    .line 145
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lk0/l3;->i3()V

    .line 146
    iput-boolean v11, v0, Lk0/l3;->p:Z

    :cond_3b
    const/16 v2, 0x92

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xe

    .line 147
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 148
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x10

    .line 149
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x11

    .line 150
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_3c
    add-int/lit8 v2, p2, 0x3

    .line 151
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    const/16 v2, 0x3f5

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 152
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    .line 153
    :cond_3d
    sget v2, Lk0/nt;->a:I

    const v3, 0x20080

    if-eq v2, v3, :cond_3f

    const v3, 0x30080

    if-ne v2, v3, :cond_3e

    goto :goto_d

    :cond_3e
    add-int/lit8 v2, p2, 0x2

    .line 154
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 155
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 156
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 157
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 158
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    invoke-static {v3}, Lk0/l3;->b3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 159
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 160
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    invoke-static {v3}, Lk0/l3;->b3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 161
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Lk0/l3;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_11

    :cond_3f
    :goto_d
    add-int/lit8 v2, p2, 0x2

    .line 162
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 163
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 164
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 165
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 166
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    invoke-static {v3}, Lk0/l3;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 167
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Lk0/l3;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    const/16 v2, 0x9

    add-int/lit8 v2, p2, 0x9

    .line 168
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    invoke-static {v3}, Lk0/l3;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 169
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Lk0/l3;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_11

    :cond_40
    add-int/lit8 v2, p2, 0x2

    .line 170
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 171
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 172
    iput v2, v0, Lk0/l3;->d:I

    move v2, v10

    .line 173
    :goto_e
    iget-object v3, v0, Lk0/l3;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_42

    .line 174
    iget v4, v0, Lk0/l3;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_41

    if-eqz v4, :cond_42

    .line 175
    iput v2, v0, Lk0/l3;->e:I

    goto :goto_f

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 176
    :cond_42
    :goto_f
    iget v4, v0, Lk0/l3;->d:I

    const/16 v5, 0x60

    if-eq v4, v5, :cond_4d

    and-int/2addr v1, v12

    if-eqz v1, :cond_43

    .line 177
    array-length v1, v3

    if-ge v2, v1, :cond_4d

    .line 178
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_11

    .line 179
    :cond_43
    iget v1, v0, Lk0/l3;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_44

    if-eq v1, v12, :cond_44

    .line 180
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 181
    :cond_44
    iput v12, v0, Lk0/l3;->e:I

    goto/16 :goto_11

    .line 182
    :cond_45
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 183
    :cond_46
    sget v2, Lk0/l3;->F:I

    if-ne v2, v11, :cond_49

    add-int/lit8 v2, p2, 0x2

    .line 184
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    .line 185
    sget v3, Lu0/b;->o:I

    if-eqz v3, :cond_47

    goto :goto_10

    :cond_47
    if-eqz v2, :cond_48

    .line 186
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 187
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_10

    .line 188
    :cond_48
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 189
    invoke-static {}, Lk0/qt;->f()V

    :cond_49
    :goto_10
    add-int/lit8 v2, p2, 0x3

    .line 190
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    if-ne v1, v7, :cond_4a

    const/16 v1, 0x3fc

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 191
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_4a
    if-ne v1, v8, :cond_4d

    const/16 v1, 0x3fc

    new-array v2, v11, [I

    aput v11, v2, v10

    .line 192
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_4b
    add-int/lit8 v2, p2, 0x2

    .line 193
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 194
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 195
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 196
    aget-byte v6, v1, v6

    add-int/lit8 v9, p2, 0x6

    .line 197
    aget-byte v9, v1, v9

    add-int/lit8 v12, p2, 0x7

    .line 198
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x8

    .line 199
    aget-byte v13, v1, v13

    const/16 v14, 0x9

    add-int/lit8 v14, p2, 0x9

    .line 200
    aget-byte v1, v1, v14

    .line 201
    sget v14, Lk0/nt;->a:I

    const v15, 0x60080

    if-ne v14, v15, :cond_4c

    const/16 v1, 0x65

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    shr-int/lit8 v7, v9, 0x2

    and-int/2addr v7, v11

    or-int/2addr v5, v7

    aput v5, v4, v10

    .line 202
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v11

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    shr-int/lit8 v7, v9, 0x0

    and-int/2addr v7, v11

    or-int/2addr v5, v7

    aput v5, v4, v10

    .line 203
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v11

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    shr-int/lit8 v7, v6, 0x6

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v4, v10

    .line 204
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x69

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v11

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    shr-int/lit8 v7, v6, 0x3

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v5, v7

    aput v5, v4, v10

    .line 205
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6a

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v11

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    shr-int/lit8 v14, v6, 0x2

    and-int/2addr v14, v11

    or-int/2addr v5, v14

    aput v5, v4, v10

    .line 206
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6b

    new-array v4, v11, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v11

    shl-int/2addr v2, v7

    shr-int/lit8 v5, v6, 0x1

    and-int/2addr v5, v11

    or-int/2addr v2, v5

    aput v2, v4, v10

    .line 207
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v2, v11, [I

    shr-int/lit8 v4, v3, 0x6

    and-int/2addr v4, v11

    shl-int/2addr v4, v7

    shr-int/lit8 v5, v12, 0x6

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v2, v10

    .line 208
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8c

    new-array v2, v11, [I

    shr-int/lit8 v4, v3, 0x5

    and-int/2addr v4, v11

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    shr-int/lit8 v5, v12, 0x5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v2, v10

    .line 209
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v2, v11, [I

    shr-int/lit8 v4, v3, 0x4

    and-int/2addr v4, v11

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    shr-int/lit8 v5, v12, 0x2

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    aput v4, v2, v10

    .line 210
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8d

    new-array v2, v11, [I

    shr-int/lit8 v4, v3, 0x3

    and-int/2addr v4, v11

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v12, 0x0

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v2, v10

    .line 211
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v2, v11, [I

    shr-int/lit8 v4, v3, 0x2

    and-int/2addr v4, v11

    shl-int/2addr v4, v5

    shr-int/lit8 v5, v13, 0x1

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v2, v10

    .line 212
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v2, v11, [I

    shr-int/lit8 v4, v3, 0x1

    and-int/2addr v4, v11

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    shr-int/lit8 v6, v13, 0x0

    and-int/2addr v6, v11

    or-int/2addr v4, v6

    aput v4, v2, v10

    .line 213
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6d

    new-array v2, v11, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    shl-int/2addr v3, v5

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v11

    or-int/2addr v3, v4

    aput v3, v2, v10

    .line 214
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_11

    :cond_4c
    const/16 v14, 0x65

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    shr-int/lit8 v17, v9, 0x2

    and-int/lit8 v17, v17, 0x1

    or-int v16, v16, v17

    aput v16, v15, v10

    .line 215
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x66

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    shr-int/lit8 v17, v9, 0x1

    and-int/lit8 v17, v17, 0x1

    or-int v16, v16, v17

    aput v16, v15, v10

    .line 216
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x67

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    shr-int/lit8 v17, v9, 0x0

    and-int/lit8 v17, v17, 0x1

    or-int v16, v16, v17

    aput v16, v15, v10

    .line 217
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x68

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    shr-int/lit8 v17, v6, 0x6

    and-int/lit8 v17, v17, 0x3

    or-int v16, v16, v17

    aput v16, v15, v10

    .line 218
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x69

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    shr-int/lit8 v17, v6, 0x3

    and-int/lit8 v17, v17, 0x7

    or-int v16, v16, v17

    aput v16, v15, v10

    .line 219
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x6a

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    shr-int/lit8 v17, v6, 0x2

    and-int/lit8 v17, v17, 0x1

    or-int v16, v16, v17

    aput v16, v15, v10

    .line 220
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x6b

    new-array v15, v11, [I

    shr-int/lit8 v16, v2, 0x1

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    shr-int/lit8 v18, v6, 0x1

    and-int/lit8 v18, v18, 0x1

    or-int v16, v16, v18

    aput v16, v15, v10

    .line 221
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x6c

    new-array v15, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v11

    shl-int/lit8 v2, v2, 0x8

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    or-int/2addr v2, v6

    aput v2, v15, v10

    .line 222
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v6, v11, [I

    shr-int/lit8 v14, v3, 0x7

    and-int/2addr v14, v11

    shl-int/lit8 v14, v14, 0x8

    shr-int/lit8 v15, v9, 0x4

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    aput v14, v6, v10

    .line 223
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v6, v11, [I

    shr-int/lit8 v14, v3, 0x6

    and-int/2addr v14, v11

    const/16 v15, 0x8

    shl-int/2addr v14, v15

    shr-int/lit8 v15, v12, 0x6

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    aput v14, v6, v10

    .line 224
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v6, v11, [I

    shr-int/lit8 v14, v3, 0x4

    and-int/2addr v14, v11

    const/16 v15, 0x8

    shl-int/2addr v14, v15

    shr-int/2addr v12, v7

    and-int/lit8 v12, v12, 0x7

    or-int/2addr v12, v14

    aput v12, v6, v10

    .line 225
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v6, v11, [I

    shr-int/lit8 v12, v3, 0x2

    and-int/2addr v12, v11

    shl-int/2addr v12, v15

    shr-int/lit8 v14, v13, 0x1

    and-int/2addr v14, v11

    or-int/2addr v12, v14

    aput v12, v6, v10

    .line 226
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v6, v11, [I

    shr-int/lit8 v12, v3, 0x1

    and-int/2addr v12, v11

    const/16 v14, 0x8

    shl-int/2addr v12, v14

    shr-int/lit8 v15, v13, 0x0

    and-int/2addr v15, v11

    or-int/2addr v12, v15

    aput v12, v6, v10

    .line 227
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v6, v11, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    shl-int/2addr v3, v14

    shr-int/lit8 v8, v9, 0x3

    and-int/2addr v8, v11

    or-int/2addr v3, v8

    aput v3, v6, v10

    .line 228
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v11, [I

    shr-int/lit8 v6, v5, 0x6

    and-int/2addr v6, v11

    shl-int/2addr v6, v14

    shr-int/lit8 v8, v13, 0x6

    and-int/2addr v8, v11

    or-int/2addr v6, v8

    aput v6, v3, v10

    .line 229
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v11, [I

    shr-int/lit8 v6, v5, 0x5

    and-int/2addr v6, v11

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    shr-int/lit8 v8, v13, 0x5

    and-int/2addr v8, v11

    or-int/2addr v6, v8

    aput v6, v3, v10

    .line 230
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v11, [I

    shr-int/lit8 v6, v5, 0x4

    and-int/2addr v6, v11

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    shr-int/lit8 v8, v13, 0x4

    and-int/2addr v8, v11

    or-int/2addr v6, v8

    aput v6, v3, v10

    .line 231
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v11, [I

    shr-int/lit8 v6, v5, 0x3

    and-int/2addr v6, v11

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v6, v8

    aput v6, v3, v10

    .line 232
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v11, [I

    shr-int/lit8 v6, v5, 0x2

    and-int/2addr v6, v11

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    shr-int/2addr v1, v10

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v6

    aput v1, v3, v10

    .line 233
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v5, 0x1

    and-int/2addr v2, v11

    shl-int/2addr v2, v8

    shr-int/lit8 v3, v13, 0x3

    and-int/2addr v3, v11

    or-int/2addr v2, v3

    aput v2, v1, v10

    .line 234
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x79

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x0

    and-int/2addr v3, v11

    shl-int/2addr v3, v8

    shr-int/lit8 v4, v13, 0x2

    and-int/2addr v4, v11

    or-int/2addr v3, v4

    aput v3, v2, v10

    .line 235
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_4d
    :goto_11
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/l3;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/l3;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/l3;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/l3;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x96

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    const/16 v5, 0x3ed

    if-eq p1, v5, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/l3;->j3(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v1, [I

    aput v0, p1, v2

    aput v4, p1, v3

    const/16 v0, 0x4d

    aput v0, p1, v4

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    aget p1, p2, v2

    const/16 v5, 0xf0

    if-ne p1, v5, :cond_3

    .line 7
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/l3;->k3(I)V

    goto :goto_1

    :cond_3
    new-array p1, v1, [I

    aput v0, p1, v2

    aput v4, p1, v3

    const/16 v0, 0x8c

    aput v0, p1, v4

    .line 8
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v1, [I

    aput v0, p1, v2

    aput v4, p1, v3

    const/16 v0, 0x3d

    aput v0, p1, v4

    .line 10
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final c3()V
    .locals 12

    .line 1
    iget v0, p0, Lk0/l3;->A:I

    if-ltz v0, :cond_2

    sget-object v1, Lk0/l3;->H:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lk0/l3;->B:I

    if-nez v0, :cond_1

    iget v0, p0, Lk0/l3;->x:I

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lk0/l3;->w:I

    const/4 v1, 0x7

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput v6, v2, v5

    const/4 v7, 0x2

    const/16 v8, 0x7a

    aput v8, v2, v7

    const/4 v9, 0x3

    aput v5, v2, v9

    shr-int/lit8 v10, v0, 0x10

    and-int/lit16 v10, v10, 0xff

    aput v10, v2, v6

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x5

    aput v10, v2, v11

    and-int/lit16 v0, v0, 0xff

    const/4 v10, 0x6

    aput v0, v2, v10

    .line 4
    invoke-static {v2}, Lz/k;->s([I)V

    new-array v0, v1, [I

    aput v4, v0, v3

    aput v6, v0, v5

    aput v8, v0, v7

    aput v7, v0, v9

    .line 5
    sget-object v1, Lk0/l3;->H:[I

    iget v2, p0, Lk0/l3;->A:I

    aget v1, v1, v2

    aput v1, v0, v6

    aput v3, v0, v11

    aput v3, v0, v10

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public h3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0/l3;->h3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.wc.changan.WCChanganOushangX70ATireAct"

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
    .locals 3

    .line 1
    sput p1, Lk0/l3;->G:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lk0/l3;->h:Lo1/g0;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/l3;->G:I

    if-eq p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lk0/l3;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x4a
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x4a
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x4a
        0x1
        0x2
    .end array-data
.end method

.method public final k3(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/l3;->F:I

    const/16 v2, 0x8b

    new-array v1, v1, [I

    or-int/lit16 p1, p1, 0x100

    aput p1, v1, v0

    .line 2
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/l3;->h:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/l3;->F:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/l3;->h:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
