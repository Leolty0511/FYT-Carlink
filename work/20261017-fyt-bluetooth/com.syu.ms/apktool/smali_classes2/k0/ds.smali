.class public Lk0/ds;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0xff

.field public static B:I = 0x0

.field public static C:I = 0x0

.field public static D:I = 0x0

.field public static E:I = 0x0

.field public static F:I = 0x0

.field public static G:I = 0x0

.field public static H:I = 0x14

.field public static I:I = 0x24

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Lo1/g0;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;


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
    iput v0, p0, Lk0/ds;->b:I

    .line 3
    iput v0, p0, Lk0/ds;->c:I

    .line 4
    iput v0, p0, Lk0/ds;->d:I

    .line 5
    iput-boolean v0, p0, Lk0/ds;->e:Z

    .line 6
    iput v0, p0, Lk0/ds;->f:I

    .line 7
    iput v0, p0, Lk0/ds;->h:I

    const/16 v1, 0x20

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 8
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

    const/4 v6, 0x4

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v6, 0x5

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v6, 0x6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v6, 0x7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v7, 0x8

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v8, 0x9

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v9, 0xa

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v10, 0xb

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v11, 0xc

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v11, 0xd

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v11, 0xe

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v11, 0xf

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v12, 0x10

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v12, 0x11

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v12, 0x12

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v12, 0x13

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v12, 0x14

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v12, 0x15

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    const/16 v12, 0x16

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    const/16 v12, 0x17

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    const/16 v12, 0x18

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    const/16 v12, 0x19

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    const/16 v12, 0x1a

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    const/16 v12, 0x1b

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    const/16 v12, 0x1c

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    const/16 v12, 0x1d

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    const/16 v12, 0x1e

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    const/16 v12, 0x1f

    aput-object v4, v2, v12

    iput-object v2, p0, Lk0/ds;->i:[[I

    .line 9
    new-instance v2, Lk0/ds$a;

    invoke-direct {v2, p0}, Lk0/ds$a;-><init>(Lk0/ds;)V

    iput-object v2, p0, Lk0/ds;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v2, Lk0/ds$b;

    invoke-direct {v2, p0}, Lk0/ds$b;-><init>(Lk0/ds;)V

    iput-object v2, p0, Lk0/ds;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v2, Lk0/ds$c;

    invoke-direct {v2, p0}, Lk0/ds$c;-><init>(Lk0/ds;)V

    iput-object v2, p0, Lk0/ds;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v2, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lk0/ds;->m:Lo1/g0;

    .line 13
    iput v3, p0, Lk0/ds;->n:I

    .line 14
    iput v6, p0, Lk0/ds;->o:I

    .line 15
    iput v5, p0, Lk0/ds;->p:I

    .line 16
    iput v11, p0, Lk0/ds;->q:I

    .line 17
    iput v7, p0, Lk0/ds;->r:I

    .line 18
    iput v8, p0, Lk0/ds;->s:I

    .line 19
    iput v9, p0, Lk0/ds;->t:I

    .line 20
    iput v10, p0, Lk0/ds;->u:I

    .line 21
    iput v0, p0, Lk0/ds;->v:I

    .line 22
    iput v0, p0, Lk0/ds;->w:I

    .line 23
    new-instance v0, Lk0/ds$d;

    invoke-direct {v0, p0}, Lk0/ds$d;-><init>(Lk0/ds;)V

    iput-object v0, p0, Lk0/ds;->x:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Lk0/ds$e;

    invoke-direct {v0, p0}, Lk0/ds$e;-><init>(Lk0/ds;)V

    iput-object v0, p0, Lk0/ds;->y:Ljava/lang/Runnable;

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
        0x9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x33
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x34
        0x18
    .end array-data

    :array_13
    .array-data 4
        0x35
        0x16
    .end array-data

    :array_14
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_15
    .array-data 4
        0x37
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x38
        0x26
    .end array-data

    :array_17
    .array-data 4
        0x39
        0x12
    .end array-data

    :array_18
    .array-data 4
        0x3d
        0x38
    .end array-data

    :array_19
    .array-data 4
        0x3f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x48
        0x1d
    .end array-data

    :array_1b
    .array-data 4
        0x49
        0x20
    .end array-data

    :array_1c
    .array-data 4
        0x4a
        0x21
    .end array-data

    :array_1d
    .array-data 4
        0x4b
        0x22
    .end array-data

    :array_1e
    .array-data 4
        0x4c
        0x23
    .end array-data

    :array_1f
    .array-data 4
        0xe0
        -0x1
    .end array-data
.end method

.method public static synthetic a3(Lk0/ds;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/ds;->e:Z

    return p0
.end method

.method public static synthetic b3(Lk0/ds;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/ds;->e:Z

    return p1
.end method

.method public static synthetic c3()I
    .locals 1

    .line 1
    sget v0, Lk0/ds;->E:I

    return v0
.end method

.method public static synthetic d3()I
    .locals 1

    .line 1
    sget v0, Lk0/ds;->I:I

    return v0
.end method

.method public static synthetic e3(Lk0/ds;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ds;->m:Lo1/g0;

    return-object p0
.end method

.method public static synthetic f3(Lk0/ds;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ds;->r3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/ds;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ds;->m3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/ds;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ds;->s3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/ds;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ds;->q3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/ds;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ds;->p3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/ds;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ds;->l3(I)V

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
    iget-object v0, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ds;->x:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ds;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->l:I

    .line 9
    iput v1, v0, Lk0/mt;->i:I

    .line 10
    iput v1, v0, Lk0/mt;->b:I

    .line 11
    iput v1, v0, Lk0/mt;->c:I

    .line 12
    iput v1, v0, Lk0/mt;->d:I

    .line 13
    iput v1, v0, Lk0/mt;->o:I

    .line 14
    iput v1, v0, Lk0/mt;->h:I

    .line 15
    iput v1, v0, Lk0/mt;->p:I

    .line 16
    iget-object v0, p0, Lk0/ds;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Lk0/ot;->d:Lo1/y;

    iget-object v3, p0, Lk0/ds;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget v0, Lk0/nt;->a:I

    const v3, 0x7a01c8

    if-ne v0, v3, :cond_0

    .line 19
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v3, Lk0/mt;->i:I

    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 20
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ls18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Lt18"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/16 v0, 0xb

    .line 22
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    const-string v2, "4"

    const/4 v3, 0x4

    const-string v4, "8918L"

    const-string v5, "persist.lesc.customer_platform"

    if-eqz v0, :cond_3

    const-string v0, "sys.fyt.cvbs_0.bus_width"

    .line 23
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 24
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lk0/qt;->r0()V

    .line 26
    :cond_2
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lk0/qt;->r0()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    .line 29
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sys.fyt.cvbs_2.bus_width"

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 31
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lk0/qt;->r0()V

    .line 33
    :cond_4
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 34
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lk0/qt;->r0()V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7a01c8 -> :sswitch_0
        0xa701c7 -> :sswitch_0
        0xa801c7 -> :sswitch_0
        0xa901c7 -> :sswitch_0
        0xaa01c7 -> :sswitch_0
        0xab01c7 -> :sswitch_0
        0xfd01c7 -> :sswitch_0
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

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x35

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v2, v3, :cond_29

    const-string v7, "false"

    const-wide/16 v8, 0x15e

    const-string v10, "true"

    const-string v12, "persist.lesc.video.ignore"

    const/4 v14, 0x4

    const/4 v15, 0x5

    const/4 v13, 0x6

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const-string v11, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v11, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    new-array v11, v6, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v3

    .line 4
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v3

    .line 5
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v11, v6, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v3

    .line 6
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v3

    .line 7
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v11, v6, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v3

    .line 8
    invoke-static {v14, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v3

    .line 9
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v3

    .line 10
    invoke-static {v15, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v6

    aput v2, v11, v3

    .line 11
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    .line 12
    iget v2, v0, Lk0/ds;->b:I

    add-int/lit8 v11, p2, 0x3

    aget-byte v15, v1, v11

    shr-int/2addr v15, v3

    and-int/2addr v15, v6

    if-ne v2, v15, :cond_1

    iget v2, v0, Lk0/ds;->c:I

    aget-byte v15, v1, v11

    shr-int/2addr v15, v14

    and-int/2addr v15, v6

    if-eq v2, v15, :cond_8

    .line 13
    :cond_1
    aget-byte v2, v1, v11

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    iput v2, v0, Lk0/ds;->b:I

    .line 14
    aget-byte v2, v1, v11

    shr-int/2addr v2, v14

    and-int/2addr v2, v6

    iput v2, v0, Lk0/ds;->c:I

    .line 15
    sget v11, Lu0/b;->r0:I

    if-nez v11, :cond_8

    if-ne v2, v6, :cond_2

    .line 16
    invoke-static {v6}, Ly0/h;->k(I)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v3}, Ly0/h;->k(I)V

    .line 18
    :goto_1
    iget v2, v0, Lk0/ds;->b:I

    if-eq v2, v6, :cond_5

    iget v11, v0, Lk0/ds;->c:I

    if-ne v11, v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez v2, :cond_8

    if-nez v11, :cond_8

    .line 19
    iget v2, v0, Lk0/ds;->f:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 20
    iget-boolean v2, v0, Lk0/ds;->e:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-static {v13, v3}, Ll0/b0;->l0(II)V

    .line 22
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    .line 23
    invoke-static {v8, v9}, La/i;->a0(J)V

    .line 24
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_4
    iput-boolean v3, v0, Lk0/ds;->e:Z

    goto :goto_4

    .line 26
    :cond_5
    :goto_2
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-nez v2, :cond_6

    new-array v2, v6, [I

    aput v6, v2, v3

    const/16 v11, 0x62

    .line 27
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    .line 28
    invoke-static {v12, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v14, 0xc8

    .line 29
    invoke-static {v14, v15}, La/i;->a0(J)V

    .line 30
    iput-boolean v6, v0, Lk0/ds;->e:Z

    .line 31
    invoke-static {}, Lo1/u;->z()I

    .line 32
    :cond_6
    invoke-static {v3}, Lu0/d;->C2(I)V

    .line 33
    sget v2, Ly0/f;->x:I

    if-nez v2, :cond_7

    sget v2, Ly0/f;->c:I

    sget v11, Ly0/f;->R:I

    mul-int/2addr v2, v11

    sget v11, Ly0/f;->S:I

    div-int/2addr v2, v11

    int-to-float v2, v2

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v2, v11

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    float-to-int v2, v2

    .line 34
    sget v11, Ly0/f;->c:I

    iput v11, v0, Lk0/ds;->f:I

    .line 35
    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 36
    :cond_8
    :goto_4
    sget v2, Lk0/ds;->D:I

    if-ne v2, v6, :cond_e

    .line 37
    sget v2, Lk0/nt;->W:I

    if-nez v2, :cond_b

    .line 38
    iget v2, v0, Lk0/ds;->v:I

    add-int/lit8 v5, p2, 0x6

    aget-byte v11, v1, v5

    shr-int/2addr v11, v4

    and-int/2addr v11, v6

    if-eq v2, v11, :cond_2b

    .line 39
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v6

    iput v1, v0, Lk0/ds;->v:I

    if-ne v1, v6, :cond_9

    .line 40
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_2b

    new-array v1, v6, [I

    aput v6, v1, v3

    const/16 v2, 0x62

    .line 41
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 42
    invoke-static {v12, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 43
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 44
    iput-boolean v6, v0, Lk0/ds;->e:Z

    .line 45
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_c

    .line 46
    :cond_9
    iget-boolean v1, v0, Lk0/ds;->e:Z

    if-eqz v1, :cond_a

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 47
    invoke-static {v8, v9}, La/i;->a0(J)V

    .line 48
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [I

    aput v3, v1, v3

    const/16 v2, 0x62

    .line 49
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 50
    :cond_a
    iput-boolean v3, v0, Lk0/ds;->e:Z

    goto/16 :goto_c

    .line 51
    :cond_b
    iget v2, v0, Lk0/ds;->v:I

    add-int/lit8 v4, p2, 0x6

    aget-byte v11, v1, v4

    shr-int/2addr v11, v5

    and-int/2addr v11, v6

    if-eq v2, v11, :cond_2b

    .line 52
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    iput v1, v0, Lk0/ds;->v:I

    if-ne v1, v6, :cond_c

    .line 53
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_2b

    new-array v1, v6, [I

    aput v6, v1, v3

    const/16 v2, 0x62

    .line 54
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 55
    invoke-static {v12, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 56
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 57
    iput-boolean v6, v0, Lk0/ds;->e:Z

    .line 58
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_c

    .line 59
    :cond_c
    iget-boolean v1, v0, Lk0/ds;->e:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 60
    invoke-static {v8, v9}, La/i;->a0(J)V

    .line 61
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [I

    aput v3, v1, v3

    const/16 v2, 0x62

    .line 62
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 63
    :cond_d
    iput-boolean v3, v0, Lk0/ds;->e:Z

    goto/16 :goto_c

    :cond_e
    add-int/lit8 v2, p2, 0x6

    .line 64
    aget-byte v7, v1, v2

    shr-int/lit8 v4, v7, 0x2

    and-int/2addr v4, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    invoke-static {v4, v1, v3}, Ll0/c0;->a(III)V

    goto/16 :goto_c

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v4, v1, v2

    const/16 v5, 0xff

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x3

    .line 66
    aget-byte v8, v1, v7

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 67
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x5

    .line 68
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    if-nez v4, :cond_f

    if-nez v8, :cond_f

    if-nez v10, :cond_f

    if-nez v12, :cond_f

    .line 69
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_5

    .line 70
    :cond_f
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_10

    sget v3, Ll0/c0;->h:I

    if-ne v3, v8, :cond_10

    sget v3, Ll0/c0;->i:I

    if-ne v3, v10, :cond_10

    sget v3, Ll0/c0;->j:I

    if-eq v3, v12, :cond_11

    .line 71
    :cond_10
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_11

    .line 72
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 73
    sput v13, Ll0/c0;->k:I

    .line 74
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 75
    :cond_11
    :goto_5
    sput v4, Ll0/c0;->g:I

    .line 76
    sput v8, Ll0/c0;->h:I

    .line 77
    sput v10, Ll0/c0;->i:I

    .line 78
    sput v12, Ll0/c0;->j:I

    .line 79
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->x1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 80
    aget-byte v2, v1, v7

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->x1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 81
    aget-byte v2, v1, v9

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->x1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 82
    aget-byte v1, v1, v11

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->x1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :pswitch_2
    const/16 v8, 0xff

    add-int/lit8 v2, p2, 0x2

    .line 83
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->x1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->x1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->x1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 86
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->x1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :pswitch_3
    const/16 v8, 0xff

    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v7, p2, 0x3

    .line 88
    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    add-int/lit8 v9, p2, 0x4

    .line 89
    aget-byte v9, v1, v9

    and-int/2addr v9, v8

    add-int/lit8 v10, p2, 0x5

    .line 90
    aget-byte v11, v1, v10

    and-int/2addr v11, v8

    add-int/lit8 v12, p2, 0x6

    .line 91
    aget-byte v12, v1, v12

    and-int/2addr v12, v8

    add-int/lit8 v17, p2, 0x7

    .line 92
    aget-byte v13, v1, v17

    and-int/2addr v13, v8

    add-int/lit8 v17, p2, 0x8

    .line 93
    aget-byte v14, v1, v17

    and-int/2addr v14, v8

    new-array v8, v6, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v8, v3

    const/16 v4, 0xa

    .line 94
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v5, v6, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v5, v3

    .line 95
    invoke-static {v8, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v6

    aput v8, v5, v3

    const/16 v8, 0xc

    .line 96
    invoke-static {v8, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v8, v6, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v3

    .line 97
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3e

    new-array v8, v6, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v3

    .line 98
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xf

    new-array v8, v6, [I

    shr-int/lit8 v16, v2, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v3

    .line 99
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v8, v6, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    aput v2, v8, v3

    .line 100
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v5, v6, [I

    shr-int/lit8 v8, v7, 0x7

    and-int/2addr v8, v6

    aput v8, v5, v3

    .line 101
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v6, [I

    shr-int/lit8 v8, v7, 0x6

    and-int/2addr v8, v6

    aput v8, v5, v3

    .line 102
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v5, v6, [I

    shr-int/lit8 v8, v7, 0x5

    and-int/2addr v8, v6

    aput v8, v5, v3

    .line 103
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v6, [I

    and-int/lit8 v7, v7, 0xf

    aput v7, v5, v3

    .line 104
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v5, v6, [I

    shr-int/lit8 v7, v12, 0x6

    and-int/2addr v7, v6

    aput v7, v5, v3

    .line 105
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 106
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 107
    aget-byte v2, v1, v10

    const/16 v5, 0xff

    and-int/lit16 v9, v2, 0xff

    .line 108
    aget-byte v2, v1, v10

    and-int/lit16 v11, v2, 0xff

    :cond_12
    const/16 v2, 0x7f

    const/16 v5, 0x1f

    const/16 v8, 0x1b

    if-eqz v9, :cond_16

    if-eq v9, v2, :cond_15

    if-lt v9, v5, :cond_14

    const/16 v10, 0x3b

    if-gt v9, v10, :cond_14

    if-ne v7, v6, :cond_13

    new-array v10, v6, [I

    mul-int/2addr v9, v4

    add-int/lit16 v9, v9, 0x10e

    aput v9, v10, v3

    .line 109
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    new-array v10, v6, [I

    mul-int/2addr v9, v15

    aput v9, v10, v3

    .line 110
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_14
    new-array v9, v6, [I

    const/4 v10, -0x1

    aput v10, v9, v3

    .line 111
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_15
    new-array v9, v6, [I

    const/4 v10, -0x3

    aput v10, v9, v3

    .line 112
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_16
    new-array v9, v6, [I

    const/4 v10, -0x2

    aput v10, v9, v3

    .line 113
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v8, 0x1c

    if-eqz v11, :cond_1a

    if-eq v11, v2, :cond_19

    if-lt v11, v5, :cond_18

    const/16 v9, 0x3b

    if-gt v11, v9, :cond_18

    if-ne v7, v6, :cond_17

    new-array v9, v6, [I

    mul-int/2addr v11, v4

    add-int/lit16 v11, v11, 0x10e

    aput v11, v9, v3

    .line 114
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_17
    new-array v9, v6, [I

    mul-int/2addr v11, v15

    aput v11, v9, v3

    .line 115
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_18
    new-array v9, v6, [I

    const/4 v10, -0x1

    aput v10, v9, v3

    .line 116
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_19
    new-array v9, v6, [I

    const/4 v10, -0x3

    aput v10, v9, v3

    .line 117
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1a
    new-array v9, v6, [I

    const/4 v10, -0x2

    aput v10, v9, v3

    .line 118
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v8, 0x43

    new-array v9, v6, [I

    shr-int/lit8 v10, v12, 0x0

    and-int/2addr v10, v6

    aput v10, v9, v3

    .line 119
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x35

    new-array v9, v6, [I

    shr-int/lit8 v10, v12, 0x2

    and-int/2addr v10, v6

    aput v10, v9, v3

    .line 120
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x41

    new-array v9, v6, [I

    const/4 v10, 0x3

    shr-int/lit8 v11, v12, 0x3

    and-int/lit8 v10, v11, 0x1

    aput v10, v9, v3

    .line 121
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x28

    if-eqz v13, :cond_1e

    if-eq v13, v2, :cond_1d

    if-lt v13, v5, :cond_1c

    const/16 v2, 0x3b

    if-gt v13, v2, :cond_1c

    if-ne v7, v6, :cond_1b

    new-array v2, v6, [I

    mul-int/2addr v13, v4

    add-int/lit16 v13, v13, 0x10e

    aput v13, v2, v3

    .line 122
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    new-array v2, v6, [I

    mul-int/2addr v13, v15

    aput v13, v2, v3

    .line 123
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1c
    new-array v2, v6, [I

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 124
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1d
    new-array v2, v6, [I

    const/4 v4, -0x3

    aput v4, v2, v3

    .line 125
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1e
    new-array v2, v6, [I

    const/4 v4, -0x2

    aput v4, v2, v3

    .line 126
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0x2a

    new-array v4, v6, [I

    shr-int/lit8 v7, v14, 0x7

    and-int/2addr v7, v6

    aput v7, v4, v3

    .line 127
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v4, v6, [I

    shr-int/lit8 v7, v14, 0x6

    and-int/2addr v7, v6

    aput v7, v4, v3

    .line 128
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v4, v6, [I

    shr-int/lit8 v7, v14, 0x5

    and-int/2addr v7, v6

    aput v7, v4, v3

    .line 129
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v4, v6, [I

    shr-int/lit8 v7, v14, 0x4

    and-int/2addr v7, v6

    aput v7, v4, v3

    .line 130
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v4, v6, [I

    shr-int/lit8 v7, v14, 0x3

    and-int/2addr v7, v6

    aput v7, v4, v3

    .line 131
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v6, [I

    const/4 v7, 0x7

    and-int/2addr v7, v14

    aput v7, v4, v3

    .line 132
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 133
    aget-byte v8, v1, v7

    shr-int/2addr v8, v3

    const/4 v11, 0x3

    and-int/2addr v8, v11

    aput v8, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v6, [I

    .line 134
    aget-byte v8, v1, v7

    const/4 v9, 0x2

    shr-int/2addr v8, v9

    and-int/2addr v8, v11

    aput v8, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 135
    aget-byte v4, v1, v7

    const/4 v8, 0x4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v2, v3

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v6, [I

    .line 136
    aget-byte v1, v1, v7

    const/4 v5, 0x6

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_4
    move v11, v5

    add-int/lit8 v2, p2, 0x2

    .line 137
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 138
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 139
    iput v2, v0, Lk0/ds;->h:I

    move v2, v3

    .line 140
    :goto_9
    iget-object v4, v0, Lk0/ds;->i:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_20

    .line 141
    iget v5, v0, Lk0/ds;->h:I

    aget-object v11, v4, v2

    aget v11, v11, v3

    if-ne v5, v11, :cond_1f

    if-eqz v5, :cond_20

    .line 142
    iput v2, v0, Lk0/ds;->g:I

    goto :goto_a

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 143
    :cond_20
    :goto_a
    iget v5, v0, Lk0/ds;->h:I

    if-eq v5, v6, :cond_28

    const/4 v11, 0x2

    if-eq v5, v11, :cond_27

    const/4 v11, 0x6

    if-eq v5, v11, :cond_26

    const/16 v11, 0xe0

    if-eq v5, v11, :cond_24

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v6, :cond_21

    .line 144
    array-length v1, v4

    if-ge v2, v1, :cond_2b

    .line 145
    aget-object v1, v4, v2

    aget v1, v1, v6

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_21
    if-nez v1, :cond_2b

    .line 146
    iget v1, v0, Lk0/ds;->g:I

    array-length v2, v4

    if-ge v1, v2, :cond_22

    const/16 v2, 0xff

    if-eq v1, v2, :cond_23

    .line 147
    aget-object v1, v4, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_b

    :cond_22
    const/16 v2, 0xff

    .line 148
    :cond_23
    :goto_b
    iput v2, v0, Lk0/ds;->g:I

    goto/16 :goto_c

    :cond_24
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v6, :cond_2b

    .line 149
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_25

    new-array v1, v6, [I

    aput v6, v1, v3

    const/16 v2, 0x62

    .line 150
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 151
    invoke-static {v12, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xfa

    .line 152
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 153
    iput-boolean v6, v0, Lk0/ds;->e:Z

    .line 154
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_c

    .line 155
    :cond_25
    iget-boolean v1, v0, Lk0/ds;->e:Z

    if-eqz v1, :cond_2b

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_2b

    new-array v1, v6, [I

    aput v3, v1, v3

    const/16 v2, 0x62

    .line 156
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 157
    invoke-static {v8, v9}, La/i;->a0(J)V

    .line 158
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-boolean v3, v0, Lk0/ds;->e:Z

    goto :goto_c

    .line 160
    :cond_26
    sget v2, Lk0/ds;->E:I

    if-ne v2, v6, :cond_2b

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v6, :cond_2b

    const/16 v1, 0xc

    .line 161
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 162
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_27
    const/16 v2, 0xff

    .line 163
    sget v4, Lk0/ds;->E:I

    if-ne v4, v6, :cond_2b

    and-int/2addr v1, v2

    if-ne v1, v6, :cond_2b

    const/16 v1, 0x8

    .line 164
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 165
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_28
    const/16 v2, 0xff

    .line 166
    sget v4, Lk0/ds;->E:I

    if-ne v4, v6, :cond_2b

    and-int/2addr v1, v2

    if-ne v1, v6, :cond_2b

    const/4 v1, 0x7

    .line 167
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 168
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 169
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1200

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_c

    .line 170
    :cond_2a
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_2b
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ds;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ds;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ds;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/ds;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lk0/ot;->d:Lo1/y;

    iget-object v1, p0, Lk0/ds;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 8
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ls18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lt18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    const-string v1, "persist.lsec.c8918L.dual_port"

    .line 10
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    .line 11
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lk0/qt;->r0()V

    :cond_1
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

    if-eqz v0, :cond_3

    const-string v0, "sys.fyt.cvbs_0.bus_width"

    .line 14
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 15
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lk0/qt;->r0()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    .line 19
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sys.fyt.cvbs_2.bus_width"

    .line 20
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 21
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lk0/qt;->r0()V

    .line 23
    :cond_4
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lk0/qt;->r0()V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7a01c8 -> :sswitch_0
        0xa701c7 -> :sswitch_0
        0xa801c7 -> :sswitch_0
        0xa901c7 -> :sswitch_0
        0xaa01c7 -> :sswitch_0
        0xab01c7 -> :sswitch_0
        0xfd01c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6b

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

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ds;->o3(I)V

    .line 2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ds;->n3(I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_7

    .line 3
    array-length p1, p2

    if-lez p1, :cond_7

    .line 4
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/ds;->s3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, 0xa7

    aput p3, p1, v4

    aput v1, p1, v2

    .line 5
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v1

    const/4 p3, 0x6

    aget v0, p2, v0

    aput v0, p1, p3

    const/4 p3, 0x7

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_3
    aget p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0xb5

    const/16 v6, 0xc6

    if-eq p1, v5, :cond_5

    const/16 v5, 0xf7

    if-eq p1, v5, :cond_4

    packed-switch p1, :pswitch_data_0

    new-array p1, v1, [I

    aput p3, p1, v3

    aput v6, p1, v4

    aput v2, p1, v2

    .line 7
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :pswitch_0
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ds;->m3(I)V

    goto :goto_0

    .line 9
    :pswitch_1
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ds;->r3(I)V

    goto :goto_0

    .line 10
    :pswitch_2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ds;->p3(I)V

    goto :goto_0

    .line 11
    :pswitch_3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ds;->l3(I)V

    goto :goto_0

    .line 12
    :cond_4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ds;->q3(I)V

    goto :goto_0

    .line 13
    :cond_5
    aget p1, p2, v4

    if-ne p1, v4, :cond_6

    const-string p1, "persist.lesc.video.ignore"

    .line 14
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 15
    sget p1, Lk0/ds;->E:I

    if-nez p1, :cond_6

    .line 16
    sget p1, Lk0/ds;->H:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    :cond_6
    new-array p1, v1, [I

    aput p3, p1, v3

    aput v6, p1, v4

    aput v2, p1, v2

    .line 17
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xfc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x6a

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ds;->I:I

    .line 3
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ds;->I:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final m3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x63

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ds;->B:I

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xa8

    aput v3, v1, v0

    const/4 v0, 0x2

    const/4 v3, 0x5

    aput v3, v1, v0

    const/4 v4, 0x3

    aput p1, v1, v4

    const/4 p1, 0x4

    aput v2, v1, p1

    aput v2, v1, v3

    const/4 p1, 0x6

    aput v2, v1, p1

    const/4 p1, 0x7

    aput v2, v1, p1

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ds;->B:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x68

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ds;->G:I

    .line 3
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/ds;->G:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/ds;->G:I

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
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    sget v0, Lk0/ds;->G:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
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
    sput p1, Lk0/ds;->F:I

    .line 3
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/ds;->F:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/ds;->F:I

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
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    sget v0, Lk0/ds;->F:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final p3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x69

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ds;->H:I

    .line 3
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ds;->H:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final q3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x66

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ds;->E:I

    .line 3
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ds;->E:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final r3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x64

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ds;->C:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    const/16 v3, 0xb6

    aput v3, v1, v0

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ds;->C:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final s3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/ds;->D:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x65

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ds;->D:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ds;->m:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
