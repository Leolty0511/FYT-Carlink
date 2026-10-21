.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field public mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field public mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field public mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field public final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 2
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    const/4 v1, 0x5

    new-array v2, v1, [J

    .line 5
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    new-array v1, v1, [I

    .line 6
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 8
    iput v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 9
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 10
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 p1, 0x3ea

    .line 12
    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 13
    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 14
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 17
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    const p2, -0x41666666    # -0.3f

    mul-float/2addr p2, p1

    .line 18
    iput p2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    const p2, 0x3f333333    # 0.7f

    mul-float/2addr p1, p2

    .line 19
    iput p1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 2
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aput p1, v1, v0

    .line 3
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 4
    iget p1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    return-void
.end method

.method private filterOnTouchUp()V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    .line 4
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v8, v7, v2

    sub-long v7, v0, v8

    const-wide/16 v9, 0x96

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 5
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v2, v6

    add-int/2addr v2, v4

    rem-int/2addr v2, v4

    goto :goto_0

    :cond_0
    if-lez v6, :cond_1

    if-ge v6, v3, :cond_1

    .line 6
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long/2addr v0, v6

    const-wide/16 v3, 0x15e

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0, v5}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    :cond_1
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;II)Z

    move-result v0

    return v0
.end method

.method private startTouchUpFilter(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method public abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    return-void
.end method

.method public hideActionPopupWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHandleMoved()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 5
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v3

    sub-float/2addr v2, v4

    .line 6
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    int-to-float v3, v3

    sub-float/2addr v4, v3

    .line 7
    iget v3, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v5, v2, v3

    if-gez v5, :cond_2

    .line 8
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 11
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 12
    :goto_0
    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 13
    iget v3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sub-float/2addr p1, v2

    .line 14
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr p1, v2

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 17
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 21
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 23
    invoke-virtual {p1}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 24
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    :goto_1
    return v1
.end method

.method public positionAtCursorOffset(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    .line 3
    :cond_0
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 6
    :cond_3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p2

    .line 7
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 8
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 9
    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 10
    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 11
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 12
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_4
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    return-void
.end method

.method public showActionPopupWindow(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateDrawable()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    return-void
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    if-nez p3, :cond_0

    .line 2
    iget-boolean p3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz p3, :cond_7

    .line 3
    :cond_0
    iget-boolean p3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz p3, :cond_3

    .line 4
    iget p3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, p3, :cond_1

    iget p4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, p4, :cond_2

    .line 5
    :cond_1
    iget p4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-int p3, p1, p3

    int-to-float p3, p3

    add-float/2addr p4, p3

    iput p4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 6
    iget p3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget p4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int p4, p2, p4

    int-to-float p4, p4

    add-float/2addr p3, p4

    iput p3, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 7
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 8
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 10
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_5

    .line 11
    iget p3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int/2addr p1, p3

    .line 12
    iget p3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int/2addr p2, p3

    .line 13
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 14
    iget-object p3, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v0, -0x1

    invoke-virtual {p3, p1, p2, v0, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p3, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 18
    :cond_6
    :goto_0
    iput-boolean p4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_7
    return-void
.end method

.method public abstract updateSelection(I)V
.end method
