.class public final Lf/t;
.super Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/AlertDialog;

.field public final synthetic b:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCodecConfig([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->handleCodecConfig([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCodecSetup(I)V
    .locals 0

    return-void
.end method

.method public final onProjectionUpdate(Lcom/google/android/projection/protocol/VideoFrame;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->decodeBuffer(Lcom/google/android/projection/protocol/VideoFrame;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSourceVideoConfigChanged(IILcom/google/android/projection/proto/Protos$VideoConfiguration;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iget-object v0, p3, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->prepareStart(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p3, Lcom/syu/carlink/auto/AutoFragment;->q:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance p2, Lf/p;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lf/p;-><init>(Lf/t;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string p1, "AHU.MAIN_ACTIVITY"

    .line 25
    .line 26
    const-string p2, "======================>> onSourceVideoConfigChanged"

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onVideoFocusModeChange(II)V
    .locals 3

    iget-object v0, p0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lf/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lf/s;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoFocusRequest(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "======================>> onVideoFocusRequest focus : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " reason : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lf/r;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1, p2}, Lf/r;-><init>(Lf/t;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
