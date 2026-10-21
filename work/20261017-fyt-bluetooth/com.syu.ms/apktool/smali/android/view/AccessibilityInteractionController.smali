.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# instance fields
.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 8
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 10
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 11
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 12
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 13
    new-instance p1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    return-void
.end method

.method public static synthetic access$200(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 7
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 9
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 13
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    :cond_2
    if-eqz p2, :cond_3

    .line 14
    iget v0, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 15
    iget v0, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 16
    iget v0, p2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v0, v0

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 17
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_5

    .line 19
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 20
    iget-object v3, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_4

    return-void

    .line 21
    :cond_4
    iget v4, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v5, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    .line 22
    iget-object v5, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 23
    iget v6, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, p2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 24
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget p2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v6

    .line 25
    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    .line 26
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, v5, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v3, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 28
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 29
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 30
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v3, v3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 33
    iget p2, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, p2, v0, v1, v2}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p2

    if-nez p2, :cond_5

    .line 34
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_5
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 3
    iget v1, p1, Lo/f;->h:I

    .line 4
    iget v2, p1, Lo/f;->i:I

    .line 5
    iget v3, p1, Lo/f;->j:I

    .line 6
    iget-object v4, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 7
    iget-object v5, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 8
    invoke-virtual {p1}, Lo/f;->c()V

    .line 9
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    .line 11
    :try_start_0
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v9, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iput v0, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_2

    .line 14
    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-virtual {v1, v8, v2, v0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 17
    invoke-direct {p0, p1, v5}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->recycle()V

    .line 19
    :cond_3
    invoke-interface {v4, p1, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 21
    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 22
    invoke-direct {p0, p1, v5}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v5, :cond_5

    .line 23
    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->recycle()V

    .line 24
    :cond_5
    invoke-interface {v4, p1, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v0

    .line 26
    :try_start_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 27
    invoke-direct {p0, p1, v5}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v5, :cond_6

    .line 28
    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->recycle()V

    .line 29
    :cond_6
    invoke-interface {v4, p1, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 31
    :catch_2
    throw v0
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 3
    iget-object v1, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 5
    iget-object v3, p1, Lo/f;->e:Ljava/lang/Object;

    check-cast v3, Landroid/view/MagnificationSpec;

    .line 6
    iget v4, p1, Lo/f;->h:I

    .line 7
    iget v5, p1, Lo/f;->i:I

    .line 8
    iget v6, p1, Lo/f;->j:I

    .line 9
    invoke-virtual {p1}, Lo/f;->c()V

    const/4 p1, 0x0

    const/4 v7, 0x0

    .line 10
    :try_start_0
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v9, :cond_7

    iget-object v10, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v10, :cond_0

    goto/16 :goto_3

    .line 11
    :cond_0
    iput v0, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    .line 12
    invoke-direct {p0, v4}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    :cond_1
    if-eqz v9, :cond_5

    .line 13
    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v4, v1, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    :cond_2
    if-ne v5, v0, :cond_5

    .line 16
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x7

    .line 18
    invoke-virtual {v9, v4, v1, v5}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 20
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 21
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, p1

    :goto_0
    if-ge v8, v5, :cond_5

    .line 23
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 24
    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 25
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 26
    invoke-virtual {v10, v1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 27
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 29
    :cond_5
    :goto_2
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 30
    invoke-direct {p0, v7, v3}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v3, :cond_6

    .line 31
    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->recycle()V

    .line 32
    :cond_6
    invoke-interface {v2, v7, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 33
    :cond_7
    :goto_3
    :try_start_2
    iget-object v0, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 34
    invoke-direct {p0, v7, v3}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v3, :cond_8

    .line 35
    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->recycle()V

    .line 36
    :cond_8
    invoke-interface {v2, v7, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v0

    .line 37
    :try_start_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 38
    invoke-direct {p0, v7, v3}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v3, :cond_9

    .line 39
    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->recycle()V

    .line 40
    :cond_9
    invoke-interface {v2, v7, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 41
    :catch_2
    throw v0
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 4
    iget v2, p1, Lo/f;->h:I

    .line 5
    iget-object v3, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 6
    iget-object v4, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v4, Landroid/view/MagnificationSpec;

    .line 7
    iget-object v5, p1, Lo/f;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lo/f;->c()V

    .line 9
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    .line 11
    :try_start_0
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v9, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iput v0, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 13
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_5

    .line 14
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_3

    .line 15
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 16
    invoke-direct {p0, p1, v4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->recycle()V

    .line 18
    :cond_2
    invoke-interface {v3, p1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 19
    :cond_3
    :try_start_2
    iget-object v5, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v5, :cond_4

    .line 20
    new-instance v5, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v5, p0, v1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v5, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 21
    :cond_4
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1, v0, p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 22
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByPredicate(Lu/k;)Landroid/view/View;

    .line 23
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_5
    :try_start_3
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 25
    invoke-direct {p0, p1, v4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v4, :cond_6

    .line 26
    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->recycle()V

    .line 27
    :cond_6
    invoke-interface {v3, p1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    .line 28
    :cond_7
    :goto_0
    :try_start_4
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 29
    invoke-direct {p0, p1, v4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v4, :cond_8

    .line 30
    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->recycle()V

    .line 31
    :cond_8
    invoke-interface {v3, p1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-void

    :catchall_0
    move-exception v0

    .line 32
    :try_start_5
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 33
    invoke-direct {p0, p1, v4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    if-eqz v4, :cond_9

    .line 34
    invoke-virtual {v4}, Landroid/view/MagnificationSpec;->recycle()V

    .line 35
    :cond_9
    invoke-interface {v3, p1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 36
    :catch_3
    throw v0
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 4
    iget v2, p1, Lo/f;->h:I

    .line 5
    iget v3, p1, Lo/f;->i:I

    .line 6
    iget v4, p1, Lo/f;->j:I

    .line 7
    iget-object v5, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 8
    iget-object v6, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v6, Landroid/view/MagnificationSpec;

    .line 9
    invoke-virtual {p1}, Lo/f;->c()V

    const/4 p1, 0x0

    const/4 v7, 0x0

    .line 10
    :try_start_0
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v9, :cond_b

    iget-object v10, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v10, :cond_0

    goto/16 :goto_2

    .line 11
    :cond_0
    iput v0, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    .line 12
    invoke-direct {p0, v3}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    :cond_1
    if-eqz v9, :cond_9

    .line 13
    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 14
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 15
    invoke-static {v1, v9}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 18
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_9

    .line 19
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v4, v0, :cond_9

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown focus type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 23
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 24
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 25
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    :cond_8
    if-nez v7, :cond_9

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :cond_9
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 28
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v6, :cond_a

    .line 29
    invoke-virtual {v6}, Landroid/view/MagnificationSpec;->recycle()V

    .line 30
    :cond_a
    invoke-interface {v5, v7, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 31
    :cond_b
    :goto_2
    :try_start_2
    iget-object v0, v8, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 32
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v6, :cond_c

    .line 33
    invoke-virtual {v6}, Landroid/view/MagnificationSpec;->recycle()V

    .line 34
    :cond_c
    invoke-interface {v5, v7, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v0

    .line 35
    :try_start_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 36
    invoke-direct {p0, v7, v6}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v6, :cond_d

    .line 37
    invoke-virtual {v6}, Landroid/view/MagnificationSpec;->recycle()V

    .line 38
    :cond_d
    invoke-interface {v5, v7, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 39
    :catch_2
    throw v0
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 4
    iget v2, p1, Lo/f;->i:I

    .line 5
    iget v3, p1, Lo/f;->j:I

    .line 6
    iget-object v4, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 7
    iget-object v5, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 8
    invoke-virtual {p1}, Lo/f;->c()V

    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 9
    :try_start_0
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v9, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput v0, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 11
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_2

    .line 12
    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v8, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 16
    invoke-direct {p0, v6, v5}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->recycle()V

    .line 18
    :cond_3
    invoke-interface {v4, v6, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 19
    :cond_4
    :goto_0
    :try_start_2
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 20
    invoke-direct {p0, v6, v5}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v5, :cond_5

    .line 21
    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->recycle()V

    .line 22
    :cond_5
    invoke-interface {v4, v6, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v0

    .line 23
    :try_start_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 24
    invoke-direct {p0, v6, v5}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->recycle()V

    .line 26
    :cond_6
    invoke-interface {v4, v6, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 27
    :catch_2
    throw v0
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/f;

    .line 4
    iget v2, p1, Lo/f;->h:I

    .line 5
    iget v3, p1, Lo/f;->i:I

    .line 6
    iget v4, p1, Lo/f;->j:I

    .line 7
    iget-object v5, p1, Lo/f;->c:Ljava/lang/Object;

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 8
    iget-object v6, p1, Lo/f;->d:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 9
    invoke-virtual {p1}, Lo/f;->c()V

    const/4 p1, 0x0

    .line 10
    :try_start_0
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v9, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v9, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iput v0, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 12
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_3

    .line 13
    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v8}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1, v2, v3, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    .line 16
    invoke-virtual {v8, v3, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move v0, p1

    .line 17
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 18
    invoke-interface {v5, v0, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 19
    :cond_4
    :goto_1
    :try_start_2
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 20
    invoke-interface {v5, p1, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 22
    invoke-interface {v5, p1, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 23
    :catch_2
    throw v0
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object p5

    .line 5
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, p5, Lo/f;->h:I

    .line 6
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p5, Lo/f;->i:I

    .line 7
    iput p3, p5, Lo/f;->j:I

    .line 8
    iput-object p4, p5, Lo/f;->c:Ljava/lang/Object;

    .line 9
    iput-object p9, p5, Lo/f;->d:Ljava/lang/Object;

    .line 10
    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p6, p1, :cond_0

    iget-wide p1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p1, p7, p1

    if-nez p1, :cond_0

    .line 12
    invoke-static {p7, p8}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p6, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object p6

    .line 5
    iput-object p3, p6, Lo/f;->c:Ljava/lang/Object;

    .line 6
    iput-object p5, p6, Lo/f;->d:Ljava/lang/Object;

    .line 7
    iput-object p10, p6, Lo/f;->e:Ljava/lang/Object;

    .line 8
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p3

    iput p3, p6, Lo/f;->h:I

    .line 9
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p6, Lo/f;->i:I

    .line 10
    iput p4, p6, Lo/f;->j:I

    .line 11
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, p1, :cond_0

    iget-wide p1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p1, p8, p1

    if-nez p1, :cond_0

    .line 13
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p6, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object p1

    .line 6
    iput p4, p1, Lo/f;->h:I

    .line 7
    iput-object p5, p1, Lo/f;->c:Ljava/lang/Object;

    .line 8
    iput-object p10, p1, Lo/f;->d:Ljava/lang/Object;

    .line 9
    iput-object p3, p1, Lo/f;->e:Ljava/lang/Object;

    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, p1, :cond_0

    iget-wide p1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p1, p8, p1

    if-nez p1, :cond_0

    .line 12
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public findFocusClientThread(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p6, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object p3

    .line 6
    iput p4, p3, Lo/f;->h:I

    .line 7
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p4

    iput p4, p3, Lo/f;->i:I

    .line 8
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p3, Lo/f;->j:I

    .line 9
    iput-object p5, p3, Lo/f;->c:Ljava/lang/Object;

    .line 10
    iput-object p10, p3, Lo/f;->d:Ljava/lang/Object;

    .line 11
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, p1, :cond_0

    iget-wide p1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p1, p8, p1

    if-nez p1, :cond_0

    .line 13
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public focusSearchClientThread(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p6, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object p1

    .line 6
    iput p3, p1, Lo/f;->i:I

    .line 7
    iput p4, p1, Lo/f;->j:I

    .line 8
    iput-object p5, p1, Lo/f;->c:Ljava/lang/Object;

    .line 9
    iput-object p10, p1, Lo/f;->d:Ljava/lang/Object;

    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p7, p1, :cond_0

    iget-wide p1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p1, p8, p1

    if-nez p1, :cond_0

    .line 12
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p7

    iput p7, v0, Landroid/os/Message;->arg2:I

    .line 5
    invoke-static {}, Lo/f;->b()Lo/f;

    move-result-object p7

    .line 6
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p1

    iput p1, p7, Lo/f;->h:I

    .line 7
    iput p3, p7, Lo/f;->i:I

    .line 8
    iput p5, p7, Lo/f;->j:I

    .line 9
    iput-object p6, p7, Lo/f;->c:Ljava/lang/Object;

    .line 10
    iput-object p4, p7, Lo/f;->d:Ljava/lang/Object;

    .line 11
    iput-object p7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, p1, :cond_0

    iget-wide p1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long p1, p9, p1

    if-nez p1, :cond_0

    .line 13
    invoke-static {p9, p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
