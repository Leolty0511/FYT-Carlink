.class Landroid/view/View$AttachInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AttachInfo$InvalidateInfo;,
        Landroid/view/View$AttachInfo$Callbacks;
    }
.end annotation


# instance fields
.field public mAccessibilityFetchFlags:I

.field public mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

.field public mAccessibilityWindowId:I

.field public mApplicationScale:F

.field public mCanvas:Landroid/graphics/Canvas;

.field public final mContentInsets:Landroid/graphics/Rect;

.field public mDebugLayout:Z

.field public mDisabledSystemUiVisibility:I

.field public final mDisplay:Landroid/view/Display;

.field public mDrawingTime:J

.field public mForceReportNewAttributes:Z

.field public final mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field public mGlobalSystemUiVisibility:I

.field public final mHandler:Landroid/os/Handler;

.field public mHardwareAccelerated:Z

.field public mHardwareAccelerationRequested:Z

.field public mHardwareCanvas:Landroid/view/HardwareCanvas;

.field public mHardwareRenderer:Landroid/view/HardwareRenderer;

.field public mHasNonEmptyGivenInternalInsets:Z

.field public mHasSystemUiListeners:Z

.field public mHasWindowFocus:Z

.field public mIWindowId:Landroid/view/IWindowId;

.field public mIgnoreDirtyState:Z

.field public mInTouchMode:Z

.field public final mInvalidateChildLocation:[I

.field public mKeepScreenOn:Z

.field public final mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

.field public final mOverscanInsets:Landroid/graphics/Rect;

.field public mOverscanRequested:Z

.field public mPanelParentWindowToken:Landroid/os/IBinder;

.field public final mPoint:Landroid/graphics/Point;

.field public mRecomputeGlobalAttributes:Z

.field public final mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

.field public mRootView:Landroid/view/View;

.field public mScalingRequired:Z

.field public mScreenOn:Z

.field public final mScrollContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mSession:Landroid/view/IWindowSession;

.field public mSetIgnoreDirtyState:Z

.field public mSurface:Landroid/view/Surface;

.field public mSystemUiVisibility:I

.field public final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpInvalRect:Landroid/graphics/Rect;

.field public final mTmpMatrix:Landroid/graphics/Matrix;

.field public final mTmpTransformLocation:[F

.field public final mTmpTransformRect:Landroid/graphics/RectF;

.field public final mTmpTransformation:Landroid/view/animation/Transformation;

.field public final mTransparentLocation:[I

.field public final mTreeObserver:Landroid/view/ViewTreeObserver;

.field public mTurnOffWindowResizeAnim:Z

.field public mUse32BitDrawingCache:Z

.field public mViewRequestingLayout:Landroid/view/View;

.field public final mViewRootImpl:Landroid/view/ViewRootImpl;

.field public mViewScrollChanged:Z

.field public mViewVisibilityChanged:Z

.field public final mVisibleInsets:Landroid/graphics/Rect;

.field public final mWindow:Landroid/view/IWindow;

.field public mWindowId:Landroid/view/WindowId;

.field public mWindowLeft:I

.field public final mWindowToken:Landroid/os/IBinder;

.field public mWindowTop:I

.field public mWindowVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    new-array v2, v1, [I

    .line 10
    iput-object v2, p0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    new-array v1, v1, [F

    .line 11
    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 12
    new-instance v1, Landroid/view/ViewTreeObserver;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 14
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 15
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    const-string v1, "debug.layout"

    .line 19
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 21
    iput-object p1, p0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    .line 22
    iput-object p2, p0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    .line 23
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 24
    iput-object p3, p0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    .line 25
    iput-object p4, p0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 26
    iput-object p5, p0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p6, p0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    return-void
.end method
