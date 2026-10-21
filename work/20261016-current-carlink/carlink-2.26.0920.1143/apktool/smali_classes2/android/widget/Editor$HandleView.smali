.class public abstract Landroid/widget/Editor$HandleView;
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
.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentXOnScreen:I

.field private mLastParentY:I

.field private mLastParentYOnScreen:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field protected mPrevLine:I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .line 2
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 3
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 6
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 7
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    const/4 v0, 0x5

    new-array v2, v0, [J

    .line 8
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 11
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 12
    invoke-virtual {p0, p4}, Landroid/view/View;->setId(I)V

    .line 13
    new-instance p4, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {p4, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 14
    invoke-virtual {p4, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 15
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 v0, 0x3ea

    .line 16
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    const/4 v0, -0x2

    .line 17
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 18
    invoke-virtual {p4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 19
    invoke-virtual {p4, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 20
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050173

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 24
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result p1

    int-to-float p1, p1

    const p2, -0x41666666    # -0.3f

    mul-float/2addr p2, p1

    .line 25
    iput p2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    const p2, 0x3f333333    # 0.7f

    mul-float/2addr p1, p2

    .line 26
    iput p1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    rem-int/lit8 v0, v0, 0x5

    .line 6
    .line 7
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 10
    .line 11
    aput p1, v1, v0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    aput-wide v1, p1, v0

    .line 20
    .line 21
    iget p1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 26
    .line 27
    return-void
.end method

.method private filterOnTouchUp(Z)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 6
    .line 7
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 8
    .line 9
    const/4 v4, 0x5

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v5, 0x0

    .line 15
    move v6, v5

    .line 16
    :goto_0
    if-ge v6, v3, :cond_0

    .line 17
    .line 18
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 19
    .line 20
    aget-wide v8, v7, v2

    .line 21
    .line 22
    sub-long v7, v0, v8

    .line 23
    .line 24
    const-wide/16 v9, 0x96

    .line 25
    .line 26
    cmp-long v7, v7, v9

    .line 27
    .line 28
    if-gez v7, :cond_0

    .line 29
    .line 30
    add-int/lit8 v6, v6, 0x1

    .line 31
    .line 32
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 33
    .line 34
    sub-int/2addr v2, v6

    .line 35
    add-int/2addr v2, v4

    .line 36
    rem-int/2addr v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-lez v6, :cond_1

    .line 39
    .line 40
    if-ge v6, v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 43
    .line 44
    aget-wide v6, v3, v2

    .line 45
    .line 46
    sub-long/2addr v0, v6

    .line 47
    const-wide/16 v3, 0x15e

    .line 48
    .line 49
    cmp-long v0, v0, v3

    .line 50
    .line 51
    if-lez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 54
    .line 55
    aget v0, v0, v2

    .line 56
    .line 57
    invoke-virtual {p0, v0, v5, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x5

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    div-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int/2addr v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method private getPreferredHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 28
    .line 29
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v1, v2

    .line 37
    int-to-float v1, v1

    .line 38
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 39
    .line 40
    int-to-float v2, v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method private startTouchUpFilter(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method public getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public getCursorOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    return p1
.end method

.method public abstract getHorizontalGravity(Z)I
.end method

.method public abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method public getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 0

    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result p1

    return p1
.end method

.method public hide()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public invalidate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result p1

    return p1
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

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

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onHandleMoved()V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result p1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/widget/Editor;->access$5000(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/16 v3, 0x1002

    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-eq v0, v4, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    if-eq v0, p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 38
    .line 39
    int-to-float v2, v2

    .line 40
    sub-float/2addr v0, v2

    .line 41
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 42
    .line 43
    int-to-float v2, v2

    .line 44
    add-float/2addr v0, v2

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 50
    .line 51
    int-to-float v4, v4

    .line 52
    sub-float/2addr v2, v4

    .line 53
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 54
    .line 55
    int-to-float v5, v4

    .line 56
    add-float/2addr v2, v5

    .line 57
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 58
    .line 59
    int-to-float v6, v4

    .line 60
    sub-float/2addr v5, v6

    .line 61
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 62
    .line 63
    int-to-float v6, v6

    .line 64
    sub-float v6, v2, v6

    .line 65
    .line 66
    int-to-float v4, v4

    .line 67
    sub-float/2addr v6, v4

    .line 68
    iget v4, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 69
    .line 70
    cmpg-float v7, v5, v4

    .line 71
    .line 72
    if-gez v7, :cond_2

    .line 73
    .line 74
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    :goto_0
    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 92
    .line 93
    int-to-float v5, v5

    .line 94
    add-float/2addr v4, v5

    .line 95
    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 96
    .line 97
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 98
    .line 99
    sub-float/2addr v0, v4

    .line 100
    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 101
    .line 102
    int-to-float v4, v4

    .line 103
    add-float/2addr v0, v4

    .line 104
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    int-to-float v4, v4

    .line 109
    add-float/2addr v0, v4

    .line 110
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 111
    .line 112
    sub-float/2addr v2, v4

    .line 113
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 114
    .line 115
    add-float/2addr v2, v4

    .line 116
    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    .line 129
    .line 130
    .line 131
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 145
    .line 146
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iput v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    iput v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iput v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iput v0, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 179
    .line 180
    int-to-float v2, v2

    .line 181
    sub-float/2addr v0, v2

    .line 182
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 183
    .line 184
    int-to-float v2, v2

    .line 185
    add-float/2addr v0, v2

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 191
    .line 192
    int-to-float v2, v2

    .line 193
    sub-float/2addr p1, v2

    .line 194
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 195
    .line 196
    int-to-float v2, v2

    .line 197
    add-float/2addr p1, v2

    .line 198
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 199
    .line 200
    int-to-float v2, v2

    .line 201
    sub-float/2addr v0, v2

    .line 202
    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 203
    .line 204
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 205
    .line 206
    int-to-float v0, v0

    .line 207
    sub-float/2addr p1, v0

    .line 208
    iput p1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 209
    .line 210
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 211
    .line 212
    const/4 p1, -0x1

    .line 213
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 214
    .line 215
    :goto_1
    return v1
.end method

.method public positionAtCursorOffset(IZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-nez v1, :cond_2

    .line 38
    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    :cond_2
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 44
    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 49
    .line 50
    invoke-static {p2}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 57
    .line 58
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const/16 p3, 0x9

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iput p2, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 75
    .line 76
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    iget v1, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 81
    .line 82
    sub-int/2addr p3, v1

    .line 83
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    sub-int/2addr p3, v1

    .line 88
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v1, p3

    .line 93
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 94
    .line 95
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineBottom(I)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iput p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 100
    .line 101
    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 102
    .line 103
    iget-object p3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 104
    .line 105
    invoke-static {p3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {p3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    add-int/2addr p3, p2

    .line 114
    iput p3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 115
    .line 116
    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 117
    .line 118
    iget-object p3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 119
    .line 120
    invoke-static {p3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    add-int/2addr p3, p2

    .line 129
    iput p3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 130
    .line 131
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 132
    .line 133
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 134
    .line 135
    :cond_5
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public updateDrawable()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iput v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 49
    .line 50
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    if-eq v3, v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v1, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 65
    .line 66
    sub-int/2addr v0, v1

    .line 67
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sub-int/2addr v0, v1

    .line 72
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v1, v0

    .line 77
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 78
    .line 79
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 80
    .line 81
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v0, v1

    .line 90
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 94
    .line 95
    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 96
    .line 97
    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method

.method public abstract updatePosition(FFZ)V
.end method

.method public updatePosition(IIZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

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

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 11
    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget p3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr p2, p3

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result p3

    add-int/2addr p2, p3

    aput p2, p1, v1

    iget p2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    const/4 p3, 0x1

    aput p2, p1, p3

    .line 12
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->transformFromViewToWindowSpace([I)V

    aget p2, p1, v1

    .line 13
    iget p4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    add-int/2addr p4, v0

    sub-int/2addr p2, p4

    aput p2, p1, v1

    .line 14
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget p4, p1, v1

    aget p1, p1, p3

    const/4 p3, -0x1

    invoke-virtual {p2, p4, p1, p3, p3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object p4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p4

    aget v0, p1, v1

    aget p1, p1, p3

    invoke-virtual {p2, p4, v1, v0, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 19
    :cond_6
    :goto_0
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_7
    return-void
.end method

.method public abstract updateSelection(I)V
.end method
