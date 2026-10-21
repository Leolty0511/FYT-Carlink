.class Landroid/os/TokenWatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TokenWatcher;


# direct methods
.method public constructor <init>(Landroid/os/TokenWatcher;)V
    .locals 0

    iput-object p1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/TokenWatcher;->access$000(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/TokenWatcher;->access$100(Landroid/os/TokenWatcher;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    invoke-static {v2, v3}, Landroid/os/TokenWatcher;->access$102(Landroid/os/TokenWatcher;I)I

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne v1, v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/os/TokenWatcher;->acquired()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroid/os/TokenWatcher$1;->this$0:Landroid/os/TokenWatcher;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/TokenWatcher;->released()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v1
.end method
