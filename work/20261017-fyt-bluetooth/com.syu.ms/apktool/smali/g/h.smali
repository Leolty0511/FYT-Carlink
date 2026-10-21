.class public Lg/h;
.super Lg/m;
.source "SourceFile"


# instance fields
.field public final R0:Ljava/lang/Runnable;

.field public final S0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/m;-><init>()V

    .line 2
    new-instance v0, Lg/h$a;

    invoke-direct {v0, p0}, Lg/h$a;-><init>(Lg/h;)V

    iput-object v0, p0, Lg/h;->R0:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lg/h$b;

    invoke-direct {v0, p0}, Lg/h$b;-><init>(Lg/h;)V

    iput-object v0, p0, Lg/h;->S0:Ljava/lang/Runnable;

    const/16 v0, 0x40

    .line 4
    sput v0, Lf1/e;->W:I

    .line 5
    iget-object v0, p0, Lg/k;->u0:[I

    iput-object v0, p0, Lg/k;->v0:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    iput-object v0, p0, Lg/k;->t0:[I

    .line 7
    invoke-static {}, Lg/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lchip/Chip;->U(Z)V

    const/16 v0, 0xc8

    .line 9
    invoke-static {v0}, Lm1/c;->i(I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x40
        0x0
        0x35
        0x25
        0x40
        0x8
        0x0
        0x44
        0x14
        0x46
        0x15
        0x8
        0x40
        0x0
    .end array-data
.end method


# virtual methods
.method public K()V
    .locals 2

    const-string/jumbo v0, "sys.fyt.bootvideo"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lchip/Chip;->K()V

    :cond_0
    return-void
.end method

.method public V()V
    .locals 2

    const-string v0, "/dev/i2c-0"

    .line 1
    iput-object v0, p0, Lchip/Chip;->c:Ljava/lang/String;

    const-string v0, "/dev/i2c-2"

    .line 2
    iput-object v0, p0, Lchip/Chip;->d:Ljava/lang/String;

    const-string v0, "/dev/ttyS2"

    .line 3
    iput-object v0, p0, Lchip/Chip;->e:Ljava/lang/String;

    const-string v1, "/dev/ttyS0"

    .line 4
    iput-object v1, p0, Lchip/Chip;->f:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lchip/Chip;->g:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lchip/Chip;->h:Ljava/lang/String;

    const-string v0, "/dev/ttyS1"

    .line 7
    iput-object v0, p0, Lchip/Chip;->i:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lchip/Chip;->j:Ljava/lang/String;

    const-string v0, "Qin"

    const-string v1, "--------->>>  setupDevPath"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public X()V
    .locals 7

    .line 1
    new-instance v0, Lf1/o$f;

    const-string v1, "TP2815"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v3, Lf1/a;

    const-string v4, "/dev/i2c-0"

    const/16 v5, 0x44

    invoke-direct {v1, v4, v5, v3}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 2
    new-instance v0, Lf1/o$f;

    const-string v1, "TP2850"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v4, Lf1/b;

    const-string v6, "/dev/i2c-3"

    invoke-direct {v1, v6, v5, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 3
    new-instance v0, Lf1/o$f;

    const-string v1, "TP9963"

    invoke-direct {v0, v1, v3}, Lf1/o$f;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lf1/o$d;

    const-class v4, Lf1/e;

    invoke-direct {v1, v6, v5, v4}, Lf1/o$d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {v0, v1}, Lf1/o;->a(Lf1/o$f;Lf1/o$d;)V

    .line 4
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    const-string/jumbo v1, "sys.fyt.main.vc_"

    invoke-virtual {v0, v2, v1}, Lf1/o;->A(ILjava/lang/String;)V

    .line 5
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    const-string/jumbo v1, "sys.fyt.sub.vc_"

    invoke-virtual {v0, v3, v1}, Lf1/o;->A(ILjava/lang/String;)V

    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    sget-object v0, Ly0/g;->j:Lo1/y;

    iget-object v1, p0, Lg/o;->j0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v1, Lu0/c;->h:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lg/p;->I0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lu0/c;->z:Lo1/y;

    iget-object v2, p0, Lg/h;->S0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lg/p;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    invoke-super {p0}, Lg/p;->a()V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-super {p0}, Lg/p;->b()V

    const/16 v0, 0xd0

    .line 2
    invoke-static {v0}, Lm1/c;->i(I)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    const/4 v0, 0x6

    .line 4
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    .line 5
    sget v0, Ly0/f;->h1:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 6
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    .line 7
    sget-object v0, Ly0/g;->j:Lo1/y;

    iget-object v2, p0, Lg/o;->j0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v2, p0, Lg/o;->k0:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object v0, p0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v2, p0, Lg/p;->M0:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v0, 0xc8

    .line 12
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget-object v0, v0, Lu0/i;->b0:Lo1/y;

    iget-object v2, p0, Lg/h;->R0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    :cond_1
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lg/p;->I0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v2, p0, Lg/h;->S0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lg/p;->J0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public f0()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    const/4 v0, 0x5

    .line 2
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    const/4 v0, 0x6

    .line 3
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->setInputForGpio(II)I

    return-void
.end method

.method public g0(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lg/m;->g0(II)V

    const/16 v0, 0x12

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_0

    move v1, v3

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, p1}, Lf1/o;->d(I)Lf1/q;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0xf0

    const/16 v4, 0x2d0

    .line 3
    invoke-virtual {p2, v2, v4, v0}, Lf1/q;->l(III)V

    const/16 v0, 0x120

    .line 4
    invoke-virtual {p2, v3, v4, v0}, Lf1/q;->l(III)V

    .line 5
    sget v0, Lf1/q;->L:I

    const-string v2, "a"

    invoke-virtual {p2, v0, v2}, Lf1/q;->F(ILjava/lang/String;)V

    .line 6
    sget v0, Lf1/q;->M:I

    const-string v2, "b"

    invoke-virtual {p2, v0, v2}, Lf1/q;->F(ILjava/lang/String;)V

    .line 7
    :cond_1
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 8
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 9
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 10
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 11
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 12
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 13
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 14
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v0, 0x9

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 15
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, v1, p1}, Lf1/o;->w(II)V

    .line 16
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    const/16 v0, 0x10

    invoke-virtual {p2, v0, p1}, Lf1/o;->w(II)V

    .line 17
    iget-boolean p2, p0, Lchip/Chip;->E:Z

    xor-int/lit8 v2, p2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 18
    iget-object p2, p0, Lchip/Chip;->z:Lf1/o;

    invoke-virtual {p2, p1, v1}, Lf1/o;->C(II)Z

    :cond_2
    return-void
.end method

.method public h0(I)V
    .locals 1

    const/16 v0, 0x25

    .line 1
    invoke-static {v0, p1}, Lcom/syu/jni/ToolsJni;->callSystemCtrl(II)I

    return-void
.end method

.method public j(Lmodule/sound/AudioDevice;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lg/p;->j(Lmodule/sound/AudioDevice;)V

    .line 2
    instance-of v0, p1, Lmodule/sound/C7604;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    if-ne v1, v0, :cond_0

    const/4 v2, 0x3

    .line 3
    invoke-virtual {p1, v1, v2}, Lmodule/sound/AudioDevice;->V0(II)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Lmodule/sound/AudioDevice;->j0(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, -0x4

    .line 5
    invoke-virtual {p1, v1, v2}, Lmodule/sound/AudioDevice;->V0(II)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l()I
    .locals 2

    const-string v0, "/sys/devices/virtual/mstar/msys/TEMP_R"

    .line 1
    invoke-static {v0}, Lo1/q0;->s(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lchip/Chip;->d:Ljava/lang/String;

    return-object p1
.end method
