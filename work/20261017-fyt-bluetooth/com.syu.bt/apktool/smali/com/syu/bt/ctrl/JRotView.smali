.class public Lcom/syu/bt/ctrl/JRotView;
.super Landroid/view/View;
.source "JRotView.java"


# instance fields
.field private mAngle:F

.field public mDelay:J

.field private mRun:Z

.field public mRunnableInvalidate:Ljava/lang/Runnable;

.field public mSpeed:F

.field private mStep:F


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/high16 v2, 0x41700000    # 15.0f

    .line 16
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    iput v2, p0, Lcom/syu/bt/ctrl/JRotView;->mSpeed:F

    .line 62
    new-instance v0, Lcom/syu/bt/ctrl/JRotView$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/ctrl/JRotView$1;-><init>(Lcom/syu/bt/ctrl/JRotView;)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JRotView;->mRunnableInvalidate:Ljava/lang/Runnable;

    .line 17
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 18
    :cond_0
    iput v2, p0, Lcom/syu/bt/ctrl/JRotView;->mSpeed:F

    .line 19
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/syu/bt/ctrl/JRotView;->mDelay:J

    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 42
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mAngle:F

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JRotView;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JRotView;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/JRotView;->mRun:Z

    if-eqz v0, :cond_2

    .line 46
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    iget v1, p0, Lcom/syu/bt/ctrl/JRotView;->mSpeed:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 47
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    .line 56
    :cond_0
    :goto_0
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 57
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mAngle:F

    iget v1, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/syu/bt/ctrl/JRotView;->mAngle:F

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/bt/ctrl/JRotView;->mRunnableInvalidate:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/syu/bt/ctrl/JRotView;->mDelay:J

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 60
    :cond_1
    return-void

    .line 49
    :cond_2
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 50
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    .line 51
    iget v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 52
    iput v4, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    goto :goto_0
.end method

.method public resetStep()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/syu/bt/ctrl/JRotView;->mStep:F

    .line 33
    return-void
.end method

.method public setRun(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/JRotView;->mRun:Z

    if-eq v0, p1, :cond_0

    .line 25
    iput-boolean p1, p0, Lcom/syu/bt/ctrl/JRotView;->mRun:Z

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JRotView;->invalidate()V

    .line 29
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/syu/bt/ctrl/JRotView;->mSpeed:F

    .line 37
    return-void
.end method
