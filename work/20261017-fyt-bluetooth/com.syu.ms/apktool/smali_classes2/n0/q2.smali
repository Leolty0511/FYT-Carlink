.class public Ln0/q2;
.super Ln0/c4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/q2$o;
    }
.end annotation


# instance fields
.field public A:Ln0/q2$o;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/c4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln0/q2;->z:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln0/q2;->A:Ln0/q2$o;

    const/4 v0, 0x1

    .line 4
    sput v0, Ly0/f;->X0:I

    return-void
.end method


# virtual methods
.method public D3()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    iput-object v0, p0, Ln0/c4;->j:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3c
        0x41
    .end array-data
.end method

.method public I3(Le1/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->I3(Le1/c;)V

    .line 2
    instance-of v0, p1, Le1/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Le1/c;->v(II)V

    :cond_0
    return-void
.end method

.method public L3()V
    .locals 1

    const-string v0, "TZY"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const v0, 0xabcdef2

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->h2:Z

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lu0/b;->G3:Z

    return-void
.end method

.method public M2()V
    .locals 4

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    const-string v0, "com.yf.teyesspotif"

    const-string v1, "com.yf.teyesspotif.TeyesSpotifyService"

    .line 2
    invoke-static {v0, v1}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ru.teyes.update"

    const-string v1, "ru.teyes.update.service.SocketService"

    .line 3
    invoke-static {v0, v1}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn.teyes.online"

    const-string v1, "cn.teyes.online.service.SocketService"

    .line 4
    invoke-static {v0, v1}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.syu.rearcamera"

    const-string v1, "com.syu.fourcamera.ServiceCamera"

    .line 5
    invoke-static {v0, v1}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mdm.tw.com.mdm"

    const-string v1, "mdm.tw.com.mdm.services.MyService"

    .line 6
    invoke-static {v0, v1}, Lo1/u;->F0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.teyes.carkit.service.StartUvcService"

    const-string v1, "com.teyes.carkit"

    .line 7
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action.UartBrocastReceive"

    const-string v1, "com.tpms3"

    .line 8
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.angel.Android.MUSIC"

    const-string v1, "com.lodark.freetravel"

    .line 9
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ln0/q2$o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln0/q2$o;-><init>(Ln0/q2;Ln0/q2$f;)V

    iput-object v0, p0, Ln0/q2;->A:Ln0/q2$o;

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Ln0/q2;->A:Ln0/q2$o;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.syu.Turkey_Va"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "vn.autoai.android"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/4 v1, 0x7

    new-instance v2, Ln0/q2$f;

    invoke-direct {v2, p0}, Ln0/q2$f;-><init>(Ln0/q2;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->h(ILc/f$a;)V

    .line 14
    :cond_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x21b

    new-instance v2, Ln0/q2$g;

    invoke-direct {v2, p0}, Ln0/q2$g;-><init>(Ln0/q2;)V

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    .line 15
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.teyes.bibi"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x27b

    new-instance v2, Ln0/q2$h;

    invoke-direct {v2, p0}, Ln0/q2$h;-><init>(Ln0/q2;)V

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    :cond_1
    return-void
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

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lh0/c;->l0:Z

    :cond_2
    return-void
.end method

.method public S2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln0/q2;->T3()V

    .line 2
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    new-instance v1, Ln0/q2$k;

    invoke-direct {v1, p0}, Ln0/q2$k;-><init>(Ln0/q2;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lc/f;->h(ILc/f$a;)V

    .line 3
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    new-instance v1, Ln0/q2$l;

    invoke-direct {v1, p0}, Ln0/q2$l;-><init>(Ln0/q2;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lc/f;->h(ILc/f$a;)V

    .line 4
    invoke-super {p0}, Ln0/c4;->S2()V

    .line 5
    invoke-virtual {p0}, Ln0/q2;->S3()V

    return-void
.end method

.method public S3()V
    .locals 5

    .line 1
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 3
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    const/16 v2, 0x15

    const/16 v3, 0x58

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x16

    const/16 v3, 0x57

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x18

    .line 6
    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x17

    const/16 v3, 0x19

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x1b

    const/16 v4, 0x5b

    .line 8
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x1a

    const/16 v4, 0x20d

    .line 9
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    const-string v2, "ro.fota.device"

    const-string v4, ""

    .line 10
    invoke-static {v2, v4}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "vn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x22c

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 11
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x1c

    .line 12
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lr0/a;->d3(Landroid/util/SparseIntArray;Z)V

    return-void
.end method

.method public final T3()V
    .locals 7

    .line 1
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    instance-of v0, v0, Lui/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    check-cast v0, Lui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui/a;->p(Lui/a$g;)V

    .line 3
    :cond_0
    new-instance v0, Ln0/q2$n;

    invoke-direct {v0, p0}, Ln0/q2$n;-><init>(Ln0/q2;)V

    const/16 v1, 0x22

    const/16 v2, 0x52

    .line 4
    invoke-static {}, La/f;->w()I

    move-result v3

    const/16 v4, 0x780

    if-lt v3, v4, :cond_1

    const/16 v1, 0x32

    const/16 v2, 0x7a

    .line 5
    :cond_1
    new-instance v3, Lui/a$d;

    invoke-direct {v3}, Lui/a$d;-><init>()V

    .line 6
    invoke-static {}, La/f;->w()I

    move-result v4

    invoke-static {}, La/f;->i()I

    move-result v5

    invoke-interface {v0, v4, v5}, Lui/a$g;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lui/a$d;->p(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const/16 v4, 0x30

    .line 7
    invoke-virtual {v3, v4}, Lui/a$d;->h(I)Lui/a$d;

    move-result-object v3

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v3, v4}, Lui/a$d;->u(I)Lui/a$d;

    move-result-object v3

    const-string v5, "mute.png"

    .line 9
    invoke-virtual {v3, v5}, Lui/a$d;->l(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const-string v5, "unmute.png"

    .line 10
    invoke-virtual {v3, v5}, Lui/a$d;->g(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const-string v5, "bar.png"

    .line 11
    invoke-virtual {v3, v5}, Lui/a$d;->c(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const-string v5, "bar_p.png"

    .line 12
    invoke-virtual {v3, v5}, Lui/a$d;->d(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    sget v5, Ly0/f;->g:I

    .line 13
    invoke-virtual {v3, v5}, Lui/a$d;->o(I)Lui/a$d;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 14
    invoke-virtual {v3, v5}, Lui/a$d;->q([I)Lui/a$d;

    move-result-object v3

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, -0x1

    invoke-direct {v5, v2, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    invoke-virtual {v3, v5}, Lui/a$d;->s(Landroid/graphics/Rect;)Lui/a$d;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    invoke-virtual {v2, v3}, Lui/a$d;->j(Landroid/graphics/Rect;)Lui/a$d;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v4}, Lui/a$d;->i(Z)Lui/a$d;

    move-result-object v1

    .line 18
    invoke-interface {v0}, Lui/a$g;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lui/a$d;->t(I)Lui/a$d;

    move-result-object v1

    new-instance v2, Ln0/q2$b;

    invoke-direct {v2, p0}, Ln0/q2$b;-><init>(Ln0/q2;)V

    .line 19
    invoke-virtual {v1, v2}, Lui/a$d;->m(Landroid/view/View$OnClickListener;)Lui/a$d;

    move-result-object v1

    new-instance v2, Ln0/q2$a;

    invoke-direct {v2, p0}, Ln0/q2$a;-><init>(Ln0/q2;)V

    .line 20
    invoke-virtual {v1, v2}, Lui/a$d;->n(Lui/Bar$a;)Lui/a$d;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lui/a$d;->a()Lui/a;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lui/a;->p(Lui/a$g;)V

    const/4 v0, 0x3

    .line 23
    invoke-virtual {v1, v0}, Lui/a;->r(I)V

    .line 24
    new-instance v0, Ln0/q2$c;

    invoke-direct {v0, p0, v1}, Ln0/q2$c;-><init>(Ln0/q2;Lui/a;)V

    .line 25
    new-instance v2, Ln0/q2$d;

    invoke-direct {v2, p0, v0}, Ln0/q2$d;-><init>(Ln0/q2;Ljava/lang/Runnable;)V

    .line 26
    new-instance v0, Ln0/q2$e;

    invoke-direct {v0, p0, v2}, Ln0/q2$e;-><init>(Ln0/q2;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lui/a;->q(Lui/a$f;)V

    .line 27
    invoke-static {v1}, La/f;->D(Lui/b;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data
.end method

.method public U2()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lmodule/sound/AudioDevice;->H0:Z

    .line 2
    invoke-super {p0}, Ln0/c4;->U2()V

    const-string v1, "Gyro"

    const-string v2, "-------- TZY Load Start: "

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ro.ls.gyro"

    const-string v2, "NULLLL"

    .line 4
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v3, v1}, Lx0/c;->Z2(I)V

    const-string v1, "persist.fyt.pakistan"

    .line 6
    invoke-static {v1, v0}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Qin"

    const-string v1, "-------- persist.fyt.pakistan: "

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.lsec.tzyui11"

    const-string v1, ""

    .line 8
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "syu"

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x78

    .line 9
    sput v0, Lmodule/sound/C32107;->C1:I

    .line 10
    sput v0, Lmodule/sound/C32107S;->n2:I

    .line 11
    sput v0, Lmodule/sound/C7604;->B4:I

    .line 12
    :cond_1
    sput v2, Lu0/b;->e:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 13
    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {p0, v1, v0}, Ln0/c4;->N3([I[I)V

    .line 14
    sget-object v0, Le/c;->D:Lo1/v;

    invoke-virtual {v0}, Lo1/v;->b()V

    .line 15
    new-instance v1, Ln0/q2$m;

    invoke-direct {v1, p0}, Ln0/q2$m;-><init>(Ln0/q2;)V

    const/16 v2, -0x1f4

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    .line 16
    invoke-static {}, Le/a;->f()Lo1/o;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lo1/v;->a(Lo1/o;I)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x41
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3c
        0x55
    .end array-data
.end method

.method public X2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln0/q2;->T3()V

    .line 2
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    new-instance v1, Ln0/q2$i;

    invoke-direct {v1, p0}, Ln0/q2$i;-><init>(Ln0/q2;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lc/f;->h(ILc/f$a;)V

    .line 3
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    new-instance v1, Ln0/q2$j;

    invoke-direct {v1, p0}, Ln0/q2$j;-><init>(Ln0/q2;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lc/f;->h(ILc/f$a;)V

    .line 4
    invoke-super {p0}, Ln0/c4;->X2()V

    .line 5
    invoke-virtual {p0}, Ln0/q2;->S3()V

    const-string v0, "sys.syu.vehicle_factory_project"

    const/4 v1, -0x1

    .line 6
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "persist.sys.syu.audio"

    const-string v2, ""

    .line 7
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "7604"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    new-array v1, v0, [I

    .line 9
    fill-array-data v1, :array_0

    .line 10
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {v2, v0}, Lmodule/sound/AudioDevice;->Y0([I)V

    .line 11
    invoke-static {}, Lmodule/sound/AudioDevice;->W()Lmodule/sound/AudioDevice;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x14
        0xa
        0x28
        0x18
        0xa
        0x28
        0x1d
        0xa
        0x28
        0x24
        0xa
        0x28
        0x2d
        0xa
        0x28
        0x35
        0xa
        0x28
        0x41
        0xa
        0x28
        0x50
        0xa
        0x28
        0x64
        0xa
        0x28
        0x78
        0xa
        0x28
        0x8c
        0xa
        0x28
        0xaa
        0xa
        0x28
        0xd2
        0xa
        0x28
        0x104
        0xa
        0x28
        0x140
        0xa
        0x28
        0x186
        0xa
        0x28
        0x1d6
        0xa
        0x28
        0x23a
        0xa
        0x28
        0x2bc
        0xa
        0x28
        0x352
        0xa
        0x28
        0x3e8
        0xa
        0x28
        0x514
        0xa
        0x28
        0x640
        0xa
        0x28
        0x76c
        0xa
        0x28
        0x8fc
        0xa
        0x28
        0xaf0
        0xa
        0x28
        0xd48
        0xa
        0x28
        0x1004
        0xa
        0x28
        0x1388
        0xc
        0x28
        0x17d4
        0xa
        0x28
        0x1d4c
        0xd
        0x28
        0x2328
        0xe
        0x28
        0x2af8
        0xa
        0x28
        0x36b0
        0xa
        0x28
        0x4268
        0xa
        0x28
        0x4e20
        0xa
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x0
        0x0
        0x18
        0x0
        0x0
        0x1d
        0x0
        0x0
        0x24
        0x0
        0x0
        0x2d
        0x0
        0x0
        0x35
        0x0
        0x0
        0x41
        0x0
        0x0
        0x50
        0x0
        0x0
        0x64
        0x0
        0x0
        0x78
        0x0
        0x0
        0x8c
        0x0
        0x0
        0xaa
        0x0
        0x0
        0xd2
        0x0
        0x0
        0x104
        0x0
        0x0
        0x140
        0x0
        0x0
        0x186
        0x0
        0x0
        0x1d6
        0x0
        0x0
        0x23a
        0x0
        0x0
        0x2bc
        0x0
        0x0
        0x352
        0x0
        0x0
        0x3e8
        0x0
        0x0
        0x514
        0x0
        0x0
        0x640
        0x0
        0x0
        0x76c
        0x0
        0x0
        0x8fc
        0x0
        0x0
        0xaf0
        0x0
        0x0
        0xd48
        0x0
        0x0
        0x1004
        0x0
        0x0
        0x1388
        -0x2
        0x0
        0x17d4
        0x0
        0x0
        0x1d4c
        -0x3
        0x0
        0x2328
        -0x4
        0x0
        0x2af8
        0x0
        0x0
        0x36b0
        0x0
        0x0
        0x4268
        0x0
        0x0
        0x4e20
        0x0
        0x0
    .end array-data
.end method

.method public Y2()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln0/c4;->Y2()V

    return-void
.end method

.method public j3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c4;->j3()V

    .line 2
    invoke-static {}, Lo1/q0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    .line 3
    sput v0, Lu0/b;->P2:I

    .line 4
    sput v0, Lu0/b;->R2:I

    :cond_0
    const/4 v0, 0x1

    .line 5
    sput v0, Lh0/c;->V:I

    return-void
.end method

.method public m3()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x0(Lf1/q;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln0/c4;->x0(Lf1/q;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lf1/b;

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Lf1/q;->G(II)V

    :cond_1
    return-void
.end method
