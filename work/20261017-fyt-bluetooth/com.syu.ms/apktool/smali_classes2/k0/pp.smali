.class public Lk0/pp;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/pp$j;
    }
.end annotation


# static fields
.field public static E:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Lk0/pp$j;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/pp;->E:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
        0x9
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/pp;->c:I

    const/16 v1, 0x15

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

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/pp;->d:[[I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lk0/pp;->e:I

    .line 5
    new-instance v1, Lk0/pp$a;

    invoke-direct {v1, p0}, Lk0/pp$a;-><init>(Lk0/pp;)V

    iput-object v1, p0, Lk0/pp;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lk0/pp$b;

    invoke-direct {v1, p0}, Lk0/pp$b;-><init>(Lk0/pp;)V

    iput-object v1, p0, Lk0/pp;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lk0/pp$c;

    invoke-direct {v1, p0}, Lk0/pp$c;-><init>(Lk0/pp;)V

    iput-object v1, p0, Lk0/pp;->h:Ljava/lang/Runnable;

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lk0/pp;->j:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lk0/pp;->k:Ljava/lang/String;

    .line 10
    iput v0, p0, Lk0/pp;->l:I

    .line 11
    iput v0, p0, Lk0/pp;->m:I

    .line 12
    iput v0, p0, Lk0/pp;->n:I

    .line 13
    iput v0, p0, Lk0/pp;->o:I

    .line 14
    iput v0, p0, Lk0/pp;->p:I

    .line 15
    iput v0, p0, Lk0/pp;->q:I

    .line 16
    iput v0, p0, Lk0/pp;->r:I

    .line 17
    iput v0, p0, Lk0/pp;->s:I

    const/16 v0, 0xff

    .line 18
    iput v0, p0, Lk0/pp;->t:I

    .line 19
    iput v0, p0, Lk0/pp;->u:I

    .line 20
    new-instance v0, Lk0/pp$d;

    invoke-direct {v0, p0}, Lk0/pp$d;-><init>(Lk0/pp;)V

    iput-object v0, p0, Lk0/pp;->v:Ljava/lang/Runnable;

    .line 21
    iput-object v1, p0, Lk0/pp;->w:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lk0/pp;->x:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lk0/pp;->y:Ljava/lang/String;

    .line 24
    new-instance v0, Lk0/pp$e;

    invoke-direct {v0, p0}, Lk0/pp$e;-><init>(Lk0/pp;)V

    iput-object v0, p0, Lk0/pp;->z:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lk0/pp$f;

    invoke-direct {v0, p0}, Lk0/pp$f;-><init>(Lk0/pp;)V

    iput-object v0, p0, Lk0/pp;->A:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lk0/pp$g;

    invoke-direct {v0, p0}, Lk0/pp$g;-><init>(Lk0/pp;)V

    iput-object v0, p0, Lk0/pp;->B:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lk0/pp$h;

    invoke-direct {v0, p0}, Lk0/pp$h;-><init>(Lk0/pp;)V

    iput-object v0, p0, Lk0/pp;->C:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lk0/pp$i;

    invoke-direct {v0, p0}, Lk0/pp$i;-><init>(Lk0/pp;)V

    iput-object v0, p0, Lk0/pp;->D:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1a
    .end array-data

    :array_b
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x18
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x20
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x21
        0x36
    .end array-data

    :array_11
    .array-data 4
        0x22
        0x26
    .end array-data

    :array_12
    .array-data 4
        0x23
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0x24
        0x18
    .end array-data

    :array_14
    .array-data 4
        0x25
        0x3e
    .end array-data
.end method

.method public static synthetic d3(Lk0/pp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/pp;->n3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e3(Lk0/pp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/pp;->b3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f3(Lk0/pp;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/pp;->c3()V

    return-void
.end method

.method public static synthetic g3(Lk0/pp;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pp;->u:I

    return p0
.end method

.method public static synthetic h3(Lk0/pp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pp;->u:I

    return p1
.end method

.method public static synthetic i3(Lk0/pp;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/pp;->a3(I)I

    move-result p0

    return p0
.end method

.method public static synthetic j3(Lk0/pp;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pp;->t:I

    return p0
.end method

.method public static synthetic k3(Lk0/pp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pp;->t:I

    return p1
.end method

.method public static synthetic l3(Lk0/pp;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/pp;->m3(BLjava/lang/String;)V

    return-void
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/pp;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

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

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->h:I

    .line 13
    iput v1, v0, Lk0/mt;->p:I

    .line 14
    sget v1, Lk0/nt;->a:I

    const v3, 0xc401c5    # 1.8000392E-38f

    if-eq v1, v3, :cond_1

    const v3, 0xec01c7

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 15
    :cond_0
    iput v2, v0, Lk0/mt;->i:I

    .line 16
    iput v2, v0, Lk0/mt;->g:I

    .line 17
    iget-object v0, p0, Lk0/pp;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/pp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/pp;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/pp;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/pp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/pp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/pp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lk0/pp;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    new-instance v0, Lk0/pp$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk0/pp$j;-><init>(Lk0/pp;Lk0/pp$a;)V

    iput-object v0, p0, Lk0/pp;->i:Lk0/pp$j;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/pp;->i:Lk0/pp$j;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0}, Lk0/pp;->c3()V

    goto :goto_0

    .line 30
    :cond_1
    iput v2, v0, Lk0/mt;->i:I

    .line 31
    iput v2, v0, Lk0/mt;->g:I

    .line 32
    iget-object v0, p0, Lk0/pp;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 33
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/pp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/pp;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/pp;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 36
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/pp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x30

    const/4 v8, 0x2

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x33

    if-eq v2, v3, :cond_19

    const/16 v3, 0x7d

    const/16 v9, 0xb

    const/4 v10, 0x4

    if-eq v2, v3, :cond_17

    const/16 v11, 0xe

    const/16 v15, 0xa

    const/16 v12, 0xf

    const/4 v13, 0x6

    const/4 v14, 0x5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_0
    const/16 v2, 0x7f

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x2

    .line 2
    aget-byte v11, v1, v9

    shr-int/2addr v11, v10

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v7, [I

    .line 3
    aget-byte v11, v1, v9

    shr-int/2addr v11, v8

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    .line 4
    aget-byte v11, v1, v9

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    .line 5
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x3

    .line 6
    aget-byte v11, v1, v9

    shr-int/2addr v11, v10

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    .line 7
    aget-byte v11, v1, v9

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    .line 8
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x4

    .line 9
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/2addr v9, v5

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x5

    .line 10
    aget-byte v11, v1, v9

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 11
    aget-byte v11, v1, v9

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    .line 12
    aget-byte v11, v1, v9

    shr-int/2addr v11, v14

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v7, [I

    .line 13
    aget-byte v11, v1, v9

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    .line 14
    aget-byte v11, v1, v9

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    .line 15
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x6

    .line 16
    aget-byte v11, v1, v9

    shr-int/2addr v11, v10

    and-int/2addr v11, v12

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v7, [I

    .line 17
    aget-byte v11, v1, v9

    shr-int/2addr v11, v4

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    .line 18
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x7

    .line 19
    aget-byte v11, v1, v9

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    .line 20
    aget-byte v11, v1, v9

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    .line 21
    aget-byte v11, v1, v9

    shr-int/2addr v11, v14

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    .line 22
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x1f

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    add-int/lit8 v9, p2, 0x8

    .line 23
    aget-byte v9, v1, v9

    shr-int/2addr v9, v6

    and-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x9

    .line 24
    aget-byte v9, v1, v5

    shr-int/2addr v9, v4

    and-int/2addr v9, v4

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v7, [I

    .line 25
    aget-byte v9, v1, v5

    shr-int/lit8 v8, v9, 0x2

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    .line 26
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 27
    aget-byte v8, v1, v5

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    .line 28
    aget-byte v8, v1, v5

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v7, [I

    .line 29
    aget-byte v8, v1, v5

    shr-int/lit8 v4, v8, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    .line 30
    aget-byte v1, v1, v5

    shr-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_1
    const/16 v2, 0x7a

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 31
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 32
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x4

    .line 33
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 34
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v2, v6

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 35
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 v2, 0x70

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 36
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 37
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 38
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 39
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 40
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 41
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 42
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 43
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 44
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 45
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_3
    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 46
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 48
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 49
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 50
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 51
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 52
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 53
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 54
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 55
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 56
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 57
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 58
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 61
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 62
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 63
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 64
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 65
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 66
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 67
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 68
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x3

    .line 70
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 71
    aget-byte v11, v1, v9

    and-int/2addr v11, v5

    add-int/lit8 v12, p2, 0x5

    .line 72
    aget-byte v13, v1, v12

    and-int/2addr v13, v5

    if-nez v3, :cond_1

    if-nez v8, :cond_1

    if-nez v11, :cond_1

    if-nez v13, :cond_1

    .line 73
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 74
    :cond_1
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_2

    sget v6, Ll0/c0;->h:I

    if-ne v6, v8, :cond_2

    sget v6, Ll0/c0;->i:I

    if-ne v6, v11, :cond_2

    sget v6, Ll0/c0;->j:I

    if-eq v6, v13, :cond_3

    .line 75
    :cond_2
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_3

    .line 76
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 77
    sput v10, Ll0/c0;->k:I

    .line 78
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 79
    :cond_3
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 80
    sput v8, Ll0/c0;->h:I

    .line 81
    sput v11, Ll0/c0;->i:I

    .line 82
    sput v13, Ll0/c0;->j:I

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 84
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 85
    aget-byte v2, v1, v9

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 86
    aget-byte v1, v1, v12

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 89
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 90
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_7
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 91
    aget-byte v16, v1, v3

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v6

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 92
    aget-byte v15, v1, v3

    shr-int/2addr v15, v13

    and-int/2addr v15, v7

    aput v15, v2, v6

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 93
    aget-byte v9, v1, v3

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v2, v6

    const/16 v9, 0xc

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v9, v7, [I

    .line 94
    aget-byte v15, v1, v3

    shr-int/2addr v15, v10

    and-int/2addr v15, v7

    aput v15, v9, v6

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 95
    aget-byte v9, v1, v3

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0xd

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 96
    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v2, v6

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 97
    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v2, v6

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v7, [I

    .line 98
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 99
    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v7

    aput v4, v2, v6

    const/16 v4, 0x12

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v7, [I

    .line 100
    aget-byte v9, v1, v3

    shr-int/2addr v9, v13

    and-int/2addr v9, v7

    aput v9, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    .line 101
    aget-byte v9, v1, v3

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v7, [I

    .line 102
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v12

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 103
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v4, p2, 0x5

    .line 104
    aget-byte v9, v1, v4

    and-int/2addr v9, v5

    const-string v11, "persist.fyt.reversetemp"

    .line 105
    invoke-static {v11, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 106
    aget-byte v3, v1, v4

    and-int/2addr v3, v5

    .line 107
    aget-byte v2, v1, v2

    and-int/lit16 v9, v2, 0xff

    :cond_4
    const/16 v2, 0x3c

    const/16 v4, 0x24

    .line 108
    sget v11, Lk0/nt;->a:I

    const v13, 0xec01c7

    if-eq v11, v13, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0x20

    const/16 v4, 0x10

    :goto_2
    const/16 v11, 0x1b

    if-ne v3, v4, :cond_6

    new-array v3, v7, [I

    const/4 v13, -0x2

    aput v13, v3, v6

    .line 109
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    if-ne v3, v2, :cond_7

    new-array v3, v7, [I

    const/4 v13, -0x3

    aput v13, v3, v6

    .line 110
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v13, v7, [I

    aput v3, v13, v6

    .line 111
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0x1c

    if-ne v9, v4, :cond_8

    new-array v2, v7, [I

    const/4 v4, -0x2

    aput v4, v2, v6

    .line 112
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_8
    if-ne v9, v2, :cond_9

    new-array v2, v7, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 113
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    new-array v2, v7, [I

    aput v9, v2, v6

    .line 114
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x36

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 115
    aget-byte v9, v1, v4

    shr-int/2addr v9, v14

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v3, v7, [I

    .line 116
    aget-byte v9, v1, v4

    shr-int/lit8 v8, v9, 0x2

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v7, [I

    .line 117
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 118
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v7, [I

    .line 119
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 120
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v7, [I

    .line 121
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v12

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 122
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    if-eqz v1, :cond_b

    if-ne v1, v5, :cond_a

    goto :goto_5

    :cond_a
    mul-int/2addr v1, v14

    add-int/lit16 v1, v1, 0x258

    .line 123
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_8

    .line 124
    :cond_b
    :goto_5
    invoke-static {v6}, Lu0/d;->B3(I)V

    goto/16 :goto_8

    .line 125
    :pswitch_8
    sget v2, Lu0/b;->a0:I

    if-nez v2, :cond_c

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 126
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 127
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 128
    iput v2, v0, Lk0/pp;->c:I

    move v2, v6

    .line 129
    :goto_6
    iget-object v3, v0, Lk0/pp;->d:[[I

    array-length v8, v3

    if-ge v2, v8, :cond_e

    .line 130
    iget v8, v0, Lk0/pp;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_d

    if-eqz v8, :cond_e

    .line 131
    iput v2, v0, Lk0/pp;->b:I

    goto :goto_7

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 132
    :cond_e
    :goto_7
    iget v8, v0, Lk0/pp;->c:I

    const/16 v9, 0x1a

    if-eq v8, v14, :cond_15

    if-eq v8, v13, :cond_13

    const/16 v4, 0x22

    if-eq v8, v4, :cond_11

    and-int/2addr v1, v5

    if-ne v1, v7, :cond_f

    .line 133
    array-length v1, v3

    if-ge v2, v1, :cond_1d

    .line 134
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_f
    if-nez v1, :cond_1d

    .line 135
    iget v1, v0, Lk0/pp;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_10

    if-eq v1, v5, :cond_10

    .line 136
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 137
    :cond_10
    iput v5, v0, Lk0/pp;->b:I

    goto/16 :goto_8

    :cond_11
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_1d

    .line 138
    sget v1, Lk0/nt;->a:I

    const v2, 0xc501c5

    if-eq v1, v2, :cond_12

    const/16 v1, 0x26

    .line 139
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 140
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_12
    const/16 v1, 0xd

    .line 141
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 142
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_13
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_1d

    .line 143
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_14

    if-eq v1, v10, :cond_14

    if-eq v1, v14, :cond_14

    const/16 v1, 0xc

    .line 144
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 145
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 146
    :cond_14
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 147
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_15
    and-int/2addr v1, v5

    if-ne v1, v7, :cond_1d

    .line 148
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_16

    if-eq v1, v14, :cond_16

    const/16 v1, 0x12

    .line 149
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 150
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 151
    :cond_16
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    .line 152
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 153
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    if-eq v2, v7, :cond_18

    goto :goto_8

    :cond_18
    add-int/lit8 v2, p2, 0x3

    .line 154
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    aget-byte v4, v1, v2

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    invoke-static {v3, v4, v6}, Ll0/c0;->a(III)V

    .line 155
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v8, v8, [I

    aput v9, v8, v6

    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    aput v1, v8, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v4, v8, v1, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_8

    :cond_19
    const/16 v2, 0x3f5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 156
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 157
    :cond_1a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_8

    .line 158
    :cond_1b
    sget v2, Lk0/nt;->a:I

    const v3, 0xc401c5    # 1.8000392E-38f

    if-eq v2, v3, :cond_1c

    add-int/lit8 v2, p2, 0x2

    .line 159
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x1e80

    const/16 v4, 0x170c

    invoke-static {v2, v1, v3, v6, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_8

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 160
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v3, 0x1e78

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    :cond_1d
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/pp;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/pp;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/pp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/pp;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/pp;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lk0/pp;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x9c

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

    const/16 p3, -0x3f

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    const/16 v6, 0x3ed

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_7

    .line 1
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v0, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v4, p1, v4

    aput v5, p1, v2

    .line 2
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_7

    .line 3
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x3c

    aput p3, p1, v5

    aput v4, p1, v4

    .line 4
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_7

    .line 5
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x3d

    aput p3, p1, v5

    aput v4, p1, v4

    .line 6
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_7

    .line 7
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x3e

    aput p3, p1, v5

    aput v4, p1, v4

    .line 8
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    .line 9
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x58

    aput p3, p1, v5

    aput v4, p1, v4

    .line 10
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_7

    .line 11
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x70

    aput p3, p1, v5

    aput v4, p1, v4

    .line 12
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 13
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v0, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v4, p1, v4

    .line 14
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 8

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    .line 1
    rem-int/lit16 p1, p1, 0x168

    :cond_0
    if-gez p1, :cond_1

    .line 2
    rem-int/lit16 p1, p1, 0x168

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rsub-int p1, p1, 0x168

    :cond_1
    int-to-double v1, p1

    const-wide v3, 0x4036800000000000L    # 22.5

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2

    if-gez p1, :cond_3

    :cond_2
    const-wide v5, 0x4075180000000000L    # 337.5

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_4

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto/16 :goto_0

    :cond_4
    cmpl-double p1, v1, v3

    const-wide v3, 0x4050e00000000000L    # 67.5

    if-lez p1, :cond_5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_5

    const/4 p1, 0x2

    goto :goto_0

    :cond_5
    cmpl-double p1, v1, v3

    const-wide v3, 0x405c200000000000L    # 112.5

    if-ltz p1, :cond_6

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x3

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x4

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/4 p1, 0x5

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/4 p1, 0x6

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/4 p1, 0x7

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/16 p1, 0x8

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final b3(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    const-string p1, "  "

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    shl-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    add-int/2addr v7, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 p1, v1, 0xff

    const/4 v0, 0x4

    add-int/2addr p1, v0

    .line 6
    new-array p1, p1, [I

    const/16 v4, -0x1d

    .line 7
    aput v4, p1, v3

    const/16 v4, -0x36

    .line 8
    aput v4, p1, v5

    const/4 v4, 0x2

    add-int/lit8 v5, v1, 0x1

    int-to-byte v5, v5

    .line 9
    aput v5, p1, v4

    const/4 v4, 0x3

    const/16 v5, 0x11

    .line 10
    aput v5, p1, v4

    :goto_1
    if-ge v3, v1, :cond_2

    add-int v4, v0, v3

    .line 11
    aget-byte v5, v2, v3

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3()V
    .locals 7

    .line 1
    iget v0, p0, Lk0/pp;->q:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/pp;->E:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lk0/pp;->m:I

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc9

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x6

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 3
    iget v6, p0, Lk0/pp;->s:I

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Lk0/pp;->u:I

    aput v6, v3, v4

    const/4 v4, 0x5

    and-int/lit16 v6, v2, 0xff

    aput v6, v3, v4

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    const/4 v4, 0x7

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aput v2, v3, v4

    aget v0, v1, v0

    const/16 v1, 0x8

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m3(BLjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_3

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    shl-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    add-int/2addr v7, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    and-int/lit16 p2, v1, 0xff

    const/4 v0, 0x4

    add-int/2addr p2, v0

    .line 6
    new-array p2, p2, [I

    const/16 v4, -0x1d

    .line 7
    aput v4, p2, v3

    .line 8
    aput p1, p2, v5

    const/4 p1, 0x2

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    .line 9
    aput v4, p2, p1

    const/4 p1, 0x3

    const/16 v4, 0x11

    .line 10
    aput v4, p2, p1

    :goto_1
    if-ge v3, v1, :cond_4

    add-int p1, v0, v3

    .line 11
    aget-byte v4, v2, v3

    aput v4, p2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public final n3(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2
    array-length v0, p1

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    const/16 v1, 0x13

    new-array v1, v1, [I

    const/16 v2, -0x1d

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, -0x3a

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    const/16 v5, 0x10

    aput v5, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    :goto_0
    if-ge v3, v0, :cond_2

    add-int v4, v2, v3

    .line 3
    aget-char v5, p1, v3

    int-to-byte v5, v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
