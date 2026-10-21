.class public Lg/o;
.super Lchip/Chip;
.source "SourceFile"


# instance fields
.field public e0:Z

.field public f0:Ljava/lang/Runnable;

.field public final g0:Ljava/lang/Runnable;

.field public h0:Ljava/lang/Runnable;

.field public i0:Ljava/lang/Runnable;

.field public final j0:Ljava/lang/Runnable;

.field public final k0:Ljava/lang/Runnable;

.field public l0:Ljava/lang/Runnable;

.field public m0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lchip/Chip;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg/o;->e0:Z

    .line 3
    new-instance v1, Lg/o$g;

    invoke-direct {v1, p0}, Lg/o$g;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->g0:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Lg/o$h;

    invoke-direct {v1, p0}, Lg/o$h;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->h0:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lg/o$i;

    invoke-direct {v1, p0}, Lg/o$i;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->i0:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lg/o$j;

    invoke-direct {v1, p0}, Lg/o$j;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->j0:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lg/o$k;

    invoke-direct {v1, p0}, Lg/o$k;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->k0:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lg/o$l;

    invoke-direct {v1, p0}, Lg/o$l;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->l0:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lg/o$a;

    invoke-direct {v1, p0}, Lg/o$a;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->m0:Ljava/lang/Runnable;

    const/16 v1, 0xb

    .line 10
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lchip/Chip;->m:Z

    .line 11
    invoke-virtual {p0}, Lg/o;->X()V

    .line 12
    invoke-virtual {p0}, Lchip/Chip;->G()V

    .line 13
    new-instance v1, Ljava/io/File;

    const-string v3, "/dev/ch7026"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lg/o;->e0:Z

    const/16 v1, 0x21

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lchip/Chip;->b:Ljava/lang/Integer;

    .line 16
    invoke-static {}, Lb/b;->f()Lb/b;

    move-result-object v1

    new-instance v3, Lg/o$d;

    invoke-direct {v3, p0}, Lg/o$d;-><init>(Lg/o;)V

    invoke-virtual {v1, v3}, Lb/b;->h(Lb/b$a;)V

    .line 17
    sput v0, Lu0/b;->P3:I

    .line 18
    sput v2, Lu0/b;->y4:I

    .line 19
    sput v2, Ly0/f;->d1:I

    .line 20
    sput v2, Ly0/f;->b1:I

    .line 21
    sput v2, Ly0/f;->c1:I

    .line 22
    sput v2, Ly0/f;->Z0:I

    .line 23
    sput v2, Ly0/f;->a1:I

    .line 24
    sput v2, Ly0/f;->e1:I

    .line 25
    sput v2, Lu0/b;->z4:I

    .line 26
    sput v2, Lp0/b;->j:I

    .line 27
    sput v2, Ly0/f;->g1:I

    const/16 v1, 0x3fd

    .line 28
    invoke-static {v1}, Lm1/c;->i(I)V

    .line 29
    iget-boolean v1, p0, Lg/o;->e0:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.sf.swrotation"

    .line 30
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x5a

    const/4 v3, 0x4

    rem-int/2addr v1, v3

    const/16 v4, 0xa

    .line 31
    invoke-static {v4, v1}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 32
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_read()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    :try_start_0
    array-length v4, v1

    if-ne v4, v3, :cond_0

    const/4 v3, 0x2

    .line 34
    aget v3, v1, v3

    sput v3, Lu0/b;->y1:I

    const/4 v3, 0x3

    .line 35
    aget v3, v1, v3

    sput v3, Lu0/b;->z1:I

    .line 36
    aget v3, v1, v0

    sput v3, Lu0/b;->A1:I

    .line 37
    aget v1, v1, v2

    sput v1, Lu0/b;->B1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    const-string v1, "dcam=err"

    .line 38
    invoke-virtual {p0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "dcam=timeout"

    .line 39
    invoke-virtual {p0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "IIS=ON"

    .line 40
    invoke-virtual {p0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "IIS=OFF"

    .line 41
    invoke-virtual {p0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    :catch_1
    sget-object v1, Lf/b;->d:Lf/b;

    iget-object v1, v1, Lf/b;->c:Lf/c;

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {v1}, Lf/c;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    new-instance v1, Lg/o$e;

    invoke-direct {v1, p0}, Lg/o$e;-><init>(Lg/o;)V

    iput-object v1, p0, Lg/o;->f0:Ljava/lang/Runnable;

    .line 45
    sget-object v3, Lh0/d;->a:Lo1/y;

    invoke-virtual {v3, v1, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 46
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lg/o;->f0:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 47
    sget-object v1, Ly0/g;->k:Lo1/z;

    new-instance v3, Lg/o$f;

    invoke-direct {v3, p0}, Lg/o$f;-><init>(Lg/o;)V

    invoke-virtual {v1, v3}, Lo1/z;->a(Lo1/p;)V

    .line 48
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    iget-object v1, v1, Lu0/i;->d0:Lo1/y;

    iget-object v3, p0, Lg/o;->f0:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 49
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    iget-object v0, v0, Lu0/i;->c0:Lo1/y;

    iget-object v1, p0, Lg/o;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const-string v0, "V2854"

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lchip/Chip;->C()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public E(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "dcam=timeout"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Le1/a;->b:Le1/l;

    instance-of v0, v0, Le1/c;

    if-eqz v0, :cond_3

    .line 3
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v0, Le1/a;->b:Le1/l;

    check-cast v0, Le1/c;

    invoke-virtual {v0}, Le1/c;->r()V

    goto :goto_0

    :cond_1
    const-string v0, "IIS=ON"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->h0(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "IIS=OFF"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->h0(Z)V

    .line 11
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lchip/Chip;->E(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public M()Z
    .locals 4

    const-string v0, "persist.fyt.externalfm"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget v3, Lw0/d;->a:I

    if-eq v3, v2, :cond_1

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public S(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lg/o$c;

    invoke-direct {p1, p0}, Lg/o$c;-><init>(Lg/o;)V

    sput-object p1, La/c;->a:Lbase/a;

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lchip/Chip;->S(Z)V

    :goto_0
    return-void
.end method

.method public V()V
    .locals 2

    const-string v0, "/dev/i2c-4"

    .line 1
    iput-object v0, p0, Lchip/Chip;->d:Ljava/lang/String;

    const-string v0, "/dev/ttyS1"

    .line 2
    iput-object v0, p0, Lchip/Chip;->e:Ljava/lang/String;

    const-string v1, "/dev/ttyS0"

    .line 3
    iput-object v1, p0, Lchip/Chip;->f:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lchip/Chip;->g:Ljava/lang/String;

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lchip/Chip;->h:Ljava/lang/String;

    const-string v1, "/dev/ttyS2"

    .line 6
    iput-object v1, p0, Lchip/Chip;->i:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lchip/Chip;->j:Ljava/lang/String;

    return-void
.end method

.method public W()V
    .locals 2

    .line 1
    sget-object v0, Lbase/Configure$Property;->Z:Lbase/Configure$Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lchip/Chip;->s:Landroid/os/Handler;

    new-instance v1, Lg/o$b;

    invoke-direct {v1, p0}, Lg/o$b;-><init>(Lg/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lchip/Chip;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lg/o;->h0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lplugins/ZLink;->X(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lplugins/Wenet;->Y()Lplugins/Wenet;

    move-result-object v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lplugins/Wenet;->X(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput v0, Lo0/e;->g:I

    const/4 v0, 0x1

    .line 2
    sput v0, Ly0/f;->V:I

    .line 3
    sput-boolean v0, Lu0/b;->E3:Z

    .line 4
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lg/o;->h0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v1, Lu0/c;->C:Lo1/y;

    iget-object v2, p0, Lg/o;->i0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v1, Lu0/c;->B:Lo1/y;

    iget-object v2, p0, Lg/o;->i0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v1, Lo0/f;->b:Lo1/y;

    iget-object v2, p0, Lg/o;->l0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lg/o;->m0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.zjinnova.zlink"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lplugins/ZLink;->g0(Landroid/content/Context;)V

    .line 11
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.syu.carlink"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.syu.hicar"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    :cond_1
    invoke-static {}, Lh1/a;->d()Lh1/a;

    .line 14
    :cond_2
    invoke-static {}, Lplugins/DabDev;->Z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lplugins/DabDev;->X()Lplugins/DabDev;

    move-result-object v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lplugins/DabDev;->a0(Landroid/content/Context;)V

    .line 16
    :cond_3
    invoke-static {}, Lplugins/Wenet;->Y()Lplugins/Wenet;

    move-result-object v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lplugins/Wenet;->Z(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lplugins/EasyConn;->Z()Lplugins/EasyConn;

    move-result-object v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lplugins/EasyConn;->b0(Landroid/content/Context;)V

    .line 18
    invoke-super {p0}, Lchip/Chip;->b()V

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lchip/Chip;->c:Ljava/lang/String;

    const-string v1, "/dev/i2c-5"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object v1, p0, Lchip/Chip;->c:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-super {p0}, Lchip/Chip;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
