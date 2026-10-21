.class public Ln0/k1;
.super Ln0/c4;
.source "SourceFile"


# static fields
.field public static A:[I

.field public static B:[I


# instance fields
.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Ln0/k1;->A:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Ln0/k1;->B:[I

    return-void

    :array_0
    .array-data 4
        0xa
        0x23
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x1e
        0x37
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/k1;->z:I

    return-void
.end method

.method public static synthetic S3()[I
    .locals 1

    .line 1
    sget-object v0, Ln0/k1;->A:[I

    return-object v0
.end method

.method public static synthetic T3()[I
    .locals 1

    .line 1
    sget-object v0, Ln0/k1;->B:[I

    return-object v0
.end method


# virtual methods
.method public H3(Lmodule/sound/AudioDevice;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->H3(Lmodule/sound/AudioDevice;)V

    const-string v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 4
    instance-of v3, p1, Lmodule/sound/C32107;

    if-eqz v3, :cond_2

    .line 5
    sget-object v0, Lmodule/sound/C32107$CHANNEL;->c:Lmodule/sound/C32107$CHANNEL;

    iget v3, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v2, v3}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    iget v0, v0, Lmodule/sound/C32107$CHANNEL;->a:I

    invoke-virtual {p1, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v2, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    invoke-virtual {p1, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public I3(Le1/c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    .line 2
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Le1/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Le1/e;->R(Z)V

    :cond_0
    return-void
.end method

.method public N2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ln0/c4;->N2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Li1/b;

    const/16 p2, 0x15

    const/16 v0, 0x14

    invoke-direct {p1, p2, v0}, Li1/b;-><init>(II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public P2()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lu0/b;->t4:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 3
    invoke-static {}, Ly0/d;->r()V

    .line 4
    invoke-static {}, Ly0/d;->x()V

    const-string v0, "/dev/ttyS0"

    .line 5
    invoke-static {v0}, Lz/k;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lz/a;->w:Lo1/i0;

    const-string v1, "/dev/snd/sound_spectrogram"

    invoke-virtual {v0, v1}, Lo1/i0;->a(Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lz/k;->c()V

    .line 8
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 9
    invoke-static {}, Ly0/b;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method public X2()V
    .locals 6

    .line 1
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object v0

    const-string v1, "2"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/b;->b(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    new-instance v3, Ln0/k1$b;

    invoke-direct {v3, p0}, Ln0/k1$b;-><init>(Ln0/k1;)V

    const/16 v4, 0x110

    invoke-virtual {v0, v4, v3}, Lc/f;->i(ILc/f$a;)V

    const-string v0, "persist.sys.syu.audio"

    const-string v3, ""

    .line 3
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "sys.fyt.bluetooth_type"

    const-string v5, "0"

    .line 4
    invoke-static {v4, v5}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "32107"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ln0/k1$c;

    invoke-direct {v0, p0}, Ln0/k1$c;-><init>(Ln0/k1;)V

    .line 8
    sget-object v1, Lu0/c;->b:Lo1/z;

    invoke-virtual {v1, v0}, Lo1/z;->a(Lo1/p;)V

    .line 9
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x6

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-static {v4, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    .line 10
    :cond_2
    invoke-super {p0}, Ln0/c4;->X2()V

    .line 11
    sget-object v0, Lg/e;->a:Lg/g;

    instance-of v1, v0, Lchip/Chip;

    if-eqz v1, :cond_3

    .line 12
    check-cast v0, Lchip/Chip;

    .line 13
    invoke-virtual {v0}, Lchip/Chip;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Ln0/k1;->N2(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    :cond_3
    new-instance v0, Li1/d;

    const/16 v1, 0x17

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Li1/d;-><init>(II)V

    .line 15
    new-instance v0, Li1/c;

    const/16 v1, 0x13

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Li1/c;-><init>(II)V

    .line 16
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xa

    new-instance v2, Ln0/k1$d;

    invoke-direct {v2, p0}, Ln0/k1$d;-><init>(Ln0/k1;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->h(ILc/f$a;)V

    return-void
.end method

.method public Z2()V
    .locals 1

    .line 1
    invoke-static {}, Lg/f;->j()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    const/4 v0, 0x6

    .line 3
    invoke-static {v0}, Lc1/b;->g(I)V

    return-void
.end method

.method public a3()V
    .locals 4

    .line 1
    invoke-static {}, Lg/f;->k()V

    const-string v0, "sys.fyt.voice.dzsj"

    const-string v1, "true"

    .line 2
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const-string v2, "syu.persist.tmps"

    .line 4
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xb

    const-string v3, "/dev/ttyS4"

    if-ne v0, v1, :cond_0

    const v0, 0x9600

    .line 5
    invoke-static {v3, v0, v2}, Lz/k;->k(Ljava/lang/String;II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.syu.driver"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2580

    .line 7
    invoke-static {v3, v0, v2}, Lz/k;->k(Ljava/lang/String;II)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v3}, Lz/k;->f(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 10
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    aput v1, v0, v2

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Lg/e;->g()I

    :goto_0
    return-void
.end method

.method public b3()V
    .locals 4

    .line 1
    invoke-static {}, Lg/f;->l()V

    .line 2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const-string v2, "syu.persist.tmps"

    .line 3
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xb

    const-string v3, "/dev/ttyS4"

    if-ne v0, v1, :cond_0

    const v0, 0x9600

    .line 4
    invoke-static {v3, v0, v2}, Lz/k;->k(Ljava/lang/String;II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.syu.driver"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2580

    .line 6
    invoke-static {v3, v0, v2}, Lz/k;->k(Ljava/lang/String;II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v3}, Lz/k;->f(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lu0/b;->t4:[I

    const/4 v1, 0x3

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 9
    sget-object v0, Ly0/b;->b:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    aput v1, v0, v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    .line 11
    invoke-static {v0}, Lc1/b;->g(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public h3()I
    .locals 2

    .line 1
    iget v0, p0, Ln0/c4;->f:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v0, 0x34

    .line 2
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Ln0/c4;->f:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public j3()V
    .locals 3

    const-string v0, "DZSJ"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x63

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->h2:Z

    .line 4
    sput-boolean v0, Lu0/b;->n2:Z

    .line 5
    sput v0, Le/b;->b:I

    const/4 v1, 0x3

    .line 6
    sput v1, Lu0/b;->o2:I

    const/4 v1, 0x0

    .line 7
    sput-boolean v1, Lu0/b;->p2:Z

    .line 8
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 9
    invoke-static {}, Lo1/q0;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x32

    .line 10
    sput v2, Lu0/b;->P2:I

    .line 11
    sput v2, Lu0/b;->R2:I

    .line 12
    :cond_0
    sput v0, Lh0/c;->i0:I

    .line 13
    sput-boolean v1, Lu0/b;->l2:Z

    return-void
.end method

.method public x3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c4;->x3()V

    .line 2
    new-instance v0, Ln0/k1$a;

    invoke-direct {v0, p0}, Ln0/k1$a;-><init>(Ln0/k1;)V

    sput-object v0, Lu0/b;->Y2:Lo1/o;

    return-void
.end method
