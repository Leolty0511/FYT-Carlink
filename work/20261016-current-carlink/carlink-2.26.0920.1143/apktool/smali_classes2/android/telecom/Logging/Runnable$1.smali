.class Landroid/telecom/Logging/Runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Logging/Runnable;


# direct methods
.method public constructor <init>(Landroid/telecom/Logging/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telecom/Logging/Runnable;->access$000(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 16
    .line 17
    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->access$200(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/telecom/Logging/Runnable;->loggedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 41
    .line 42
    invoke-static {v2, v1}, Landroid/telecom/Logging/Runnable;->access$102(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;

    .line 43
    .line 44
    .line 45
    :cond_0
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v2

    .line 48
    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 49
    .line 50
    invoke-static {v3}, Landroid/telecom/Logging/Runnable;->access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Landroid/telecom/Logging/Runnable$1;->this$0:Landroid/telecom/Logging/Runnable;

    .line 60
    .line 61
    invoke-static {v3, v1}, Landroid/telecom/Logging/Runnable;->access$102(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;

    .line 62
    .line 63
    .line 64
    :cond_1
    throw v2

    .line 65
    :catchall_1
    move-exception v1

    .line 66
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    throw v1
.end method
