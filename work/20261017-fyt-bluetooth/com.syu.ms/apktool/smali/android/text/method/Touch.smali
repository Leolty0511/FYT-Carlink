.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v0, Landroid/text/method/Touch$DragState;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 2
    array-length p1, p0

    if-lez p1, :cond_0

    aget-object p0, p0, v1

    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v0, Landroid/text/method/Touch$DragState;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 2
    array-length p1, p0

    if-lez p1, :cond_0

    aget-object p0, p0, v1

    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const-class v0, Landroid/text/method/Touch$DragState;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    if-eq v1, v2, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 3
    array-length v1, v0

    if-lez v1, :cond_8

    .line 4
    aget-object v1, v0, v3

    iget-boolean v1, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget-object v5, v0, v3

    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v1, v1

    cmpl-float v4, v4, v1

    if-gez v4, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget-object v5, v0, v3

    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_2

    .line 7
    :cond_1
    aget-object v1, v0, v3

    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 8
    :cond_2
    aget-object v1, v0, v3

    iget-boolean v1, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v1, :cond_8

    .line 9
    aget-object v1, v0, v3

    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    invoke-static {p1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eq v1, v2, :cond_4

    const/16 v1, 0x800

    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr p1, v1

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aget-object v4, v0, v3

    iget v4, v4, Landroid/text/method/Touch$DragState;->mY:F

    goto :goto_2

    .line 13
    :cond_5
    aget-object p1, v0, v3

    iget p1, p1, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 14
    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :goto_2
    sub-float/2addr v1, v4

    .line 15
    aget-object v4, v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/text/method/Touch$DragState;->mX:F

    .line 16
    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, v0, Landroid/text/method/Touch$DragState;->mY:F

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    float-to-int p1, p1

    add-int/2addr p2, p1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    float-to-int v0, v1

    add-int/2addr p1, v0

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 22
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 25
    invoke-static {p0, v1, p2, p1}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    if-ne v0, p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-eq v3, p1, :cond_7

    .line 27
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    :cond_7
    return v2

    :cond_8
    :goto_3
    return v3

    .line 28
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-interface {p1, v3, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    move p2, v3

    .line 29
    :goto_4
    array-length v0, p0

    if-ge p2, v0, :cond_a

    .line 30
    aget-object v0, p0, p2

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 31
    :cond_a
    array-length p1, p0

    if-lez p1, :cond_b

    aget-object p0, p0, v3

    iget-boolean p0, p0, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz p0, :cond_b

    return v2

    :cond_b
    return v3

    .line 32
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    move v1, v3

    .line 33
    :goto_5
    array-length v4, v0

    if-ge v1, v4, :cond_d

    .line 34
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 35
    :cond_d
    new-instance v0, Landroid/text/method/Touch$DragState;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-direct {v0, v1, p2, v4, p0}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/16 p0, 0x11

    invoke-interface {p1, v0, v3, v3, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v2
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    sub-int/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    const v6, 0x7fffffff

    move v8, v6

    move v6, v4

    move v4, v8

    :goto_1
    if-gt v0, v5, :cond_2

    int-to-float v4, v4

    .line 9
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v6, v6

    .line 10
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v6, v1

    :cond_2
    sub-int p1, v6, v4

    if-ge p1, v1, :cond_7

    .line 11
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, p2, :cond_3

    sub-int/2addr v1, p1

    .line 12
    div-int/lit8 v1, v1, 0x2

    :goto_2
    sub-int/2addr v4, v1

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 13
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-eq v2, p2, :cond_6

    :cond_4
    if-nez v3, :cond_5

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v2, p2, :cond_6

    :cond_5
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, p2, :cond_8

    :cond_6
    sub-int/2addr v1, p1

    goto :goto_2

    :cond_7
    sub-int/2addr v6, v1

    .line 14
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 16
    :cond_8
    :goto_3
    invoke-virtual {p0, v4, p3}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
