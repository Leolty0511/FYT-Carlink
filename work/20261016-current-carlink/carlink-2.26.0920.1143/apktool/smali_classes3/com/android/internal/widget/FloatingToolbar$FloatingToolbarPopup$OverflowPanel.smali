.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverflowPanel"
.end annotation


# instance fields
.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 15
    .line 16
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x3

    .line 21
    mul-int/2addr p1, v0

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollIndicators(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2200(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr p2, v0

    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    .line 23
    .line 24
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
