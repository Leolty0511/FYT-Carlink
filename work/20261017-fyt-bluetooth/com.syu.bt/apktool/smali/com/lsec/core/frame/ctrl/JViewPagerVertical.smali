.class public Lcom/lsec/core/frame/ctrl/JViewPagerVertical;
.super Lcom/lsec/core/frame/ctrl/JViewPager;
.source "JViewPagerVertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JViewPagerVertical$DefaultTransformer;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/ctrl/JViewPager;-><init>(Lcom/lsec/core/frame/ctrl/JPage;)V

    .line 19
    const/4 v0, 0x0

    new-instance v1, Lcom/lsec/core/frame/ctrl/JViewPagerVertical$DefaultTransformer;

    invoke-direct {v1, p0}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical$DefaultTransformer;-><init>(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V

    invoke-virtual {p0, v0, v1}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 20
    return-void
.end method

.method private swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 24
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 25
    .local v0, "height":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    div-float/2addr v4, v0

    mul-float v1, v4, v3

    .line 26
    .local v1, "swappedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    div-float/2addr v4, v3

    mul-float v2, v4, v0

    .line 27
    .local v2, "swappedY":F
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 28
    return-object p1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/lsec/core/frame/ctrl/JViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 34
    .local v0, "intercept":Z
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 35
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/ctrl/JViewPagerVertical;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/lsec/core/frame/ctrl/JViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
