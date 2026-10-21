.class public Lcom/lsec/core/frame/ctrl/JScrollView;
.super Landroid/widget/ScrollView;
.source "JScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JScrollView$YScrollDetector;
    }
.end annotation


# instance fields
.field bAttached:Z

.field private bMove:Z

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

.field private mRunnableMeasure:Ljava/lang/Runnable;

.field private mRunnableOverScroll:Ljava/lang/Runnable;

.field public mStepHeight:I

.field mStrDrawable:Ljava/lang/String;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mStepHeight:I

    .line 22
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bMove:Z

    .line 25
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bAttached:Z

    .line 26
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bWillUpdateBackground:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mDrawables:Ljava/util/HashMap;

    .line 51
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lsec/core/frame/ctrl/JScrollView$YScrollDetector;

    invoke-direct {v1, p0}, Lcom/lsec/core/frame/ctrl/JScrollView$YScrollDetector;-><init>(Lcom/lsec/core/frame/ctrl/JScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bAttached:Z

    .line 126
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bWillUpdateBackground:Z

    .line 128
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JScrollView;->updateBackground()V

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bAttached:Z

    .line 136
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 137
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 89
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mRunnableMeasure:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mRunnableMeasure:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 67
    :pswitch_0
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bMove:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mRunnableOverScroll:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mRunnableOverScroll:Ljava/lang/Runnable;

    invoke-static {v3, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 74
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bMove:Z

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JScrollView;->getScrollY()I

    move-result v0

    .line 78
    .local v0, "scrollY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 79
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bMove:Z

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->layout:Landroid/widget/LinearLayout;

    .line 141
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JScrollView;->addView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method public setMeasure(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnableSizeChange"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mRunnableMeasure:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method public setOverScrolled(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "overScrolled"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mRunnableOverScroll:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method public setStepHeight(I)V
    .locals 0
    .param p1, "stepH"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mStepHeight:I

    .line 32
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bWillUpdateBackground:Z

    .line 99
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mStrDrawable:Ljava/lang/String;

    .line 100
    if-eqz p2, :cond_0

    .line 101
    if-nez p1, :cond_1

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JScrollView;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bAttached:Z

    if-nez v1, :cond_1

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bWillUpdateBackground:Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->bWillUpdateBackground:Z

    .line 115
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JScrollView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
