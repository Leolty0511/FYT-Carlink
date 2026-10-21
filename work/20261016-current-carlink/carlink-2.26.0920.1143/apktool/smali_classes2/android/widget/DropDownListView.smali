.class public Landroid/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const v0, 0x101006d

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method

.method public static synthetic access$102(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)Landroid/widget/DropDownListView$ResolveHoverRunnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    return-object p1
.end method

.method private clearPressedItem()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 11
    .line 12
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 13
    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 3
    .line 4
    invoke-virtual {p0, p3, p4}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 24
    .line 25
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 26
    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-eq v1, p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iput p2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    sub-float v1, p3, v1

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    sub-float v2, p4, v2

    .line 61
    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/AbsListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/AbsListView;->drawableStateChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public obtainView(I[Z)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p2, p1, Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    move-object p2, p1

    .line 10
    check-cast p2, Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p1
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_2

    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    if-eq v0, p2, :cond_1

    .line 14
    .line 15
    :cond_0
    :goto_0
    move v3, v1

    .line 16
    move p2, v2

    .line 17
    goto :goto_3

    .line 18
    :cond_1
    :goto_1
    move p2, v2

    .line 19
    move v3, p2

    .line 20
    goto :goto_3

    .line 21
    :cond_2
    move v3, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_3
    move v3, v2

    .line 24
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-gez p2, :cond_4

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    float-to-int v4, v4

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    float-to-int p2, p2

    .line 41
    invoke-virtual {p0, v4, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, -0x1

    .line 46
    if-ne v5, v6, :cond_5

    .line 47
    .line 48
    move p2, v1

    .line 49
    goto :goto_3

    .line 50
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    sub-int v3, v5, v3

    .line 55
    .line 56
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    int-to-float v4, v4

    .line 61
    int-to-float p2, p2

    .line 62
    invoke-direct {p0, v3, v5, v4, p2}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 63
    .line 64
    .line 65
    if-ne v0, v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-virtual {p0, v3, v5, v6, v7}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :goto_3
    if-eqz v3, :cond_6

    .line 76
    .line 77
    if-eqz p2, :cond_7

    .line 78
    .line 79
    :cond_6
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    .line 80
    .line 81
    .line 82
    :cond_7
    if-eqz v3, :cond_9

    .line 83
    .line 84
    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 85
    .line 86
    if-nez p2, :cond_8

    .line 87
    .line 88
    new-instance p2, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 94
    .line 95
    :cond_8
    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Lcom/android/internal/widget/AutoScrollHelper;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 101
    .line 102
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_9
    iget-object p1, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 107
    .line 108
    if-eqz p1, :cond_a

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/AutoScrollHelper;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 111
    .line 112
    .line 113
    :cond_a
    :goto_4
    return v3
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, v2}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$1;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x7

    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-super {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    float-to-int v0, v0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    float-to-int p1, p1

    .line 60
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eq p1, v3, :cond_4

    .line 65
    .line 66
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 67
    .line 68
    if-eq p1, v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    sub-int v0, p1, v0

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public setListSelectionHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    return-void
.end method

.method public shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public touchModeDrawsInPressedState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
