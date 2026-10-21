.class Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearestTouchDelegate"
.end annotation


# instance fields
.field private mInitialTouchTarget:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TimePickerClockDelegate$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>()V

    return-void
.end method

.method private findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const v2, 0x7fffffff

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    div-int/lit8 v6, v6, 0x2

    .line 25
    .line 26
    add-int/2addr v6, v5

    .line 27
    sub-int v5, p2, v6

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    div-int/lit8 v7, v7, 0x2

    .line 38
    .line 39
    add-int/2addr v7, v6

    .line 40
    sub-int v6, p3, v7

    .line 41
    .line 42
    mul-int/2addr v5, v5

    .line 43
    mul-int/2addr v6, v6

    .line 44
    add-int/2addr v6, v5

    .line 45
    if-le v2, v6, :cond_0

    .line 46
    .line 47
    move-object v1, v4

    .line 48
    move v2, v6

    .line 49
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-object v1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    instance-of v2, p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    float-to-int v3, v3

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    float-to-int v4, v4

    .line 25
    invoke-direct {p0, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput-object v1, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sub-int/2addr v3, v4

    .line 49
    int-to-float v3, v3

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    sub-int/2addr p1, v4

    .line 59
    int-to-float p1, p1

    .line 60
    invoke-virtual {p2, v3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    neg-float v3, v3

    .line 68
    neg-float p1, p1

    .line 69
    invoke-virtual {p2, v3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    if-eq v0, p1, :cond_3

    .line 74
    .line 75
    const/4 p1, 0x3

    .line 76
    if-ne v0, p1, :cond_4

    .line 77
    .line 78
    :cond_3
    iput-object v1, p0, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    .line 79
    .line 80
    :cond_4
    return v2
.end method
