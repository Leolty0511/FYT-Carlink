.class public Landroid/view/TouchDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABOVE:I = 0x1

.field public static final BELOW:I = 0x2

.field public static final TO_LEFT:I = 0x4

.field public static final TO_RIGHT:I = 0x8


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget p1, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 28
    .line 29
    neg-int v1, p1

    .line 30
    neg-int p1, p1

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    if-eq v2, v5, :cond_1

    .line 21
    .line 22
    if-eq v2, v3, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-eq v2, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v0, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 29
    .line 30
    iput-boolean v4, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 31
    .line 32
    move v6, v5

    .line 33
    move v5, v0

    .line 34
    move v0, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-boolean v2, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v5, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    :cond_2
    move v0, v5

    .line 47
    move v5, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-object v2, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iput-boolean v5, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 58
    .line 59
    move v0, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    :goto_0
    move v0, v5

    .line 62
    move v5, v4

    .line 63
    :goto_1
    if-eqz v5, :cond_6

    .line 64
    .line 65
    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    div-int/2addr v0, v3

    .line 74
    int-to-float v0, v0

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    div-int/2addr v2, v3

    .line 80
    int-to-float v2, v2

    .line 81
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 86
    .line 87
    mul-int/2addr v0, v3

    .line 88
    neg-int v0, v0

    .line 89
    int-to-float v0, v0

    .line 90
    invoke-virtual {p1, v0, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    :cond_6
    return v4
.end method
