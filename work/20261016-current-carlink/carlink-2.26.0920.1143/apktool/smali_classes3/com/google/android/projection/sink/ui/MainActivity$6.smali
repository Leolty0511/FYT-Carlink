.class Lcom/google/android/projection/sink/ui/MainActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$6;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameRendered(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$6;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$600(Lcom/google/android/projection/sink/ui/MainActivity;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$6;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$6;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, p1, v2}, Lcom/google/android/projection/protocol/VideoSink;->ackFrames(II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public onSurfaceCreated(IIZ)V
    .locals 0

    return-void
.end method

.method public onSurfaceDestroyed(Z)V
    .locals 0

    return-void
.end method
