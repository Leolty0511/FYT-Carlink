.class Landroid/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownListView"
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101006d

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-boolean p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method

.method public static synthetic access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v0, 0x96

    .line 3
    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v7, Landroid/widget/ListPopupWindow$DropDownListView$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListPopupWindow$DropDownListView$2;-><init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 7
    iget-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 9
    :cond_0
    iput-object v6, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0xff
        0x80
        0xff
    .end array-data
.end method

.method private setPressedItem(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7
    iget-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    :cond_0
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

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

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

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

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

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

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

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

    move-result-object p1

    .line 2
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_0
    return-object p1
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    :cond_0
    :goto_0
    move p2, v1

    move v3, v2

    goto :goto_3

    :cond_1
    :goto_1
    move p2, v1

    move v3, p2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 2
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_4

    goto :goto_1

    .line 3
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 5
    invoke-virtual {p0, v4, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    move p2, v2

    goto :goto_3

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;I)V

    if-ne v0, v2, :cond_0

    .line 8
    invoke-direct {p0, v3, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_6

    if-eqz p2, :cond_7

    .line 9
    :cond_6
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->clearPressedItem()V

    :cond_7
    if-eqz v3, :cond_9

    .line 10
    iget-object p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/a$b;

    if-nez p2, :cond_8

    .line 11
    new-instance p2, Lcom/android/internal/widget/a$b;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/a$b;-><init>(Landroid/widget/AbsListView;)V

    iput-object p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/a$b;

    .line 12
    :cond_8
    iget-object p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/a$b;

    invoke-virtual {p2, v2}, Lcom/android/internal/widget/a;->y(Z)Lcom/android/internal/widget/a;

    .line 13
    iget-object p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/a$b;

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 14
    :cond_9
    iget-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/a$b;

    if-eqz p1, :cond_a

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/a;->y(Z)Lcom/android/internal/widget/a;

    :cond_a
    :goto_4
    return v3
.end method

.method public touchModeDrawsInPressedState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

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
