.class public Lb/c$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Lb/c;

.field public c:Lb/c$a;

.field public d:Z

.field public e:Z

.field public f:Z

.field public volatile g:Z

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lb/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lb/c$b;-><init>(Lb/c;Lb/c$a;)V

    return-void
.end method

.method public constructor <init>(Lb/c;Lb/c$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/c$b;->a:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lb/c$b;->d:Z

    .line 5
    iput-boolean v0, p0, Lb/c$b;->e:Z

    .line 6
    iput-boolean v0, p0, Lb/c$b;->f:Z

    .line 7
    iput-boolean v0, p0, Lb/c$b;->g:Z

    .line 8
    new-instance v0, Lb/c$b$a;

    invoke-direct {v0, p0}, Lb/c$b$a;-><init>(Lb/c$b;)V

    iput-object v0, p0, Lb/c$b;->h:Ljava/lang/Runnable;

    .line 9
    iput-object p1, p0, Lb/c$b;->b:Lb/c;

    .line 10
    iput-object p2, p0, Lb/c$b;->c:Lb/c$a;

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lb/c;->b()I

    .line 12
    invoke-virtual {p0, p2}, Lb/c$b;->e(Lb/c$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/c$b;->e:Z

    return v0
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/c$b;->f:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lb/c$b;->f:Z

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lu0/c;->c:Lo1/y;

    iget-object v0, p0, Lb/c$b;->h:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lu0/c;->c:Lo1/y;

    iget-object v0, p0, Lb/c$b;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/c$b;->e:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lb/c$b;->e:Z

    if-nez p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lb/c$b;->g:Z

    if-eqz p1, :cond_0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lb/c$b;->g:Z

    .line 7
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized e(Lb/c$a;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/c$b;->c:Lb/c$a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lb/c$b;->c:Lb/c$a;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 4
    iget-boolean p1, p0, Lb/c$b;->g:Z

    if-eqz p1, :cond_0

    .line 5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lb/c$b;->g:Z

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 9
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public varargs f([I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/c$b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/c$b;->b:Lb/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/c;->f([I)I

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :goto_0
    iget-boolean v0, p0, Lb/c$b;->d:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lb/c$b;->b:Lb/c;

    .line 3
    iget-object v1, p0, Lb/c$b;->c:Lb/c$a;

    .line 4
    iget-boolean v2, p0, Lb/c$b;->f:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v2, p0, Lb/c$b;->e:Z

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0}, Lb/c;->a()V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lb/c;->b()I

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 8
    iget-boolean v2, p0, Lb/c$b;->e:Z

    if-eqz v2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v0}, Lb/c;->c()[B

    move-result-object v0

    .line 10
    invoke-interface {v1, v0}, Lb/c$a;->b([B)V

    goto :goto_0

    .line 11
    :cond_3
    :goto_2
    monitor-enter p0

    const/4 v0, 0x1

    .line 12
    :try_start_0
    iput-boolean v0, p0, Lb/c$b;->g:Z

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lb/c$b;->g:Z

    .line 16
    :goto_3
    monitor-exit p0

    goto :goto_0

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    return-void
.end method
