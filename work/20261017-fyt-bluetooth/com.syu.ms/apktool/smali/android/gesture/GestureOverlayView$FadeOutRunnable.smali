.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field public fireActionPerformed:Z

.field public resetMultipleStrokes:Z

.field public final synthetic this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$100(Landroid/gesture/GestureOverlayView;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    .line 3
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$200(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 4
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    .line 8
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$102(Landroid/gesture/GestureOverlayView;Z)Z

    .line 9
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 10
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 11
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 12
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    const/4 v0, 0x0

    long-to-float v1, v5

    .line 14
    iget-object v2, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v2}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 15
    iget-object v1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v1}, Landroid/gesture/GestureOverlayView;->access$1100(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Landroid/gesture/GestureOverlayView;->access$1002(Landroid/gesture/GestureOverlayView;F)F

    .line 16
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$1000(Landroid/gesture/GestureOverlayView;)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    .line 17
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 18
    :cond_2
    iget-boolean v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v1}, Landroid/gesture/GestureOverlayView;->access$1202(Landroid/gesture/GestureOverlayView;Z)Z

    goto :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    .line 21
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 22
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 23
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v3}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 24
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    .line 25
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-static {v0, v2}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    .line 26
    :goto_0
    iget-object v0, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
