.class public Lmodule/canbus/a;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/a$l;,
        Lmodule/canbus/a$k;
    }
.end annotation


# static fields
.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static Q:I

.field public static final R:[I

.field public static final S:[I

.field public static final T:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/a$k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public G:B

.field public H:Ljava/lang/Runnable;

.field public I:I

.field public J:Ljava/lang/Runnable;

.field public K:I

.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Lmodule/canbus/a$l;

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:B

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/a;->R:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/a;->S:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/a;->T:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0xf8
        0xf9
        0xfa
        0xfb
        0xfc
        0xfd
        0xfe
        0xff
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/a;->c:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    iput-object v2, p0, Lmodule/canbus/a;->d:[[I

    .line 4
    iput v0, p0, Lmodule/canbus/a;->e:I

    .line 5
    new-instance v2, Lmodule/canbus/a$b;

    invoke-direct {v2, p0}, Lmodule/canbus/a$b;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v2, Lmodule/canbus/a$c;

    invoke-direct {v2, p0}, Lmodule/canbus/a$c;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v2, Lmodule/canbus/a$d;

    invoke-direct {v2, p0}, Lmodule/canbus/a$d;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v2, Lmodule/canbus/a$e;

    invoke-direct {v2, p0}, Lmodule/canbus/a$e;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->j:Ljava/lang/Runnable;

    .line 9
    iput v0, p0, Lmodule/canbus/a;->k:I

    .line 10
    new-instance v2, Lmodule/canbus/a$f;

    invoke-direct {v2, p0}, Lmodule/canbus/a$f;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->l:Ljava/lang/Runnable;

    .line 11
    iput-byte v8, p0, Lmodule/canbus/a;->m:B

    .line 12
    new-instance v2, Lmodule/canbus/a$g;

    invoke-direct {v2, p0}, Lmodule/canbus/a$g;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->n:Ljava/lang/Runnable;

    .line 13
    new-instance v2, Lmodule/canbus/a$h;

    invoke-direct {v2, p0}, Lmodule/canbus/a$h;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->o:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Lmodule/canbus/a$i;

    invoke-direct {v2, p0}, Lmodule/canbus/a$i;-><init>(Lmodule/canbus/a;)V

    iput-object v2, p0, Lmodule/canbus/a;->p:Ljava/lang/Runnable;

    .line 15
    iput v0, p0, Lmodule/canbus/a;->q:I

    .line 16
    iput v5, p0, Lmodule/canbus/a;->r:I

    .line 17
    iput v3, p0, Lmodule/canbus/a;->s:I

    .line 18
    iput v6, p0, Lmodule/canbus/a;->t:I

    .line 19
    iput v7, p0, Lmodule/canbus/a;->u:I

    .line 20
    iput v8, p0, Lmodule/canbus/a;->v:I

    .line 21
    iput v9, p0, Lmodule/canbus/a;->w:I

    .line 22
    iput v10, p0, Lmodule/canbus/a;->x:I

    .line 23
    iput v11, p0, Lmodule/canbus/a;->y:I

    .line 24
    iput v12, p0, Lmodule/canbus/a;->z:I

    .line 25
    iput v1, p0, Lmodule/canbus/a;->A:I

    const/16 v1, 0xb

    .line 26
    iput v1, p0, Lmodule/canbus/a;->B:I

    const/16 v1, 0xc

    .line 27
    iput v1, p0, Lmodule/canbus/a;->C:I

    const/16 v1, 0xd

    .line 28
    iput v1, p0, Lmodule/canbus/a;->D:I

    const/16 v1, 0xe

    .line 29
    iput v1, p0, Lmodule/canbus/a;->E:I

    const/16 v1, 0xf

    .line 30
    iput v1, p0, Lmodule/canbus/a;->F:I

    .line 31
    iput-byte v0, p0, Lmodule/canbus/a;->G:B

    .line 32
    new-instance v1, Lmodule/canbus/a$j;

    invoke-direct {v1, p0}, Lmodule/canbus/a$j;-><init>(Lmodule/canbus/a;)V

    iput-object v1, p0, Lmodule/canbus/a;->H:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 33
    iput v1, p0, Lmodule/canbus/a;->I:I

    .line 34
    new-instance v1, Lmodule/canbus/a$a;

    invoke-direct {v1, p0}, Lmodule/canbus/a$a;-><init>(Lmodule/canbus/a;)V

    iput-object v1, p0, Lmodule/canbus/a;->J:Ljava/lang/Runnable;

    .line 35
    iput v0, p0, Lmodule/canbus/a;->K:I

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
        0x13
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x3
    .end array-data
.end method

.method public static synthetic d3(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/a;->A3()V

    return-void
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a;->N:I

    return v0
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a;->P:I

    return v0
.end method

.method public static synthetic g3(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/a;->z3()V

    return-void
.end method

.method public static synthetic h3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a;->O:I

    return v0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a;->Q:I

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/a;->y3()V

    return-void
.end method

.method public static synthetic k3(Lmodule/canbus/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/a;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic l3(Lmodule/canbus/a;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/a;->x3(I)V

    return-void
.end method

.method public static synthetic m3(Lmodule/canbus/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/a;->H:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic n3(Lmodule/canbus/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/a;->I:I

    return p0
.end method

.method public static synthetic o3(Lmodule/canbus/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/a;->K:I

    return p0
.end method

.method public static synthetic p3(Lmodule/canbus/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/a;->K:I

    return p1
.end method

.method public static synthetic q3(Lmodule/canbus/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/a;->K:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/a;->K:I

    return v0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a;->M:I

    return v0
.end method

.method public static synthetic s3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/a;->M:I

    return p0
.end method

.method public static synthetic t3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/a;->R:[I

    return-object v0
.end method

.method public static synthetic u3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/a;->L:I

    return v0
.end method

.method public static v3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/a;->T:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/a$k;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/a$k;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized A3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/a;->L:I

    .line 3
    sget v1, Lmodule/canbus/a;->M:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/a;->v3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/a;->S:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/a;->P:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/a;->Q:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/canbus/a;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    new-instance v0, Lmodule/canbus/a$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmodule/canbus/a$l;-><init>(Lmodule/canbus/a;Lmodule/canbus/a$b;)V

    iput-object v0, p0, Lmodule/canbus/a;->i:Lmodule/canbus/a$l;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.mxnavi.mxnavi.TO_CTRL_GPS_INFO"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.mxnavi.mxnavi.TO_CTRL_TURNING_INFO"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    iget-object v3, p0, Lmodule/canbus/a;->i:Lmodule/canbus/a$l;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a;->n:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/a;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v2, Ly0/g;->e:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v2, Lw0/e;->a:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v2, Lw0/e;->e:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v2, Lu0/c;->f:Lo1/y;

    iget-object v4, p0, Lmodule/canbus/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    const-string v4, "com.syu.canbus"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lk0/mt;->a:[Ljava/lang/String;

    .line 15
    iput v3, v2, Lk0/mt;->e:I

    .line 16
    iput v3, v2, Lk0/mt;->f:I

    .line 17
    iput v3, v2, Lk0/mt;->g:I

    .line 18
    iput v3, v2, Lk0/mt;->o:I

    .line 19
    sget v4, Lk0/nt;->c:I

    if-eq v4, v3, :cond_1

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iput-object v1, v2, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_1
    iput v3, v2, Lk0/mt;->b:I

    .line 22
    iput v3, v2, Lk0/mt;->c:I

    .line 23
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p0}, Lmodule/canbus/a;->init()V

    .line 25
    iget-object v1, p0, Lmodule/canbus/a;->J:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 26
    invoke-virtual {p0}, Lmodule/canbus/a;->w3()V

    .line 27
    iget-object v1, p0, Lmodule/canbus/a;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 28
    iget-object v1, p0, Lmodule/canbus/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6b

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x37

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x3

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x41

    const-string v13, "persist.fyt.temperature"

    const/16 v14, 0xa

    const/16 v15, 0x8

    if-eq v2, v3, :cond_15

    const/16 v3, 0x12

    const/16 v12, 0x1a

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v1, v1, v4

    and-int/2addr v2, v6

    const/16 v4, 0x1e

    .line 6
    invoke-static {v2, v7, v4}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/a;->L:I

    and-int/2addr v1, v6

    const/16 v2, 0xf8

    .line 7
    invoke-static {v1, v2, v15}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/a;->N:I

    and-int/lit16 v1, v3, 0xff

    .line 8
    invoke-static {v1, v2, v15}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/a;->O:I

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 9
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v3, 0x2af8

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v1, v1, v2

    const/16 v2, 0x6b

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    .line 12
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 13
    :pswitch_3
    sget v2, Lk0/nt;->c:I

    if-ne v2, v11, :cond_1

    .line 14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_0

    .line 16
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 17
    :cond_0
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 18
    aget-byte v1, v1, v2

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 19
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 20
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 21
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 22
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 23
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 24
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 25
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_2
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 26
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 27
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 28
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x3

    .line 30
    aget-byte v7, v1, v4

    and-int/2addr v7, v6

    add-int/lit8 v9, p2, 0x4

    .line 31
    aget-byte v11, v1, v9

    and-int/2addr v11, v6

    add-int/lit8 v10, p2, 0x5

    .line 32
    aget-byte v12, v1, v10

    and-int/2addr v12, v6

    .line 33
    sget v13, Ll0/c0;->g:I

    if-ne v13, v3, :cond_3

    sget v13, Ll0/c0;->h:I

    if-ne v13, v7, :cond_3

    sget v13, Ll0/c0;->i:I

    if-ne v13, v11, :cond_3

    sget v13, Ll0/c0;->j:I

    if-eq v13, v12, :cond_5

    .line 34
    :cond_3
    sget v13, Lu0/b;->o:I

    if-nez v13, :cond_5

    if-nez v3, :cond_4

    if-nez v7, :cond_4

    if-nez v11, :cond_4

    if-nez v12, :cond_4

    .line 35
    sget v13, Lu0/b;->p:I

    if-ne v13, v8, :cond_5

    .line 36
    sput v5, Ll0/c0;->k:I

    .line 37
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 38
    :cond_4
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 39
    :cond_5
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 40
    sput v7, Ll0/c0;->h:I

    .line 41
    sput v11, Ll0/c0;->i:I

    .line 42
    sput v12, Ll0/c0;->j:I

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 44
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 45
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 46
    aget-byte v1, v1, v10

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_8

    .line 47
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 50
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 51
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 52
    aget-byte v2, v1, v2

    new-array v5, v8, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 53
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v8

    aput v9, v5, v7

    const/16 v9, 0xb

    .line 54
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 55
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v8

    aput v5, v4, v7

    const/16 v5, 0xd

    .line 56
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 57
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v5, v8, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 58
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xf

    new-array v5, v8, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v8

    aput v9, v5, v7

    .line 59
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x26

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v5, v7

    .line 60
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v2, v1, v2

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 62
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 63
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 64
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v4, v8, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v4, v7

    .line 65
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 66
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x5

    .line 67
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    const-string v9, "persist.fyt.reversetemp"

    .line 68
    invoke-static {v9, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 69
    aget-byte v3, v1, v4

    and-int/2addr v3, v6

    .line 70
    aget-byte v2, v1, v2

    and-int/lit16 v5, v2, 0xff

    :cond_6
    const/16 v2, 0x1b

    if-eqz v3, :cond_a

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_9

    if-lt v3, v8, :cond_8

    const/16 v4, 0x11

    if-gt v3, v4, :cond_8

    mul-int/lit8 v4, v3, 0x5

    add-int/lit16 v4, v4, 0xaf

    .line 71
    invoke-static {v13, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_7

    mul-int/lit8 v3, v3, 0x9

    add-int/lit16 v4, v3, 0x27b

    :cond_7
    new-array v3, v8, [I

    aput v4, v3, v7

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v3, v8, [I

    const/4 v4, -0x1

    aput v4, v3, v7

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v3, v8, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v3, v8, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x1c

    if-eqz v5, :cond_e

    const/16 v3, 0x1f

    if-eq v5, v3, :cond_d

    if-lt v5, v8, :cond_c

    const/16 v3, 0x11

    if-gt v5, v3, :cond_c

    mul-int/lit8 v3, v5, 0x5

    add-int/lit16 v3, v3, 0xaf

    .line 76
    invoke-static {v13, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_b

    mul-int/lit8 v5, v5, 0x9

    add-int/lit16 v3, v5, 0x27b

    :cond_b
    new-array v4, v8, [I

    aput v3, v4, v7

    .line 77
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v3, v8, [I

    const/4 v4, -0x1

    aput v4, v3, v7

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array v3, v8, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    new-array v3, v8, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 80
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x25

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 81
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 82
    aget-byte v1, v1, v4

    const/16 v2, 0x36

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 83
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v7

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v11

    aput v1, v3, v7

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 88
    :pswitch_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 90
    aget-byte v1, v1, v4

    and-int/2addr v2, v6

    .line 91
    iput v2, v0, Lmodule/canbus/a;->c:I

    move v2, v7

    .line 92
    :goto_3
    iget-object v4, v0, Lmodule/canbus/a;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_10

    .line 93
    iget v5, v0, Lmodule/canbus/a;->c:I

    aget-object v9, v4, v2

    aget v9, v9, v7

    if-ne v5, v9, :cond_f

    if-eqz v5, :cond_10

    .line 94
    iput v2, v0, Lmodule/canbus/a;->b:I

    goto :goto_4

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 95
    :cond_10
    :goto_4
    iget v5, v0, Lmodule/canbus/a;->c:I

    if-eq v5, v10, :cond_13

    and-int/2addr v1, v6

    if-ne v1, v8, :cond_11

    .line 96
    array-length v1, v4

    if-ge v2, v1, :cond_22

    .line 97
    iget-byte v1, v0, Lmodule/canbus/a;->G:B

    if-nez v1, :cond_22

    add-int/2addr v1, v8

    int-to-byte v1, v1

    .line 98
    iput-byte v1, v0, Lmodule/canbus/a;->G:B

    .line 99
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 100
    iget-object v1, v0, Lmodule/canbus/a;->H:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_11
    if-nez v1, :cond_22

    .line 101
    iget v1, v0, Lmodule/canbus/a;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_12

    if-eq v1, v6, :cond_12

    .line 102
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 103
    iget-object v1, v0, Lmodule/canbus/a;->H:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 104
    iput-byte v7, v0, Lmodule/canbus/a;->G:B

    .line 105
    :cond_12
    iput v6, v0, Lmodule/canbus/a;->b:I

    goto/16 :goto_8

    :cond_13
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_22

    .line 106
    sget v1, Lh0/c;->E:I

    if-eq v1, v11, :cond_14

    if-eq v1, v10, :cond_14

    .line 107
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 108
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 109
    :cond_14
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    .line 110
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v2, v1, v2

    if-eq v2, v8, :cond_1b

    if-eq v2, v5, :cond_17

    if-eq v2, v11, :cond_16

    goto/16 :goto_8

    :cond_16
    add-int/lit8 v2, p2, 0x3

    .line 112
    aget-byte v1, v1, v2

    const/16 v2, 0x63

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v8

    aput v1, v3, v7

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_17
    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 115
    aget-byte v5, v1, v4

    shl-int/2addr v5, v15

    const v9, 0xff00

    and-int/2addr v5, v9

    add-int/lit8 v11, p2, 0x4

    aget-byte v12, v1, v11

    shl-int/2addr v12, v7

    and-int/2addr v12, v6

    or-int/2addr v5, v12

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 116
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v9

    aget-byte v5, v1, v11

    shl-int/2addr v5, v7

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 117
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 118
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 119
    aget-byte v5, v1, v4

    shl-int/2addr v5, v15

    and-int/2addr v5, v9

    add-int/lit8 v11, p2, 0xa

    aget-byte v12, v1, v11

    shl-int/2addr v12, v7

    and-int/2addr v12, v6

    or-int/2addr v5, v12

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 120
    aget-byte v2, v1, v4

    shl-int/2addr v2, v15

    and-int/2addr v2, v9

    aget-byte v3, v1, v11

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    .line 121
    invoke-static {v13, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_19

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_18

    const/high16 v3, 0x10000

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x9

    .line 122
    div-int/2addr v3, v10

    rsub-int v2, v3, 0x528

    goto :goto_5

    :cond_18
    mul-int/lit8 v2, v2, 0x9

    .line 123
    div-int/2addr v2, v10

    add-int/lit16 v2, v2, 0x528

    .line 124
    :goto_5
    div-int/2addr v2, v14

    mul-int/2addr v2, v14

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    const/4 v3, -0x1

    and-int/2addr v2, v3

    goto :goto_6

    :cond_19
    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1a

    const/high16 v3, 0x10000

    sub-int/2addr v3, v2

    rsub-int v2, v3, 0x3e8

    goto :goto_6

    :cond_1a
    add-int/lit16 v2, v2, 0x3e8

    .line 125
    :goto_6
    invoke-static {v2}, Lu0/d;->B3(I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 126
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    shl-int/2addr v5, v15

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 127
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_1b
    add-int/lit8 v2, p2, 0x3

    .line 128
    aget-byte v1, v1, v2

    const/16 v2, 0x65

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 129
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 130
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 131
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 132
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 133
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 134
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 135
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 136
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 137
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_1c
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 138
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 139
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_1d
    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 140
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/lit8 v6, v6, 0x7

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    .line 141
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 142
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 143
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 144
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 145
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 146
    :cond_1e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_8

    :cond_1f
    add-int/lit8 v2, p2, 0x2

    .line 147
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    .line 148
    iget v2, v0, Lmodule/canbus/a;->e:I

    if-eq v2, v1, :cond_22

    if-ne v1, v8, :cond_20

    .line 149
    sget v2, Ly0/f;->i:I

    if-eq v2, v8, :cond_21

    .line 150
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 151
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_20
    if-ne v2, v8, :cond_21

    if-nez v1, :cond_21

    .line 152
    sget v2, Ly0/f;->i:I

    if-ne v2, v8, :cond_21

    .line 153
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 154
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 155
    :cond_21
    :goto_7
    iput v1, v0, Lmodule/canbus/a;->e:I

    :cond_22
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
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
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/a;->i:Lmodule/canbus/a$l;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Lmodule/canbus/a;->i:Lmodule/canbus/a$l;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lmodule/canbus/a;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/a;->J:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/a;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lmodule/canbus/a;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    iget-object v1, p0, Lmodule/canbus/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/a;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lmodule/canbus/a;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7a

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

    const/4 p3, 0x5

    if-eqz p1, :cond_4

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, p3, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p3, [I

    const/16 p3, 0xe3

    const/4 v3, 0x0

    aput p3, p1, v3

    const/16 p3, 0xc6

    aput p3, p1, p4

    aput v2, p1, v2

    aput v3, p1, v0

    .line 5
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, p3, [I

    .line 6
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, p3, [I

    .line 7
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xa7
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x41
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/a;->R:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/a;->M:I

    :cond_0
    return-void
.end method

.method public a3()V
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/a;->b3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_6

    const/16 v11, 0xc3

    const/16 v12, 0x9

    if-eq v0, v5, :cond_3

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_1

    if-eq v0, v12, :cond_1

    new-array v0, v6, [I

    .line 3
    fill-array-data v0, :array_0

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_0
    if-ge v10, v6, :cond_0

    add-int/lit8 v2, v10, 0x1

    .line 4
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :cond_1
    new-array v0, v6, [I

    aput v11, v0, v10

    aput v7, v0, v9

    .line 6
    sget v9, Lu0/b;->s3:I

    and-int/lit16 v11, v9, 0xff

    aput v11, v0, v8

    shr-int/lit8 v8, v9, 0x8

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v4

    .line 7
    sget v4, Lu0/b;->r3:I

    and-int/lit16 v8, v4, 0xff

    aput v8, v0, v5

    shr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v2

    .line 8
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v7

    .line 9
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_1
    if-ge v10, v6, :cond_2

    add-int/lit8 v2, v10, 0x1

    .line 10
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :cond_3
    new-array v0, v6, [I

    aput v11, v0, v10

    aput v7, v0, v9

    .line 12
    sget v9, Ln0/j4;->b:I

    if-ne v9, v6, :cond_4

    .line 13
    sget v9, Lo0/e;->C:I

    aput v9, v0, v4

    .line 14
    sget v4, Lo0/e;->B:I

    aput v4, v0, v8

    goto :goto_2

    .line 15
    :cond_4
    sget v9, Lo0/e;->C:I

    aput v9, v0, v8

    .line 16
    sget v8, Lo0/e;->B:I

    aput v8, v0, v4

    :goto_2
    aput v10, v0, v5

    aput v10, v0, v2

    .line 17
    sget v2, Lo0/e;->r:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v0, v7

    .line 18
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v0, v1

    new-array v1, v12, [I

    aput v3, v1, v10

    :goto_3
    if-ge v10, v6, :cond_5

    add-int/lit8 v2, v10, 0x1

    .line 19
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_8

    :cond_6
    new-array v0, v7, [I

    const/16 v11, 0xc2

    aput v11, v0, v10

    aput v5, v0, v9

    .line 21
    sget v11, Lw0/d;->i:I

    .line 22
    sget v12, Lw0/d;->j:I

    .line 23
    sget v13, Lw0/d;->h:I

    const/high16 v14, 0x10000

    if-ne v13, v14, :cond_7

    aput v9, v0, v8

    if-lt v12, v14, :cond_b

    :goto_4
    sub-int/2addr v12, v14

    goto :goto_5

    :cond_7
    const v15, 0x10001

    if-ne v13, v15, :cond_8

    aput v8, v0, v8

    if-lt v12, v14, :cond_b

    goto :goto_4

    :cond_8
    const v15, 0x10002

    if-ne v13, v15, :cond_9

    aput v4, v0, v8

    if-lt v12, v14, :cond_b

    goto :goto_4

    :cond_9
    if-nez v13, :cond_a

    const/16 v9, 0x11

    aput v9, v0, v8

    goto :goto_5

    :cond_a
    if-ne v13, v9, :cond_b

    const/16 v9, 0x12

    aput v9, v0, v8

    :cond_b
    :goto_5
    and-int/lit16 v8, v11, 0xff

    aput v8, v0, v4

    shr-int/lit8 v4, v11, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v5

    .line 24
    rem-int/lit8 v4, v12, 0x6

    if-nez v4, :cond_c

    if-eqz v12, :cond_c

    aput v7, v0, v2

    goto :goto_6

    :cond_c
    aput v4, v0, v2

    :goto_6
    new-array v1, v1, [I

    aput v3, v1, v10

    :goto_7
    if-ge v10, v7, :cond_d

    add-int/lit8 v2, v10, 0x1

    .line 25
    aget v3, v0, v10

    aput v3, v1, v2

    move v10, v2

    goto :goto_7

    .line 26
    :cond_d
    invoke-static {v1}, Lz/k;->s([I)V

    :cond_e
    :goto_8
    return-void

    :array_0
    .array-data 4
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public b3()V
    .locals 9

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x30

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0xc

    goto :goto_2

    :pswitch_1
    move v1, v7

    goto :goto_1

    .line 2
    :pswitch_2
    sget v0, Ln0/j4;->b:I

    const/16 v8, 0x20

    if-ne v0, v8, :cond_0

    move v1, v3

    :cond_0
    const/16 v8, 0x11

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x6

    const/16 v8, 0x12

    goto :goto_2

    :pswitch_4
    move v1, v4

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x7

    goto :goto_2

    .line 3
    :pswitch_6
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v7

    .line 4
    :goto_0
    sget v0, Ln0/j4;->b:I

    if-ne v0, v3, :cond_4

    const/16 v8, 0x21

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    goto :goto_2

    :pswitch_7
    const/16 v1, 0xb

    goto :goto_2

    :pswitch_8
    const/16 v8, 0x40

    move v1, v2

    goto :goto_2

    :pswitch_9
    move v1, v6

    :goto_1
    move v8, v1

    goto :goto_2

    :pswitch_a
    move v1, v7

    :goto_2
    new-array v0, v2, [I

    const/16 v2, 0xe3

    aput v2, v0, v7

    const/16 v2, 0xc0

    aput v2, v0, v6

    aput v5, v0, v5

    aput v1, v0, v4

    const/4 v1, 0x4

    aput v8, v0, v1

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    .line 3
    :cond_0
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    .line 4
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x1e

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/a;->T:Lo1/f;

    new-instance v1, Lmodule/canbus/a$k;

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/a$k;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/a$k;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/a$k;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/a$k;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lmodule/canbus/a$k;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final w3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/a;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/a;->R2([I)V

    return-void
.end method

.method public final x3(I)V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0xa2

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x8

    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0x80

    aput v4, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 p1, 0x5

    aput v2, v0, p1

    const/4 p1, 0x6

    aput v2, v0, p1

    const/4 p1, 0x7

    aput v2, v0, p1

    aput v2, v0, v3

    const/16 p1, 0x9

    aput v2, v0, p1

    const/16 p1, 0xa

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final declared-synchronized y3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/a;->Q:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/a;->v3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/a;->P:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/a;->v3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
