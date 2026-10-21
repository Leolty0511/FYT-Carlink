.class public La/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo1/k0;

.field public static b:Z

.field public static final c:Ljava/lang/Runnable;

.field public static final d:Ljava/lang/Runnable;

.field public static e:J

.field public static final f:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo1/k0;

    invoke-direct {v0}, Lo1/k0;-><init>()V

    sput-object v0, La/i;->a:Lo1/k0;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, La/i;->b:Z

    .line 3
    new-instance v0, La/i$a;

    invoke-direct {v0}, La/i$a;-><init>()V

    sput-object v0, La/i;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, La/i$b;

    invoke-direct {v0}, La/i$b;-><init>()V

    sput-object v0, La/i;->d:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 5
    sput-wide v0, La/i;->e:J

    .line 6
    new-instance v0, La/i$c;

    invoke-direct {v0}, La/i$c;-><init>()V

    sput-object v0, La/i;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static A()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lh0/c;->f:Z

    if-nez v0, :cond_0

    sget v0, Lh0/c;->G:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    .line 3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static B()V
    .locals 6

    .line 1
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln0/c4;->n3()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    .line 3
    new-instance v1, Lo1/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo1/c;-><init>(I)V

    .line 4
    invoke-static {}, La/i;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    .line 5
    invoke-static {}, La/i;->l()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, La/i;->T(Lo1/c;Ljava/util/List;)V

    .line 6
    invoke-static {}, La/i;->j()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, La/i;->T(Lo1/c;Ljava/util/List;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 9
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lo1/c;->d(Ljava/lang/Comparable;I)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 10
    invoke-static {v4}, Lo1/u;->j0(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v5, "com.antutu"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, La/i;->C(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .locals 4

    const-string v0, ":"

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_0
    invoke-static {p0}, La/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo1/u;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p0}, La/i;->X(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lj1/c;

    const-string v2, "forceStopPackage"

    invoke-direct {v0, v2}, Lj1/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    .line 7
    sget-object v0, Le/e;->c:Lo1/z;

    invoke-virtual {v0, p0}, Lo1/z;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static D()V
    .locals 0

    .line 1
    invoke-static {}, La/i;->B()V

    return-void
.end method

.method public static E(I)V
    .locals 3

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 p0, 0x59

    .line 2
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x7

    aput v2, v1, p0

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static F(I)V
    .locals 3

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 p0, 0x5a

    .line 2
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x6

    aput v2, v1, p0

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static G(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaKey keyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  DataMain.sAppId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kuwo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, La/i;->H(II)V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0, p0}, La/i;->H(II)V

    return-void
.end method

.method public static H(II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, p0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3
    sget-object p0, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {p0}, Lo1/u;->N(Ljava/lang/String;)I

    move-result p0

    .line 4
    sget-object p1, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lu0/b;->B3:Ljava/lang/String;

    const-string v2, "kuwo"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1130

    if-ge p0, p1, :cond_0

    const-string p0, "android.intent.extra.KEY_EVENT"

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method public static I(II)V
    .locals 4

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x25

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 p0, 0x1

    aput v0, v2, p0

    const/4 p0, 0x2

    aput p1, v2, p0

    .line 2
    invoke-static {v1, v2}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static J(I)V
    .locals 3

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lz/c;->a:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 3
    sget-object v0, La/b;->i:Ljava/lang/String;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x25

    if-eqz v0, :cond_1

    new-array p0, v1, [I

    .line 4
    fill-array-data p0, :array_0

    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 p0, 0x57

    .line 5
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lk0/qt;->d()V

    goto :goto_0

    :cond_3
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/4 v1, 0x5

    aput v1, v0, p0

    .line 7
    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x5
    .end array-data
.end method

.method public static K(I)V
    .locals 4

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 p0, 0x7f

    .line 2
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 p0, 0x1

    aput v1, v2, p0

    .line 3
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static L(I)V
    .locals 3

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 p0, 0x7e

    .line 2
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v2, v1, p0

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static M(I)V
    .locals 3

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 p0, 0x55

    .line 2
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p0, v1, p0

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static N(I)V
    .locals 3

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lz/c;->b:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 3
    sget-object v0, La/b;->i:Ljava/lang/String;

    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x25

    if-eqz v0, :cond_1

    new-array p0, v1, [I

    .line 4
    fill-array-data p0, :array_0

    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 p0, 0x58

    .line 5
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lk0/qt;->e()V

    goto :goto_0

    :cond_3
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/4 v1, 0x4

    aput v1, v0, p0

    .line 7
    invoke-static {v2, v0}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x4
    .end array-data
.end method

.method public static O(I)V
    .locals 4

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    const/16 v1, 0x9

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    const/4 p0, 0x1

    aput v1, v2, p0

    .line 2
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static P(I)V
    .locals 3

    .line 1
    sget-object v0, La/i;->a:Lo1/k0;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo1/k0;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 p0, 0x56

    .line 2
    invoke-static {p0}, La/i;->G(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x3

    aput v2, v1, p0

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    :goto_0
    return-void
.end method

.method public static Q(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, La/i;->R(II)V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0}, La/i;->R(II)V

    return-void
.end method

.method public static R(II)V
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 p0, 0x2

    .line 3
    invoke-static {v13, p0}, Lo1/s0;->B(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public static S()V
    .locals 3

    const-string v0, "persist.sys.wifi.states"

    .line 1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method public static T(Lo1/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo1/c<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static U()V
    .locals 2

    .line 1
    invoke-static {}, La/f;->r()Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "main"

    const-string v1, " ===> com.syu.ms exec reboot"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, La/f;->r()Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static V()V
    .locals 4

    .line 1
    sget-boolean v0, La/i;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, La/i;->b:Z

    .line 3
    invoke-static {}, La/i;->S()V

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    sget-object v1, La/i;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static W()V
    .locals 1

    .line 1
    sget-boolean v0, La/i;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, La/i;->b:Z

    .line 3
    invoke-static {}, La/i;->S()V

    :cond_0
    return-void
.end method

.method public static X(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v3

    const-string/jumbo v4, "removeTask"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-array v5, v5, [Ljava/lang/Object;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v2, v3, v4, v6, v5}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeTast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/b;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static Y(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "sys.navi.packagename"

    .line 1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static Z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static a0(J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    sget-wide v2, La/i;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    return-void

    .line 3
    :cond_0
    sput-wide v0, La/i;->e:J

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x272b

    const-string v2, "KEY_TYPE"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "EXTRA_TYPE"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_OPERA"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    sget-wide v2, La/i;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    return-void

    .line 3
    :cond_0
    sput-wide v0, La/i;->e:J

    const/4 v0, 0x1

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    .line 4
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x2740

    const-string v3, "KEY_TYPE"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "EXTRA_TYPE"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "EXTRA_DAY_NIGHT_MODE"

    .line 8
    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static d(II)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, 0x1

    .line 6
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p0, 0x7de

    .line 7
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x100

    .line 8
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x38

    .line 9
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p0, 0x33

    .line 10
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static e(II)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, 0x1

    .line 6
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p0, 0x7e0

    .line 7
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x100

    .line 8
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x38

    .line 9
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p0, 0x33

    .line 10
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static f()V
    .locals 3

    .line 1
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 3
    :cond_1
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4
    sput-boolean v1, La/i;->b:Z

    :cond_2
    return-void
.end method

.method public static g(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    :goto_0
    const/4 p0, 0x0

    const-string v3, "persist.fyt.ui.txz"

    .line 1
    invoke-static {v3, p0}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object p0, Lbase/Configure$Property;->F:Lbase/Configure$Property;

    invoke-virtual {p0, v0}, Lbase/Configure$Property;->b(Z)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    sget-object v0, La/i;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 5

    const-string v0, ":"

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "Qin"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "000 --------- >>  killApp packageName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p0}, La/i;->X(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lj1/c;

    const-string v2, "forceStopPackage"

    invoke-direct {v0, v2}, Lj1/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    .line 7
    sget-object v0, Le/e;->c:Lo1/z;

    invoke-virtual {v0, p0}, Lo1/z;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static m()V
    .locals 4

    .line 1
    new-instance v0, Lj1/c;

    const-string v1, "goToSleep"

    invoke-direct {v0, v1}, Lj1/c;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, La/f;->r()Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj1/c;->g(Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lj1/c;->d([Ljava/lang/Object;)Lj1/c;

    move-result-object v0

    invoke-virtual {v0}, Lj1/c;->a()Ljava/lang/Object;

    return-void
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, La/b;->c:Lo1/e;

    invoke-virtual {v1, p0, v0}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result p0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static p(I)Z
    .locals 2

    .line 1
    sget-object v0, Lbase/Configure$Property;->N:Lbase/Configure$Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static q(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-nez p0, :cond_1

    .line 1
    sget-object p0, Lu0/b;->J1:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "cld.navi"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static r(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, La/b;->c:Lo1/e;

    invoke-virtual {v1, p0, v0}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    sget-object v1, Lu0/b;->J1:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cld.navi"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, La/b;->c:Lo1/e;

    invoke-virtual {v1, p0, v0}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static t(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    move v2, v0

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, La/b;->c:Lo1/e;

    invoke-virtual {v1, p0, v0}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static w(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, La/b;->c:Lo1/e;

    invoke-virtual {v1, p0, v0}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static y(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static z()Z
    .locals 2

    .line 1
    invoke-static {}, La/f;->x()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
