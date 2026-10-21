.class public Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/b$b;,
        Ld0/b$c;
    }
.end annotation


# static fields
.field public static final f:Ld0/b;


# instance fields
.field public a:Ly/d;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld0/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld0/b;

    invoke-direct {v0}, Ld0/b;-><init>()V

    sput-object v0, Ld0/b;->f:Ld0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld0/b;->d:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ld0/b$a;

    invoke-direct {v0, p0}, Ld0/b$a;-><init>(Ld0/b;)V

    iput-object v0, p0, Ld0/b;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Ld0/b;)Ly/d;
    .locals 0

    .line 1
    iget-object p0, p0, Ld0/b;->a:Ly/d;

    return-object p0
.end method

.method public static synthetic b()Ld0/b;
    .locals 1

    .line 1
    sget-object v0, Ld0/b;->f:Ld0/b;

    return-object v0
.end method

.method public static synthetic c(Ld0/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ld0/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic d(Ld0/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld0/b;->c:Z

    return p1
.end method

.method public static h()Ld0/b;
    .locals 1

    .line 1
    sget-object v0, Ld0/b;->f:Ld0/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized e(Ld0/a;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Ld0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Ld0/b;->a:Ly/d;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Ld0/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ld0/b$b;-><init>(Ld0/b;Ld0/a;Ld0/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ld0/b;->g(Landroid/content/Context;J)V

    return-void
.end method

.method public final declared-synchronized g(Landroid/content/Context;J)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Ld0/b;->c:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Ld0/b;->a:Ly/d;

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ld0/b;->b:Landroid/content/Context;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ld0/b;->c:Z

    .line 4
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p1

    iget-object p2, p0, Ld0/b;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i()Ly/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/b;->a:Ly/d;

    return-object v0
.end method

.method public declared-synchronized j(Ld0/a;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    iget-object v0, p0, Ld0/b;->a:Ly/d;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Ld0/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ld0/b$c;-><init>(Ld0/b;Ld0/a;Ld0/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Ly/d$a;->J2(Landroid/os/IBinder;)Ly/d;

    move-result-object p1

    iput-object p1, p0, Ld0/b;->a:Ly/d;

    .line 2
    iget-object p1, p0, Ld0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld0/a;

    .line 3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Ld0/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Ld0/b$b;-><init>(Ld0/b;Ld0/a;Ld0/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    monitor-enter p0

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iput-object p1, p0, Ld0/b;->a:Ly/d;

    .line 2
    iget-object v0, p0, Ld0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld0/a;

    .line 3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v2

    new-instance v3, Ld0/b$c;

    invoke-direct {v3, p0, v1, p1}, Ld0/b$c;-><init>(Ld0/b;Ld0/a;Ld0/b$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ld0/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    iget-object p1, p0, Ld0/b;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Ld0/b;->g(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
