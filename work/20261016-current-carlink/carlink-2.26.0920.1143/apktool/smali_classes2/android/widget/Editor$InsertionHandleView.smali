.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsertionHandleView"
.end annotation


# static fields
.field private static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final RECENT_CUT_COPY_DURATION:I = 0x3a98


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    const v4, 0x10202af

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$2;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 23
    .line 24
    const-wide/16 v2, 0xfa0

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    iget v1, v0, Landroid/widget/Editor;->mCursorCount:I

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 21
    .line 22
    invoke-static {p2, v0, p1}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object p2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 27
    .line 28
    invoke-static {p2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    add-int/2addr p1, p2

    .line 35
    return p1

    .line 36
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public getCursorOffset()I
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 6
    .line 7
    iget v2, v1, Landroid/widget/Editor;->mCursorCount:I

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v1, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aget-object v2, v2, v3

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 32
    .line 33
    invoke-static {v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    sub-int/2addr v1, v2

    .line 40
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 41
    .line 42
    invoke-static {v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    invoke-static {v1, v2, v3, v0}, Landroid/app/m;->b(IIII)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :cond_1
    return v0
.end method

.method public getHorizontalGravity(Z)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public onDetached()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onHandleMoved()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    if-eq v1, p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->offsetHasBeenChanged()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-float/2addr v1, v2

    .line 35
    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sub-float/2addr v2, p1

    .line 42
    mul-float/2addr v1, v1

    .line 43
    mul-float/2addr v2, v2

    .line 44
    add-float/2addr v2, v1

    .line 45
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 46
    .line 47
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    mul-int/2addr p1, p1

    .line 64
    int-to-float p1, p1

    .line 65
    cmpg-float p1, v2, p1

    .line 66
    .line 67
    if-gez p1, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 70
    .line 71
    invoke-static {p1}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 90
    .line 91
    invoke-static {p1}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 98
    .line 99
    invoke-static {p1}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionX:F

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, p0, Landroid/widget/Editor$InsertionHandleView;->mDownPositionY:F

    .line 121
    .line 122
    :goto_1
    return v0
.end method

.method public show()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    sget-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 12
    .line 13
    invoke-static {v2}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eq v2, v4, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eq v2, v3, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 38
    .line 39
    invoke-static {v2}, Landroid/widget/Editor;->access$5400(Landroid/widget/Editor;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 46
    .line 47
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v5, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 52
    .line 53
    invoke-static {v5}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Ljava/lang/Runnable;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v2, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 61
    .line 62
    invoke-static {v2}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eq v2, v4, :cond_3

    .line 67
    .line 68
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 69
    .line 70
    invoke-static {v2}, Landroid/widget/Editor;->access$5300(Landroid/widget/Editor;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eq v2, v3, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 77
    .line 78
    invoke-static {v2}, Landroid/widget/Editor;->access$5400(Landroid/widget/Editor;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    const-wide/16 v2, 0x3a98

    .line 85
    .line 86
    cmp-long v0, v0, v2

    .line 87
    .line 88
    if-gez v0, :cond_3

    .line 89
    .line 90
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 91
    .line 92
    invoke-static {v0}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 99
    .line 100
    invoke-static {v0}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Ljava/lang/Runnable;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 107
    .line 108
    new-instance v1, Landroid/widget/Editor$InsertionHandleView$1;

    .line 109
    .line 110
    invoke-direct {v1, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$5202(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 117
    .line 118
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 123
    .line 124
    invoke-static {v1}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Ljava/lang/Runnable;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    int-to-long v2, v2

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public updatePosition(FFZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

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
    const/4 v1, -0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 15
    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 31
    .line 32
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 33
    .line 34
    invoke-static {v1, v0, v2, p2}, Landroid/widget/Editor;->access$5500(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p0, v0, p2, p1}, Landroid/widget/Editor$HandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput p2, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 43
    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, v1, p1, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 49
    .line 50
    invoke-static {p1}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)Landroid/view/ActionMode;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 57
    .line 58
    invoke-static {p1}, Landroid/widget/Editor;->access$5600(Landroid/widget/Editor;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public updateSelection(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method
