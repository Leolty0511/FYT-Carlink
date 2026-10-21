.class Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;
.super Ljava/lang/Object;
.source "CircleMenuLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/ctrl/CircleMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoFlingRunnable"
.end annotation


# instance fields
.field private angelPerSecond:F

.field final synthetic this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;


# direct methods
.method public constructor <init>(Lcom/syu/bt/ctrl/CircleMenuLayout;F)V
    .locals 0
    .param p2, "velocity"    # F

    .prologue
    .line 550
    iput-object p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput p2, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->angelPerSecond:F

    .line 552
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 556
    iget v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->angelPerSecond:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/syu/bt/ctrl/CircleMenuLayout;->access$0(Lcom/syu/bt/ctrl/CircleMenuLayout;Z)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/syu/bt/ctrl/CircleMenuLayout;->access$0(Lcom/syu/bt/ctrl/CircleMenuLayout;Z)V

    .line 562
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    invoke-static {v0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->access$1(Lcom/syu/bt/ctrl/CircleMenuLayout;)D

    move-result-wide v2

    iget v1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->angelPerSecond:F

    const/high16 v4, 0x41f00000    # 30.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/syu/bt/ctrl/CircleMenuLayout;->access$2(Lcom/syu/bt/ctrl/CircleMenuLayout;D)V

    .line 564
    iget v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->angelPerSecond:F

    const v1, 0x3f888659    # 1.0666f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->angelPerSecond:F

    .line 565
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Lcom/syu/bt/ctrl/CircleMenuLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    iget-object v0, v0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    iget-object v0, v0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    iget-object v1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    invoke-static {v1}, Lcom/syu/bt/ctrl/CircleMenuLayout;->access$1(Lcom/syu/bt/ctrl/CircleMenuLayout;)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/syu/bt/ctrl/CircleMenuView;->reDrawPic(D)V

    goto :goto_0
.end method
