.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# static fields
.field private static final CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final IGNORE_REQUEST_PREPARERS:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveRequestPreparerId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private mNumActiveRequestPreparers:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

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
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Point;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 74
    .line 75
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 76
    .line 77
    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 83
    .line 84
    new-instance v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, p0, v1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 91
    .line 92
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 101
    .line 102
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 103
    .line 104
    return-void
.end method

.method public static synthetic access$1000(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$1100(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method public static synthetic access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 9

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
    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 15
    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 16
    iget v3, p2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v3, v3

    iget v4, p2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 17
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 21
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_5

    move v4, v3

    .line 22
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 23
    aget-object v5, v1, v4

    check-cast v5, Landroid/graphics/RectF;

    .line 24
    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->scale(F)V

    if-eqz p2, :cond_4

    .line 25
    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->scale(F)V

    .line 26
    iget v6, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v7, p2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_8

    .line 27
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 28
    iget-object v4, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_6

    return-void

    .line 29
    :cond_6
    iget v5, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v5, v6

    .line 30
    iget-object v6, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    .line 31
    iget v7, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget v8, p2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 32
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget p2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v7

    .line 33
    iget v7, v0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v1

    float-to-int v1, v7

    iput v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    .line 34
    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, v6, Landroid/graphics/Rect;->bottom:I

    .line 35
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v4, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 36
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 37
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 38
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v1, v3, v3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 42
    :cond_7
    iget p2, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, p2, v0, v1, v2}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p2

    if-nez p2, :cond_8

    .line 43
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_8
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
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 6
    .line 7
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 8
    .line 9
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 10
    .line 11
    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v6, v1

    .line 16
    check-cast v6, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    check-cast v8, Landroid/view/MagnificationSpec;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v9, v1

    .line 26
    check-cast v9, Landroid/graphics/Region;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v5, v1

    .line 31
    check-cast v5, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 42
    .line 43
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iput v3, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 53
    .line 54
    const v1, 0x7ffffffe

    .line 55
    .line 56
    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    move-object v1, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object v1, v0

    .line 66
    :goto_0
    if-eqz v1, :cond_2

    .line 67
    .line 68
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 75
    .line 76
    move-object v4, p1

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :cond_2
    move-object v4, p0

    .line 81
    move-object v5, p1

    .line 82
    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    :goto_1
    move-object v4, p0

    .line 87
    move-object v5, p1

    .line 88
    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object v4, p0

    .line 94
    move-object v5, p1

    .line 95
    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v5, v2

    .line 14
    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v7, v2

    .line 19
    check-cast v7, Landroid/view/MagnificationSpec;

    .line 20
    .line 21
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 22
    .line 23
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 24
    .line 25
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 26
    .line 27
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v8, v4

    .line 30
    check-cast v8, Landroid/graphics/Region;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :try_start_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 37
    .line 38
    iget-object v9, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 39
    .line 40
    if-eqz v9, :cond_7

    .line 41
    .line 42
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_0
    iput v0, p1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 49
    .line 50
    const p1, 0x7ffffffe

    .line 51
    .line 52
    .line 53
    if-eq v2, p1, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    :cond_1
    if-eqz v9, :cond_6

    .line 60
    .line 61
    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    move-object v4, p1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/4 p1, -0x1

    .line 80
    if-ne v3, p1, :cond_6

    .line 81
    .line 82
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x7

    .line 88
    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_6

    .line 96
    .line 97
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    .line 99
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    const/4 v4, 0x0

    .line 107
    :goto_0
    if-ge v4, v3, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    check-cast v9, Landroid/view/View;

    .line 114
    .line 115
    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_4

    .line 120
    .line 121
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    if-eqz v10, :cond_3

    .line 126
    .line 127
    invoke-virtual {v10, v1, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    if-eqz v9, :cond_4

    .line 132
    .line 133
    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    move-object v4, v2

    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    move-object v4, v2

    .line 151
    goto :goto_4

    .line 152
    :cond_6
    :goto_2
    move-object v3, p0

    .line 153
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    :goto_3
    move-object v3, p0

    .line 158
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    :goto_4
    move-object v3, p0

    .line 164
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 8
    .line 9
    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v4, v2

    .line 14
    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v6, v2

    .line 19
    check-cast v6, Landroid/view/MagnificationSpec;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v7, v3

    .line 28
    check-cast v7, Landroid/graphics/Region;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 39
    .line 40
    iget-object v8, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v8, :cond_2

    .line 43
    .line 44
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iput v0, p1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 50
    .line 51
    const p1, 0x7ffffffe

    .line 52
    .line 53
    .line 54
    if-eq v1, p1, :cond_1

    .line 55
    .line 56
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    :cond_1
    if-eqz v8, :cond_5

    .line 61
    .line 62
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-gtz p1, :cond_3

    .line 76
    .line 77
    :cond_2
    :goto_0
    move-object v2, p0

    .line 78
    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 83
    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    new-instance v1, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 87
    .line 88
    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 92
    .line 93
    :cond_4
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 94
    .line 95
    invoke-virtual {v0, p1, v3}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 99
    .line 100
    invoke-virtual {v8, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_5
    move-object v2, p0

    .line 109
    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    move-object v2, p0

    .line 115
    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 11

    .line 1
    const-string v0, "Unknown focus type: "

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4
    .line 5
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 6
    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 10
    .line 11
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 12
    .line 13
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 14
    .line 15
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 16
    .line 17
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 20
    .line 21
    iget-object v7, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v7, Landroid/view/MagnificationSpec;

    .line 24
    .line 25
    iget-object v8, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v8, Landroid/graphics/Region;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    :try_start_0
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 34
    .line 35
    iget-object v10, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v10, :cond_a

    .line 38
    .line 39
    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 40
    .line 41
    if-nez v9, :cond_0

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    iput v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 46
    .line 47
    const v1, 0x7ffffffe

    .line 48
    .line 49
    .line 50
    if-eq v3, v1, :cond_1

    .line 51
    .line 52
    invoke-direct {p0, v3}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    :cond_1
    if-eqz v10, :cond_9

    .line 57
    .line 58
    invoke-direct {p0, v10}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_9

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    if-eq v2, v1, :cond_6

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    if-ne v2, v1, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 71
    .line 72
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v0, :cond_9

    .line 75
    .line 76
    invoke-static {v0, v10}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 97
    .line 98
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const/4 v1, -0x1

    .line 108
    if-ne v4, v1, :cond_9

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v1

    .line 133
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_7

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :cond_8
    if-nez p1, :cond_9

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 159
    .line 160
    .line 161
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_9
    :goto_0
    move-object v4, p1

    .line 163
    move-object v3, p0

    .line 164
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_a
    :goto_1
    move-object v3, p0

    .line 169
    move-object v4, p1

    .line 170
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    move-object v4, p1

    .line 176
    move-object v3, p0

    .line 177
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 178
    .line 179
    .line 180
    throw v0
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    return-object p1
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 8
    .line 9
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 10
    .line 11
    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 12
    .line 13
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v5, v3

    .line 16
    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 17
    .line 18
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v7, v3

    .line 21
    check-cast v7, Landroid/view/MagnificationSpec;

    .line 22
    .line 23
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v8, v3

    .line 26
    check-cast v8, Landroid/graphics/Region;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :try_start_0
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 33
    .line 34
    iget-object v3, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput v0, p1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 44
    .line 45
    const p1, 0x7ffffffe

    .line 46
    .line 47
    .line 48
    if-eq v1, p1, :cond_1

    .line 49
    .line 50
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_1
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-direct {p0, v3}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    move-object v4, p1

    .line 73
    :cond_2
    move-object v3, p0

    .line 74
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    :goto_0
    move-object v3, p0

    .line 79
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    const/4 v4, 0x0

    .line 85
    move-object v3, p0

    .line 86
    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method private handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    instance-of v0, p3, Landroid/text/style/AccessibilityClickableSpan;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, -0x1

    .line 25
    if-ne p2, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p2, 0x0

    .line 33
    :goto_0
    if-nez p2, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    check-cast p3, Landroid/text/style/AccessibilityClickableSpan;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p3, p2}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_4
    return v1
.end method

.method private holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    iget-object v8, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v8

    .line 7
    :try_start_0
    iget v1, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 8
    .line 9
    const/4 v9, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 13
    .line 14
    .line 15
    monitor-exit v8

    .line 16
    return v9

    .line 17
    :cond_0
    iget v1, v0, Landroid/os/Message;->what:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    monitor-exit v8

    .line 24
    return v3

    .line 25
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v10, v1

    .line 28
    check-cast v10, Lcom/android/internal/os/SomeArgs;

    .line 29
    .line 30
    iget-object v1, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v11, v1

    .line 33
    check-cast v11, Landroid/os/Bundle;

    .line 34
    .line 35
    if-nez v11, :cond_2

    .line 36
    .line 37
    monitor-exit v8

    .line 38
    return v3

    .line 39
    :cond_2
    iget v1, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 40
    .line 41
    iget-object v2, v7, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    if-nez v12, :cond_3

    .line 48
    .line 49
    monitor-exit v8

    .line 50
    return v3

    .line 51
    :cond_3
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    .line 52
    .line 53
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    if-nez v13, :cond_4

    .line 58
    .line 59
    monitor-exit v8

    .line 60
    return v3

    .line 61
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 66
    .line 67
    move v14, v3

    .line 68
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ge v14, v1, :cond_6

    .line 73
    .line 74
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    const/4 v2, 0x7

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget v3, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 86
    .line 87
    const v4, 0x7fffffff

    .line 88
    .line 89
    .line 90
    if-ne v3, v4, :cond_5

    .line 91
    .line 92
    const/4 v3, -0x1

    .line 93
    :cond_5
    iput v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 94
    .line 95
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object v13, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object v3, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 106
    .line 107
    const/16 v4, 0x8

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget v4, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 114
    .line 115
    add-int/2addr v4, v9

    .line 116
    iput v4, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 117
    .line 118
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 119
    .line 120
    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    move-object v1, p0

    .line 126
    move/from16 v3, p2

    .line 127
    .line 128
    move-wide/from16 v4, p3

    .line 129
    .line 130
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 134
    .line 135
    const/16 v2, 0x9

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 138
    .line 139
    .line 140
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 141
    .line 142
    const-wide/16 v3, 0x1f4

    .line 143
    .line 144
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    .line 146
    .line 147
    add-int/lit8 v14, v14, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 151
    .line 152
    .line 153
    monitor-exit v8

    .line 154
    return v9

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    throw v0
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 8
    .line 9
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 10
    .line 11
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 12
    .line 13
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 14
    .line 15
    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 18
    .line 19
    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v6, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :try_start_0
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 28
    .line 29
    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v8, :cond_5

    .line 32
    .line 33
    iget-object v9, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 34
    .line 35
    if-eqz v9, :cond_5

    .line 36
    .line 37
    iget-boolean v10, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 38
    .line 39
    if-nez v10, :cond_5

    .line 40
    .line 41
    iget-boolean v10, v7, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 42
    .line 43
    if-eqz v10, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iput v0, v9, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 47
    .line 48
    const v0, 0x7ffffffe

    .line 49
    .line 50
    .line 51
    if-eq v1, v0, :cond_1

    .line 52
    .line 53
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    :cond_1
    if-eqz v8, :cond_4

    .line 58
    .line 59
    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    const v0, 0x1020169

    .line 66
    .line 67
    .line 68
    if-ne v3, v0, :cond_2

    .line 69
    .line 70
    invoke-direct {p0, v8, v2, v6}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v2, v3, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, -0x1

    .line 87
    if-ne v2, v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v8, v3, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    move v0, p1

    .line 95
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 96
    .line 97
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 98
    .line 99
    iput p1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 100
    .line 101
    invoke-interface {v5, v0, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    return-void

    .line 105
    :cond_5
    :goto_1
    :try_start_2
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 106
    .line 107
    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 108
    .line 109
    invoke-interface {v5, p1, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    .line 111
    .line 112
    :catch_1
    return-void

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :try_start_3
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 115
    .line 116
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 117
    .line 118
    iput p1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 119
    .line 120
    invoke-interface {v5, p1, v4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 121
    .line 122
    .line 123
    :catch_2
    throw v0
.end method

.method private prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 4
    .line 5
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Landroid/os/Bundle;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroid/os/Message;

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/graphics/Region;->recycle()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method private requestPreparerDoneUiThread(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 5
    .line 6
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const-string p1, "AccessibilityInteractionController"

    .line 11
    .line 12
    const-string v1, "Surprising AccessibilityRequestPreparer callback (likely late)"

    .line 13
    .line 14
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :cond_0
    iget p1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 24
    .line 25
    if-gtz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 35
    .line 36
    .line 37
    :cond_1
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method private requestPreparerTimeoutUiThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "AccessibilityInteractionController"

    .line 5
    .line 6
    const-string v2, "AccessibilityRequestPreparer timed out"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method private scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 18
    .line 19
    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    .line 20
    .line 21
    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    .line 22
    .line 23
    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    move v9, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v9, v1

    .line 31
    :goto_1
    move-object v4, p0

    .line 32
    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    iput v0, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 47
    .line 48
    return-void
.end method

.method private scheduleMessage(Landroid/os/Message;IJZ)V
    .locals 2

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    if-nez p5, :cond_2

    .line 8
    .line 9
    :cond_0
    iget p5, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 10
    .line 11
    if-ne p2, p5, :cond_1

    .line 12
    .line 13
    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 14
    .line 15
    cmp-long p2, p3, v0

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

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

.method private updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 7
    .line 8
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :catch_0
    :goto_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 7
    .line 8
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :catch_0
    :cond_0
    :goto_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p6, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 13
    .line 14
    .line 15
    move-result-object p6

    .line 16
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p6, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p6, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 27
    .line 28
    iput p4, p6, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 29
    .line 30
    iput-object p5, p6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p10, p6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p3, p6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p11, p6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 p6, 0x0

    .line 41
    move-object p1, p0

    .line 42
    move-object p2, v0

    .line 43
    move p3, p7

    .line 44
    move-wide p4, p8

    .line 45
    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 13
    .line 14
    .line 15
    move-result-object p7

    .line 16
    iput-object p3, p7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p6, p7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p11, p7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iput p3, p7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 33
    .line 34
    iput p5, p7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 35
    .line 36
    iput-object p4, p7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 p6, 0x0

    .line 41
    move-object p1, p0

    .line 42
    move-object p2, v0

    .line 43
    move p3, p8

    .line 44
    move-wide p4, p9

    .line 45
    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 17
    .line 18
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput p5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 23
    .line 24
    iput-object p6, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p11, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p4, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 p6, 0x0

    .line 35
    move-object p1, p0

    .line 36
    move-object p2, v0

    .line 37
    move p3, p8

    .line 38
    move-wide p4, p9

    .line 39
    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 13
    .line 14
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    iput p5, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 21
    .line 22
    .line 23
    move-result p5

    .line 24
    iput p5, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 25
    .line 26
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 31
    .line 32
    iput-object p6, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p11, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p4, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 p6, 0x0

    .line 41
    move-object p1, p0

    .line 42
    move-object p2, v0

    .line 43
    move p3, p8

    .line 44
    move-wide p4, p9

    .line 45
    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 17
    .line 18
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput p3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 23
    .line 24
    iput p5, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 25
    .line 26
    iput-object p6, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p11, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 p6, 0x0

    .line 35
    move-object p1, p0

    .line 36
    move-object p2, v0

    .line 37
    move p3, p8

    .line 38
    move-wide p4, p9

    .line 39
    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput p7, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    .line 13
    .line 14
    .line 15
    move-result p7

    .line 16
    iput p7, v0, Landroid/os/Message;->arg2:I

    .line 17
    .line 18
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 19
    .line 20
    .line 21
    move-result-object p7

    .line 22
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 27
    .line 28
    iput p3, p7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 29
    .line 30
    iput p5, p7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 31
    .line 32
    iput-object p6, p7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p4, p7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    const/4 p6, 0x0

    .line 39
    move-object p1, p0

    .line 40
    move-object p2, v0

    .line 41
    move p3, p8

    .line 42
    move-wide p4, p9

    .line 43
    invoke-direct/range {p1 .. p6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
