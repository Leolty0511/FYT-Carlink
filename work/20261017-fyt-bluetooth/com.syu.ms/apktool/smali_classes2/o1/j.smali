.class public final Lo1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static e:Landroid/os/Handler;

.field public static final f:Ljava/lang/Object;

.field public static g:Lo1/j;

.field public static h:I


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Ljava/lang/Runnable;

.field public c:Lo1/j;

.field public d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo1/j;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lo1/j;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerHelper-Def"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lo1/j;->e:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static a()Lo1/j;
    .locals 3

    .line 1
    sget-object v0, Lo1/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lo1/j;->g:Lo1/j;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lo1/j;->c:Lo1/j;

    sput-object v2, Lo1/j;->g:Lo1/j;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lo1/j;->c:Lo1/j;

    .line 5
    sget v2, Lo1/j;->h:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lo1/j;->h:I

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Lo1/j;

    invoke-direct {v0}, Lo1/j;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static b(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lo1/j;->a()Lo1/j;

    move-result-object v0

    .line 2
    iput-object p0, v0, Lo1/j;->a:Landroid/os/Handler;

    .line 3
    iput-object p1, v0, Lo1/j;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gez p1, :cond_0

    move-wide p2, v1

    .line 4
    :cond_0
    iput-wide p2, v0, Lo1/j;->d:J

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j;->e:Landroid/os/Handler;

    invoke-static {v0, p0, p1, p2}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static e(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lo1/j;->a()Lo1/j;

    move-result-object v0

    .line 2
    iput-object p0, v0, Lo1/j;->a:Landroid/os/Handler;

    .line 3
    iput-object p1, v0, Lo1/j;->b:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, v0, Lo1/j;->d:J

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j;->e:Landroid/os/Handler;

    invoke-static {v0, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lo1/j;->a:Landroid/os/Handler;

    .line 2
    iput-object v0, p0, Lo1/j;->b:Ljava/lang/Runnable;

    .line 3
    sget-object v0, Lo1/j;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lo1/j;->h:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 5
    sget-object v2, Lo1/j;->g:Lo1/j;

    iput-object v2, p0, Lo1/j;->c:Lo1/j;

    .line 6
    sput-object p0, Lo1/j;->g:Lo1/j;

    add-int/lit8 v1, v1, 0x1

    .line 7
    sput v1, Lo1/j;->h:I

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lo1/j;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2
    iget-object v0, p0, Lo1/j;->a:Landroid/os/Handler;

    iget-object v1, p0, Lo1/j;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lo1/j;->a:Landroid/os/Handler;

    iget-object v3, p0, Lo1/j;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lo1/j;->d()V

    return-void
.end method
