.class public Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mDefaultTouchRecepient:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    int-to-float v1, v1

    .line 40
    add-float/2addr v0, v1

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mTempRect:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    int-to-float v2, v2

    .line 50
    add-float/2addr v1, v2

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public setDefaultTouchRecepient(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->mDefaultTouchRecepient:Landroid/view/View;

    return-void
.end method
