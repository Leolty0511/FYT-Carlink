.class public Lk0/es;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static I:I = 0xff

.field public static J:I = 0x0

.field public static K:I = 0x14

.field public static L:I = 0x1e

.field public static M:I

.field public static N:I

.field public static O:I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public E:Lo1/g0;

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:[[I

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:I

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/es;->b:I

    .line 3
    iput v0, p0, Lk0/es;->c:I

    .line 4
    iput v0, p0, Lk0/es;->d:I

    .line 5
    iput v0, p0, Lk0/es;->e:I

    .line 6
    iput-boolean v0, p0, Lk0/es;->f:Z

    .line 7
    iput-boolean v0, p0, Lk0/es;->g:Z

    .line 8
    iput v0, p0, Lk0/es;->h:I

    .line 9
    iput v0, p0, Lk0/es;->j:I

    const/16 v1, 0x1a

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 10
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

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v6, 0xc

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v6, 0xd

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v6, 0xe

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v6, 0xf

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v7, 0x10

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v7, 0x11

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v7, 0x12

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v7, 0x13

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v7, 0x14

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v7, 0x15

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v7, 0x16

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v7, 0x17

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v8, 0x18

    aput-object v3, v1, v8

    new-array v2, v2, [I

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/es;->k:[[I

    .line 11
    iput v0, p0, Lk0/es;->l:I

    .line 12
    new-instance v1, Lk0/es$d;

    invoke-direct {v1, p0}, Lk0/es$d;-><init>(Lk0/es;)V

    iput-object v1, p0, Lk0/es;->m:Ljava/lang/Runnable;

    .line 13
    iput v0, p0, Lk0/es;->n:I

    .line 14
    new-instance v1, Lk0/es$e;

    invoke-direct {v1, p0}, Lk0/es$e;-><init>(Lk0/es;)V

    iput-object v1, p0, Lk0/es;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/es$f;

    invoke-direct {v1, p0}, Lk0/es$f;-><init>(Lk0/es;)V

    iput-object v1, p0, Lk0/es;->p:Ljava/lang/Runnable;

    .line 16
    iput v0, p0, Lk0/es;->q:I

    .line 17
    new-instance v1, Lk0/es$g;

    invoke-direct {v1, p0}, Lk0/es$g;-><init>(Lk0/es;)V

    iput-object v1, p0, Lk0/es;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v1, Lk0/es$h;

    invoke-direct {v1, p0}, Lk0/es$h;-><init>(Lk0/es;)V

    iput-object v1, p0, Lk0/es;->s:Ljava/lang/Runnable;

    .line 19
    iput v0, p0, Lk0/es;->t:I

    .line 20
    new-instance v1, Lk0/es$i;

    invoke-direct {v1, p0}, Lk0/es$i;-><init>(Lk0/es;)V

    iput-object v1, p0, Lk0/es;->u:Ljava/lang/Runnable;

    .line 21
    iput v0, p0, Lk0/es;->v:I

    .line 22
    iput-boolean v0, p0, Lk0/es;->w:Z

    .line 23
    iput-boolean v0, p0, Lk0/es;->x:Z

    .line 24
    iput-boolean v0, p0, Lk0/es;->y:Z

    .line 25
    iput v4, p0, Lk0/es;->z:I

    .line 26
    iput v5, p0, Lk0/es;->A:I

    .line 27
    iput v6, p0, Lk0/es;->B:I

    .line 28
    iput v7, p0, Lk0/es;->C:I

    .line 29
    iput v3, p0, Lk0/es;->D:I

    .line 30
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/es;->E:Lo1/g0;

    .line 31
    iput v0, p0, Lk0/es;->F:I

    .line 32
    new-instance v0, Lk0/es$j;

    invoke-direct {v0, p0}, Lk0/es$j;-><init>(Lk0/es;)V

    iput-object v0, p0, Lk0/es;->G:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lk0/es$a;

    invoke-direct {v0, p0}, Lk0/es$a;-><init>(Lk0/es;)V

    iput-object v0, p0, Lk0/es;->H:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x20
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x21
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x52
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x51
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x50
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_9
    .array-data 4
        0x9
        0x36
    .end array-data

    :array_a
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_c
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_d
    .array-data 4
        0xd
        0x37
    .end array-data

    :array_e
    .array-data 4
        0xe
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xf
        0x26
    .end array-data

    :array_10
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_12
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_13
    .array-data 4
        0x13
        0x32
    .end array-data

    :array_14
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_15
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_17
    .array-data 4
        0x19
        0x10
    .end array-data

    :array_18
    .array-data 4
        0x1a
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x1b
        -0x1
    .end array-data
.end method

.method public static synthetic b3(Lk0/es;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/es;->a3(Z)V

    return-void
.end method

.method public static synthetic c3(Lk0/es;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/es;->f:Z

    return p0
.end method

.method public static synthetic d3(Lk0/es;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/es;->f:Z

    return p1
.end method

.method public static synthetic e3()I
    .locals 1

    .line 1
    sget v0, Lk0/es;->L:I

    return v0
.end method

.method public static synthetic f3(Lk0/es;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/es;->E:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lk0/es;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/es;->o3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/es;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/es;->l3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/es;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/es;->p3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/es;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/es;->m3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/es;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/es;->n3(I)V

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
    iget-object v0, p0, Lk0/es;->E:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/es;->G:Ljava/lang/Runnable;

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
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->l:I

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
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v3, p0, Lk0/es;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v3, Lk0/es$b;

    invoke-direct {v3, p0}, Lk0/es$b;-><init>(Lk0/es;)V

    invoke-virtual {v0, v3}, Lo1/z;->a(Lo1/p;)V

    .line 16
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/es;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/es;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lk0/ot;->d:Lo1/y;

    iget-object v3, p0, Lk0/es;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v0, p0, Lk0/es;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v3, p0, Lk0/es;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 21
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ls18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 22
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Lt18"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/16 v0, 0xb

    .line 23
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    const-string v2, "4"

    const/4 v3, 0x4

    const-string v4, "8918L"

    const-string v5, "persist.lesc.customer_platform"

    if-eqz v0, :cond_2

    const-string v0, "sys.fyt.cvbs_0.bus_width"

    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 25
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lk0/qt;->r0()V

    .line 27
    :cond_1
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 28
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lk0/qt;->r0()V

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    .line 30
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sys.fyt.cvbs_2.bus_width"

    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 32
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lk0/qt;->r0()V

    .line 34
    :cond_3
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lk0/qt;->r0()V

    :cond_4
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v1, :cond_15

    const/16 v1, 0x29

    if-eq v0, v1, :cond_13

    const/16 v1, 0x30

    if-eq v0, v1, :cond_12

    const/16 p3, 0x35

    const/4 v1, 0x4

    if-eq v0, p3, :cond_11

    const/16 p3, 0x38

    if-eq v0, p3, :cond_10

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v10, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v10

    aput v2, v0, v9

    .line 4
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v10, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v10

    aput v2, v0, v9

    .line 5
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v10, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v10

    aput v2, v0, v9

    .line 6
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v10, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v10

    aput v2, v0, v9

    .line 7
    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v10, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v10

    aput v2, v0, v9

    .line 8
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v10, [I

    shr-int/lit8 v1, p3, 0x4

    and-int/2addr v1, v10

    aput v1, v0, v9

    .line 9
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v10, [I

    shr-int/lit8 v1, p3, 0x3

    and-int/2addr v1, v10

    aput v1, v0, v9

    .line 10
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v10, [I

    shr-int/2addr p3, v7

    and-int/2addr p3, v10

    aput p3, v0, v9

    .line 11
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v10, [I

    add-int/2addr p2, v5

    .line 12
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    aput v1, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v10, [I

    .line 13
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    aput v1, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 14
    iget p3, p0, Lk0/es;->b:I

    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v10

    if-ne p3, v0, :cond_1

    iget p3, p0, Lk0/es;->d:I

    aget-byte v0, p1, p2

    shr-int/2addr v0, v4

    and-int/2addr v0, v10

    if-eq p3, v0, :cond_8

    .line 15
    :cond_1
    aget-byte p3, p1, p2

    shr-int/2addr p3, v7

    and-int/2addr p3, v10

    iput p3, p0, Lk0/es;->b:I

    .line 16
    aget-byte v0, p1, p2

    shr-int/2addr v0, v4

    and-int/2addr v0, v10

    iput v0, p0, Lk0/es;->d:I

    .line 17
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_5

    if-eq p3, v10, :cond_4

    if-ne v0, v10, :cond_2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_8

    if-nez v0, :cond_8

    .line 18
    iget-boolean p3, p0, Lk0/es;->f:Z

    if-eqz p3, :cond_3

    invoke-static {}, Lo1/u;->a0()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 19
    invoke-static {}, Lo1/u;->k()V

    const-wide/16 v0, 0x15e

    .line 20
    invoke-static {v0, v1}, La/i;->a0(J)V

    const-string p3, "persist.lesc.video.ignore"

    const-string v0, "false"

    .line 21
    invoke-static {p3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget p3, p0, Lk0/es;->h:I

    invoke-static {p3}, Ly0/h;->t0(I)V

    .line 23
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p3

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out iJumppage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lk0/es;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ----JumpPage.isCarUiTop() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 24
    :cond_3
    iput-boolean v9, p0, Lk0/es;->f:Z

    goto :goto_2

    .line 25
    :cond_4
    :goto_1
    iput v6, p0, Lk0/es;->c:I

    goto :goto_2

    .line 26
    :cond_5
    invoke-static {}, Lk0/qt;->k0()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 27
    iget p3, p0, Lk0/es;->d:I

    const-string v0, "com.syu.fourcamera2"

    if-ne p3, v10, :cond_6

    .line 28
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 29
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p3

    const/16 v0, 0x24e

    invoke-virtual {p3, v0}, Lc/e;->c(I)Z

    .line 30
    iput-boolean v10, p0, Lk0/es;->f:Z

    goto :goto_2

    :cond_6
    if-nez p3, :cond_8

    .line 31
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-boolean p3, p0, Lk0/es;->f:Z

    if-eqz p3, :cond_7

    .line 32
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p3

    const/16 v0, 0x266

    invoke-virtual {p3, v0}, Lc/e;->c(I)Z

    .line 33
    :cond_7
    iput-boolean v9, p0, Lk0/es;->f:Z

    .line 34
    :cond_8
    :goto_2
    iget p3, p0, Lk0/es;->e:I

    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v10

    if-eq p3, v0, :cond_2a

    .line 35
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v10

    iput p1, p0, Lk0/es;->e:I

    if-ne p1, v10, :cond_a

    .line 36
    iget p1, p0, Lk0/es;->b:I

    if-nez p1, :cond_a

    iget p1, p0, Lk0/es;->F:I

    if-ne p1, v4, :cond_a

    .line 37
    sget p1, Lk0/es;->O:I

    if-ne p1, v10, :cond_9

    .line 38
    invoke-static {}, Lo1/u;->a0()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 39
    iput-boolean v10, p0, Lk0/es;->g:Z

    .line 40
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_9

    .line 41
    :cond_9
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto/16 :goto_9

    .line 42
    :cond_a
    sget p1, Lk0/es;->O:I

    if-ne p1, v10, :cond_c

    .line 43
    iget-boolean p1, p0, Lk0/es;->g:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lo1/u;->a0()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 44
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    .line 46
    :cond_b
    iput-boolean v9, p0, Lk0/es;->g:Z

    goto/16 :goto_9

    .line 47
    :cond_c
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 48
    aget-byte v0, p1, p3

    and-int/2addr v0, v8

    add-int/lit8 v1, p2, 0x3

    .line 49
    aget-byte v3, p1, v1

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x4

    .line 50
    aget-byte v5, p1, v4

    and-int/2addr v5, v8

    add-int/2addr p2, v6

    .line 51
    aget-byte v6, p1, p2

    and-int/2addr v6, v8

    if-nez v0, :cond_d

    if-nez v3, :cond_d

    if-nez v5, :cond_d

    if-nez v6, :cond_d

    .line 52
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 53
    :cond_d
    sget v7, Ll0/c0;->g:I

    if-ne v7, v0, :cond_e

    sget v7, Ll0/c0;->h:I

    if-ne v7, v3, :cond_e

    sget v7, Ll0/c0;->i:I

    if-ne v7, v5, :cond_e

    sget v7, Ll0/c0;->j:I

    if-eq v7, v6, :cond_f

    .line 54
    :cond_e
    iget v7, p0, Lk0/es;->e:I

    if-ne v7, v10, :cond_f

    iget v7, p0, Lk0/es;->b:I

    if-nez v7, :cond_f

    .line 55
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 56
    sput v2, Ll0/c0;->k:I

    .line 57
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 58
    :cond_f
    :goto_3
    sput v0, Ll0/c0;->g:I

    .line 59
    sput v3, Ll0/c0;->h:I

    .line 60
    sput v5, Ll0/c0;->i:I

    .line 61
    sput v6, Ll0/c0;->j:I

    .line 62
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 63
    aget-byte p3, p1, v1

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 64
    aget-byte p3, p1, v4

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 65
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    invoke-static {p1}, Ll0/c0;->b1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 66
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 67
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 68
    aget-byte p3, p1, p3

    and-int/2addr p3, v8

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v6

    .line 69
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    invoke-static {p1}, Ll0/c0;->b1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_10
    const/16 p3, 0x70

    new-array v0, v10, [I

    add-int/lit8 v2, p2, 0x3

    .line 70
    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    aput v2, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v10, [I

    add-int/2addr p2, v1

    .line 71
    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    aput p1, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_11
    const/16 p3, 0x62

    new-array v0, v10, [I

    add-int/lit8 v3, p2, 0x2

    .line 72
    aget-byte v4, p1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v10

    aput v4, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v10, [I

    .line 73
    aget-byte v4, p1, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v10, [I

    .line 74
    aget-byte v4, p1, v3

    shr-int/2addr v4, v1

    and-int/2addr v4, v10

    aput v4, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v10, [I

    .line 75
    aget-byte v4, p1, v3

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 76
    aget-byte p3, p1, v3

    shr-int/2addr p3, v6

    and-int/2addr p3, v10

    aget-byte v0, p1, v3

    shr-int/2addr v0, v1

    and-int/2addr v0, v10

    invoke-static {p3, v0, v9}, Ll0/c0;->N1(III)V

    const/16 p3, 0x6b

    new-array v0, v10, [I

    add-int/lit8 v1, p2, 0x6

    .line 77
    aget-byte v1, p1, v1

    shl-int/2addr v1, v2

    const v3, 0xff00

    and-int/2addr v1, v3

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    and-int/2addr v4, v8

    or-int/2addr v1, v4

    aput v1, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v10, [I

    add-int/lit8 v1, p2, 0xd

    .line 78
    aget-byte v1, p1, v1

    shl-int/2addr v1, v2

    and-int/2addr v1, v3

    add-int/lit8 p2, p2, 0xe

    aget-byte p1, p1, p2

    and-int/2addr p1, v8

    or-int/2addr p1, v1

    aput p1, v0, v9

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 79
    :cond_12
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_13
    add-int/lit8 p3, p2, 0x3

    .line 80
    aget-byte p3, p1, p3

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    and-int/2addr p1, v10

    if-ne p1, v10, :cond_14

    move v10, v9

    :cond_14
    const/16 p1, 0x32

    invoke-static {p3, v9, v10, p1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_9

    :cond_15
    add-int/lit8 p3, p2, 0x2

    .line 81
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    .line 82
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 83
    iput p2, p0, Lk0/es;->j:I

    move p2, v9

    .line 84
    :goto_4
    iget-object p3, p0, Lk0/es;->k:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_17

    .line 85
    iget v0, p0, Lk0/es;->j:I

    aget-object v1, p3, p2

    aget v1, v1, v9

    if-ne v0, v1, :cond_16

    if-eqz v0, :cond_17

    .line 86
    iput p2, p0, Lk0/es;->i:I

    goto :goto_5

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 87
    :cond_17
    :goto_5
    iget v0, p0, Lk0/es;->j:I

    if-eq v0, v2, :cond_26

    const/16 v1, 0xa

    if-eq v0, v1, :cond_25

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x15

    if-eq v0, v1, :cond_23

    const/16 v1, 0x16

    if-eq v0, v1, :cond_22

    packed-switch v0, :pswitch_data_1

    and-int/2addr p1, v8

    if-ne p1, v10, :cond_18

    .line 88
    array-length p1, p3

    if-ge p2, p1, :cond_2a

    .line 89
    aget-object p1, p3, p2

    aget p1, p1, v10

    invoke-static {p1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_18
    if-nez p1, :cond_2a

    .line 90
    iget p1, p0, Lk0/es;->i:I

    array-length p2, p3

    if-ge p1, p2, :cond_19

    if-eq p1, v8, :cond_19

    .line 91
    aget-object p1, p3, p1

    aget p1, p1, v10

    invoke-static {p1, v10}, Ll0/b0;->l0(II)V

    .line 92
    :cond_19
    iput v8, p0, Lk0/es;->i:I

    goto/16 :goto_9

    .line 93
    :pswitch_3
    iget p2, p0, Lk0/es;->l:I

    if-eq p2, p1, :cond_2a

    .line 94
    sget-object p2, La/b;->Q:Ljava/lang/String;

    invoke-static {p2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1a

    if-ne p1, v7, :cond_1b

    .line 95
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_1b

    .line 96
    iget p2, p0, Lk0/es;->b:I

    if-nez p2, :cond_1b

    iget p2, p0, Lk0/es;->d:I

    if-nez p2, :cond_1b

    .line 97
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    .line 98
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_1a
    if-ne p1, v7, :cond_1b

    .line 99
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_1b

    .line 100
    invoke-static {}, Lo1/u;->z()I

    .line 101
    :cond_1b
    :goto_6
    iput p1, p0, Lk0/es;->l:I

    goto/16 :goto_9

    :pswitch_4
    and-int/2addr p1, v8

    if-ne p1, v10, :cond_2a

    .line 102
    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto/16 :goto_9

    :cond_1c
    const/16 p1, 0x26

    .line 103
    invoke-static {p1, v9}, Ll0/b0;->l0(II)V

    .line 104
    invoke-static {p1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_5
    and-int/2addr p1, v8

    if-ne p1, v10, :cond_2a

    .line 105
    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto/16 :goto_9

    .line 106
    :cond_1d
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    .line 107
    invoke-static {v10, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :pswitch_6
    and-int/2addr p1, v8

    if-ne p1, v10, :cond_2a

    .line 108
    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto/16 :goto_9

    :cond_1e
    const/16 p1, 0x37

    .line 109
    invoke-static {p1, v9}, Ll0/b0;->l0(II)V

    .line 110
    invoke-static {p1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 111
    :pswitch_7
    iget p2, p0, Lk0/es;->l:I

    if-eq p2, p1, :cond_2a

    .line 112
    sget-object p2, La/b;->Q:Ljava/lang/String;

    invoke-static {p2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    if-ne p1, v7, :cond_21

    .line 113
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_21

    .line 114
    iget p2, p0, Lk0/es;->b:I

    if-nez p2, :cond_21

    iget p2, p0, Lk0/es;->d:I

    if-nez p2, :cond_21

    .line 115
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    .line 116
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_1f
    if-ne p1, v7, :cond_20

    .line 117
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_20

    .line 118
    invoke-static {}, Lo1/u;->z()I

    goto :goto_7

    :cond_20
    if-nez p1, :cond_21

    .line 119
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_21

    .line 120
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    .line 121
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    .line 122
    :cond_21
    :goto_7
    iput p1, p0, Lk0/es;->l:I

    goto/16 :goto_9

    .line 123
    :cond_22
    sget p2, Lk0/es;->M:I

    if-ne p2, v10, :cond_2a

    and-int/2addr p1, v8

    if-ne p1, v10, :cond_2a

    .line 124
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 125
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 126
    :cond_23
    sget p2, Lk0/es;->M:I

    if-ne p2, v10, :cond_2a

    and-int/2addr p1, v8

    if-ne p1, v10, :cond_2a

    .line 127
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 128
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 129
    :cond_24
    sget p2, Lk0/es;->M:I

    if-ne p2, v10, :cond_2a

    and-int/2addr p1, v8

    if-ne p1, v10, :cond_2a

    const/16 p1, 0xc

    .line 130
    invoke-static {p1, v9}, Ll0/b0;->l0(II)V

    .line 131
    invoke-static {p1, v10}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_25
    and-int/2addr p1, v8

    if-ne p1, v10, :cond_2a

    .line 132
    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 133
    invoke-static {}, Lo1/u;->z()I

    goto :goto_9

    .line 134
    :cond_26
    iget p2, p0, Lk0/es;->l:I

    if-eq p2, p1, :cond_2a

    .line 135
    sget-object p2, La/b;->Q:Ljava/lang/String;

    invoke-static {p2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_27

    if-ne p1, v7, :cond_29

    .line 136
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_29

    .line 137
    iget p2, p0, Lk0/es;->b:I

    if-nez p2, :cond_29

    iget p2, p0, Lk0/es;->d:I

    if-nez p2, :cond_29

    .line 138
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    .line 139
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_27
    if-ne p1, v7, :cond_28

    .line 140
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_28

    .line 141
    invoke-static {}, Lo1/u;->z()I

    goto :goto_8

    :cond_28
    if-nez p1, :cond_29

    .line 142
    iget p2, p0, Lk0/es;->l:I

    if-ne p2, v10, :cond_29

    .line 143
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    .line 144
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    .line 145
    :cond_29
    :goto_8
    iput p1, p0, Lk0/es;->l:I

    :cond_2a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/es;->E:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/es;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/es;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/es;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/es;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/es;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/es;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Lk0/es;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lk0/ot;->d:Lo1/y;

    iget-object v1, p0, Lk0/es;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 10
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ls18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lt18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    const-string v1, "persist.lsec.c8918L.dual_port"

    .line 12
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    .line 13
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lk0/qt;->r0()V

    :cond_1
    const/16 v0, 0xb

    .line 15
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    const-string v1, "8918"

    const-string v2, ""

    const-string v3, "8918L"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "persist.lesc.customer_platform"

    if-eqz v0, :cond_3

    const-string v0, "sys.fyt.cvbs_0.bus_width"

    .line 16
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 17
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lk0/qt;->r0()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    .line 21
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sys.fyt.cvbs_2.bus_width"

    .line 22
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 23
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lk0/qt;->r0()V

    .line 25
    :cond_4
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lk0/qt;->r0()V

    .line 28
    :cond_5
    :goto_0
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v1, Lk0/es$c;

    invoke-direct {v1, p0}, Lk0/es$c;-><init>(Lk0/es;)V

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x76

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_2

    const/4 v5, 0x6

    if-eq p1, v1, :cond_1

    if-eq p1, v5, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    sget p1, Lk0/nt;->U:I

    if-ne p1, v3, :cond_12

    .line 2
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v4

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_2

    :cond_1
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v4

    const/16 p3, 0xc8

    aput p3, p1, v3

    aput v0, p1, v2

    .line 3
    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v0

    aget p3, p2, v1

    aput p3, p1, v5

    const/4 p3, 0x7

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 4
    :cond_2
    aget p1, p2, v4

    if-nez p1, :cond_5

    const-string p1, "persist.lesc.video.ignore"

    .line 5
    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    sget p1, Lk0/es;->K:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 7
    :cond_3
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_4

    if-eq p1, p4, :cond_4

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-boolean p1, p0, Lk0/es;->x:Z

    if-nez p1, :cond_6

    .line 9
    invoke-virtual {p0, v3}, Lk0/es;->a3(Z)V

    goto :goto_0

    :cond_5
    const/16 p1, 0xf

    .line 10
    iput p1, p0, Lk0/es;->q:I

    .line 11
    :cond_6
    :goto_0
    aget p1, p2, v4

    if-ne p1, v3, :cond_8

    .line 12
    sget p1, Ll0/c0;->t:I

    if-nez p1, :cond_7

    sget p1, Ll0/c0;->r:I

    if-nez p1, :cond_7

    sget p1, Ll0/c0;->v:I

    if-nez p1, :cond_7

    sget-boolean p1, Ll0/c0;->q:Z

    if-eqz p1, :cond_8

    :cond_7
    move p1, v4

    goto :goto_1

    :cond_8
    move p1, v3

    :goto_1
    if-eqz p1, :cond_12

    new-array p1, v0, [I

    aput p3, p1, v4

    const/16 p3, 0xc0

    aput p3, p1, v3

    aput v2, p1, v2

    .line 13
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_9
    new-array p1, v0, [I

    aput p3, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 14
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 15
    :cond_a
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfd

    if-ne p1, v5, :cond_b

    .line 16
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/es;->o3(I)V

    goto/16 :goto_2

    .line 17
    :cond_b
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xfc

    if-ne p1, v5, :cond_c

    .line 18
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/es;->l3(I)V

    goto/16 :goto_2

    .line 19
    :cond_c
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf7

    if-ne p1, v5, :cond_d

    .line 20
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/es;->p3(I)V

    goto :goto_2

    .line 21
    :cond_d
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf4

    if-ne p1, v5, :cond_e

    .line 22
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/es;->m3(I)V

    goto :goto_2

    .line 23
    :cond_e
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf3

    if-ne p1, v5, :cond_f

    goto :goto_2

    .line 24
    :cond_f
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xf2

    if-ne p1, v5, :cond_10

    .line 25
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/es;->n3(I)V

    goto :goto_2

    .line 26
    :cond_10
    aget p1, p2, v4

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xc6

    if-ne p1, v0, :cond_11

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p2, v3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "persist.sys.lzmazdtype"

    invoke-static {v6, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [I

    aput p3, p1, v4

    aput v5, p1, v3

    aput v2, p1, v2

    .line 28
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_11
    new-array p1, v0, [I

    aput p3, p1, v4

    aput v5, p1, v3

    aput v2, p1, v2

    .line 29
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_12
    :goto_2
    return-void
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

    iget-boolean v3, p0, Lk0/es;->x:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/es;->x:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lk0/es;->x:Z

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 222222=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/es;->x:Z

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

.method public final l3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x6e

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/es;->L:I

    .line 3
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/es;->L:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final m3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x71

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/es;->N:I

    .line 3
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/es;->N:I

    if-eq p1, v3, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v3, Lk0/es;->N:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.allscreenon"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    sget v0, Lk0/es;->N:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x72

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/es;->O:I

    .line 3
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/es;->O:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x6d

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/es;->K:I

    .line 3
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/es;->K:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

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

    const/16 v2, 0x6f

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/es;->M:I

    .line 3
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/es;->M:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/es;->E:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
