.class public Lg1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:Lg1/c;

.field public static e:I

.field public static f:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/ComponentName;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg1/c;

    invoke-direct {v0}, Lg1/c;-><init>()V

    sput-object v0, Lg1/c;->d:Lg1/c;

    const/16 v0, 0xff

    .line 2
    sput v0, Lg1/c;->e:I

    const-string v0, "net.easyconn"

    .line 3
    sput-object v0, Lg1/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lg1/c;->a:Landroid/content/ComponentName;

    .line 3
    iput-object v1, p0, Lg1/c;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lg1/c$a;

    invoke-direct {v0, p0}, Lg1/c$a;-><init>(Lg1/c;)V

    iput-object v0, p0, Lg1/c;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "MonitorTopApp"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b()Lg1/c;
    .locals 1

    .line 1
    sget-object v0, Lg1/c;->d:Lg1/c;

    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget-boolean v3, Lh0/c;->m0:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 3
    :cond_1
    sget-object v3, La/b;->d:Lo1/d;

    invoke-virtual {v3, p0}, Lo1/d;->e(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/s;

    sput-object p0, La/b;->e:Lo1/s;

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0, v1}, Lo1/s;->R(Z)V

    .line 5
    :cond_2
    invoke-virtual {v3, p1}, Lo1/d;->e(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/s;

    sput-object p0, La/b;->e:Lo1/s;

    if-eqz p0, :cond_3

    .line 6
    invoke-interface {p0, v2}, Lo1/s;->R(Z)V

    :cond_3
    const/4 p0, 0x5

    .line 7
    invoke-static {p0}, Lg/f;->f(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 8
    sget-object p0, La/b;->g:Lo1/s;

    if-eqz p0, :cond_4

    .line 9
    invoke-interface {p0, v1}, Lo1/s;->R(Z)V

    .line 10
    :cond_4
    sget-object p0, La/b;->f:Lo1/d;

    invoke-virtual {p0, p1}, Lo1/d;->e(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/s;

    sput-object p0, La/b;->g:Lo1/s;

    if-eqz p0, :cond_5

    .line 11
    invoke-interface {p0, v2}, Lo1/s;->R(Z)V

    .line 12
    :cond_5
    sget-object p0, La/b;->c:Lo1/e;

    invoke-virtual {p0, p1, v1}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result p0

    .line 13
    invoke-static {p0, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v3

    const/16 v4, 0x71

    if-eqz v3, :cond_6

    .line 14
    sput v2, Lg1/c;->e:I

    .line 15
    sget-object v3, Lg1/a;->a:Lo1/y;

    invoke-virtual {v3}, Lo1/y;->c()V

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 16
    invoke-static {v4, v3}, Lu0/d;->I3(I[I)V

    goto :goto_1

    .line 17
    :cond_6
    sput v1, Lg1/c;->e:I

    .line 18
    sget-object v3, Lg1/a;->a:Lo1/y;

    invoke-virtual {v3}, Lo1/y;->c()V

    new-array v3, v2, [I

    aput v1, v3, v1

    .line 19
    invoke-static {v4, v3}, Lu0/d;->I3(I[I)V

    .line 20
    :goto_1
    invoke-static {p0, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    invoke-static {v2}, La/e;->e(I)V

    .line 22
    invoke-static {p1}, La/i;->Y(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 23
    :cond_7
    invoke-static {p1}, La/i;->v(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "com.syu"

    const/4 v5, 0x3

    const/16 v6, 0xa

    if-eqz v3, :cond_f

    new-array v3, v5, [I

    .line 24
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->s([I)V

    .line 25
    sget-object v3, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {v3, p1}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 26
    sget-boolean v3, Lu0/b;->D3:Z

    if-eqz v3, :cond_8

    .line 27
    invoke-static {v6}, La/i;->K(I)V

    .line 28
    sget-object v3, Lu0/b;->B3:Ljava/lang/String;

    invoke-static {v3}, La/i;->C(Ljava/lang/String;)V

    .line 29
    sput-boolean v1, Lu0/b;->D3:Z

    .line 30
    sget-object v1, Lu0/b;->c:Lu0/h;

    instance-of v3, v1, Lu0/a;

    if-eqz v3, :cond_8

    .line 31
    check-cast v1, Lu0/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lu0/a;->i(Ljava/lang/String;)V

    :cond_8
    const-string v1, "com.syu.dvr"

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "com.syu.onlineradio"

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 34
    :cond_9
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    if-nez v0, :cond_a

    .line 35
    sget v0, Lu0/b;->D:I

    if-eq v0, v6, :cond_a

    .line 36
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 37
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v6}, Lu0/h;->c(I)V

    .line 39
    :cond_a
    sget-object v0, Lu0/b;->c:Lu0/h;

    instance-of v1, v0, Lu0/a;

    if-eqz v1, :cond_b

    .line 40
    check-cast v0, Lu0/a;

    invoke-virtual {v0, p1}, Lu0/a;->i(Ljava/lang/String;)V

    .line 41
    :cond_b
    invoke-static {p0}, La/i;->p(I)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 42
    sput-boolean v2, Lu0/b;->D3:Z

    goto/16 :goto_3

    :cond_c
    :goto_2
    if-nez v0, :cond_d

    .line 43
    sget v0, Lu0/b;->D:I

    if-eq v0, v6, :cond_d

    .line 44
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 45
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v6}, Lu0/h;->c(I)V

    .line 47
    :cond_d
    sget-object v0, Lu0/b;->c:Lu0/h;

    instance-of v1, v0, Lu0/a;

    if-eqz v1, :cond_e

    .line 48
    check-cast v0, Lu0/a;

    invoke-virtual {v0, p1}, Lu0/a;->i(Ljava/lang/String;)V

    .line 49
    :cond_e
    invoke-static {p0}, La/i;->p(I)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 50
    sput-boolean v2, Lu0/b;->D3:Z

    goto/16 :goto_3

    .line 51
    :cond_f
    sget-object v3, La/b;->T:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-array p0, v5, [I

    .line 52
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    .line 53
    sget-object p0, Lu0/b;->c:Lu0/h;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lu0/h;->c(I)V

    goto/16 :goto_3

    .line 54
    :cond_10
    invoke-static {p1}, La/i;->x(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    new-array p0, v5, [I

    .line 55
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    .line 56
    sget-object p0, Lu0/b;->c:Lu0/h;

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Lu0/h;->c(I)V

    goto/16 :goto_3

    .line 57
    :cond_11
    invoke-static {p1}, Le/f;->n(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 58
    invoke-static {p1}, Lo1/u;->d0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    return-void

    .line 59
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " newPackage = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "   ModuleSound.getInstance().isIgnored(newPackage) : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v7

    invoke-virtual {v7, p1}, Ly0/j;->f3(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Qin"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v3

    invoke-virtual {v3, p1}, Ly0/j;->f3(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    new-array v3, v5, [I

    .line 61
    fill-array-data v3, :array_3

    invoke-static {v3}, Lz/k;->s([I)V

    .line 62
    sget-object v3, Ly0/f;->O0:Lo1/e;

    invoke-virtual {v3, p1, v1}, Lo1/e;->d(Ljava/lang/Comparable;I)I

    move-result v3

    if-eqz v3, :cond_14

    move v1, v2

    :cond_14
    if-eqz v1, :cond_16

    .line 63
    invoke-static {p0}, La/i;->t(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 65
    invoke-static {p0, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 66
    invoke-static {p0}, La/i;->y(I)Z

    move-result p0

    if-nez p0, :cond_16

    if-nez v0, :cond_15

    .line 67
    sget p0, Lu0/b;->D:I

    if-eq p0, v6, :cond_15

    .line 68
    sget-object p0, Lf/b;->d:Lf/b;

    iget-object p0, p0, Lf/b;->c:Lf/c;

    .line 69
    invoke-virtual {p0}, Lf/c;->h()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 70
    sget-object p0, Lu0/b;->c:Lu0/h;

    invoke-interface {p0, v6}, Lu0/h;->c(I)V

    .line 71
    :cond_15
    sget-object p0, Lu0/b;->c:Lu0/h;

    instance-of v0, p0, Lu0/a;

    if-eqz v0, :cond_16

    .line 72
    check-cast p0, Lu0/a;

    invoke-virtual {p0, p1}, Lu0/a;->i(Ljava/lang/String;)V

    .line 73
    :cond_16
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "com.antutu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 74
    invoke-static {}, La/i;->D()V

    :cond_17
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x5a
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x5a
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x5a
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lplugins/DabDev;->Y(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lg1/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    .line 5
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0xd1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xd2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0xd0
    .end array-data
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/c;->a:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 7

    .line 1
    sget v0, La/b;->e0:I

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2
    invoke-static {v3, v4}, Lo1/u;->B0(II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.syu.carinfo.CarInfoActivity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo1/u;->d0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-nez v0, :cond_4

    .line 9
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_4
    iget-object v2, p0, Lg1/c;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 11
    invoke-virtual {p0}, Lg1/c;->f()Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " top Act from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lg1/c;->a:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Qin"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v2, v3}, Lg1/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v2, v3}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 15
    iput-object v2, p0, Lg1/c;->b:Ljava/lang/String;

    .line 16
    :cond_5
    iput-object v0, p0, Lg1/c;->a:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {p0}, Lg1/c;->f()Ljava/lang/String;

    const/16 v0, 0x8a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lg1/c;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0}, Lg1/c;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lu0/d;->K3(I[Ljava/lang/String;)V

    .line 19
    sget v0, Lh0/c;->G:I

    if-eqz v0, :cond_6

    sget-object v0, La/b;->l:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_6

    sget-boolean v0, Lh0/c;->k0:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lh0/c;->l0:Z

    if-nez v0, :cond_6

    .line 21
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lg1/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lg1/c;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    :cond_6
    invoke-virtual {p0}, Lg1/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lg1/c;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lg1/c;->h()Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-static {v0, v1}, La/i;->a0(J)V

    goto :goto_0
.end method
