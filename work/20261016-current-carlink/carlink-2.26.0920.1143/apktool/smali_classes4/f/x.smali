.class public final Lf/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/x;->b:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lf/x;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/projection/sink/settings/Settings;->isTouchScreenEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lf/x;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/syu/carlink/auto/AutoFragment;->b:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v0, p0, Lf/x;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->h:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->transformMotion(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lf/x;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->z:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Lcom/google/android/projection/sink/video/VideoLatencyChecker;->onInputEvent(Landroid/view/MotionEvent;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v1, p0, Lf/x;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->A:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;->onInputEvent(Landroid/view/MotionEvent;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p2, p0, Lf/x;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 49
    .line 50
    iget-object p2, p2, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lcom/google/android/projection/protocol/InputSource;->sendTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 58
    .line 59
    .line 60
    :cond_2
    monitor-exit p1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p2

    .line 63
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p2

    .line 65
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 66
    return p1
.end method
