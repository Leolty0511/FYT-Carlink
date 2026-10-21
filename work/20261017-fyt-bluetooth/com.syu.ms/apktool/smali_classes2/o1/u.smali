.class public Lo1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Lo1/o;

.field public static final c:Ljava/lang/Runnable;

.field public static final d:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/u$a;

    invoke-direct {v0}, Lo1/u$a;-><init>()V

    sput-object v0, Lo1/u;->c:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lo1/u$c;

    invoke-direct {v0}, Lo1/u$c;-><init>()V

    sput-object v0, Lo1/u;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static A()V
    .locals 4

    .line 1
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v1, Lo1/u;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static A0()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    .line 3
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    .line 4
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    .line 11
    invoke-static {}, La/i;->A()V

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :cond_5
    :goto_0
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {}, Lk0/qt;->f()V

    :cond_7
    :goto_1
    return-void
.end method

.method public static B()V
    .locals 6

    .line 1
    sget-object v0, Lo1/u;->b:Lo1/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lo1/u;->z()I

    return-void
.end method

.method public static B0(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lo1/t;

    invoke-direct {v0, p1}, Lo1/t;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static C()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.music.MService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "play_mode"

    const-string v2, "change"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static C0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lo1/u;->D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static D(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10200000

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public static D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static E()I
    .locals 1

    .line 1
    sget-object v0, La/b;->n:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->G(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static E0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    invoke-static {p0, p1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static F(I)V
    .locals 4

    .line 1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v1, Lo1/u$b;

    invoke-direct {v1}, Lo1/u$b;-><init>()V

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static F0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static G(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget v0, Lo0/e;->f:I

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 2
    :cond_0
    sget v0, Lo0/e;->k:I

    if-nez v0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 3
    :cond_1
    invoke-static {}, Lo1/u;->b0()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_2
    invoke-static {p0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static G0()V
    .locals 1

    const-string v0, "android.settings.SETTINGS"

    .line 1
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    return-void
.end method

.method public static H()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->H:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final H0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.LAUNCHER"

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static I()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.launcher.embedded_pkg"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "persist.launcher.packagename"

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static I0()V
    .locals 2

    const-string v0, "com.syu.air.AirService"

    const-string v1, "com.syu.air"

    .line 1
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static J()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->v:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static J0(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0, p0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static K0()V
    .locals 1

    const-string v0, "com.yh.devicehelper"

    .line 1
    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    return-void
.end method

.method public static L()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->U:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static L0()V
    .locals 0

    return-void
.end method

.method public static M()V
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget-object v1, La/b;->X:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    .line 3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x24f

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, La/b;->X:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->R0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static M0()V
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.ilincar.data.chinamobile"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.upload.FYTService"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    const-string v2, "on"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static N(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static N0()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.accessibility.servicestate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    const-string v2, "com.syu.fytgesture"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "class_name"

    const-string v2, "com.syu.fytgesture.AccessibilityServiceGesture"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "enable"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static O()V
    .locals 1

    const-string v0, "android.settings.SETTINGS"

    .line 1
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    return-void
.end method

.method public static O0()V
    .locals 1

    const-string v0, "com.cpsdna.mirror"

    .line 1
    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    return-void
.end method

.method public static P()Z
    .locals 2

    const-string v0, "persist.syu.launcher.haspip"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.launcher.embedded_window"

    .line 2
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static P0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p0, Lu0/b;->L1:Ljava/lang/String;

    const-string v0, "com.syu.voice"

    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string v1, "com.sql.speech.dialog_show"

    if-eqz p0, :cond_0

    .line 2
    invoke-static {v1, v0}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    const-string v0, "com.txznet.adapter"

    invoke-static {p0, v0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {v1, v0}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    const-string v0, "com.txzing.voiceassistant"

    invoke-static {p0, v0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    invoke-static {v1, v0}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object p0, Lu0/b;->L1:Ljava/lang/String;

    const-string v0, "com.txznet.smartadapter"

    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "txz.intent.action.smartwakeup.triggerRecordButton"

    .line 8
    invoke-static {p0}, Lo1/u;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    const-string v0, "com.tnt.hongsenapi"

    invoke-static {p0, v0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_4
    sget-object p0, Lu0/b;->L1:Ljava/lang/String;

    const-string v0, "com.google.android.apps.googleassistant"

    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "android.intent.action.VOICE_COMMAND"

    .line 12
    invoke-static {p0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_5
    sget-object p0, Lu0/b;->L1:Ljava/lang/String;

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "android.intent.action.VOICE_ASSIST"

    .line 14
    invoke-static {p0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_6
    sget-object p0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {p0}, Lo1/u;->J0(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static Q()Z
    .locals 2

    .line 1
    sget-object v0, La/b;->j:Ljava/lang/String;

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1, v0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static Q0()V
    .locals 4

    .line 1
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lo1/u$d;

    invoke-direct {v1}, Lo1/u$d;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static R()Z
    .locals 1

    const-string v0, "com.syu.amp"

    .line 1
    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static R0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_4

    invoke-static {p0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p0

    invoke-virtual {p0}, Lc/e;->b()Lc/e;

    .line 8
    invoke-static {}, La/i;->A()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/u;->J0(Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static S(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static S0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_4

    invoke-static {p0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " topApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Qin"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p0

    invoke-virtual {p0}, Lc/e;->b()Lc/e;

    .line 9
    invoke-static {}, La/i;->A()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/u;->J0(Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static T(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    .line 2
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "persist.fyt.right.check"

    const-string v0, "0"

    .line 3
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static T0()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lo1/u;->k()V

    const/4 v0, 0x2

    return v0

    .line 3
    :cond_0
    sget v0, Lu0/b;->F0:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    sget-object v0, La/b;->t:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static U()Z
    .locals 2

    .line 1
    invoke-static {}, Lo1/u;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, La/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, La/b;->y:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static U0()V
    .locals 4

    .line 1
    sget-object v0, Lu0/b;->J1:Ljava/lang/String;

    const-string v1, "persist.fyt.ui.txz"

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x85

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x20d

    aput v3, v1, v2

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lo1/u;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lo1/u;->d0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lo1/u;->v0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lo1/u;->k()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lo1/u;->v0()V

    :goto_0
    return-void
.end method

.method public static V()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->s:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static V0()I
    .locals 3

    .line 1
    sget-object v0, Lu0/b;->B3:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 4
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lu0/h;->c(I)V

    :cond_1
    return v1

    .line 6
    :cond_2
    invoke-static {}, Lo1/u;->o0()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 7
    :cond_3
    sget-object v0, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static W()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static W0()V
    .locals 1

    const-string v0, "android.settings.DATE_SETTINGS"

    .line 1
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    return-void
.end method

.method public static X()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->C:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static X0()Landroid/content/ComponentName;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/u;->B0(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.CarInfoActivity"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    return-object v3

    .line 8
    :cond_2
    invoke-static {}, Lg1/c;->b()Lg1/c;

    move-result-object v0

    invoke-virtual {v0}, Lg1/c;->d()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static Y()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->K:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static Y0()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/u;->B0(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v2, "com.syu.carinfo.CarInfoActivity"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v3, v0

    :cond_1
    return-object v3

    .line 7
    :cond_2
    invoke-static {}, Lg1/c;->b()Lg1/c;

    move-result-object v0

    invoke-virtual {v0}, Lg1/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Z()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->E:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static Z0()I
    .locals 1

    .line 1
    sget v0, Ld1/d;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lo1/u;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    sget-object v0, La/b;->r:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic a(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lo1/u;->r0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static a0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a1()V
    .locals 3

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lc/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lh1/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    move-result-object v0

    const/16 v1, 0x240

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    return-void

    .line 6
    :cond_2
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget-object v1, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    const-string v1, "com.atoto.speechtotext"

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.atoto.speechtotext.wakeup"

    .line 8
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->P0(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :cond_4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.syu.voice"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.sql.speech.dialog_show"

    if-eqz v0, :cond_5

    .line 11
    invoke-static {v2, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.txznet.adapter"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-static {v2, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.txzing.voiceassistant"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-static {v2, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.txznet.smartadapter"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "txz.intent.action.smartwakeup.triggerRecordButton"

    .line 17
    invoke-static {v0}, Lo1/u;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.tnt.hongsenapi"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    invoke-static {v1}, Lo1/u;->J0(Ljava/lang/String;)I

    goto :goto_0

    .line 20
    :cond_9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.google.android.apps.googleassistant"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.intent.action.VOICE_COMMAND"

    .line 21
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_a
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "android.intent.action.VOICE_ASSIST"

    .line 23
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_b
    :goto_0
    return-void
.end method

.method public static b(I)I
    .locals 2

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    sget-object p0, Lbase/Configure$Property;->r:Lbase/Configure$Property;

    invoke-virtual {p0, v0}, Lbase/Configure$Property;->b(Z)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lo1/u;->B()V

    :cond_1
    return v1

    .line 3
    :pswitch_1
    invoke-static {}, Lo1/u;->A()V

    return v1

    .line 4
    :pswitch_2
    invoke-static {}, Lo1/u;->x()I

    move-result p0

    return p0

    .line 5
    :pswitch_3
    invoke-static {}, Lo1/u;->V0()I

    move-result p0

    return p0

    .line 6
    :pswitch_4
    invoke-static {}, Lo1/u;->c1()I

    move-result p0

    return p0

    .line 7
    :pswitch_5
    invoke-static {}, Lo1/u;->i()I

    move-result p0

    return p0

    .line 8
    :pswitch_6
    invoke-static {}, Lo1/u;->w0()I

    move-result p0

    return p0

    .line 9
    :pswitch_7
    invoke-static {}, Lo1/u;->Z0()I

    move-result p0

    return p0

    .line 10
    :pswitch_8
    invoke-static {}, Lo1/u;->j()I

    move-result p0

    return p0

    .line 11
    :pswitch_9
    invoke-static {}, Lo1/u;->E()I

    move-result p0

    return p0

    .line 12
    :pswitch_a
    invoke-static {}, Lo1/u;->q()V

    return v1

    .line 13
    :pswitch_b
    invoke-static {}, Lo1/u;->r()V

    return v1

    .line 14
    :pswitch_c
    invoke-static {}, Lo1/u;->x0()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static b0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->m:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b1()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lc/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lh1/a;->m()Z

    move-result v0

    const/16 v1, 0x240

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    return-void

    .line 6
    :cond_2
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.atoto.speechtotext.wakeup"

    const-string v3, "com.atoto.speechtotext"

    if-nez v0, :cond_4

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget-object v4, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0, v4}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0, v3}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v2, v3}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :cond_3
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->P0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10
    :cond_4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v4, "com.syu.voice"

    invoke-static {v0, v4}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v5, "com.sql.speech.dialog_show"

    if-eqz v0, :cond_5

    .line 11
    invoke-static {v5, v4}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :cond_5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v4, "com.txznet.adapter"

    invoke-static {v0, v4}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-static {v5, v4}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14
    :cond_6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v4, "com.txzing.voiceassistant"

    invoke-static {v0, v4}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-static {v5, v4}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :cond_7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v4, "com.txznet.smartadapter"

    invoke-static {v0, v4}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "txz.intent.action.smartwakeup.triggerRecordButton"

    .line 17
    invoke-static {v0}, Lo1/u;->l(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 18
    :cond_8
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const-string v4, "sys.carlink.type"

    invoke-static {v4, v0}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_0

    .line 19
    :cond_9
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget-object v1, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0, v3}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-static {v2, v3}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_a
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->P0(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_b
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.tnt.hongsenapi"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    invoke-static {v1}, Lo1/u;->J0(Ljava/lang/String;)I

    goto :goto_1

    .line 26
    :cond_c
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.google.android.apps.googleassistant"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "android.intent.action.VOICE_COMMAND"

    .line 27
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_1

    .line 28
    :cond_d
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "android.intent.action.VOICE_ASSIST"

    .line 29
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_1

    .line 30
    :cond_e
    :goto_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    :cond_f
    :goto_1
    return-void
.end method

.method public static c()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    .line 8
    invoke-static {}, La/i;->A()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lo1/u;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/u;->J0(Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static c0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->G:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c1()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->B:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->J:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo1/u;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Intent;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lo1/u;->D(Landroid/content/Intent;)V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e0()Z
    .locals 4

    .line 1
    new-instance v0, Lj1/c;

    const-string v1, "getService"

    invoke-direct {v0, v1}, Lj1/c;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.ActivityManager"

    invoke-virtual {v0, v1}, Lj1/c;->f(Ljava/lang/String;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v2, Lj1/c;

    const-string v3, "getPinnedStackVisible"

    invoke-direct {v2, v3}, Lj1/c;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v2, v3}, Lj1/c;->f(Ljava/lang/String;)Lj1/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "persist.launcher.embedded_window"

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static f(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lo1/u;->D(Landroid/content/Intent;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityByIntentName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo1/b0;->f(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static f0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->u:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Lo1/u;->d0(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x2

    if-nez v1, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-static {v1}, Lo1/u;->D(Landroid/content/Intent;)V

    const-string v4, "com.papago.M11SGMY"

    .line 7
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :cond_3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 10
    sget p0, Lh0/c;->G:I

    if-ne p0, v2, :cond_4

    move p0, v2

    goto :goto_0

    :cond_4
    move p0, v0

    .line 11
    :goto_0
    sget-boolean v1, Lh0/c;->m0:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, p0

    :goto_1
    if-eqz v2, :cond_6

    .line 12
    invoke-static {}, Lo1/u;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v3

    :catch_0
    :cond_7
    :goto_2
    return v0
.end method

.method public static g0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->I:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static h()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x211

    aput v2, v0, v1

    const/16 v1, 0x85

    .line 1
    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.home"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "persist.lsec.launcher"

    const-string v2, ""

    .line 3
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "ro.fyt.launcher"

    .line 5
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :cond_1
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static h0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->U:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static i()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->z:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->Y:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static j()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget v0, Lu0/b;->F0:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    sget-object v0, La/b;->t:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static j0(Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 7
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static k()V
    .locals 6

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/u;->B0(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-static {}, La/i;->A()V

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-static {v1}, Lo1/u;->D(Landroid/content/Intent;)V

    const/4 v3, 0x1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-static {}, La/i;->A()V

    goto :goto_0

    :cond_1
    const-string v4, "com.syu.carinfo.CarInfoActivity"

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    :cond_3
    :goto_0
    invoke-static {v1}, Lo1/u;->D(Landroid/content/Intent;)V

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {}, La/i;->A()V

    :goto_1
    return-void
.end method

.method public static final k0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-boolean p0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final l0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0, p0}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-static {v0, p1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x20

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static m0()Z
    .locals 2

    .line 1
    invoke-static {}, Lo1/u;->Q()Z

    move-result v0

    .line 2
    sget-object v1, La/b;->j:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 3
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4
    :cond_1
    sget-object v0, La/b;->x:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static n0()Z
    .locals 2

    .line 1
    invoke-static {}, Lo1/u;->Q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->D:I

    if-ne v0, v1, :cond_0

    sget-object v0, La/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, La/b;->o:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static o0()Z
    .locals 1

    .line 1
    sget-object v0, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static p()V
    .locals 3

    const-string v0, "com.syu.ms.bt"

    const-string v1, "cmd"

    const/4 v2, 0x4

    .line 1
    invoke-static {v0, v1, v2}, Lo1/u;->n(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    sget v0, Ln0/j4;->b:I

    const-string v1, "com.syu.bt.byav"

    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    const-string v0, "com.syu.video"

    .line 3
    invoke-static {v1, v0}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.syu.bt"

    .line 4
    invoke-static {v1, v0}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static p0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static q()V
    .locals 4

    const-string v0, "com.syu.ms.bt"

    const-string v1, "cmd"

    const/4 v2, 0x5

    .line 1
    invoke-static {v0, v1, v2}, Lo1/u;->n(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lo1/u;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.btav"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v1, La/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lu0/b;->X3:Z

    const-string v1, "com.syu.bt"

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "launcher"

    const-string v2, "btav"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    goto :goto_0

    .line 10
    :cond_1
    sget v0, Ln0/j4;->b:I

    const/16 v2, 0x29

    const-string v3, "com.syu.bt.byav.force"

    if-ne v0, v2, :cond_2

    const-string v0, "com.syu.video"

    .line 11
    invoke-static {v3, v0}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v3, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static q0()Z
    .locals 1

    .line 1
    sget-object v0, La/b;->A:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static r()V
    .locals 3

    .line 1
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BT"

    const-string v1, "================>>>>  btPageDialByKey "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const-string v1, "com.syu.ms.bt"

    const-string v2, "cmd"

    .line 3
    invoke-static {v1, v2, v0}, Lo1/u;->n(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    sget-boolean v0, Lu0/b;->X3:Z

    const-string v1, "com.syu.bt"

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "launcher"

    const-string v2, "bt"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {v0}, Lo1/u;->e(Landroid/content/Intent;)I

    goto :goto_0

    :cond_1
    const-string v0, "com.syu.bt.bykey"

    .line 8
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic r0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lj1/b;

    const-string v2, "android.app.TaskInfo"

    const-string v3, "displayId"

    invoke-direct {v1, v2, v3}, Lj1/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lj1/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v0

    :goto_0
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static s()V
    .locals 3

    .line 1
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BT"

    const-string v1, "================>>>>  SHOW PAGE "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const-string v1, "com.syu.ms.bt"

    const-string v2, "cmd"

    .line 3
    invoke-static {v1, v2, v0}, Lo1/u;->n(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.syu.bt.bywork"

    const-string v1, "com.syu.bt"

    .line 4
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static s0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lg1/c;->b()Lg1/c;

    move-result-object v0

    invoke-virtual {v0}, Lg1/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t()V
    .locals 3

    .line 1
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BT"

    const-string v1, "================>>>>  SHOW PIP "

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "com.syu.ms.bt"

    const-string v2, "cmd"

    .line 3
    invoke-static {v1, v2, v0}, Lo1/u;->n(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "com.syu.bt.pip"

    const-string v1, "com.syu.bt"

    .line 4
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static t0()V
    .locals 0

    .line 1
    invoke-static {}, Lo1/u;->v0()V

    return-void
.end method

.method public static u()I
    .locals 2

    const-string v0, "com.syu.screen.cali"

    const-string v1, "com.syu.calibration"

    .line 1
    invoke-static {v0, v1}, Lo1/u;->C0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public static u0()V
    .locals 3

    .line 1
    sget-object v0, Lu0/b;->J1:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-static {}, Lo1/q0;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lu0/b;->J1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.syu.fyt"

    const-string v2, "fytSecond"

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :cond_1
    invoke-static {v1}, Lo1/u;->D(Landroid/content/Intent;)V

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lu0/d;->C3(I)V

    :catch_0
    :goto_1
    return-void
.end method

.method public static v()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->D:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v0()V
    .locals 3

    .line 1
    sget-object v0, Lu0/b;->J1:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lo1/u;->g(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {v1}, Lu0/d;->C3(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-static {v1}, Lu0/d;->C3(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static w()V
    .locals 1

    const-string v0, "com.syu.canbus.update"

    .line 1
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    return-void
.end method

.method public static w0()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->m0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->x:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static x()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->L:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static x0()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->K:I

    if-nez v0, :cond_2

    const/16 v0, 0x93

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm1/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lo1/u;->n0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, La/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lo1/u;->x()I

    :goto_1
    return-void
.end method

.method public static y()V
    .locals 2

    .line 1
    sget v0, Lo1/u;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lo1/u;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lo1/u;->k()V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, La/b;->F:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lo1/u;->Z()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    sget-object v0, La/b;->F:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static y0()V
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget-object v1, La/b;->b0:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    .line 3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x250

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, La/b;->b0:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->R0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static z()I
    .locals 1

    .line 1
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static z0()V
    .locals 1

    const/16 v0, 0xbb

    .line 1
    invoke-static {v0}, La/i;->Q(I)V

    return-void
.end method
