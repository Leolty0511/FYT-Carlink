.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GET_NEW_SURFACE_MSG:I = 0x2

.field public static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field public static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public mDrawingStopped:Z

.field public mFormat:I

.field private mGlobalListenersAdded:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHaveFrame:Z

.field public mHeight:I

.field public mIsCreating:Z

.field public mLastLockTime:J

.field public mLastSurfaceHeight:I

.field public mLastSurfaceWidth:I

.field public final mLayout:Landroid/view/WindowManager$LayoutParams;

.field public mLeft:I

.field public final mLocation:[I

.field public final mNewSurface:Landroid/view/Surface;

.field public final mOverscanInsets:Landroid/graphics/Rect;

.field public mReportDrawNeeded:Z

.field public mRequestedFormat:I

.field public mRequestedHeight:I

.field public mRequestedVisible:Z

.field public mRequestedWidth:I

.field public final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public mSession:Landroid/view/IWindowSession;

.field public final mSurface:Landroid/view/Surface;

.field public mSurfaceCreated:Z

.field public final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field public mUpdateWindowNeeded:Z

.field public mViewVisibility:Z

.field public mVisible:Z

.field public final mVisibleInsets:Landroid/graphics/Rect;

.field public mWidth:I

.field public final mWinFrame:Landroid/graphics/Rect;

.field public mWindow:Landroid/view/SurfaceView$MyWindow;

.field public mWindowType:I

.field public mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 6
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 8
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 13
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    const/16 p1, 0x3e9

    .line 14
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 16
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 18
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 19
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 20
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 22
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 v1, 0x4

    .line 23
    iput v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 24
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 25
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 27
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 28
    iput v0, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 29
    iput v0, p0, Landroid/view/SurfaceView;->mTop:I

    .line 30
    iput v0, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 31
    iput v0, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 32
    iput v0, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 33
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 34
    iput v0, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v0, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 35
    new-instance p1, Landroid/view/SurfaceView$3;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 36
    new-instance p1, Landroid/view/SurfaceView$4;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 37
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 40
    iput-object p1, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 41
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 43
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 45
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 46
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 47
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 48
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 49
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 50
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    const/16 p1, 0x3e9

    .line 51
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 53
    new-instance p2, Landroid/view/SurfaceView$1;

    invoke-direct {p2, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance p2, Landroid/view/SurfaceView$2;

    invoke-direct {p2, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 55
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 56
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 57
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 59
    iput p2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 61
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 62
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 64
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 65
    iput p2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 66
    iput p2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 67
    iput p2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 68
    iput p2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 69
    iput p2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 71
    iput p2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput p2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 72
    new-instance p1, Landroid/view/SurfaceView$3;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 73
    new-instance p1, Landroid/view/SurfaceView$4;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 74
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 77
    iput-object p1, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 78
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 79
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 80
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 82
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 84
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 85
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 86
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 87
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    const/16 p1, 0x3e9

    .line 88
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 90
    new-instance p2, Landroid/view/SurfaceView$1;

    invoke-direct {p2, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance p2, Landroid/view/SurfaceView$2;

    invoke-direct {p2, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 92
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 93
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 94
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    const/4 p2, -0x1

    .line 95
    iput p2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 96
    iput p2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 p3, 0x4

    .line 97
    iput p3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 98
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 99
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 101
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 102
    iput p2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 103
    iput p2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 104
    iput p2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 105
    iput p2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 106
    iput p2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 107
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 108
    iput p2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput p2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 109
    new-instance p1, Landroid/view/SurfaceView$3;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 110
    new-instance p1, Landroid/view/SurfaceView$4;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 111
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/SurfaceView;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 3
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private updateWindow(ZZ)V
    .locals 31

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iput-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 4
    :cond_1
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 6
    :cond_2
    iget v0, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-gtz v0, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 8
    :cond_3
    iget v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-gtz v2, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 10
    :cond_4
    iget-object v3, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11
    iget-object v3, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v5

    .line 12
    :goto_0
    iget v6, v1, Landroid/view/SurfaceView;->mFormat:I

    iget v7, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v6, v7, :cond_6

    move v6, v4

    goto :goto_1

    :cond_6
    move v6, v5

    .line 13
    :goto_1
    iget v8, v1, Landroid/view/SurfaceView;->mWidth:I

    if-ne v8, v0, :cond_8

    iget v8, v1, Landroid/view/SurfaceView;->mHeight:I

    if-eq v8, v2, :cond_7

    goto :goto_2

    :cond_7
    move v8, v5

    goto :goto_3

    :cond_8
    :goto_2
    move v8, v4

    .line 14
    :goto_3
    iget-boolean v9, v1, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v10, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v9, v10, :cond_9

    move v9, v4

    goto :goto_4

    :cond_9
    move v9, v5

    :goto_4
    if-nez p1, :cond_a

    if-nez v3, :cond_a

    if-nez v6, :cond_a

    if-nez v8, :cond_a

    if-nez v9, :cond_a

    .line 15
    iget v11, v1, Landroid/view/SurfaceView;->mLeft:I

    iget-object v12, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v13, v12, v5

    if-ne v11, v13, :cond_a

    iget v11, v1, Landroid/view/SurfaceView;->mTop:I

    aget v12, v12, v4

    if-ne v11, v12, :cond_a

    iget-boolean v11, v1, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    if-nez v11, :cond_a

    iget-boolean v11, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    if-nez v11, :cond_a

    if-eqz p2, :cond_23

    .line 16
    :cond_a
    :try_start_0
    iput-boolean v10, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 17
    iget-object v11, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v12, v11, v5

    iput v12, v1, Landroid/view/SurfaceView;->mLeft:I

    .line 18
    aget v11, v11, v4

    iput v11, v1, Landroid/view/SurfaceView;->mTop:I

    .line 19
    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 20
    iput v2, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 21
    iput v7, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 22
    iget-object v7, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 23
    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    iget-object v7, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    iget-object v7, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v7, :cond_b

    .line 27
    iget-object v11, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    :cond_b
    iget-object v7, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 29
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v11, v11, 0x4218

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v7

    if-nez v7, :cond_c

    .line 31
    iget-object v7, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 32
    :cond_c
    iget-object v7, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 33
    iget-object v7, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v7, :cond_e

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v7

    .line 35
    new-instance v13, Landroid/view/SurfaceView$MyWindow;

    invoke-direct {v13, v1}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    iput-object v13, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 36
    iget-object v15, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v1, Landroid/view/SurfaceView;->mWindowType:I

    iput v12, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const v12, 0x800033

    .line 37
    iput v12, v15, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    iget-object v12, v1, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget v14, v13, Lv/b;->mSeq:I

    iget-boolean v11, v1, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v11, :cond_d

    move/from16 v16, v5

    goto :goto_5

    :cond_d
    const/16 v16, 0x8

    :goto_5
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v17

    iget-object v7, v1, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v7

    invoke-interface/range {v12 .. v18}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;)I

    .line 39
    :cond_e
    iget-object v7, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    iput-boolean v5, v1, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 41
    iget-boolean v7, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 42
    iput-boolean v5, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    if-nez v10, :cond_f

    move v11, v4

    goto :goto_6

    :cond_f
    move v11, v5

    .line 43
    :goto_6
    iput-boolean v11, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 44
    iget-object v12, v1, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v13, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v14, v13, Lv/b;->mSeq:I

    iget-object v15, v1, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v1, Landroid/view/SurfaceView;->mWidth:I

    iget v5, v1, Landroid/view/SurfaceView;->mHeight:I

    if-eqz v10, :cond_10

    const/16 v18, 0x0

    goto :goto_7

    :cond_10
    const/16 v18, 0x8

    :goto_7
    const/16 v19, 0x2

    iget-object v4, v1, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v26, v0

    iget-object v0, v1, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    move/from16 v27, v2

    iget-object v2, v1, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move/from16 v28, v8

    iget-object v8, v1, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move/from16 v29, v6

    iget-object v6, v1, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move/from16 v30, v9

    iget-object v9, v1, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    move/from16 v16, v11

    move/from16 v17, v5

    move-object/from16 v20, v4

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    invoke-interface/range {v12 .. v25}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 46
    :cond_11
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 47
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 48
    iget-object v4, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_12

    .line 49
    iget-object v4, v1, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 50
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 51
    :cond_12
    iget v4, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 52
    iget-object v5, v1, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 53
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v5, v6

    float-to-int v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 54
    :goto_8
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 55
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 56
    iget v5, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v5, v4, :cond_14

    iget v5, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v5, v2, :cond_13

    goto :goto_9

    :cond_13
    const/4 v5, 0x0

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v5, 0x1

    .line 57
    :goto_a
    iput v4, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 58
    iput v2, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    or-int v2, v3, v7

    or-int v2, p2, v2

    const/4 v4, 0x0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    .line 60
    :goto_b
    :try_start_3
    iget-boolean v6, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v6, :cond_17

    if-nez v0, :cond_16

    if-nez v10, :cond_17

    if-eqz v30, :cond_17

    :cond_16
    const/4 v6, 0x0

    .line 61
    iput-boolean v6, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 62
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 63
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v4

    .line 64
    array-length v6, v4

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_17

    aget-object v8, v4, v7

    .line 65
    iget-object v9, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 66
    :cond_17
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v7, v1, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v6, v7}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    if-eqz v10, :cond_20

    .line 67
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 68
    iget-boolean v6, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v6, :cond_1a

    if-nez v0, :cond_18

    if-eqz v30, :cond_1a

    :cond_18
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 70
    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    if-nez v4, :cond_19

    .line 71
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object v4, v0

    .line 72
    :cond_19
    array-length v0, v4

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v0, :cond_1a

    aget-object v7, v4, v6

    .line 73
    iget-object v8, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v8}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1a
    if-nez v3, :cond_1b

    if-nez v29, :cond_1b

    if-nez v28, :cond_1b

    if-nez v30, :cond_1b

    if-eqz v5, :cond_1d

    :cond_1b
    if-nez v4, :cond_1c

    .line 74
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    move-object v4, v0

    .line 75
    :cond_1c
    array-length v0, v4

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_1d

    aget-object v5, v4, v3

    .line 76
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v7, v1, Landroid/view/SurfaceView;->mFormat:I

    move/from16 v8, v26

    move/from16 v9, v27

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v26, v8

    move/from16 v27, v9

    goto :goto_e

    :cond_1d
    if-eqz v2, :cond_20

    if-nez v4, :cond_1e

    .line 77
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v4

    .line 78
    :cond_1e
    array-length v0, v4

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_20

    aget-object v5, v4, v3

    .line 79
    instance-of v6, v5, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v6, :cond_1f

    .line 80
    check-cast v5, Landroid/view/SurfaceHolder$Callback2;

    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_20
    const/4 v3, 0x0

    .line 81
    :try_start_4
    iput-boolean v3, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    if-eqz v2, :cond_21

    .line 82
    iget-object v0, v1, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 83
    :cond_21
    iget-object v0, v1, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    goto :goto_10

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    .line 84
    iput-boolean v3, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    if-eqz v2, :cond_22

    .line 85
    iget-object v2, v1, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 86
    :cond_22
    iget-object v2, v1, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 87
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_23
    :goto_10
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v0, :cond_2

    if-lez v3, :cond_2

    .line 7
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v6, v4, v1

    .line 9
    aget v7, v4, v2

    add-int v8, v6, v0

    add-int v9, v7, v3

    .line 10
    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 11
    :cond_2
    :goto_0
    iget p1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {p1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public handleGetNewSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return-void
.end method

.method public hideSurfaceView(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->hideWindowLayer(Landroid/view/IWindow;Z)V

    .line 4
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public isFixedSize()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_0

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

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SurfaceView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 7
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 9
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 10
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 4
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 6
    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 7
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 8
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 9
    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v2, v0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    iput-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 12
    :cond_1
    iput-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 13
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 14
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    .line 2
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v0, :cond_1

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 3
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 2
    :goto_0
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 4
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2, p2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return p1
.end method

.method public setSecure(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 2
    :goto_0
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 3
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 4
    :goto_1
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 7
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x3ec

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e9

    .line 1
    :goto_0
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 p1, 0x3e8

    .line 1
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 2
    iget-object p1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e9

    .line 3
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 4
    iget-object p1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method public updateLayoutParams(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method

.method public updatePositionAndSize(IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    iget-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->updatePositionAndSize(Landroid/view/IWindow;IIII)V

    .line 4
    iget-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
