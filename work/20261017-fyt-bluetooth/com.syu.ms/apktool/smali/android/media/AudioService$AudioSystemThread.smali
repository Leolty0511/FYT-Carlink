.class Landroid/media/AudioService$AudioSystemThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioSystemThread"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    const-string p1, "AudioService"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    iget-object v0, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    invoke-static {v1, v2}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;

    .line 4
    iget-object v1, p0, Landroid/media/AudioService$AudioSystemThread;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
