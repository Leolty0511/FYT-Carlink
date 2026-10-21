.class public Lapp/App;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static b:Lapp/App;

.field public static c:Landroid/os/PowerManager$WakeLock;


# instance fields
.field public final a:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    new-instance v0, Lapp/App$b;

    const-string v1, "Mcu-"

    invoke-direct {v0, p0, v1}, Lapp/App$b;-><init>(Lapp/App;Ljava/lang/String;)V

    iput-object v0, p0, Lapp/App;->a:Ljava/lang/Thread;

    return-void
.end method

.method public static c()Lapp/App;
    .locals 1

    .line 1
    sget-object v0, Lapp/App;->b:Lapp/App;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lapp/App;->b()V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapp/App;->h(Z)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ln0/k4;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_channel"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-static {}, Ln0/k4;->h()V

    .line 2
    invoke-virtual {p0}, Lapp/App;->i()V

    return-void
.end method

.method public final d()I
    .locals 2

    const-string/jumbo v0, "ro.fyt.mcu_type"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 10

    .line 1
    invoke-static {p0}, Lc/g;->g(Landroid/content/Context;)Lc/g;

    .line 2
    invoke-static {p0}, La/f;->A(Landroid/app/Application;)V

    .line 3
    sget-object v0, Lf/b;->d:Lf/b;

    invoke-virtual {v0}, Lf/b;->b()V

    .line 4
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {}, La/c;->q()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 7
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {}, La/c;->w()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 8
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, La/c;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 9
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {}, La/c;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 10
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, La/c;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 11
    :cond_0
    invoke-static {p0}, La/b;->c(Landroid/app/Application;)V

    const-string v0, "persist.sys.wifi.states"

    const-string v1, "close"

    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, La/i;->S()V

    .line 14
    :cond_1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v1, Lapp/App$c;

    invoke-direct {v1, p0}, Lapp/App$c;-><init>(Lapp/App;)V

    const-wide/32 v2, 0xea60

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    invoke-static {}, Lo1/q0;->L()I

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lo1/q0;->K()V

    .line 19
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f04000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v6, 0x1c

    const/4 v7, -0x1

    const/16 v8, 0x1e

    const v9, -0x6fff0100    # -2.5439994E-29f

    const-string v3, "please reboot"

    invoke-virtual/range {v1 .. v9}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, Lapp/App$d;

    invoke-direct {v0, p0}, Lapp/App$d;-><init>(Lapp/App;)V

    .line 2
    new-instance v1, Lui/a$d;

    invoke-direct {v1}, Lui/a$d;-><init>()V

    .line 3
    invoke-static {}, La/f;->w()I

    move-result v2

    invoke-static {}, La/f;->i()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lui/a$g;->b(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lui/a$d;->p(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const/16 v2, 0x30

    .line 4
    invoke-virtual {v1, v2}, Lui/a$d;->h(I)Lui/a$d;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lui/a$d;->u(I)Lui/a$d;

    move-result-object v1

    const-string/jumbo v2, "unmute.png"

    .line 6
    invoke-virtual {v1, v2}, Lui/a$d;->l(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "mute.png"

    .line 7
    invoke-virtual {v1, v2}, Lui/a$d;->g(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "bt_call.png"

    .line 8
    invoke-virtual {v1, v2}, Lui/a$d;->f(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "bt_call_mute.png"

    .line 9
    invoke-virtual {v1, v2}, Lui/a$d;->e(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "bar.png"

    .line 10
    invoke-virtual {v1, v2}, Lui/a$d;->c(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "bar_p.png"

    .line 11
    invoke-virtual {v1, v2}, Lui/a$d;->d(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "node.png"

    .line 12
    invoke-virtual {v1, v2}, Lui/a$d;->k(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    const-string v2, "bk.png"

    .line 13
    invoke-virtual {v1, v2}, Lui/a$d;->b(Ljava/lang/String;)Lui/a$d;

    move-result-object v1

    sget v2, Ly0/f;->g:I

    .line 14
    invoke-virtual {v1, v2}, Lui/a$d;->o(I)Lui/a$d;

    move-result-object v1

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lui/a$d;->i(Z)Lui/a$d;

    move-result-object v1

    .line 16
    invoke-interface {v0}, Lui/a$g;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lui/a$d;->t(I)Lui/a$d;

    move-result-object v1

    new-instance v2, Lapp/App$f;

    invoke-direct {v2, p0}, Lapp/App$f;-><init>(Lapp/App;)V

    .line 17
    invoke-virtual {v1, v2}, Lui/a$d;->m(Landroid/view/View$OnClickListener;)Lui/a$d;

    move-result-object v1

    new-instance v2, Lapp/App$e;

    invoke-direct {v2, p0}, Lapp/App$e;-><init>(Lapp/App;)V

    .line 18
    invoke-virtual {v1, v2}, Lui/a$d;->n(Lui/Bar$a;)Lui/a$d;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lui/a$d;->a()Lui/a;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lui/a;->p(Lui/a$g;)V

    const/4 v0, 0x3

    .line 21
    invoke-virtual {v1, v0}, Lui/a;->r(I)V

    .line 22
    new-instance v0, Lapp/App$g;

    invoke-direct {v0, p0, v1}, Lapp/App$g;-><init>(Lapp/App;Lui/a;)V

    .line 23
    new-instance v2, Lapp/App$h;

    invoke-direct {v2, p0, v0}, Lapp/App$h;-><init>(Lapp/App;Ljava/lang/Runnable;)V

    .line 24
    new-instance v0, Lapp/App$i;

    invoke-direct {v0, p0, v2}, Lapp/App$i;-><init>(Lapp/App;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lui/a;->q(Lui/a$f;)V

    .line 25
    invoke-static {v1}, La/f;->D(Lui/b;)V

    return-void
.end method

.method public g()Z
    .locals 2

    const/16 v0, 0xb

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lbase/Configure$Property;->t:Lbase/Configure$Property;

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h(Z)V
    .locals 4

    const/16 v0, 0x90

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lm1/c;->c(II)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x91

    .line 2
    invoke-static {v3, v1}, Lm1/c;->c(II)I

    move-result v3

    invoke-static {v3}, Lk0/qt;->K(I)V

    :cond_0
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {v0, v1}, Lm1/c;->e(II)I

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapp/App;->n()V

    .line 2
    invoke-virtual {p0}, Lapp/App;->j()V

    .line 3
    invoke-static {}, Lo1/u;->I0()V

    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    invoke-static {p0}, Lapp/Receiver;->c0(Landroid/content/Context;)V

    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ln1/b;->setDbg(Z)V

    .line 3
    invoke-virtual {v0}, Ln1/b;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, La/f;->y()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0}, Ln1/b;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lapp/App;->f()V

    .line 6
    new-instance v0, Lui/c;

    invoke-direct {v0}, Lui/c;-><init>()V

    invoke-static {v0}, La/f;->C(Lui/b;)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0x9

    const v2, 0x1c200

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lapp/App;->d()I

    move-result v0

    const v1, 0x9600

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lz/k;->i(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lapp/App;->d()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 5
    invoke-static {v2}, Lz/k;->i(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Lz/k;->i(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v2}, Lz/k;->i(I)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v2}, Lz/k;->i(I)V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/record_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lutil/log/LogRecorder;->b0(Landroid/content/Context;)Lutil/log/LogRecorder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lutil/log/LogRecorder;->d0(Z)V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SuspiciousIndentation"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, La/e;->c(I)V

    .line 2
    invoke-static {}, Lg1/c;->b()Lg1/c;

    .line 3
    invoke-static {}, Le/h;->K2()Le/h;

    move-result-object v0

    invoke-virtual {v0}, Le/h;->M2()V

    .line 4
    sget-object v0, Lg1/e;->a:Ljava/lang/Runnable;

    invoke-static {v0}, La/e;->a(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {}, Lg1/b;->a()Lg1/b;

    .line 7
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {}, Lg1/d;->c()Lg1/d;

    .line 9
    :cond_1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 10
    :cond_2
    invoke-static {}, Le/f;->o()V

    .line 11
    :cond_3
    sget-object v0, Lg1/e;->b:Ljava/lang/Runnable;

    invoke-static {v0}, La/e;->a(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {}, Lo1/i;->o()Lo1/i;

    .line 13
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 14
    sget-object v0, Lg1/e;->c:Ljava/lang/Runnable;

    invoke-static {v0}, La/e;->a(Ljava/lang/Runnable;)V

    .line 15
    :cond_4
    new-instance v0, Lapp/App$a;

    invoke-direct {v0, p0}, Lapp/App$a;-><init>(Lapp/App;)V

    .line 16
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lapp/App;->b:Lapp/App;

    .line 3
    iget-object v0, p0, Lapp/App;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    invoke-static {}, Lm1/c;->m()V

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lo1/q0;->y(I)V

    .line 6
    invoke-static {p0}, La/a;->b(Landroid/content/Context;)La/a;

    .line 7
    invoke-static {}, Lc/e;->d()Lc/e;

    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, La/e;->c(I)V

    .line 9
    invoke-static {}, Lo1/q0;->u()I

    const-string v2, "601"

    .line 10
    invoke-static {v2, v1}, Lg/f;->x(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual {p0}, Lapp/App;->e()V

    .line 12
    invoke-static {}, La/f;->r()Landroid/os/PowerManager;

    move-result-object v2

    const-string v3, "WAKE_LOCK"

    invoke-virtual {v2, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lapp/App;->c:Landroid/os/PowerManager$WakeLock;

    .line 13
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 14
    invoke-virtual {p0}, Lapp/App;->k()V

    .line 15
    invoke-static {}, Lg/f;->i()V

    .line 16
    invoke-static {v0, v1}, Ln0/k4;->b(IZ)V

    .line 17
    invoke-virtual {p0}, Lapp/App;->l()V

    .line 18
    invoke-virtual {p0}, Lapp/App;->a()V

    .line 19
    sget-object v0, Lu0/c;->A:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 20
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BSP-RO-SYS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ro.fyt.platform"

    const-string v4, "NULL"

    .line 21
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sys.fyt.platform"

    .line 22
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";UI\u7684\u5e73\u53f0 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Lg/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Lg/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";\u5ba2\u6237 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ln0/j4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ln0/j4;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ");MCU\u7c7b\u578b = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ro.fyt.mcu_type"

    const/4 v4, -0x1

    .line 25
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 27
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u662f\u5426\u7ad6\u5c4f = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Lo1/q0;->v()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " subwoof \u5f00\u5173 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ro.fyt.subwoof_enable"

    .line 29
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subwoof \u503c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ro.fyt.subwoof"

    .line 30
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ln1/b;->w(Ljava/lang/String;)V

    return-void
.end method
