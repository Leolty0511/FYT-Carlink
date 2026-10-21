.class Landroid/media/MediaSync$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;

.field final synthetic val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

.field final synthetic val$sync:Landroid/media/MediaSync;


# direct methods
.method public constructor <init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    iput-object p2, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    iput-object p3, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaSync;->access$800(Landroid/media/MediaSync;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/media/MediaSync;->access$900(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/media/MediaSync;->access$1000(Landroid/media/MediaSync;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/media/MediaSync;->access$1000(Landroid/media/MediaSync;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eq v2, v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    .line 47
    .line 48
    iget-object v2, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    .line 49
    .line 50
    iget-object v3, v2, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    iget v2, v2, Landroid/media/MediaSync$AudioBuffer;->mBufferIndex:I

    .line 53
    .line 54
    invoke-virtual {v1, v0, v3, v2}, Landroid/media/MediaSync$Callback;->onAudioBufferConsumed(Landroid/media/MediaSync;Ljava/nio/ByteBuffer;I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v1
.end method
