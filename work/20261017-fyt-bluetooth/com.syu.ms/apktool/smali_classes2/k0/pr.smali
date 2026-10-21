.class public Lk0/pr;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/pr$g;
    }
.end annotation


# static fields
.field public static w:I = 0x1


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Lo1/g0;

.field public final g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:I

.field public m:I

.field public n:Lk0/pr$g;

.field public o:Ljava/lang/Runnable;

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/pr;->c:I

    const/16 v1, 0xa

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

    iput-object v1, p0, Lk0/pr;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/pr;->e:Z

    .line 5
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    invoke-direct {v1, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/pr;->f:Lo1/g0;

    .line 6
    iput v4, p0, Lk0/pr;->g:I

    .line 7
    iput v0, p0, Lk0/pr;->h:I

    .line 8
    new-instance v1, Lk0/pr$a;

    invoke-direct {v1, p0}, Lk0/pr$a;-><init>(Lk0/pr;)V

    iput-object v1, p0, Lk0/pr;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lk0/pr$b;

    invoke-direct {v1, p0}, Lk0/pr$b;-><init>(Lk0/pr;)V

    iput-object v1, p0, Lk0/pr;->j:Ljava/lang/Runnable;

    .line 10
    iput v0, p0, Lk0/pr;->k:I

    .line 11
    iput v4, p0, Lk0/pr;->l:I

    .line 12
    iput v2, p0, Lk0/pr;->m:I

    .line 13
    new-instance v0, Lk0/pr$c;

    invoke-direct {v0, p0}, Lk0/pr$c;-><init>(Lk0/pr;)V

    iput-object v0, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lk0/pr;->p:I

    .line 15
    iput v0, p0, Lk0/pr;->q:I

    .line 16
    iput v0, p0, Lk0/pr;->r:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lk0/pr;->s:Ljava/lang/String;

    .line 18
    new-instance v0, Lk0/pr$d;

    invoke-direct {v0, p0}, Lk0/pr$d;-><init>(Lk0/pr;)V

    iput-object v0, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lk0/pr$e;

    invoke-direct {v0, p0}, Lk0/pr$e;-><init>(Lk0/pr;)V

    iput-object v0, p0, Lk0/pr;->u:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lk0/pr$f;

    invoke-direct {v0, p0}, Lk0/pr$f;-><init>(Lk0/pr;)V

    iput-object v0, p0, Lk0/pr;->v:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x2
    .end array-data

    :array_7
    .array-data 4
        0xa
        0xc
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x1a
    .end array-data
.end method

.method public static synthetic c3(Lk0/pr;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pr;->f:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/pr;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/pr;->q3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/pr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pr;->p:I

    return p0
.end method

.method public static synthetic f3(Lk0/pr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pr;->p:I

    return p1
.end method

.method public static synthetic g3(Lk0/pr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pr;->r:I

    return p0
.end method

.method public static synthetic h3(Lk0/pr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pr;->r:I

    return p1
.end method

.method public static synthetic i3(Lk0/pr;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pr;->q:I

    return p0
.end method

.method public static synthetic j3(Lk0/pr;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pr;->q:I

    return p1
.end method

.method public static synthetic k3(Lk0/pr;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pr;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l3(Lk0/pr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pr;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m3(Lk0/pr;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/pr;->r3(IIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic n3(Lk0/pr;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/pr;->a3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic o3(Lk0/pr;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/pr;->b3()V

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
    iget-object v0, p0, Lk0/pr;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pr;->i:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iget-object v0, p0, Lk0/pr;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lh0/d;->h:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lh0/d;->f:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/pr;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget v0, Lk0/nt;->a:I

    const v1, 0x5801c7

    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Lk0/pr$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk0/pr$g;-><init>(Lk0/pr;Lk0/pr$a;)V

    iput-object v0, p0, Lk0/pr;->n:Lk0/pr$g;

    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v3, p0, Lk0/pr;->n:Lk0/pr$g;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x24

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x7d

    const/16 v11, 0xa

    const/16 v13, 0x8

    const/16 v14, 0xc

    const/16 v15, 0xff

    if-eq v2, v3, :cond_14

    const/16 v3, 0x28

    const/4 v10, 0x7

    if-eq v2, v3, :cond_e

    const/16 v3, 0x29

    if-eq v2, v3, :cond_d

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    and-int/2addr v2, v15

    .line 4
    iput v2, v0, Lk0/pr;->c:I

    move v2, v8

    .line 5
    :goto_0
    iget-object v3, v0, Lk0/pr;->d:[[I

    array-length v11, v3

    if-ge v2, v11, :cond_1

    .line 6
    iget v11, v0, Lk0/pr;->c:I

    aget-object v16, v3, v2

    aget v12, v16, v8

    if-ne v11, v12, :cond_0

    if-eqz v11, :cond_1

    .line 7
    iput v2, v0, Lk0/pr;->b:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget v11, v0, Lk0/pr;->c:I

    if-eq v11, v10, :cond_6

    if-eq v11, v13, :cond_4

    and-int/2addr v1, v15

    if-ne v1, v9, :cond_2

    .line 9
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 10
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_2
    if-nez v1, :cond_1e

    .line 11
    iget v1, v0, Lk0/pr;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_3

    if-eq v1, v15, :cond_3

    .line 12
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 13
    :cond_3
    iput v15, v0, Lk0/pr;->b:I

    goto/16 :goto_6

    :cond_4
    and-int/2addr v1, v15

    if-ne v1, v9, :cond_1e

    .line 14
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_5

    .line 15
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    .line 16
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_5
    const/16 v1, 0x1a

    .line 17
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 18
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_6
    and-int/2addr v1, v15

    if-ne v1, v9, :cond_1e

    .line 19
    sget v1, Lh0/c;->E:I

    if-eq v1, v5, :cond_7

    .line 20
    invoke-static {v7, v8}, Ll0/b0;->l0(II)V

    .line 21
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    :cond_7
    const/16 v1, 0x12

    .line 22
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 23
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 24
    :pswitch_1
    sget v2, Lk0/pr;->w:I

    if-ne v2, v9, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 25
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    if-eq v1, v9, :cond_9

    if-eq v1, v7, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v1, "\u8bf7\u6302\u524d\u8fdb\u6321"

    .line 26
    invoke-virtual {v0, v1}, Lk0/pr;->p3(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    const-string v1, "\u8bf7\u7cfb\u597d\u5b89\u5168\u5e26"

    .line 27
    invoke-virtual {v0, v1}, Lk0/pr;->p3(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 31
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 32
    aget-byte v3, v1, v2

    and-int/2addr v3, v15

    add-int/lit8 v6, p2, 0x3

    .line 33
    aget-byte v7, v1, v6

    and-int/2addr v7, v15

    add-int/lit8 v10, p2, 0x4

    .line 34
    aget-byte v11, v1, v10

    and-int/2addr v11, v15

    add-int/lit8 v4, p2, 0x5

    .line 35
    aget-byte v12, v1, v4

    and-int/2addr v12, v15

    if-nez v3, :cond_a

    if-nez v7, :cond_a

    if-nez v11, :cond_a

    if-nez v12, :cond_a

    .line 36
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 37
    :cond_a
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_b

    sget v8, Ll0/c0;->h:I

    if-ne v8, v7, :cond_b

    sget v8, Ll0/c0;->i:I

    if-ne v8, v11, :cond_b

    sget v8, Ll0/c0;->j:I

    if-eq v8, v12, :cond_c

    .line 38
    :cond_b
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_c

    .line 39
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 40
    sput v5, Ll0/c0;->k:I

    .line 41
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 42
    :cond_c
    :goto_2
    sput v3, Ll0/c0;->g:I

    .line 43
    sput v7, Ll0/c0;->h:I

    .line 44
    sput v11, Ll0/c0;->i:I

    .line 45
    sput v12, Ll0/c0;->j:I

    .line 46
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 47
    aget-byte v2, v1, v6

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 48
    aget-byte v2, v1, v10

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->V0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 49
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    invoke-static {v1}, Ll0/c0;->V0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 51
    aget-byte v1, v1, v3

    .line 52
    iget-boolean v3, v0, Lk0/pr;->e:Z

    if-nez v3, :cond_1e

    const/16 v3, 0x1f4

    .line 53
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 55
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    const/16 v5, 0xb

    .line 56
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 57
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 58
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3f

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 59
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v5, v9, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v9

    aput v6, v5, v8

    .line 60
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v9

    aput v5, v3, v8

    const/16 v5, 0xf

    .line 61
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v5, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v5, v8

    .line 62
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 63
    aget-byte v3, v1, v2

    new-array v5, v9, [I

    shr-int/lit8 v6, v3, 0x7

    and-int/2addr v6, v9

    aput v6, v5, v8

    const/16 v6, 0x12

    .line 64
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v6, v9, [I

    shr-int/lit8 v7, v3, 0x6

    and-int/2addr v7, v9

    aput v7, v6, v8

    .line 65
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v6, v9, [I

    shr-int/2addr v3, v4

    and-int/lit8 v7, v3, 0x1

    aput v7, v6, v8

    .line 66
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x4d

    new-array v6, v9, [I

    and-int/2addr v3, v10

    aput v3, v6, v8

    .line 67
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v5, v9, [I

    .line 68
    aget-byte v2, v1, v2

    const/16 v6, 0xf

    and-int/2addr v2, v6

    aput v2, v5, v8

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 69
    aget-byte v3, v1, v2

    and-int/2addr v3, v15

    add-int/lit8 v4, p2, 0x5

    .line 70
    aget-byte v5, v1, v4

    and-int/2addr v5, v15

    const-string v6, "persist.fyt.reversetemp"

    .line 71
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 72
    aget-byte v3, v1, v4

    and-int/2addr v3, v15

    .line 73
    aget-byte v1, v1, v2

    and-int/lit16 v5, v1, 0xff

    :cond_f
    const/4 v1, -0x3

    const/4 v2, -0x2

    const/16 v4, 0x1b

    if-eqz v3, :cond_11

    if-eq v3, v15, :cond_10

    new-array v6, v9, [I

    aput v3, v6, v8

    .line 74
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array v3, v9, [I

    aput v1, v3, v8

    .line 75
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_11
    new-array v3, v9, [I

    aput v2, v3, v8

    .line 76
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v3, 0x1c

    if-eqz v5, :cond_13

    if-eq v5, v15, :cond_12

    new-array v1, v9, [I

    aput v5, v1, v8

    .line 77
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_12
    new-array v2, v9, [I

    aput v1, v2, v8

    .line 78
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_13
    new-array v1, v9, [I

    aput v2, v1, v8

    .line 79
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    const/16 v3, 0x419

    const/4 v10, 0x0

    if-eq v2, v9, :cond_19

    const/4 v12, 0x6

    if-eq v2, v12, :cond_18

    if-eq v2, v13, :cond_17

    const v14, 0xff00

    if-eq v2, v6, :cond_16

    if-eq v2, v5, :cond_15

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v2, p2, 0x7

    .line 81
    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    and-int/2addr v2, v14

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    div-int/2addr v1, v11

    .line 82
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v7, [I

    aput v4, v5, v8

    aput v1, v5, v9

    invoke-static {v2, v3, v5, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_16
    add-int/lit8 v2, p2, 0x4

    .line 83
    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    and-int/2addr v2, v14

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v4, v9, [I

    aput v1, v4, v8

    .line 84
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 85
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    aput v9, v4, v8

    aput v1, v4, v9

    invoke-static {v2, v3, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 86
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    .line 87
    iput-boolean v9, v0, Lk0/pr;->e:Z

    goto/16 :goto_6

    .line 88
    :cond_18
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    aput v14, v4, v8

    add-int/lit8 v11, p2, 0x3

    aget-byte v13, v1, v11

    shr-int/lit8 v12, v13, 0x6

    and-int/2addr v12, v9

    aput v12, v4, v9

    invoke-static {v2, v3, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v7, [I

    aput v6, v4, v8

    .line 89
    aget-byte v6, v1, v11

    shr-int/2addr v6, v8

    and-int/2addr v6, v9

    aput v6, v4, v9

    invoke-static {v2, v3, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v7, [I

    aput v5, v4, v8

    add-int/lit8 v5, p2, 0x4

    .line 90
    aget-byte v1, v1, v5

    shr-int/2addr v1, v8

    const/16 v5, 0xf

    and-int/2addr v1, v5

    aput v1, v4, v9

    invoke-static {v2, v3, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 91
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1a

    add-int/lit8 v2, p2, 0x3

    .line 92
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    invoke-static {v4, v2, v8}, Ll0/c0;->b(III)V

    goto :goto_4

    :cond_1a
    add-int/lit8 v2, p2, 0x3

    .line 93
    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    invoke-static {v4, v2, v8}, Ll0/c0;->a(III)V

    .line 94
    :goto_4
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    const/16 v5, 0xb

    aput v5, v4, v8

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    aput v1, v4, v9

    invoke-static {v2, v3, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_6

    .line 95
    :cond_1b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_6

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 97
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1d

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 98
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 99
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1d
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 100
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 101
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 102
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 103
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 104
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 105
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :cond_1e
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/pr;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pr;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/pr;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/pr;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->h:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->f:Lo1/y;

    iget-object v1, p0, Lk0/pr;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/pr;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->r:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/pr;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lk0/pr;->q3(I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v3, p1, v3

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xe0

    aput v0, p1, v4

    aput v3, p1, v3

    .line 3
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final a3(BLjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 2
    array-length v0, p2

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    .line 3
    aput v1, v0, v2

    const/16 v1, 0xc0

    const/4 v3, 0x1

    .line 4
    aput v1, v0, v3

    .line 5
    array-length v1, p2

    const/4 v3, 0x2

    add-int/2addr v1, v3

    aput v1, v0, v3

    const/4 v1, 0x3

    .line 6
    aput p1, v0, v1

    const/4 p1, 0x4

    .line 7
    aput v2, v0, p1

    .line 8
    :goto_0
    array-length p1, p2

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, v2, 0x5

    .line 9
    aget-byte v1, p2, v2

    aput v1, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()V
    .locals 14

    .line 1
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    sub-int v2, v0, v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/16 v6, 0xc0

    const/16 v7, 0xe3

    const/4 v8, 0x7

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x1

    if-eqz v2, :cond_1

    sub-int v2, v0, v1

    if-eq v12, v2, :cond_1

    sub-int/2addr v0, v1

    if-ne v9, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v8, [I

    aput v7, v0, v10

    aput v6, v0, v12

    aput v11, v0, v9

    aput v12, v0, v5

    const/16 v1, 0x10

    aput v1, v0, v11

    .line 2
    sget v1, Lw0/d;->i:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DataRadio.sFreq --- "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lw0/d;->i:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    sget v0, Lw0/d;->i:I

    div-int/lit8 v0, v0, 0xa

    new-array v1, v8, [I

    aput v7, v1, v10

    aput v6, v1, v12

    aput v11, v1, v9

    aput v12, v1, v5

    aput v10, v1, v11

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v3

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final p3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.execute_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "raw_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.syu.voice"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final q3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/pr;->w:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x62

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/pr;->f:Lo1/g0;

    invoke-virtual {p1, v0, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/pr;->w:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/pr;->f:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final r3(IIILjava/lang/String;)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    and-int/lit8 p2, p2, 0xf

    const/4 v6, 0x4

    shl-int/2addr p3, v6

    and-int/lit16 p3, p3, 0xf0

    or-int/2addr p2, p3

    .line 6
    aput p2, v1, v3

    int-to-byte p2, p1

    .line 7
    aput p2, v1, v6

    if-ne p1, v5, :cond_1

    .line 8
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v2, v4

    .line 9
    aget-char p2, v0, v4

    int-to-byte p2, p2

    aput p2, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
