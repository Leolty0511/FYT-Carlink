.class public Lcom/syu/bt/ctrl/JPinBar;
.super Landroid/view/View;
.source "JPinBar.java"


# instance fields
.field private mAngle:F

.field private mAngleTarget:F

.field private mDrawingTime:J


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 12
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    .line 13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v6, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JPinBar;->getWidth()I

    move-result v4

    mul-int/lit16 v4, v4, 0xfd

    div-int/lit16 v4, v4, 0x12c

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JPinBar;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1c

    div-int/lit16 v5, v5, 0xb3

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 40
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    iget v4, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JPinBar;->getDrawingTime()J

    move-result-wide v2

    .line 45
    .local v2, "drawingTime":J
    iget-wide v4, p0, Lcom/syu/bt/ctrl/JPinBar;->mDrawingTime:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 46
    const-wide/16 v4, 0x11

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/syu/bt/ctrl/JPinBar;->mDrawingTime:J

    .line 48
    :cond_0
    iget-wide v4, p0, Lcom/syu/bt/ctrl/JPinBar;->mDrawingTime:J

    sub-long v4, v2, v4

    long-to-float v1, v4

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v1, v4

    const/high16 v4, 0x43480000    # 200.0f

    div-float v0, v1, v4

    .line 49
    .local v0, "distance":F
    iput-wide v2, p0, Lcom/syu/bt/ctrl/JPinBar;->mDrawingTime:J

    .line 50
    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    iget v4, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 51
    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    iput v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JPinBar;->invalidate()V

    .line 61
    .end local v0    # "distance":F
    .end local v2    # "drawingTime":J
    :goto_1
    return-void

    .line 53
    .restart local v0    # "distance":F
    .restart local v2    # "drawingTime":J
    :cond_1
    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    iget v4, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 54
    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    goto :goto_0

    .line 56
    :cond_2
    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    goto :goto_0

    .line 60
    .end local v0    # "distance":F
    .end local v2    # "drawingTime":J
    :cond_3
    iput-wide v6, p0, Lcom/syu/bt/ctrl/JPinBar;->mDrawingTime:J

    goto :goto_1
.end method

.method public setRun(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    iget v0, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 18
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    .line 19
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JPinBar;->invalidate()V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget v0, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 23
    iput v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    .line 24
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JPinBar;->invalidate()V

    goto :goto_0
.end method

.method public skipAnim()V
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    iget v1, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 31
    iget v0, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngleTarget:F

    iput v0, p0, Lcom/syu/bt/ctrl/JPinBar;->mAngle:F

    .line 32
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JPinBar;->invalidate()V

    .line 34
    :cond_0
    return-void
.end method
