.class public Lk0/tq;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static K:I = 0xff

.field public static L:I = 0x0

.field public static M:I = 0x0

.field public static N:I = 0x0

.field public static O:I = 0x14

.field public static P:I = 0x16

.field public static Q:I

.field public static R:I

.field public static S:I

.field public static T:I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public F:I

.field public G:Lo1/g0;

.field public H:I

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:[[I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/tq;->b:I

    .line 3
    iput v0, p0, Lk0/tq;->c:I

    .line 4
    iput v0, p0, Lk0/tq;->d:I

    .line 5
    iput v0, p0, Lk0/tq;->e:I

    .line 6
    iput-boolean v0, p0, Lk0/tq;->f:Z

    .line 7
    iput-boolean v0, p0, Lk0/tq;->g:Z

    .line 8
    iput v0, p0, Lk0/tq;->i:I

    const/16 v1, 0x18

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 9
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

    const/16 v6, 0x8

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v7, 0x9

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v8, 0xa

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v9, 0xb

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v10, 0xc

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v11, 0xd

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v12, 0xe

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v12, 0xf

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v12, 0x10

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v12, 0x11

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v12, 0x12

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v12, 0x13

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v12, 0x14

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v12, 0x15

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v12, 0x16

    aput-object v3, v1, v12

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/tq;->j:[[I

    .line 10
    new-instance v1, Lk0/tq$c;

    invoke-direct {v1, p0}, Lk0/tq$c;-><init>(Lk0/tq;)V

    iput-object v1, p0, Lk0/tq;->k:Ljava/lang/Runnable;

    .line 11
    iput v0, p0, Lk0/tq;->l:I

    .line 12
    new-instance v1, Lk0/tq$d;

    invoke-direct {v1, p0}, Lk0/tq$d;-><init>(Lk0/tq;)V

    iput-object v1, p0, Lk0/tq;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lk0/tq$e;

    invoke-direct {v1, p0}, Lk0/tq$e;-><init>(Lk0/tq;)V

    iput-object v1, p0, Lk0/tq;->n:Ljava/lang/Runnable;

    .line 14
    iput v0, p0, Lk0/tq;->o:I

    .line 15
    new-instance v1, Lk0/tq$f;

    invoke-direct {v1, p0}, Lk0/tq$f;-><init>(Lk0/tq;)V

    iput-object v1, p0, Lk0/tq;->p:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Lk0/tq;->q:I

    .line 17
    new-instance v1, Lk0/tq$g;

    invoke-direct {v1, p0}, Lk0/tq$g;-><init>(Lk0/tq;)V

    iput-object v1, p0, Lk0/tq;->r:Ljava/lang/Runnable;

    .line 18
    iput v0, p0, Lk0/tq;->s:I

    .line 19
    iput-boolean v0, p0, Lk0/tq;->t:Z

    .line 20
    iput-boolean v0, p0, Lk0/tq;->u:Z

    .line 21
    iput-boolean v0, p0, Lk0/tq;->v:Z

    .line 22
    iput v5, p0, Lk0/tq;->w:I

    .line 23
    iput v6, p0, Lk0/tq;->x:I

    .line 24
    iput v7, p0, Lk0/tq;->y:I

    .line 25
    iput v8, p0, Lk0/tq;->z:I

    .line 26
    iput v9, p0, Lk0/tq;->A:I

    .line 27
    iput v11, p0, Lk0/tq;->B:I

    .line 28
    iput v10, p0, Lk0/tq;->C:I

    const/16 v1, 0x19

    .line 29
    iput v1, p0, Lk0/tq;->D:I

    .line 30
    iput v4, p0, Lk0/tq;->E:I

    .line 31
    iput v0, p0, Lk0/tq;->F:I

    .line 32
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/tq;->G:Lo1/g0;

    .line 33
    iput v0, p0, Lk0/tq;->H:I

    .line 34
    new-instance v0, Lk0/tq$h;

    invoke-direct {v0, p0}, Lk0/tq$h;-><init>(Lk0/tq;)V

    iput-object v0, p0, Lk0/tq;->I:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lk0/tq$i;

    invoke-direct {v0, p0}, Lk0/tq$i;-><init>(Lk0/tq;)V

    iput-object v0, p0, Lk0/tq;->J:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x22
        0x36
    .end array-data

    :array_9
    .array-data 4
        0x23
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x24
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x25
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x26
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x27
        0x36
    .end array-data

    :array_e
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x29
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x2a
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x2b
        0x1f
    .end array-data

    :array_12
    .array-data 4
        0x2c
        0x1e
    .end array-data

    :array_13
    .array-data 4
        0x2d
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x2e
        0x22
    .end array-data

    :array_15
    .array-data 4
        0x2f
        0x23
    .end array-data

    :array_16
    .array-data 4
        0x30
        0x20
    .end array-data

    :array_17
    .array-data 4
        0x31
        0x21
    .end array-data
.end method

.method public static synthetic b3(Lk0/tq;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->a3(Z)V

    return-void
.end method

.method public static synthetic c3(Lk0/tq;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/tq;->f:Z

    return p0
.end method

.method public static synthetic d3(Lk0/tq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->r3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/tq;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/tq;->f:Z

    return p1
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lk0/tq;->P:I

    return v0
.end method

.method public static synthetic g3(Lk0/tq;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/tq;->G:Lo1/g0;

    return-object p0
.end method

.method public static synthetic h3(Lk0/tq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->v3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/tq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->t3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/tq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->n3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/tq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->u3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/tq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->p3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/tq;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/tq;->o3(I)V

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
    iget-object v0, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/tq;->I:Ljava/lang/Runnable;

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

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->l:I

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    .line 12
    iput v1, v0, Lk0/mt;->o:I

    .line 13
    iput v1, v0, Lk0/mt;->h:I

    .line 14
    iput v1, v0, Lk0/mt;->p:I

    .line 15
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 17
    :cond_0
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v3, p0, Lk0/tq;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v3, Lk0/tq$a;

    invoke-direct {v3, p0}, Lk0/tq$a;-><init>(Lk0/tq;)V

    invoke-virtual {v0, v3}, Lo1/z;->a(Lo1/p;)V

    .line 19
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/tq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/tq;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    iget-object v0, p0, Lk0/tq;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 22
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v3, p0, Lk0/tq;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 24
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ls18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Lt18"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const/16 v0, 0xb

    .line 26
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    const-string v2, "4"

    const/4 v3, 0x4

    const-string v4, "8918L"

    const-string v5, "persist.lesc.customer_platform"

    if-nez v0, :cond_4

    const/16 v0, 0x9

    .line 27
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    .line 28
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "sys.fyt.cvbs_2.bus_width"

    .line 29
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 30
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lk0/qt;->r0()V

    .line 32
    :cond_3
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 33
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lk0/qt;->r0()V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "sys.fyt.cvbs_0.bus_width"

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 36
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lk0/qt;->r0()V

    .line 38
    :cond_5
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 39
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lk0/qt;->r0()V

    :cond_6
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9901c8 -> :sswitch_0
        0x9b01c8 -> :sswitch_0
        0xb001c8 -> :sswitch_0
        0xb101c8 -> :sswitch_0
        0xb201c8 -> :sswitch_0
        0xbc01c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const-wide/16 v6, 0x64

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x2

    const/4 v14, 0x6

    const/4 v15, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/16 v10, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_19

    const/16 v3, 0x27

    if-eq v2, v3, :cond_11

    const/16 v3, 0x29

    if-eq v2, v3, :cond_10

    const/16 v3, 0x30

    if-eq v2, v3, :cond_f

    const/16 v3, 0x35

    if-eq v2, v3, :cond_9

    const/16 v3, 0x39

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v5, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v5

    aput v10, v3, v4

    .line 4
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    aput v10, v3, v4

    .line 5
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v3, v5, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    aput v10, v3, v4

    .line 6
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v5

    aput v10, v3, v4

    .line 7
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v5, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v5

    aput v10, v3, v4

    .line 8
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v5

    aput v8, v3, v4

    .line 9
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v5

    aput v8, v3, v4

    .line 10
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v5

    aput v2, v3, v4

    .line 11
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    .line 12
    iget v2, v0, Lk0/tq;->c:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v8, v1, v3

    shr-int/2addr v8, v4

    and-int/2addr v8, v5

    if-eq v2, v8, :cond_4c

    .line 13
    aget-byte v1, v1, v3

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    iput v1, v0, Lk0/tq;->c:I

    .line 14
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_4c

    if-ne v1, v5, :cond_1

    .line 15
    iput v9, v0, Lk0/tq;->d:I

    goto/16 :goto_15

    :cond_1
    if-nez v1, :cond_4c

    .line 16
    iput v9, v0, Lk0/tq;->d:I

    .line 17
    iget-boolean v1, v0, Lk0/tq;->f:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iget v1, v0, Lk0/tq;->e:I

    invoke-static {v1}, Ly0/h;->t0(I)V

    .line 19
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 20
    invoke-static {v14, v4}, Ll0/b0;->l0(II)V

    .line 21
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    const-wide/16 v1, 0x15e

    .line 22
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "false"

    .line 23
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_2
    iput-boolean v4, v0, Lk0/tq;->f:Z

    goto/16 :goto_15

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 25
    aget-byte v3, v1, v2

    and-int/2addr v3, v10

    add-int/lit8 v6, p2, 0x3

    .line 26
    aget-byte v7, v1, v6

    and-int/2addr v7, v10

    add-int/lit8 v8, p2, 0x4

    .line 27
    aget-byte v11, v1, v8

    and-int/2addr v11, v10

    add-int/lit8 v12, p2, 0x5

    .line 28
    aget-byte v13, v1, v12

    and-int/2addr v13, v10

    if-nez v3, :cond_3

    if-nez v7, :cond_3

    if-nez v11, :cond_3

    if-nez v13, :cond_3

    .line 29
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 30
    :cond_3
    sget v4, Ll0/c0;->g:I

    if-ne v4, v3, :cond_4

    sget v4, Ll0/c0;->h:I

    if-ne v4, v7, :cond_4

    sget v4, Ll0/c0;->i:I

    if-ne v4, v11, :cond_4

    sget v4, Ll0/c0;->j:I

    if-eq v4, v13, :cond_5

    .line 31
    :cond_4
    iget v4, v0, Lk0/tq;->c:I

    if-nez v4, :cond_5

    .line 32
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 33
    sput v9, Ll0/c0;->k:I

    .line 34
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 35
    :cond_5
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 36
    sput v7, Ll0/c0;->h:I

    .line 37
    sput v11, Ll0/c0;->i:I

    .line 38
    sput v13, Ll0/c0;->j:I

    .line 39
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 40
    aget-byte v2, v1, v6

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 41
    aget-byte v2, v1, v8

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 42
    aget-byte v1, v1, v12

    and-int/2addr v1, v10

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_15

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 44
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 45
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 46
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_15

    .line 47
    :cond_6
    iget v2, v0, Lk0/tq;->b:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v6, v1, v3

    if-eq v2, v6, :cond_4c

    .line 48
    aget-byte v1, v1, v3

    iput v1, v0, Lk0/tq;->b:I

    if-ne v1, v5, :cond_7

    .line 49
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 50
    iput-boolean v5, v0, Lk0/tq;->g:Z

    .line 51
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_15

    :cond_7
    if-nez v1, :cond_4c

    .line 52
    iget-boolean v1, v0, Lk0/tq;->g:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    invoke-static {v14, v4}, Ll0/b0;->l0(II)V

    .line 54
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    .line 55
    :cond_8
    iput-boolean v4, v0, Lk0/tq;->g:Z

    goto/16 :goto_15

    :cond_9
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 56
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a

    add-int/lit8 v2, p2, 0x2

    .line 57
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v5

    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    invoke-static {v3, v2, v4}, Ll0/c0;->b(III)V

    goto :goto_2

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v5

    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    invoke-static {v3, v2, v4}, Ll0/c0;->a(III)V

    :goto_2
    const/16 v2, 0x68

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0x4

    .line 59
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v10

    or-int/2addr v6, v7

    aput v6, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0x9

    .line 60
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xa

    aget-byte v7, v1, v7

    shl-int/2addr v7, v11

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xb

    aget-byte v7, v1, v7

    and-int/2addr v7, v10

    or-int/2addr v6, v7

    aput v6, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0xc

    .line 61
    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    aput v6, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0xd

    .line 62
    aget-byte v7, v1, v6

    shr-int/2addr v7, v12

    and-int/2addr v7, v5

    aput v7, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v5, [I

    .line 63
    aget-byte v6, v1, v6

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 64
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    if-eq v1, v10, :cond_e

    if-nez v1, :cond_b

    goto :goto_5

    .line 65
    :cond_b
    sget-object v2, Lk0/nt;->g:[I

    const/16 v3, 0x25

    aget v2, v2, v3

    if-eq v2, v5, :cond_d

    const-string v2, "persist.fyt.temperature"

    .line 66
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_c

    goto :goto_3

    :cond_c
    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, 0x258

    goto :goto_4

    :cond_d
    :goto_3
    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    .line 67
    :goto_4
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_15

    .line 68
    :cond_e
    :goto_5
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_15

    .line 69
    :cond_f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v10

    const/16 v3, 0x1e78

    invoke-static {v2, v1, v4, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_15

    .line 71
    :cond_11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "persist.lesc.customer_platform  == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "persist.lesc.customer_platform"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x2

    .line 72
    aget-byte v6, v1, v3

    shr-int/2addr v6, v12

    and-int/2addr v6, v5

    aput v6, v2, v4

    const/16 v6, 0xa

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 73
    aget-byte v7, v1, v3

    shr-int/2addr v7, v14

    and-int/2addr v7, v5

    aput v7, v2, v4

    const/16 v7, 0xb

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 74
    aget-byte v11, v1, v3

    shr-int/2addr v11, v9

    and-int/2addr v11, v5

    aput v11, v2, v4

    const/16 v11, 0xc

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 75
    aget-byte v11, v1, v3

    shr-int/2addr v11, v8

    and-int/2addr v11, v5

    aput v11, v2, v4

    const/16 v11, 0xd

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v11, v5, [I

    .line 76
    aget-byte v16, v1, v3

    shr-int/lit8 v13, v16, 0x2

    and-int/2addr v13, v5

    aput v13, v11, v4

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v11, v5, [I

    .line 77
    aget-byte v13, v1, v3

    shr-int/2addr v13, v5

    and-int/2addr v13, v5

    aput v13, v11, v4

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v11, v5, [I

    .line 78
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v11, v4

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x3

    .line 79
    aget-byte v11, v1, v3

    shr-int/2addr v11, v12

    and-int/2addr v11, v5

    aput v11, v2, v4

    const/16 v11, 0x12

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v11, v5, [I

    .line 80
    aget-byte v13, v1, v3

    shr-int/2addr v13, v14

    and-int/2addr v13, v5

    aput v13, v11, v4

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v11, v5, [I

    .line 81
    aget-byte v13, v1, v3

    shr-int/2addr v13, v9

    and-int/2addr v13, v5

    aput v13, v11, v4

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v11, v5, [I

    .line 82
    aget-byte v13, v1, v3

    shr-int/2addr v13, v8

    and-int/2addr v13, v5

    aput v13, v11, v4

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v11, v5, [I

    .line 83
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    aput v3, v11, v4

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 84
    aget-byte v3, v1, v2

    and-int/2addr v3, v10

    add-int/lit8 v11, p2, 0x5

    .line 85
    aget-byte v13, v1, v11

    and-int/2addr v13, v10

    const-string v7, "persist.fyt.reversetemp"

    .line 86
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 87
    aget-byte v3, v1, v11

    and-int/2addr v3, v10

    .line 88
    aget-byte v2, v1, v2

    and-int/lit16 v13, v2, 0xff

    :cond_12
    if-eqz v3, :cond_14

    if-eq v3, v10, :cond_13

    const/16 v2, 0x1b

    new-array v7, v5, [I

    aput v3, v7, v4

    .line 89
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    const/16 v2, 0x1b

    new-array v3, v5, [I

    const/4 v7, -0x3

    aput v7, v3, v4

    .line 90
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_14
    const/16 v2, 0x1b

    new-array v3, v5, [I

    const/4 v7, -0x2

    aput v7, v3, v4

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    if-eqz v13, :cond_16

    if-eq v13, v10, :cond_15

    const/16 v2, 0x1c

    new-array v3, v5, [I

    aput v13, v3, v4

    .line 92
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    const/16 v2, 0x1c

    new-array v3, v5, [I

    const/4 v7, -0x3

    aput v7, v3, v4

    .line 93
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    const/16 v2, 0x1c

    new-array v3, v5, [I

    const/4 v7, -0x2

    aput v7, v3, v4

    .line 94
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x36

    new-array v3, v5, [I

    add-int/lit8 v7, p2, 0x6

    .line 95
    aget-byte v11, v1, v7

    shr-int/2addr v11, v12

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v5, [I

    .line 96
    aget-byte v11, v1, v7

    shr-int/2addr v11, v14

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v5, [I

    .line 97
    aget-byte v11, v1, v7

    shr-int/2addr v11, v9

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v5, [I

    .line 98
    aget-byte v11, v1, v7

    shr-int/2addr v11, v8

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v5, [I

    .line 99
    aget-byte v11, v1, v7

    shr-int/2addr v11, v15

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v3, v5, [I

    .line 100
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v15

    aput v7, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    add-int/lit8 v3, p2, 0x7

    .line 101
    aget-byte v7, v1, v3

    shr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    aput v7, v2, v4

    const/16 v7, 0x1d

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 102
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v4

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v5, [I

    add-int/lit8 v7, p2, 0x8

    .line 103
    aget-byte v11, v1, v7

    shr-int/2addr v11, v14

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v5, [I

    .line 104
    aget-byte v11, v1, v7

    shr-int/2addr v11, v9

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x45

    new-array v3, v5, [I

    .line 105
    aget-byte v11, v1, v7

    shr-int/2addr v11, v8

    and-int/2addr v11, v5

    aput v11, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v5, [I

    .line 106
    aget-byte v7, v1, v7

    shr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0xf

    aput v7, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 107
    aget-byte v3, v1, v2

    and-int/2addr v3, v10

    if-eqz v3, :cond_18

    if-eq v3, v10, :cond_17

    const/16 v3, 0x28

    new-array v7, v5, [I

    .line 108
    aget-byte v2, v1, v2

    and-int/2addr v2, v10

    aput v2, v7, v4

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_17
    const/16 v2, 0x28

    new-array v3, v5, [I

    const/4 v7, -0x3

    aput v7, v3, v4

    .line 109
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_18
    const/16 v2, 0x28

    new-array v3, v5, [I

    const/4 v7, -0x2

    aput v7, v3, v4

    .line 110
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0x2a

    new-array v3, v5, [I

    add-int/lit8 v7, p2, 0xa

    .line 111
    aget-byte v10, v1, v7

    shr-int/2addr v10, v12

    and-int/2addr v10, v5

    aput v10, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x56

    new-array v3, v5, [I

    .line 112
    aget-byte v10, v1, v7

    shr-int/2addr v10, v14

    and-int/2addr v10, v5

    aput v10, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v5, [I

    .line 113
    aget-byte v10, v1, v7

    shr-int/lit8 v9, v10, 0x5

    and-int/2addr v9, v5

    aput v9, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v5, [I

    .line 114
    aget-byte v9, v1, v7

    shr-int/2addr v9, v8

    and-int/2addr v9, v5

    aput v9, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x51

    new-array v3, v5, [I

    .line 115
    aget-byte v7, v1, v7

    shr-int/2addr v7, v15

    and-int/2addr v7, v5

    aput v7, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x1

    .line 116
    aget-byte v2, v1, v2

    if-lt v2, v6, :cond_4c

    const/16 v2, 0x5d

    new-array v3, v5, [I

    const/16 v6, 0xb

    add-int/lit8 v6, p2, 0xb

    .line 117
    aget-byte v7, v1, v6

    shr-int/2addr v7, v14

    and-int/2addr v7, v15

    aput v7, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5e

    new-array v3, v5, [I

    .line 118
    aget-byte v1, v1, v6

    shr-int/2addr v1, v8

    and-int/2addr v1, v15

    aput v1, v3, v4

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_15

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 119
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 120
    aget-byte v1, v1, v3

    and-int/2addr v2, v10

    .line 121
    iput v2, v0, Lk0/tq;->i:I

    move v2, v4

    .line 122
    :goto_9
    iget-object v3, v0, Lk0/tq;->j:[[I

    array-length v11, v3

    if-ge v2, v11, :cond_1b

    .line 123
    iget v11, v0, Lk0/tq;->i:I

    aget-object v17, v3, v2

    aget v6, v17, v4

    if-ne v11, v6, :cond_1a

    if-eqz v11, :cond_1b

    .line 124
    iput v2, v0, Lk0/tq;->h:I

    goto :goto_a

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v6, 0x64

    const/16 v11, 0x8

    goto :goto_9

    .line 125
    :cond_1b
    :goto_a
    iget v6, v0, Lk0/tq;->i:I

    const-string v7, "persist.fyt.lzgmtype"

    if-eq v6, v5, :cond_49

    if-eq v6, v13, :cond_46

    if-eq v6, v15, :cond_42

    if-eq v6, v8, :cond_3e

    if-eq v6, v14, :cond_3b

    if-eq v6, v12, :cond_38

    const/16 v11, 0x22

    if-eq v6, v11, :cond_37

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_1c

    .line 126
    array-length v1, v3

    if-ge v2, v1, :cond_4c

    .line 127
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_1c
    if-nez v1, :cond_4c

    .line 128
    iget v1, v0, Lk0/tq;->h:I

    array-length v2, v3

    if-ge v1, v2, :cond_1d

    if-eq v1, v10, :cond_1d

    .line 129
    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 130
    :cond_1d
    iput v10, v0, Lk0/tq;->h:I

    goto/16 :goto_15

    .line 131
    :pswitch_3
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_20

    .line 132
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_1f

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_1e

    new-array v1, v9, [I

    .line 133
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_1e
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 134
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_1f
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    const/16 v2, 0x1d

    .line 135
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 136
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_20
    const/16 v2, 0x1d

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 137
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 138
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 139
    :pswitch_4
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_23

    .line 140
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_21

    :goto_b
    and-int/lit16 v2, v1, 0xff

    if-ge v4, v2, :cond_4c

    new-array v2, v9, [I

    .line 141
    fill-array-data v2, :array_2

    invoke-static {v2}, Lz/k;->s([I)V

    const-wide/16 v2, 0x64

    .line 142
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v2, v9, [I

    .line 143
    fill-array-data v2, :array_3

    invoke-static {v2}, Lz/k;->s([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_21
    move v2, v4

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_22

    const/16 v3, 0x1e

    .line 144
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_22
    const/16 v3, 0x1e

    .line 145
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_23
    const/16 v3, 0x1e

    move v2, v4

    :goto_d
    and-int/lit16 v6, v1, 0xff

    if-ge v2, v6, :cond_24

    .line 146
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 147
    :cond_24
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 148
    :pswitch_5
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v8, :cond_27

    .line 149
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_25

    :goto_e
    and-int/lit16 v2, v1, 0xff

    if-ge v4, v2, :cond_4c

    new-array v2, v9, [I

    .line 150
    fill-array-data v2, :array_4

    invoke-static {v2}, Lz/k;->s([I)V

    const-wide/16 v2, 0x64

    .line 151
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v2, v9, [I

    .line 152
    fill-array-data v2, :array_5

    invoke-static {v2}, Lz/k;->s([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_25
    move v2, v4

    :goto_f
    and-int/lit16 v6, v1, 0xff

    if-ge v2, v6, :cond_26

    .line 153
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 154
    :cond_26
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_27
    move v2, v4

    :goto_10
    and-int/lit16 v6, v1, 0xff

    if-ge v2, v6, :cond_28

    .line 155
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 156
    :cond_28
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 157
    :pswitch_6
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_2b

    .line 158
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_2a

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_29

    new-array v1, v9, [I

    .line 159
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_29
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 160
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_2a
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 161
    invoke-static {v9, v4}, Ll0/b0;->l0(II)V

    .line 162
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_2b
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 163
    invoke-static {v9, v4}, Ll0/b0;->l0(II)V

    .line 164
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 165
    :pswitch_7
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_2e

    .line 166
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_2d

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_2c

    new-array v1, v9, [I

    .line 167
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_2c
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 168
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_2d
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 169
    invoke-static {v14, v4}, Ll0/b0;->l0(II)V

    .line 170
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_2e
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 171
    invoke-static {v14, v4}, Ll0/b0;->l0(II)V

    .line 172
    invoke-static {v14, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :pswitch_8
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 173
    sget v1, Lk0/nt;->a:I

    const v2, 0x5301c7

    if-ne v1, v2, :cond_2f

    .line 174
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_15

    .line 175
    :cond_2f
    invoke-static {}, Lo1/u;->c1()I

    goto/16 :goto_15

    .line 176
    :pswitch_9
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_30

    :goto_11
    and-int/lit16 v2, v1, 0xff

    if-ge v4, v2, :cond_4c

    new-array v2, v9, [I

    .line 177
    fill-array-data v2, :array_a

    invoke-static {v2}, Lz/k;->s([I)V

    const-wide/16 v2, 0x64

    .line 178
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v2, v9, [I

    .line 179
    fill-array-data v2, :array_b

    invoke-static {v2}, Lz/k;->s([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 180
    :cond_30
    sget v2, Lk0/tq;->S:I

    if-ne v2, v5, :cond_4c

    move v2, v4

    :goto_12
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_31

    const/16 v3, 0x8

    .line 181
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_31
    const/16 v3, 0x8

    .line 182
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 183
    :pswitch_a
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_32

    :goto_13
    and-int/lit16 v2, v1, 0xff

    if-ge v4, v2, :cond_4c

    new-array v2, v9, [I

    .line 184
    fill-array-data v2, :array_c

    invoke-static {v2}, Lz/k;->s([I)V

    const-wide/16 v2, 0x64

    .line 185
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v5, v9, [I

    .line 186
    fill-array-data v5, :array_d

    invoke-static {v5}, Lz/k;->s([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 187
    :cond_32
    sget v2, Lk0/tq;->S:I

    if-ne v2, v5, :cond_4c

    move v2, v4

    :goto_14
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_33

    .line 188
    invoke-static {v12, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 189
    :cond_33
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 190
    :pswitch_b
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_35

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_34

    new-array v1, v9, [I

    .line 191
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_34
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 192
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    .line 193
    :cond_35
    iget v2, v0, Lk0/tq;->F:I

    if-eq v2, v1, :cond_4c

    .line 194
    iput v1, v0, Lk0/tq;->F:I

    if-ne v1, v5, :cond_36

    .line 195
    invoke-static {v4, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_36
    if-nez v1, :cond_4c

    .line 196
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_37
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 197
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_15

    :cond_38
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 198
    sget v1, Lk0/nt;->a:I

    const v2, 0x5301c7

    const/16 v3, 0x1a

    if-ne v1, v2, :cond_39

    .line 199
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    .line 200
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 201
    :cond_39
    sget v1, Lh0/c;->E:I

    if-eq v1, v15, :cond_3a

    if-eq v1, v8, :cond_3a

    if-eq v1, v9, :cond_3a

    const/16 v1, 0xc

    .line 202
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 203
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 204
    :cond_3a
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    .line 205
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_3b
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 206
    sget v1, Lk0/nt;->a:I

    const v2, 0x5301c7

    if-ne v1, v2, :cond_3c

    const/16 v1, 0x12

    .line 207
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 208
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_3c
    const/16 v1, 0x12

    .line 209
    sget v2, Lh0/c;->E:I

    if-eq v2, v8, :cond_3d

    const/16 v2, 0xd

    .line 210
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 211
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 212
    :cond_3d
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 213
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 214
    :cond_3e
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_41

    .line 215
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_40

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_3f

    new-array v1, v9, [I

    .line 216
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_3f
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 217
    fill-array-data v1, :array_11

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_40
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 218
    invoke-static {v15, v4}, Ll0/b0;->l0(II)V

    .line 219
    invoke-static {v15, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    :cond_41
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 220
    invoke-static {v15, v4}, Ll0/b0;->l0(II)V

    .line 221
    invoke-static {v15, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_15

    .line 222
    :cond_42
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_45

    .line 223
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_44

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_43

    new-array v1, v9, [I

    .line 224
    fill-array-data v1, :array_12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_43
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 225
    fill-array-data v1, :array_13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_44
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 226
    invoke-static {v8, v4}, Ll0/b0;->l0(II)V

    .line 227
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    goto :goto_15

    :cond_45
    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 228
    invoke-static {v8, v4}, Ll0/b0;->l0(II)V

    .line 229
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    goto :goto_15

    .line 230
    :cond_46
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_48

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_47

    new-array v1, v9, [I

    .line 231
    fill-array-data v1, :array_14

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_15

    :cond_47
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 232
    fill-array-data v1, :array_15

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_15

    .line 233
    :cond_48
    sget v2, Lk0/tq;->S:I

    if-ne v2, v5, :cond_4c

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    const/16 v1, 0x8

    .line 234
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 235
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_15

    .line 236
    :cond_49
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_4b

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4a

    new-array v1, v9, [I

    .line 237
    fill-array-data v1, :array_16

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_15

    :cond_4a
    if-nez v1, :cond_4c

    new-array v1, v9, [I

    .line 238
    fill-array-data v1, :array_17

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_15

    .line 239
    :cond_4b
    sget v2, Lk0/tq;->S:I

    if-ne v2, v5, :cond_4c

    and-int/2addr v1, v10

    if-ne v1, v5, :cond_4c

    .line 240
    invoke-static {v12, v4}, Ll0/b0;->l0(II)V

    .line 241
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    :cond_4c
    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x7
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x5
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x6
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0xa
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x4
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x3
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x2
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x8
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x9
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x4
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x3
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/tq;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/tq;->J:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/tq;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/tq;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/tq;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/tq;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Lk0/tq;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/tq$b;

    invoke-direct {v1, p0}, Lk0/tq$b;-><init>(Lk0/tq;)V

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 10
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 11
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ls18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lt18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/16 v0, 0xb

    .line 13
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    const-string v1, "8918"

    const-string v2, ""

    const-string v3, "8918L"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "persist.lesc.customer_platform"

    if-nez v0, :cond_3

    const/16 v0, 0x9

    .line 14
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    .line 15
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sys.fyt.cvbs_2.bus_width"

    .line 16
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 17
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lk0/qt;->r0()V

    .line 19
    :cond_2
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lk0/qt;->r0()V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "sys.fyt.cvbs_0.bus_width"

    .line 22
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 23
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_4
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lk0/qt;->r0()V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9901c8 -> :sswitch_0
        0x9b01c8 -> :sswitch_0
        0xb001c8 -> :sswitch_0
        0xb101c8 -> :sswitch_0
        0xb201c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x71

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 1
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 2
    :pswitch_1
    sget p1, Lk0/nt;->U:I

    if-ne p1, v3, :cond_b

    .line 3
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v4

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_1

    .line 4
    :pswitch_2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/tq;->s3(I)V

    .line 5
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->q3(I)V

    goto/16 :goto_1

    :pswitch_3
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, 0xc2

    aput p3, p1, v3

    aput v3, p1, v2

    .line 6
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_4
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, 0xc1

    aput p3, p1, v3

    aput v3, p1, v2

    .line 7
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 8
    :pswitch_5
    aget p1, p2, v4

    if-nez p1, :cond_2

    const-string p1, "persist.lesc.video.ignore"

    .line 9
    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    sget p1, Lk0/tq;->O:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 11
    :cond_0
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean p1, p0, Lk0/tq;->u:Z

    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0, v3}, Lk0/tq;->a3(Z)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 14
    iput p1, p0, Lk0/tq;->o:I

    :cond_3
    :goto_0
    new-array p1, v0, [I

    aput p4, p1, v4

    const/16 p3, 0xc0

    aput p3, p1, v3

    aput v3, p1, v2

    .line 15
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_6
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p4, p1, v4

    const/16 p4, 0xc8

    aput p4, p1, v3

    aput p3, p1, v2

    .line 16
    aget p4, p2, v4

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, v0

    aget p4, p2, v2

    aput p4, p1, p3

    const/4 p3, 0x6

    aget p4, p2, v1

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 17
    :pswitch_7
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfe

    if-ne p1, v5, :cond_4

    .line 18
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->v3(I)V

    goto :goto_1

    .line 19
    :cond_4
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfd

    if-ne p1, v5, :cond_5

    .line 20
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->t3(I)V

    goto :goto_1

    .line 21
    :cond_5
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfc

    if-ne p1, v5, :cond_6

    .line 22
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->n3(I)V

    goto :goto_1

    .line 23
    :cond_6
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfa

    if-ne p1, v5, :cond_7

    .line 24
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->p3(I)V

    goto :goto_1

    .line 25
    :cond_7
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf7

    if-ne p1, v5, :cond_8

    .line 26
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->u3(I)V

    goto :goto_1

    .line 27
    :cond_8
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf6

    if-ne p1, v5, :cond_9

    .line 28
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->o3(I)V

    goto :goto_1

    .line 29
    :cond_9
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_a

    .line 30
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/tq;->r3(I)V

    goto :goto_1

    :cond_a
    new-array p1, p3, [I

    aput p4, p1, v4

    const/16 p3, 0xc6

    aput p3, p1, v3

    aput v2, p1, v2

    .line 31
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final a3(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 1111111=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/tq;->u:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/tq;->u:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lk0/tq;->u:Z

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 222222=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/tq;->u:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6521"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_3
    const-string v1, "6316"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "6312"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "6315"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6318"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6319"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 12
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_7
    :goto_0
    const/16 v0, 0xe

    if-eqz p1, :cond_8

    .line 14
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_9
    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_a

    .line 16
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 17
    :cond_a
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_2
    return-void
.end method

.method public final n3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x63

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tq;->P:I

    .line 3
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tq;->P:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x6f

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    aput v0, v1, v0

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/tq;->R:I

    .line 4
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tq;->R:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final p3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x6e

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tq;->Q:I

    .line 3
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tq;->Q:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final q3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x67

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tq;->N:I

    .line 3
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/tq;->N:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/tq;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.height"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    sget v0, Lk0/tq;->N:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final r3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x6d

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

    aput v2, v1, v3

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/tq;->T:I

    .line 4
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tq;->T:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final s3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x66

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tq;->M:I

    .line 3
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/tq;->M:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/tq;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.width"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    sget v0, Lk0/tq;->M:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final t3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x62

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tq;->O:I

    .line 3
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tq;->O:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final u3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x64

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tq;->S:I

    .line 3
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tq;->S:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final v3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x65

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/tq;->L:I

    .line 3
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lf1/o;->e(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    instance-of v1, p1, Lf1/l;

    if-eqz v1, :cond_4

    .line 5
    sget v1, Lk0/tq;->L:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lf1/l;

    const/16 v0, 0xdb

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 7
    :cond_1
    check-cast p1, Lf1/l;

    const/16 v0, 0xda

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 8
    :cond_2
    check-cast p1, Lf1/l;

    const/16 v0, 0xde

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 9
    :cond_3
    check-cast p1, Lf1/l;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/tq;->L:I

    if-eq p1, v1, :cond_5

    .line 11
    iget-object p1, p0, Lk0/tq;->G:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method
