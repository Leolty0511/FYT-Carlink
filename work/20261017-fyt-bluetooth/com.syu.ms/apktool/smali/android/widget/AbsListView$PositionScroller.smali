.class Landroid/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field public final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3
    iget v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_f

    const/4 v7, 0x3

    if-eq v3, v7, :cond_a

    const/4 v7, 0x4

    if-eq v3, v7, :cond_6

    const/4 v0, 0x5

    if-eq v3, v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    add-int v3, v2, v0

    sub-int/2addr v3, v4

    if-ge v1, v2, :cond_2

    sub-int v5, v2, v1

    add-int/lit8 v6, v5, 0x1

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_3

    sub-int v6, v1, v3

    :cond_3
    :goto_0
    int-to-float v5, v6

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 9
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-ge v1, v2, :cond_4

    .line 10
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 11
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 12
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 13
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_4
    if-le v1, v3, :cond_5

    .line 14
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 15
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 16
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 17
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 18
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 19
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int/2addr v0, v1

    .line 20
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 21
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_3

    .line 22
    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    if-gez v1, :cond_7

    return-void

    :cond_7
    add-int/2addr v2, v1

    .line 23
    iget v3, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v3, :cond_8

    .line 24
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 25
    :cond_8
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v5, v0, v1

    .line 28
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 29
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 30
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v2, v7, :cond_9

    .line 31
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v5, v6

    neg-int v1, v5

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 32
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_9
    sub-int/2addr v0, v6

    add-int/2addr v1, v3

    if-le v0, v1, :cond_17

    .line 33
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_3

    .line 34
    :cond_a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 35
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v2, v1, :cond_e

    if-le v0, v4, :cond_e

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v1, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v0, v3, :cond_b

    goto :goto_1

    :cond_b
    add-int/2addr v2, v4

    .line 36
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v0, :cond_c

    .line 37
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 38
    :cond_c
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 41
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 42
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v2, v5, :cond_d

    .line 43
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v5, v0, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 44
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 45
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_d
    if-le v0, v3, :cond_17

    .line 46
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v3

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_3

    :cond_e
    :goto_1
    return-void

    .line 47
    :cond_f
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v0, :cond_10

    .line 48
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 49
    :cond_10
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 50
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v2, :cond_12

    .line 51
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_12
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 52
    :goto_2
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v3, v0, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 53
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 54
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v2, v0, :cond_17

    .line 55
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 56
    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    if-gez v1, :cond_14

    return-void

    .line 57
    :cond_14
    iget v3, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v2, v3, :cond_15

    .line 58
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 59
    :cond_15
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v1, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v4

    iget-object v1, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_16

    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_16
    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    .line 63
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v3, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 64
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 65
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v2, v0, :cond_17

    .line 66
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_17
    :goto_3
    return-void
.end method

.method public scrollToVisible(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 3
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    if-lt p1, v1, :cond_0

    if-le p1, v0, :cond_1

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scrollToVisible called with targetPos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not visible ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AbsListView"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lt p2, v1, :cond_2

    if-le p2, v0, :cond_3

    :cond_2
    const/4 p2, -0x1

    .line 6
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    const/4 v4, 0x0

    if-le p1, v2, :cond_4

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_4
    move p1, v4

    :goto_0
    if-ge v0, v3, :cond_5

    sub-int p1, v0, v3

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    if-ltz p2, :cond_8

    .line 9
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_7

    add-int v5, p2, v1

    if-le v5, v2, :cond_7

    sub-int/2addr p2, v2

    .line 13
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_7
    if-lez p1, :cond_8

    sub-int p2, v0, v1

    if-ge p2, v3, :cond_8

    sub-int/2addr v0, v3

    .line 14
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    :cond_8
    :goto_1
    iget-object p2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method

.method public start(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0xc8

    const/4 v4, -0x1

    if-ge p1, v2, :cond_2

    sub-int/2addr v2, p1

    add-int/2addr v2, v3

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_4

    sub-int v0, p1, v0

    add-int/lit8 v2, v0, 0x1

    .line 8
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v2, :cond_3

    .line 9
    div-int/2addr v1, v2

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    .line 10
    :cond_3
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 11
    :goto_1
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 12
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 13
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 14
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_4
    invoke-virtual {p0, p1, v4, v1}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public start(II)V
    .locals 6

    .line 16
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 19
    new-instance v0, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v0, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 20
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 21
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v2, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    const/4 v5, 0x0

    .line 22
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v2, 0xc8

    if-ge p1, v3, :cond_5

    sub-int/2addr v1, p2

    if-ge v1, v4, :cond_3

    return-void

    :cond_3
    sub-int/2addr v3, p1

    add-int/2addr v3, v4

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_4

    const/4 v3, 0x4

    .line 23
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    .line 24
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_5
    if-le p1, v1, :cond_9

    sub-int v3, p2, v3

    if-ge v3, v4, :cond_6

    return-void

    :cond_6
    sub-int v1, p1, v1

    add-int/2addr v1, v4

    sub-int/2addr v3, v4

    if-ge v3, v1, :cond_7

    const/4 v1, 0x3

    .line 25
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 26
    :cond_7
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :goto_1
    if-lez v3, :cond_8

    .line 27
    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 28
    :cond_8
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 29
    :goto_2
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 30
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 31
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 32
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 33
    :cond_9
    invoke-virtual {p0, p1, p2, v2}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public startWithOffset(III)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 10
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    const/4 v2, 0x5

    .line 11
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 12
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v4, v2, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v4, v0

    sub-int/2addr v5, v3

    if-ge p1, v4, :cond_2

    sub-int/2addr v4, p1

    goto :goto_0

    :cond_2
    if-le p1, v5, :cond_4

    sub-int v4, p1, v5

    :goto_0
    int-to-float p1, v4

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p2, p3

    div-float/2addr p2, p1

    float-to-int p3, p2

    .line 13
    :goto_1
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 14
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 15
    invoke-virtual {v2, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sub-int/2addr p1, v4

    .line 16
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 17
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1, p3, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
