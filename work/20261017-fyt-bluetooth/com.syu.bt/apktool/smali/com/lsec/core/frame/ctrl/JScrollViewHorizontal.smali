.class public Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;
.super Landroid/widget/HorizontalScrollView;
.source "JScrollViewHorizontal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal$XScrollDetector;
    }
.end annotation


# instance fields
.field bAttached:Z

.field bWillUpdateBackground:Z

.field private layout:Landroid/widget/LinearLayout;

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mStrDrawable:Ljava/lang/String;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bAttached:Z

    .line 19
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bWillUpdateBackground:Z

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->mDrawables:Ljava/util/HashMap;

    .line 32
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 33
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal$XScrollDetector;

    invoke-direct {v1, p0}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal$XScrollDetector;-><init>(Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->mGestureDetector:Landroid/view/GestureDetector;

    .line 34
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bAttached:Z

    .line 73
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bWillUpdateBackground:Z

    .line 75
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->updateBackground()V

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 78
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bAttached:Z

    .line 83
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 84
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->layout:Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bWillUpdateBackground:Z

    .line 46
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->mStrDrawable:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    if-nez p1, :cond_1

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 56
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bAttached:Z

    if-nez v1, :cond_1

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bWillUpdateBackground:Z

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->bWillUpdateBackground:Z

    .line 62
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JScrollViewHorizontal;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
