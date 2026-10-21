.class public Lcom/android/internal/policy/BackdropFrameRenderer;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mFrameAndBackdropNode:Landroid/view/RenderNode;

.field private mFullscreen:Z

.field private mLastCaptionHeight:I

.field private mLastContentHeight:I

.field private mLastContentWidth:I

.field private mLastXOffset:I

.field private mLastYOffset:I

.field private mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private final mNewTargetRect:Landroid/graphics/Rect;

.field private mOldFullscreen:Z

.field private final mOldStableInsets:Landroid/graphics/Rect;

.field private final mOldSystemInsets:Landroid/graphics/Rect;

.field private final mOldTargetRect:Landroid/graphics/Rect;

.field private mRenderer:Landroid/view/ThreadedRenderer;

.field private mReportNextDraw:Z

.field private final mResizeMode:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private mSystemBarBackgroundNode:Landroid/view/RenderNode;

.field private final mSystemInsets:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p9

    .line 4
    .line 5
    move-object/from16 v9, p10

    .line 6
    .line 7
    move-object/from16 v10, p11

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v11, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v11, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    new-instance v12, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v12, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    .line 39
    .line 40
    new-instance v13, Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v13, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    .line 46
    .line 47
    new-instance v14, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v14, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    .line 53
    .line 54
    new-instance v15, Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v15, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    .line 67
    .line 68
    const-string v0, "ResizeFrame"

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move-object/from16 v0, p2

    .line 74
    .line 75
    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 76
    .line 77
    move-object/from16 v0, p0

    .line 78
    .line 79
    move-object/from16 v1, p1

    .line 80
    .line 81
    move-object/from16 v2, p4

    .line 82
    .line 83
    move-object/from16 v3, p5

    .line 84
    .line 85
    move-object/from16 v4, p6

    .line 86
    .line 87
    move/from16 v5, p7

    .line 88
    .line 89
    move/from16 v6, p8

    .line 90
    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 92
    .line 93
    .line 94
    const-string v0, "FrameAndBackdropNode"

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    .line 102
    .line 103
    iget-object v1, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-virtual {v1, v0, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    .line 107
    .line 108
    .line 109
    move-object/from16 v0, p3

    .line 110
    .line 111
    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 115
    .line 116
    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 117
    .line 118
    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    .line 129
    .line 130
    move/from16 v0, p12

    .line 131
    .line 132
    iput v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizeMode:I

    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->start()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method private addSystemBarNodeIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "SystemBarBackgroundNode"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private doFrameUncheckedLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/BackdropFrameRenderer;->redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method private drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 11
    .line 12
    add-int v2, p1, p3

    .line 13
    .line 14
    add-int v3, p2, p4

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    if-eqz p5, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-static {p3, p4, p7, p6, p1}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private pingRenderLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_6

    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    .line 24
    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    .line 33
    .line 34
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    add-int v3, v0, v1

    .line 37
    .line 38
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    .line 39
    .line 40
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    add-int v4, v0, v1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    .line 53
    .line 54
    add-int v0, v3, v5

    .line 55
    .line 56
    add-int v1, v4, v6

    .line 57
    .line 58
    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    .line 62
    .line 63
    invoke-virtual {p1, v5, v6}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    :goto_0
    const/4 v7, 0x0

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 78
    .line 79
    add-int/2addr v8, v4

    .line 80
    invoke-virtual {v2, v7, v7, v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 91
    .line 92
    invoke-virtual {v2, v7, v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 103
    .line 104
    .line 105
    move-object v2, p0

    .line 106
    move v7, p2

    .line 107
    move-object v8, p3

    .line 108
    move-object v9, p4

    .line 109
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 113
    .line 114
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_1
    return-void
.end method

.method private reportDrawIfNeeded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public onConfigurationChange()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public onContentDrawn(IIII)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    .line 12
    .line 13
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 14
    .line 15
    sub-int/2addr p4, v3

    .line 16
    iput p4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    .line 17
    .line 18
    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    .line 19
    .line 20
    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 23
    .line 24
    add-int/2addr p3, p1

    .line 25
    add-int/2addr v3, p2

    .line 26
    add-int/2addr v3, p4

    .line 27
    invoke-virtual {v4, p1, p2, p3, v3}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v1, v2

    .line 46
    :cond_2
    :goto_1
    monitor-exit p0

    .line 47
    return v1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1
.end method

.method public onRequestDraw(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, p1

    .line 22
    :goto_0
    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object p2, p1

    .line 42
    :goto_1
    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    if-eqz p4, :cond_2

    .line 45
    .line 46
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object p2, p1

    .line 62
    :goto_2
    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    if-nez p2, :cond_3

    .line 67
    .line 68
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    :cond_3
    if-eqz p5, :cond_4

    .line 73
    .line 74
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 75
    .line 76
    invoke-direct {p2, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 86
    .line 87
    :goto_3
    if-eqz p6, :cond_5

    .line 88
    .line 89
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 90
    .line 91
    invoke-direct {p1, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 101
    .line 102
    :goto_4
    return-void
.end method

.method public releaseRenderer()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v0
.end method

.method public run()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 10
    .line 11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 16
    .line 17
    .line 18
    monitor-enter p0

    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 21
    .line 22
    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    throw v0

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 33
    :catchall_2
    move-exception v0

    .line 34
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
