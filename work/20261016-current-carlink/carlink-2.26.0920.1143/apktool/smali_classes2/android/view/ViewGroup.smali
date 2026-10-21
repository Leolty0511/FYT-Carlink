.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$ChildListForAutoFill;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final FLAG_ANIMATION_CACHE:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field static final FLAG_IS_TRANSITION_GROUP:I = 0x1000000

.field static final FLAG_IS_TRANSITION_GROUP_SET:I = 0x2000000

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SHOW_CONTEXT_MENU_WITH_COORDS:I = 0x20000000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED:I = 0x10000000

.field private static final FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED:I = 0x8000000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field static final FLAG_TOUCHSCREEN_BLOCKS_FOCUS:I = 0x4000000

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field private static final LAYOUT_MODE_UNDEFINED:I = -0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mChildrenInterestedInDrag:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDragChild:Landroid/view/View;

.field private mCurrentDragStartEvent:Landroid/view/DragEvent;

.field private mDefaultFocus:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field mFocusedInCluster:Landroid/view/View;

.field protected mGroupFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CLIP_CHILDREN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "CLIP_TO_PADDING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "PADDING_NOT_NULL"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mIsInterestedInDrag:Z

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutCalledWhileSuppressed:Z

.field private mLayoutMode:I

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mLocalPoint:Landroid/graphics/PointF;

.field private mNestedScrollAxes:I

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mPreSortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressLayout:Z

.field private mTempPoint:[F

.field private mTooltipHoverTarget:Landroid/view/View;

.field private mTooltipHoveredSelf:Z

.field private mTransientIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 11
    .line 12
    new-instance v0, Landroid/view/ViewGroup$1;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/view/ViewGroup$1;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 6
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 8
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 9
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 11
    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 12
    new-instance v0, Landroid/view/ViewGroup$4;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$4;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 13
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method public static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p0
.end method

.method public static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p1
.end method

.method public static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne p2, v1, :cond_1

    .line 8
    .line 9
    if-ne v2, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 p2, v2, 0xc

    .line 12
    .line 13
    new-array p2, p2, [Landroid/view/View;

    .line 14
    .line 15
    iput-object p2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 16
    .line 17
    invoke-static {v0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 21
    .line 22
    :cond_0
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 23
    .line 24
    add-int/lit8 v1, p2, 0x1

    .line 25
    .line 26
    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 27
    .line 28
    aput-object p1, v0, p2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-ge p2, v1, :cond_4

    .line 32
    .line 33
    if-ne v2, v1, :cond_2

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0xc

    .line 36
    .line 37
    new-array v2, v2, [Landroid/view/View;

    .line 38
    .line 39
    iput-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 40
    .line 41
    invoke-static {v0, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 45
    .line 46
    add-int/lit8 v3, p2, 0x1

    .line 47
    .line 48
    sub-int/2addr v1, p2

    .line 49
    invoke-static {v0, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 56
    .line 57
    sub-int/2addr v1, p2

    .line 58
    invoke-static {v0, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    :goto_0
    aput-object p1, v0, p2

    .line 62
    .line 63
    iget p1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    iput p1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 68
    .line 69
    iget p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 70
    .line 71
    if-lt p1, p2, :cond_3

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    iput p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 76
    .line 77
    :cond_3
    :goto_1
    return-void

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 79
    .line 80
    const-string v0, "index="

    .line 81
    .line 82
    const-string v2, " count="

    .line 83
    .line 84
    invoke-static {v0, p2, v2, v1}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 6
    .line 7
    iput-object p2, p1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 8
    .line 9
    iput-object p1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 10
    .line 11
    return-object p1
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_11

    .line 14
    .line 15
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    :cond_2
    if-eqz p4, :cond_3

    .line 33
    .line 34
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-gez p2, :cond_4

    .line 41
    .line 42
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 43
    .line 44
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    if-eqz p4, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 54
    .line 55
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_6

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    iget-object p3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 69
    .line 70
    const/4 p4, 0x0

    .line 71
    const/high16 v0, 0x400000

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    if-eqz p3, :cond_8

    .line 75
    .line 76
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 77
    .line 78
    and-int/2addr v2, v0

    .line 79
    if-nez v2, :cond_8

    .line 80
    .line 81
    iget-boolean v2, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 82
    .line 83
    iput-boolean p4, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 84
    .line 85
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 86
    .line 87
    and-int/lit8 v3, v3, 0xc

    .line 88
    .line 89
    invoke-virtual {p1, p3, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 90
    .line 91
    .line 92
    iget-boolean v3, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 97
    .line 98
    .line 99
    :cond_7
    iput-boolean v2, p3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 100
    .line 101
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_9

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 108
    .line 109
    .line 110
    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewAdded(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    iget p3, p1, Landroid/view/View;->mViewFlags:I

    .line 114
    .line 115
    and-int/2addr p3, v0

    .line 116
    if-ne p3, v0, :cond_a

    .line 117
    .line 118
    iget p3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 119
    .line 120
    const/high16 v0, 0x10000

    .line 121
    .line 122
    or-int/2addr p3, v0

    .line 123
    iput p3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 124
    .line 125
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-eqz p3, :cond_b

    .line 130
    .line 131
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 132
    .line 133
    .line 134
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    const/16 v0, 0x8

    .line 139
    .line 140
    if-eq p3, v0, :cond_c

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 143
    .line 144
    .line 145
    :cond_c
    iget-object p3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 146
    .line 147
    if-eqz p3, :cond_e

    .line 148
    .line 149
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result p3

    .line 153
    :goto_2
    if-ge p4, p3, :cond_e

    .line 154
    .line 155
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-gt p2, v0, :cond_d

    .line 168
    .line 169
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 170
    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v1, p4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_d
    add-int/lit8 p4, p4, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_e
    iget-object p2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 184
    .line 185
    if-eqz p2, :cond_f

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-nez p2, :cond_f

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 194
    .line 195
    .line 196
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->hasDefaultFocus()Z

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-eqz p2, :cond_10

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    :cond_10
    return-void

    .line 206
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    const-string p2, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    .line 209
    .line 210
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const/4 v5, 0x3

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    move-wide v1, v3

    .line 17
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v1, 0x1002

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 24
    .line 25
    .line 26
    move v1, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 30
    .line 31
    :goto_1
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v3, v2, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v3}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 36
    .line 37
    .line 38
    iget-object v3, v2, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 39
    .line 40
    iget v4, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 41
    .line 42
    invoke-direct {p0, p1, v0, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 43
    .line 44
    .line 45
    iget-object v2, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 7
    .line 8
    iget-object v3, v0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 9
    .line 10
    if-ne v3, p1, :cond_1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iput-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 18
    .line 19
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    const/16 v8, 0xa

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    move-wide v4, v6

    .line 32
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x1002

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    move-object v1, v0

    .line 49
    move-object v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 7
    .line 8
    iget-object v3, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 9
    .line 10
    if-ne v3, p1, :cond_1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 18
    .line 19
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    const/4 v8, 0x3

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    move-wide v4, v6

    .line 31
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v1, 0x1002

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    move-object v1, v0

    .line 48
    move-object v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    .line 1
    const/high16 v0, 0x800000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :goto_0
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 8
    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    return-void
.end method

.method private dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p3}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 20
    .line 21
    iget v1, p3, Landroid/view/View;->mLeft:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    int-to-float v0, v0

    .line 25
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 26
    .line 27
    iget v2, p3, Landroid/view/View;->mTop:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    neg-float p3, v0

    .line 39
    neg-float v0, v1

    .line 40
    invoke-virtual {p1, p3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-object p2
.end method

.method private dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 37
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    neg-float v0, v0

    neg-float v1, v1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_0
    return p2
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 20
    .line 21
    iget v1, p2, Landroid/view/View;->mLeft:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    int-to-float v0, v0

    .line 25
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 26
    .line 27
    iget v2, p2, Landroid/view/View;->mTop:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    neg-float v0, v0

    .line 39
    neg-float v1, v1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return p2
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-nez p2, :cond_8

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_4

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    and-int/2addr p4, p2

    .line 16
    if-nez p4, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    if-ne p4, p2, :cond_5

    .line 21
    .line 22
    if-eqz p3, :cond_3

    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 37
    .line 38
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    iget p2, p0, Landroid/view/View;->mScrollX:I

    .line 44
    .line 45
    iget p4, p3, Landroid/view/View;->mLeft:I

    .line 46
    .line 47
    sub-int/2addr p2, p4

    .line 48
    int-to-float p2, p2

    .line 49
    iget p4, p0, Landroid/view/View;->mScrollY:I

    .line 50
    .line 51
    iget v0, p3, Landroid/view/View;->mTop:I

    .line 52
    .line 53
    sub-int/2addr p4, v0

    .line 54
    int-to-float p4, p4

    .line 55
    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    neg-float p2, p2

    .line 63
    neg-float p4, p4

    .line 64
    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 65
    .line 66
    .line 67
    move p1, p3

    .line 68
    :goto_1
    return p1

    .line 69
    :cond_5
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_2
    if-nez p3, :cond_6

    .line 74
    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    iget p2, p0, Landroid/view/View;->mScrollX:I

    .line 81
    .line 82
    iget p4, p3, Landroid/view/View;->mLeft:I

    .line 83
    .line 84
    sub-int/2addr p2, p4

    .line 85
    int-to-float p2, p2

    .line 86
    iget p4, p0, Landroid/view/View;->mScrollY:I

    .line 87
    .line 88
    iget v0, p3, Landroid/view/View;->mTop:I

    .line 89
    .line 90
    sub-int/2addr p4, v0

    .line 91
    int-to-float p4, p4

    .line 92
    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_7

    .line 100
    .line 101
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 113
    .line 114
    .line 115
    return p2

    .line 116
    :cond_8
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 117
    .line 118
    .line 119
    if-nez p3, :cond_9

    .line 120
    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    goto :goto_5

    .line 126
    :cond_9
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 131
    .line 132
    .line 133
    return p2
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 6

    .line 1
    add-int v4, p2, p4

    .line 2
    .line 3
    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/2addr v0, p6

    .line 8
    add-int v5, v0, p3

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move v2, p2

    .line 13
    move v3, p3

    .line 14
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 15
    .line 16
    .line 17
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    mul-int/2addr p6, p4

    .line 22
    add-int v4, p6, p2

    .line 23
    .line 24
    add-int v5, p3, p5

    .line 25
    .line 26
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 10
    .line 11
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 12
    .line 13
    int-to-float p2, p2

    .line 14
    const/4 v1, 0x0

    .line 15
    aput p2, v0, v1

    .line 16
    .line 17
    int-to-float p3, p3

    .line 18
    const/4 v1, 0x1

    .line 19
    aput p3, v0, v1

    .line 20
    .line 21
    int-to-float p4, p4

    .line 22
    const/4 v1, 0x2

    .line 23
    aput p4, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    aput p3, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    aput p4, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    aput p3, v0, v1

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    aput p4, v0, v1

    .line 36
    .line 37
    int-to-float p5, p5

    .line 38
    const/4 v1, 0x7

    .line 39
    aput p5, v0, v1

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    aput p4, v0, v1

    .line 44
    .line 45
    const/16 p4, 0x9

    .line 46
    .line 47
    aput p5, v0, p4

    .line 48
    .line 49
    const/16 p4, 0xa

    .line 50
    .line 51
    aput p2, v0, p4

    .line 52
    .line 53
    const/16 p4, 0xb

    .line 54
    .line 55
    aput p5, v0, p4

    .line 56
    .line 57
    const/16 p4, 0xc

    .line 58
    .line 59
    aput p2, v0, p4

    .line 60
    .line 61
    const/16 p4, 0xd

    .line 62
    .line 63
    aput p5, v0, p4

    .line 64
    .line 65
    const/16 p4, 0xe

    .line 66
    .line 67
    aput p2, v0, p4

    .line 68
    .line 69
    const/16 p2, 0xf

    .line 70
    .line 71
    aput p3, v0, p2

    .line 72
    .line 73
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p5

    .line 3
    move v2, p1

    .line 4
    move v3, p2

    .line 5
    move v4, p6

    .line 6
    move v5, p6

    .line 7
    move v6, p7

    .line 8
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 9
    .line 10
    .line 11
    neg-int v0, p6

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p5

    .line 14
    move v3, p1

    .line 15
    move v4, p4

    .line 16
    move v6, v0

    .line 17
    move v7, p7

    .line 18
    invoke-static/range {v1 .. v7}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 19
    .line 20
    .line 21
    move v3, p3

    .line 22
    move v4, p2

    .line 23
    move v5, v0

    .line 24
    move v6, p6

    .line 25
    invoke-static/range {v1 .. v7}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 26
    .line 27
    .line 28
    move v4, p4

    .line 29
    move v6, v0

    .line 30
    invoke-static/range {v1 .. v7}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/16 v5, 0xa

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move-wide v1, v3

    .line 19
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0x1002

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private exitTooltipHoverTargets()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/16 v5, 0xa

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move-wide v1, v3

    .line 19
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0x1002

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 9

    .line 1
    sub-int v6, p1, p5

    .line 2
    .line 3
    sub-int v3, p2, p6

    .line 4
    .line 5
    add-int v7, p3, p7

    .line 6
    .line 7
    add-int v8, p4, p8

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object/from16 v1, p9

    .line 11
    .line 12
    move v2, v6

    .line 13
    move v4, v7

    .line 14
    move v5, p2

    .line 15
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 16
    .line 17
    .line 18
    move v3, p2

    .line 19
    move v4, p1

    .line 20
    move v5, p4

    .line 21
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 22
    .line 23
    .line 24
    move v2, p3

    .line 25
    move v4, v7

    .line 26
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 27
    .line 28
    .line 29
    move v2, v6

    .line 30
    move v3, p4

    .line 31
    move v5, v8

    .line 32
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 7

    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    if-le p2, p4, :cond_0

    move v6, p4

    move p4, p2

    move p2, v6

    :cond_0
    if-le p3, p5, :cond_1

    move v6, p5

    move p5, p3

    move p3, v6

    :cond_1
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private findChildWithAccessibilityFocus()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    instance-of v3, v2, Landroid/view/View;

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    if-ne v2, p0, :cond_2

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    move-object v0, v2

    .line 28
    check-cast v0, Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    return-object v1
.end method

.method private getAndVerifyPreorderedIndex(IIZ)I
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-ge p2, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    const-string v0, "getChildDrawingOrder() returned invalid index "

    .line 13
    .line 14
    const-string v1, " (child count is "

    .line 15
    .line 16
    const-string v2, ")"

    .line 17
    .line 18
    invoke-static {v0, p2, v1, p1, v2}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p3

    .line 26
    :cond_1
    :goto_0
    return p2
.end method

.method private static getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string p1, "Invalid preorderedList contained null child at index "

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    aget-object p0, p1, p2

    .line 25
    .line 26
    :goto_0
    return-object p0
.end method

.method public static getChildMeasureSpec(III)I
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sub-int/2addr p0, p1

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, -0x2

    .line 16
    const/4 v2, -0x1

    .line 17
    const/high16 v3, -0x80000000

    .line 18
    .line 19
    const/high16 v4, 0x40000000    # 2.0f

    .line 20
    .line 21
    if-eq v0, v3, :cond_7

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eq v0, v4, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    if-ltz p2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ne p2, v2, :cond_2

    .line 32
    .line 33
    move p2, p0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-ne p2, v1, :cond_a

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    if-ltz p2, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    if-ne p2, v2, :cond_6

    .line 42
    .line 43
    sget-boolean p2, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    .line 44
    .line 45
    if-eqz p2, :cond_5

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_5
    move p2, p0

    .line 49
    goto :goto_3

    .line 50
    :cond_6
    if-ne p2, v1, :cond_a

    .line 51
    .line 52
    sget-boolean p2, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    .line 53
    .line 54
    if-eqz p2, :cond_5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_7
    if-ltz p2, :cond_8

    .line 58
    .line 59
    :goto_0
    move p1, v4

    .line 60
    goto :goto_3

    .line 61
    :cond_8
    if-ne p2, v2, :cond_9

    .line 62
    .line 63
    :goto_1
    move p2, p0

    .line 64
    move p1, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_9
    if-ne p2, v1, :cond_a

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_a
    :goto_2
    move p2, p1

    .line 70
    :goto_3
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0
.end method

.method private getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFill;
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewGroup$ChildListForAutoFill;->obtain()Landroid/view/ViewGroup$ChildListForAutoFill;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 13
    .line 14
    return-object v0
.end method

.method private getTempPoint()[F
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTempPoint:[F

    .line 11
    .line 12
    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 2
    .line 3
    iget v1, p2, Landroid/view/View;->mLeft:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-float v0, v0

    .line 7
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 8
    .line 9
    iget v2, p2, Landroid/view/View;->mTop:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    int-to-float v1, v1

    .line 13
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object p1
.end method

.method private hasBooleanFlag(I)Z
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasChildWithZ()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    cmpl-float v2, v2, v3

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 p3, 0x0

    .line 12
    move p4, p3

    .line 13
    :goto_0
    if-ge p4, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    const/4 v2, 0x1

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :pswitch_0
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :pswitch_1
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :pswitch_2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_3
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    new-instance v0, Landroid/animation/LayoutTransition;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_4
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_5
    sget-object v1, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 76
    .line 77
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    aget v0, v1, v0

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_6
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_7
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_8
    const/4 v1, 0x2

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_9
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_a
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-lez v0, :cond_0

    .line 125
    .line 126
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_b
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :pswitch_c
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 149
    .line 150
    .line 151
    :cond_0
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->debugDraw()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x80

    .line 8
    .line 9
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13
    .line 14
    or-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    or-int/2addr v0, v1

    .line 18
    or-int/lit8 v0, v0, 0x10

    .line 19
    .line 20
    or-int/lit8 v0, v0, 0x40

    .line 21
    .line 22
    or-int/lit16 v0, v0, 0x4000

    .line 23
    .line 24
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 25
    .line 26
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 33
    .line 34
    const/16 v2, 0xb

    .line 35
    .line 36
    if-lt v0, v2, :cond_1

    .line 37
    .line 38
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 39
    .line 40
    const/high16 v2, 0x200000

    .line 41
    .line 42
    or-int/2addr v0, v2

    .line 43
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 44
    .line 45
    :cond_1
    const/high16 v0, 0x20000

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0xc

    .line 51
    .line 52
    new-array v0, v0, [Landroid/view/View;

    .line 53
    .line 54
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 58
    .line 59
    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 60
    .line 61
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x201

    .line 4
    .line 5
    or-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/view/ViewGroup$3;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private populateChildrenForAutofill(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v3, v2

    .line 22
    :goto_0
    if-ge v2, v0, :cond_6

    .line 23
    .line 24
    invoke-direct {p0, v0, v2, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 31
    .line 32
    aget-object v4, v5, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/view/View;

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v5, p2, 0x1

    .line 42
    .line 43
    if-nez v5, :cond_4

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->isImportantForAutofill()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz v5, :cond_5

    .line 55
    .line 56
    check-cast v4, Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-direct {v4, p1, p2}, Landroid/view/ViewGroup;->populateChildrenForAutofill(Ljava/util/ArrayList;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    :goto_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    return-void
.end method

.method private recreateChildDisplayList(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 13
    .line 14
    const v1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v0, v1

    .line 18
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 21
    .line 22
    .line 23
    iput-boolean v2, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 24
    .line 25
    return-void
.end method

.method private removeFromArray(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    aget-object v1, v0, p1

    iput-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v1, -0x1

    if-ne p1, v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 5
    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_5

    if-ge p1, v1, :cond_5

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 6
    invoke-static {v0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v2, v0, v1

    .line 8
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v0, p1, :cond_3

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1

    :cond_3
    if-le v0, p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 11
    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    :cond_4
    :goto_1
    return-void

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private removeFromArray(II)V
    .locals 5

    .line 13
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 14
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    .line 15
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p2, p1

    .line 16
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 17
    aget-object v3, v0, v1

    iput-object v2, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 18
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_1
    if-ge v3, p2, :cond_2

    .line 19
    aget-object v4, v0, v3

    iput-object v2, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int v3, v1, p2

    .line 20
    invoke-static {v0, p2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v3, p2, p1

    sub-int v3, v1, v3

    :goto_2
    if-ge v3, v1, :cond_3

    .line 21
    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 22
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 7
    .line 8
    iget v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 9
    .line 10
    and-int v4, v3, p1

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    not-int v4, p1

    .line 15
    and-int/2addr v3, v4

    .line 16
    iput v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 26
    .line 27
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move-object v1, v0

    .line 32
    :goto_2
    move-object v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 4

    .line 3
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne p2, v2, :cond_2

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 10
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 11
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 16
    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 17
    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 19
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 20
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 21
    iget-object v2, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-ne p2, v2, :cond_7

    .line 22
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    invoke-virtual {p0, p0}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 26
    :cond_8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 29
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_c

    .line 30
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p1, v2, :cond_b

    .line 31
    iget-object v3, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 32
    :cond_c
    iget-object p1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    if-eqz p1, :cond_d

    .line 33
    iget-object p1, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeViewsInternal(II)V
    .locals 12

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    if-ltz p1, :cond_c

    .line 4
    .line 5
    if-ltz p2, :cond_c

    .line 6
    .line 7
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_c

    .line 10
    .line 11
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move v2, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v4

    .line 22
    :goto_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    move v7, p1

    .line 26
    move v9, v4

    .line 27
    move-object v8, v6

    .line 28
    :goto_1
    if-ge v7, v0, :cond_9

    .line 29
    .line 30
    aget-object v10, v5, v7

    .line 31
    .line 32
    iget-object v11, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 33
    .line 34
    if-eqz v11, :cond_1

    .line 35
    .line 36
    invoke-virtual {v11, p0, v10}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-ne v10, v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v10, v6}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    move v9, v3

    .line 45
    :cond_2
    iget-object v11, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 46
    .line 47
    if-ne v10, v11, :cond_3

    .line 48
    .line 49
    move-object v8, v10

    .line 50
    :cond_3
    iget-object v11, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 51
    .line 52
    if-ne v10, v11, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v10}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v10}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    if-nez v11, :cond_6

    .line 71
    .line 72
    iget-object v11, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 73
    .line 74
    if-eqz v11, :cond_5

    .line 75
    .line 76
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    if-eqz v11, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    if-eqz v2, :cond_7

    .line 84
    .line 85
    invoke-virtual {v10}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    :goto_2
    invoke-direct {p0, v10}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-eqz v11, :cond_8

    .line 97
    .line 98
    invoke-virtual {p0, v10, v4}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 99
    .line 100
    .line 101
    :cond_8
    invoke-virtual {p0, v4}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 111
    .line 112
    .line 113
    if-eqz v8, :cond_a

    .line 114
    .line 115
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_a
    if-eqz v9, :cond_b

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_b

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    :cond_b
    return-void

    .line 133
    :cond_c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 136
    .line 137
    .line 138
    throw p1
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x4000000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const v1, -0x4000001

    .line 9
    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private resetTouchState()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 5
    .line 6
    .line 7
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 8
    .line 9
    const v1, -0x80001

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 17
    .line 18
    return-void
.end method

.method private restoreFocusInClusterInternal(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x60000

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 14
    .line 15
    iget v1, v0, Landroid/view/View;->mViewFlags:I

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0xc

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->restoreFocusInCluster(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method private setBooleanFlag(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private setLayoutMode(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/high16 p1, 0x800000

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method private setTouchscreenBlocksFocusNoRefocus(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    .line 5
    const/high16 v0, 0x4000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 12
    .line 13
    const v0, -0x4000001

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v0

    .line 17
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private static sign(I)I
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 25
    .line 26
    and-int/lit8 v4, v4, 0xc

    .line 27
    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 26
    :goto_1
    const/high16 v5, 0x60000

    .line 27
    .line 28
    if-ne v1, v5, :cond_3

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void

    .line 36
    :cond_3
    if-eqz v2, :cond_4

    .line 37
    .line 38
    or-int/lit8 p3, p3, 0x1

    .line 39
    .line 40
    :cond_4
    const/high16 v2, 0x20000

    .line 41
    .line 42
    if-ne v1, v2, :cond_5

    .line 43
    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 47
    .line 48
    .line 49
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 50
    .line 51
    new-array v2, v2, [Landroid/view/View;

    .line 52
    .line 53
    move v5, v4

    .line 54
    move v6, v5

    .line 55
    :goto_2
    iget v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 56
    .line 57
    if-ge v5, v7, :cond_7

    .line 58
    .line 59
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 60
    .line 61
    aget-object v7, v7, v5

    .line 62
    .line 63
    iget v8, v7, Landroid/view/View;->mViewFlags:I

    .line 64
    .line 65
    and-int/lit8 v8, v8, 0xc

    .line 66
    .line 67
    if-nez v8, :cond_6

    .line 68
    .line 69
    add-int/lit8 v8, v6, 0x1

    .line 70
    .line 71
    aput-object v7, v2, v6

    .line 72
    .line 73
    move v6, v8

    .line 74
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v2, v4, v6, p0, v5}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 82
    .line 83
    .line 84
    :goto_3
    if-ge v4, v6, :cond_8

    .line 85
    .line 86
    aget-object v5, v2, v4

    .line 87
    .line 88
    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_8
    const/high16 v2, 0x40000

    .line 95
    .line 96
    if-ne v1, v2, :cond_9

    .line 97
    .line 98
    if-eqz v3, :cond_9

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-ne v0, v1, :cond_9

    .line 105
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 107
    .line 108
    .line 109
    :cond_9
    return-void
.end method

.method public addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :try_start_0
    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/high16 v1, 0x60000

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 51
    .line 52
    new-array v0, v0, [Landroid/view/View;

    .line 53
    .line 54
    move v1, v2

    .line 55
    move v3, v1

    .line 56
    :goto_1
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 57
    .line 58
    if-ge v1, v4, :cond_4

    .line 59
    .line 60
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 61
    .line 62
    aget-object v4, v4, v1

    .line 63
    .line 64
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    .line 65
    .line 66
    and-int/lit8 v5, v5, 0xc

    .line 67
    .line 68
    if-nez v5, :cond_3

    .line 69
    .line 70
    add-int/lit8 v5, v3, 0x1

    .line 71
    .line 72
    aput-object v4, v0, v3

    .line 73
    .line 74
    move v3, v5

    .line 75
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v0, v2, v3, p0, v1}, Landroid/view/FocusFinder;->sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V

    .line 83
    .line 84
    .line 85
    :goto_2
    if-ge v2, v3, :cond_5

    .line 86
    .line 87
    aget-object v1, v0, v2

    .line 88
    .line 89
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 14
    .line 15
    and-int/lit8 v4, v4, 0xc

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method public addTransientView(Landroid/view/View;I)V
    .locals 3

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_4

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_3

    .line 32
    .line 33
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge p2, v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :goto_2
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 81
    .line 82
    iget-object p2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 83
    .line 84
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 85
    .line 86
    and-int/lit8 v0, v0, 0xc

    .line 87
    .line 88
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x1

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    return p1
.end method

.method public addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const p3, -0x600001

    and-int/2addr p2, p3

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add a null child view to a ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0

    .line 1
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 11
    .line 12
    :cond_0
    iput p4, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 13
    .line 14
    iput p3, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 15
    .line 16
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    if-gez p2, :cond_0

    .line 4
    .line 5
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11
    .line 12
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 13
    .line 14
    const p3, -0x600001

    .line 15
    .line 16
    .line 17
    and-int/2addr p2, p3

    .line 18
    const p3, -0x8001

    .line 19
    .line 20
    .line 21
    and-int/2addr p2, p3

    .line 22
    or-int/lit8 p2, p2, 0x20

    .line 23
    .line 24
    const/high16 p3, -0x80000000

    .line 25
    .line 26
    or-int/2addr p2, p3

    .line 27
    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 28
    .line 29
    iget p2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 30
    .line 31
    or-int/2addr p2, p3

    .line 32
    iput p2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchVisibilityAggregated(Z)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 13
    .line 14
    .line 15
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public buildOrderedChildList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_4

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/view/ViewGroup;->hasChildWithZ()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_1
    if-ge v2, v0, :cond_3

    .line 39
    .line 40
    invoke-direct {p0, v0, v2, v1}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 45
    .line 46
    aget-object v3, v4, v3

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    move v5, v2

    .line 53
    :goto_2
    if-lez v5, :cond_2

    .line 54
    .line 55
    iget-object v6, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 56
    .line 57
    add-int/lit8 v7, v5, -0x1

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    cmpl-float v6, v6, v4

    .line 70
    .line 71
    if-lez v6, :cond_2

    .line 72
    .line 73
    add-int/lit8 v5, v5, -0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    iget-object v4, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mPreSortedChildren:Ljava/util/ArrayList;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 88
    return-object v0
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public canAnimate()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0x2000

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    iput p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, -0x1

    .line 17
    .line 18
    iput p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    if-eq p1, p2, :cond_1

    .line 29
    .line 30
    :try_start_0
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    iget-object p2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string v0, " does not fully implement ViewParent"

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v0, "ViewGroup"

    .line 52
    .line 53
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    return-void
.end method

.method public cleanupLayoutState(Landroid/view/View;)V
    .locals 1

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3
    .line 4
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public clearDefaultFocus(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 19
    .line 20
    if-ge p1, v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 23
    .line 24
    aget-object v0, v0, p1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->hasDefaultFocus()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iput-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 46
    .line 47
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 51
    .line 52
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    check-cast p1, Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroid/view/View;

    .line 17
    .line 18
    iget-object v4, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public clearFocusedInCluster()V
    .locals 4

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->findKeyboardNavigationCluster()Landroid/view/View;

    move-result-object v0

    move-object v1, p0

    .line 4
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    :goto_0
    return-void
.end method

.method public clearFocusedInCluster(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocusedInCluster()V

    return-void
.end method

.method public computeOpticalInsets()Landroid/graphics/Insets;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    :goto_0
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 13
    .line 14
    if-ge v0, v5, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget v6, v5, Landroid/graphics/Insets;->left:I

    .line 31
    .line 32
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v6, v5, Landroid/graphics/Insets;->top:I

    .line 37
    .line 38
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget v6, v5, Landroid/graphics/Insets;->right:I

    .line 43
    .line 44
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    .line 49
    .line 50
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_2
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 63
    .line 64
    return-object v0
.end method

.method public createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p3, :cond_1

    .line 5
    .line 6
    new-array v2, v0, [I

    .line 7
    .line 8
    move v3, v1

    .line 9
    :goto_0
    if-ge v3, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    aput v5, v2, v3

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    .line 24
    .line 25
    and-int/lit8 v5, v5, -0xd

    .line 26
    .line 27
    or-int/lit8 v5, v5, 0x4

    .line 28
    .line 29
    iput v5, v4, Landroid/view/View;->mViewFlags:I

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    :goto_1
    if-ge v1, v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget p3, p2, Landroid/view/View;->mViewFlags:I

    .line 48
    .line 49
    and-int/lit8 p3, p3, -0xd

    .line 50
    .line 51
    aget v3, v2, v1

    .line 52
    .line 53
    and-int/lit8 v3, v3, 0xc

    .line 54
    .line 55
    or-int/2addr p3, v3

    .line 56
    iput p3, p2, Landroid/view/View;->mViewFlags:I

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    return-object p1
.end method

.method public debug(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5
    .line 6
    const-string v1, "View"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "mFocused"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 35
    .line 36
    add-int/lit8 v2, p1, 0x1

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->debug(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "mDefaultFocus"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 70
    .line 71
    add-int/lit8 v2, p1, 0x1

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->debug(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "mFocusedInCluster"

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 105
    .line 106
    add-int/lit8 v2, p1, 0x1

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->debug(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string/jumbo v0, "{"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 141
    .line 142
    const/4 v2, 0x0

    .line 143
    :goto_0
    if-ge v2, v0, :cond_4

    .line 144
    .line 145
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 146
    .line 147
    aget-object v3, v3, v2

    .line 148
    .line 149
    add-int/lit8 v4, p1, 0x1

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Landroid/view/View;->debug(I)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 158
    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string/jumbo p1, "}"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_5
    return-void
.end method

.method public destroyHardwareResources()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->destroyHardwareResources()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public detachAllViewsFromParent()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v0, :cond_1

    .line 14
    .line 15
    aget-object v2, v1, v0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 19
    .line 20
    aput-object v3, v1, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    return-void
.end method

.method public detachViewFromParent(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    return-void
.end method

.method public detachViewsFromParent(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v2
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    return-object p1
.end method

.method public dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x400000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 12
    .line 13
    const v1, -0x400001

    .line 14
    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 18
    .line 19
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 20
    .line 21
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v0, :cond_0

    .line 26
    .line 27
    aget-object v4, v1, v3

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {p0, p2, v5}, Landroid/view/View;->combineVisibility(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v4, p1, v5}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    move v0, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :goto_1
    if-ge v2, v0, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p0, p2, v3}, Landroid/view/View;->combineVisibility(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v1, p1, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    return-void
.end method

.method public dispatchCancelPendingInputEvents()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5
    .line 6
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 21
    .line 22
    const/16 v3, 0x10

    .line 23
    .line 24
    and-int/2addr v1, v3

    .line 25
    if-ne v1, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5

    .line 1
    and-int/lit8 v0, p2, 0xc

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9
    .line 10
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_0

    .line 14
    .line 15
    aget-object v3, v1, v2

    .line 16
    .line 17
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 18
    .line 19
    and-int/lit8 v4, v4, 0xc

    .line 20
    .line 21
    or-int/2addr v4, p2

    .line 22
    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchDetachedFromWindow()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitTooltipHoverTargets()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 13
    .line 14
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 15
    .line 16
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 17
    .line 18
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 28
    .line 29
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 30
    .line 31
    move v3, v1

    .line 32
    :goto_0
    if-ge v3, v0, :cond_1

    .line 33
    .line 34
    aget-object v4, v2, v3

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_1
    if-ge v1, v0, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 10

    .line 1
    iget v0, p1, Landroid/view/DragEvent;->mX:F

    .line 2
    .line 3
    iget v1, p1, Landroid/view/DragEvent;->mY:F

    .line 4
    .line 5
    iget-object v2, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget v4, p1, Landroid/view/DragEvent;->mAction:I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eq v4, v6, :cond_f

    .line 17
    .line 18
    const/4 v8, 0x2

    .line 19
    if-eq v4, v8, :cond_7

    .line 20
    .line 21
    const/4 v8, 0x3

    .line 22
    if-eq v4, v8, :cond_7

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq v4, v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move v2, v7

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    move v2, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v2, v7

    .line 63
    :goto_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    .line 68
    .line 69
    .line 70
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 71
    .line 72
    :cond_4
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move v6, v2

    .line 84
    :goto_2
    iput-boolean v7, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :cond_6
    move v7, v2

    .line 89
    goto/16 :goto_8

    .line 90
    .line 91
    :cond_7
    iget v4, p1, Landroid/view/DragEvent;->mX:F

    .line 92
    .line 93
    iget v6, p1, Landroid/view/DragEvent;->mY:F

    .line 94
    .line 95
    invoke-virtual {p0, v4, v6, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iget-object v6, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 100
    .line 101
    if-eq v4, v6, :cond_b

    .line 102
    .line 103
    sget-boolean v8, Landroid/view/View;->sCascadedDragDrop:Z

    .line 104
    .line 105
    if-eqz v8, :cond_a

    .line 106
    .line 107
    iget v8, p1, Landroid/view/DragEvent;->mAction:I

    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    iput v9, p1, Landroid/view/DragEvent;->mX:F

    .line 111
    .line 112
    iput v9, p1, Landroid/view/DragEvent;->mY:F

    .line 113
    .line 114
    iput-object v5, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 115
    .line 116
    if-eqz v6, :cond_8

    .line 117
    .line 118
    const/4 v5, 0x6

    .line 119
    iput v5, p1, Landroid/view/DragEvent;->mAction:I

    .line 120
    .line 121
    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 122
    .line 123
    .line 124
    :cond_8
    if-eqz v4, :cond_9

    .line 125
    .line 126
    const/4 v5, 0x5

    .line 127
    iput v5, p1, Landroid/view/DragEvent;->mAction:I

    .line 128
    .line 129
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 130
    .line 131
    .line 132
    :cond_9
    iput v8, p1, Landroid/view/DragEvent;->mAction:I

    .line 133
    .line 134
    iput v0, p1, Landroid/view/DragEvent;->mX:F

    .line 135
    .line 136
    iput v1, p1, Landroid/view/DragEvent;->mY:F

    .line 137
    .line 138
    iput-object v2, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 139
    .line 140
    :cond_a
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 141
    .line 142
    :cond_b
    if-nez v4, :cond_c

    .line 143
    .line 144
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 145
    .line 146
    if-eqz v2, :cond_c

    .line 147
    .line 148
    move-object v4, p0

    .line 149
    :cond_c
    if-eqz v4, :cond_15

    .line 150
    .line 151
    if-eq v4, p0, :cond_e

    .line 152
    .line 153
    iget v2, v3, Landroid/graphics/PointF;->x:F

    .line 154
    .line 155
    iput v2, p1, Landroid/view/DragEvent;->mX:F

    .line 156
    .line 157
    iget v2, v3, Landroid/graphics/PointF;->y:F

    .line 158
    .line 159
    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 160
    .line 161
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    iput v0, p1, Landroid/view/DragEvent;->mX:F

    .line 166
    .line 167
    iput v1, p1, Landroid/view/DragEvent;->mY:F

    .line 168
    .line 169
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 170
    .line 171
    if-eqz v0, :cond_15

    .line 172
    .line 173
    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    .line 174
    .line 175
    if-eqz v0, :cond_d

    .line 176
    .line 177
    move v0, v7

    .line 178
    goto :goto_3

    .line 179
    :cond_d
    iget-boolean v0, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 180
    .line 181
    :goto_3
    if-nez v0, :cond_15

    .line 182
    .line 183
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    move v7, p1

    .line 188
    goto :goto_8

    .line 189
    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    goto :goto_8

    .line 194
    :cond_f
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragChild:Landroid/view/View;

    .line 195
    .line 196
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 201
    .line 202
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 203
    .line 204
    if-nez v0, :cond_10

    .line 205
    .line 206
    new-instance v0, Ljava/util/HashSet;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_10
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 215
    .line 216
    .line 217
    :goto_4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 218
    .line 219
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 220
    .line 221
    move v2, v7

    .line 222
    :goto_5
    if-ge v7, v0, :cond_12

    .line 223
    .line 224
    aget-object v3, v1, v7

    .line 225
    .line 226
    iget v4, v3, Landroid/view/View;->mPrivateFlags2:I

    .line 227
    .line 228
    and-int/lit8 v4, v4, -0x4

    .line 229
    .line 230
    iput v4, v3, Landroid/view/View;->mPrivateFlags2:I

    .line 231
    .line 232
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_11

    .line 237
    .line 238
    aget-object v3, v1, v7

    .line 239
    .line 240
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_11

    .line 245
    .line 246
    move v2, v6

    .line 247
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mIsInterestedInDrag:Z

    .line 255
    .line 256
    if-eqz p1, :cond_13

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_13
    move v6, v2

    .line 260
    :goto_6
    if-nez v6, :cond_14

    .line 261
    .line 262
    iget-object p1, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 265
    .line 266
    .line 267
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 268
    .line 269
    :cond_14
    :goto_7
    move v7, v6

    .line 270
    :cond_15
    :goto_8
    return v7
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->isRecordingFor(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 12
    .line 13
    iget-object v4, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 14
    .line 15
    iget v5, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 16
    .line 17
    and-int/lit8 v6, v5, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-eqz v6, :cond_3

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_3

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 29
    .line 30
    .line 31
    move v6, v7

    .line 32
    :goto_0
    if-ge v6, v3, :cond_1

    .line 33
    .line 34
    aget-object v8, v4, v6

    .line 35
    .line 36
    iget v9, v8, Landroid/view/View;->mViewFlags:I

    .line 37
    .line 38
    and-int/lit8 v9, v9, 0xc

    .line 39
    .line 40
    if-nez v9, :cond_0

    .line 41
    .line 42
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-virtual {v0, v8, v9, v6, v3}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v8}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v6, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_2

    .line 62
    .line 63
    iget v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 64
    .line 65
    or-int/lit16 v8, v8, 0x80

    .line 66
    .line 67
    iput v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 68
    .line 69
    :cond_2
    invoke-virtual {v6}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 70
    .line 71
    .line 72
    iget v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 73
    .line 74
    and-int/lit8 v8, v8, -0x9

    .line 75
    .line 76
    and-int/lit8 v8, v8, -0x11

    .line 77
    .line 78
    iput v8, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 79
    .line 80
    iget-object v8, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 81
    .line 82
    if-eqz v8, :cond_3

    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-interface {v8, v6}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    const/16 v6, 0x22

    .line 92
    .line 93
    and-int/2addr v5, v6

    .line 94
    if-ne v5, v6, :cond_4

    .line 95
    .line 96
    const/4 v5, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move v5, v7

    .line 99
    :goto_1
    if-eqz v5, :cond_5

    .line 100
    .line 101
    const/4 v6, 0x2

    .line 102
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    iget v9, v0, Landroid/view/View;->mScrollX:I

    .line 107
    .line 108
    iget v10, v0, Landroid/view/View;->mPaddingLeft:I

    .line 109
    .line 110
    add-int/2addr v10, v9

    .line 111
    iget v11, v0, Landroid/view/View;->mScrollY:I

    .line 112
    .line 113
    iget v12, v0, Landroid/view/View;->mPaddingTop:I

    .line 114
    .line 115
    add-int/2addr v12, v11

    .line 116
    iget v13, v0, Landroid/view/View;->mRight:I

    .line 117
    .line 118
    add-int/2addr v9, v13

    .line 119
    iget v13, v0, Landroid/view/View;->mLeft:I

    .line 120
    .line 121
    sub-int/2addr v9, v13

    .line 122
    iget v13, v0, Landroid/view/View;->mPaddingRight:I

    .line 123
    .line 124
    sub-int/2addr v9, v13

    .line 125
    iget v13, v0, Landroid/view/View;->mBottom:I

    .line 126
    .line 127
    add-int/2addr v11, v13

    .line 128
    iget v13, v0, Landroid/view/View;->mTop:I

    .line 129
    .line 130
    sub-int/2addr v11, v13

    .line 131
    iget v13, v0, Landroid/view/View;->mPaddingBottom:I

    .line 132
    .line 133
    sub-int/2addr v11, v13

    .line 134
    invoke-virtual {v1, v10, v12, v9, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    move v6, v7

    .line 139
    :goto_2
    iget v9, v0, Landroid/view/View;->mPrivateFlags:I

    .line 140
    .line 141
    and-int/lit8 v9, v9, -0x41

    .line 142
    .line 143
    iput v9, v0, Landroid/view/View;->mPrivateFlags:I

    .line 144
    .line 145
    iget v9, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 146
    .line 147
    and-int/lit8 v9, v9, -0x5

    .line 148
    .line 149
    iput v9, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawingTime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v9

    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertReorderBarrier()V

    .line 158
    .line 159
    .line 160
    :cond_6
    iget-object v11, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 161
    .line 162
    if-nez v11, :cond_7

    .line 163
    .line 164
    move v11, v7

    .line 165
    goto :goto_3

    .line 166
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    :goto_3
    if-eqz v11, :cond_8

    .line 171
    .line 172
    move v13, v7

    .line 173
    goto :goto_4

    .line 174
    :cond_8
    const/4 v13, -0x1

    .line 175
    :goto_4
    if-eqz v2, :cond_9

    .line 176
    .line 177
    const/4 v14, 0x0

    .line 178
    goto :goto_5

    .line 179
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    :goto_5
    if-nez v14, :cond_a

    .line 184
    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_a

    .line 190
    .line 191
    const/4 v15, 0x1

    .line 192
    goto :goto_6

    .line 193
    :cond_a
    move v15, v7

    .line 194
    :goto_6
    move/from16 v16, v13

    .line 195
    .line 196
    move v13, v7

    .line 197
    :goto_7
    if-ge v7, v3, :cond_11

    .line 198
    .line 199
    move/from16 v12, v16

    .line 200
    .line 201
    :goto_8
    if-ltz v12, :cond_e

    .line 202
    .line 203
    iget-object v8, v0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    check-cast v8, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-ne v8, v7, :cond_e

    .line 216
    .line 217
    iget-object v8, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    check-cast v8, Landroid/view/View;

    .line 224
    .line 225
    move/from16 v17, v6

    .line 226
    .line 227
    iget v6, v8, Landroid/view/View;->mViewFlags:I

    .line 228
    .line 229
    and-int/lit8 v6, v6, 0xc

    .line 230
    .line 231
    if-eqz v6, :cond_b

    .line 232
    .line 233
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    if-eqz v6, :cond_c

    .line 238
    .line 239
    :cond_b
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    or-int/2addr v6, v13

    .line 244
    move v13, v6

    .line 245
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 246
    .line 247
    if-lt v12, v11, :cond_d

    .line 248
    .line 249
    const/4 v12, -0x1

    .line 250
    :cond_d
    move/from16 v6, v17

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_e
    move/from16 v17, v6

    .line 254
    .line 255
    invoke-direct {v0, v3, v7, v15}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    invoke-static {v14, v4, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    iget v8, v6, Landroid/view/View;->mViewFlags:I

    .line 264
    .line 265
    and-int/lit8 v8, v8, 0xc

    .line 266
    .line 267
    if-eqz v8, :cond_f

    .line 268
    .line 269
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    if-eqz v8, :cond_10

    .line 274
    .line 275
    :cond_f
    invoke-virtual {v0, v1, v6, v9, v10}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    or-int/2addr v6, v13

    .line 280
    move v13, v6

    .line 281
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 282
    .line 283
    move/from16 v16, v12

    .line 284
    .line 285
    move/from16 v6, v17

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_11
    move/from16 v17, v6

    .line 289
    .line 290
    move/from16 v3, v16

    .line 291
    .line 292
    :cond_12
    if-ltz v3, :cond_15

    .line 293
    .line 294
    iget-object v4, v0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 295
    .line 296
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    check-cast v4, Landroid/view/View;

    .line 301
    .line 302
    iget v6, v4, Landroid/view/View;->mViewFlags:I

    .line 303
    .line 304
    and-int/lit8 v6, v6, 0xc

    .line 305
    .line 306
    if-eqz v6, :cond_13

    .line 307
    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    if-eqz v6, :cond_14

    .line 313
    .line 314
    :cond_13
    invoke-virtual {v0, v1, v4, v9, v10}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    or-int/2addr v4, v13

    .line 319
    move v13, v4

    .line 320
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 321
    .line 322
    if-lt v3, v11, :cond_12

    .line 323
    .line 324
    :cond_15
    if-eqz v14, :cond_16

    .line 325
    .line 326
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 327
    .line 328
    .line 329
    :cond_16
    iget-object v3, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 330
    .line 331
    if-eqz v3, :cond_17

    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    const/4 v6, 0x1

    .line 338
    sub-int/2addr v4, v6

    .line 339
    :goto_9
    if-ltz v4, :cond_17

    .line 340
    .line 341
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    check-cast v6, Landroid/view/View;

    .line 346
    .line 347
    invoke-virtual {v0, v1, v6, v9, v10}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    or-int/2addr v13, v6

    .line 352
    add-int/lit8 v4, v4, -0x1

    .line 353
    .line 354
    goto :goto_9

    .line 355
    :cond_17
    if-eqz v2, :cond_18

    .line 356
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->insertInorderBarrier()V

    .line 358
    .line 359
    .line 360
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->debugDraw()Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_19

    .line 365
    .line 366
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 367
    .line 368
    .line 369
    :cond_19
    if-eqz v5, :cond_1a

    .line 370
    .line 371
    move/from16 v6, v17

    .line 372
    .line 373
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 374
    .line 375
    .line 376
    :cond_1a
    iget v1, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 377
    .line 378
    and-int/lit8 v2, v1, 0x4

    .line 379
    .line 380
    const/4 v3, 0x4

    .line 381
    if-ne v2, v3, :cond_1b

    .line 382
    .line 383
    const/4 v2, 0x1

    .line 384
    invoke-virtual {v0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 385
    .line 386
    .line 387
    :cond_1b
    and-int/lit8 v2, v1, 0x10

    .line 388
    .line 389
    if-nez v2, :cond_1c

    .line 390
    .line 391
    and-int/lit16 v1, v1, 0x200

    .line 392
    .line 393
    if-nez v1, :cond_1c

    .line 394
    .line 395
    iget-object v1, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 396
    .line 397
    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_1c

    .line 402
    .line 403
    if-nez v13, :cond_1c

    .line 404
    .line 405
    iget v1, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 406
    .line 407
    or-int/lit16 v1, v1, 0x200

    .line 408
    .line 409
    iput v1, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 410
    .line 411
    new-instance v1, Landroid/view/ViewGroup$2;

    .line 412
    .line 413
    invoke-direct {v1, v0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 417
    .line 418
    .line 419
    :cond_1c
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 9

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v0, :cond_5

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/4 v6, 0x1

    .line 19
    if-nez v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    move v5, v6

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v5, v2

    .line 30
    :goto_1
    iget v7, v4, Landroid/view/View;->mViewFlags:I

    .line 31
    .line 32
    const/high16 v8, 0x400000

    .line 33
    .line 34
    and-int/2addr v7, v8

    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    move v7, v6

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v7, v2

    .line 40
    :goto_2
    if-nez v5, :cond_3

    .line 41
    .line 42
    if-eqz v7, :cond_4

    .line 43
    .line 44
    :cond_3
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    aput p1, v5, v2

    .line 49
    .line 50
    aput p2, v5, v6

    .line 51
    .line 52
    invoke-virtual {p0, v5, v4}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 53
    .line 54
    .line 55
    aget v7, v5, v2

    .line 56
    .line 57
    aget v5, v5, v6

    .line 58
    .line 59
    invoke-virtual {v4, v7, v5}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 60
    .line 61
    .line 62
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    and-int/2addr v1, v2

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    move v5, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    :goto_0
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 30
    .line 31
    add-int/lit8 v7, v0, -0x1

    .line 32
    .line 33
    :goto_1
    if-ltz v7, :cond_4

    .line 34
    .line 35
    invoke-direct {p0, v0, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    invoke-static {v3, v6, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-static {v8}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_3

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-virtual {p0, v1, v2, v8, v9}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-nez v9, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-direct {p0, p1, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_3

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    :cond_2
    return v4

    .line 69
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, -0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method public dispatchGetDisplayList()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_2

    .line 8
    .line 9
    aget-object v4, v1, v3

    .line 10
    .line 11
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    .line 12
    .line 13
    and-int/lit8 v5, v5, 0xc

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_1
    if-ge v2, v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/View;

    .line 55
    .line 56
    invoke-direct {p0, v3}, Landroid/view/ViewGroup;->recreateChildDisplayList(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 14
    .line 15
    .line 16
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    iput-object v5, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 20
    .line 21
    const/16 v8, 0xa

    .line 22
    .line 23
    if-nez v3, :cond_c

    .line 24
    .line 25
    if-eq v2, v8, :cond_c

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 36
    .line 37
    if-eqz v12, :cond_c

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    if-nez v13, :cond_0

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    if-eqz v14, :cond_0

    .line 50
    .line 51
    const/4 v14, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v14, 0x0

    .line 54
    :goto_0
    iget-object v15, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 55
    .line 56
    add-int/lit8 v16, v12, -0x1

    .line 57
    .line 58
    move-object/from16 v18, v1

    .line 59
    .line 60
    move-object v9, v5

    .line 61
    move/from16 v10, v16

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    :goto_1
    if-ltz v10, :cond_b

    .line 66
    .line 67
    invoke-direct {v0, v12, v10, v14}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v13, v15, v8}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-static {v8}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    .line 76
    .line 77
    .line 78
    move-result v19

    .line 79
    if-eqz v19, :cond_a

    .line 80
    .line 81
    invoke-virtual {v0, v3, v11, v8, v5}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    .line 82
    .line 83
    .line 84
    move-result v19

    .line 85
    if-nez v19, :cond_1

    .line 86
    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_1
    move-object v7, v4

    .line 90
    move-object v6, v5

    .line 91
    :goto_2
    if-nez v7, :cond_2

    .line 92
    .line 93
    invoke-static {v8}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const/4 v6, 0x0

    .line 98
    goto :goto_4

    .line 99
    :cond_2
    iget-object v5, v7, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 100
    .line 101
    if-ne v5, v8, :cond_9

    .line 102
    .line 103
    if-eqz v6, :cond_3

    .line 104
    .line 105
    iget-object v5, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 106
    .line 107
    iput-object v5, v6, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    iget-object v4, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 111
    .line 112
    :goto_3
    const/4 v5, 0x0

    .line 113
    iput-object v5, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 114
    .line 115
    const/4 v6, 0x1

    .line 116
    :goto_4
    if-eqz v9, :cond_4

    .line 117
    .line 118
    iput-object v7, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_4
    iput-object v7, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 122
    .line 123
    :goto_5
    const/16 v9, 0x9

    .line 124
    .line 125
    if-ne v2, v9, :cond_5

    .line 126
    .line 127
    if-nez v6, :cond_7

    .line 128
    .line 129
    invoke-direct {v0, v1, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    or-int v6, v17, v6

    .line 134
    .line 135
    :goto_6
    move/from16 v17, v6

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_5
    const/4 v5, 0x7

    .line 139
    if-ne v2, v5, :cond_7

    .line 140
    .line 141
    if-nez v6, :cond_6

    .line 142
    .line 143
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v5, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    or-int v6, v17, v6

    .line 155
    .line 156
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, v5, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    or-int/2addr v6, v8

    .line 164
    move-object/from16 v18, v5

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_6
    invoke-direct {v0, v1, v8}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    or-int v5, v17, v5

    .line 172
    .line 173
    move/from16 v17, v5

    .line 174
    .line 175
    :cond_7
    :goto_7
    if-eqz v17, :cond_8

    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_8
    move-object v9, v7

    .line 179
    goto :goto_8

    .line 180
    :cond_9
    iget-object v5, v7, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 181
    .line 182
    move-object v6, v7

    .line 183
    move-object v7, v5

    .line 184
    const/4 v5, 0x0

    .line 185
    goto :goto_2

    .line 186
    :cond_a
    :goto_8
    add-int/lit8 v10, v10, -0x1

    .line 187
    .line 188
    const/4 v5, 0x0

    .line 189
    const/16 v8, 0xa

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_b
    :goto_9
    if-eqz v13, :cond_d

    .line 193
    .line 194
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 195
    .line 196
    .line 197
    goto :goto_a

    .line 198
    :cond_c
    move-object/from16 v18, v1

    .line 199
    .line 200
    const/16 v17, 0x0

    .line 201
    .line 202
    :cond_d
    :goto_a
    if-eqz v4, :cond_10

    .line 203
    .line 204
    iget-object v3, v4, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 205
    .line 206
    const/16 v5, 0xa

    .line 207
    .line 208
    if-ne v2, v5, :cond_e

    .line 209
    .line 210
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    or-int v3, v17, v3

    .line 215
    .line 216
    move/from16 v17, v3

    .line 217
    .line 218
    const/16 v6, 0xa

    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_e
    const/4 v5, 0x7

    .line 222
    if-ne v2, v5, :cond_f

    .line 223
    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    const/4 v6, 0x1

    .line 229
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setHoverExitPending(Z)V

    .line 236
    .line 237
    .line 238
    :cond_f
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    const/16 v6, 0xa

    .line 243
    .line 244
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 245
    .line 246
    .line 247
    invoke-direct {v0, v5, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 251
    .line 252
    .line 253
    move-object/from16 v18, v5

    .line 254
    .line 255
    :goto_b
    iget-object v3, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 258
    .line 259
    .line 260
    move-object v4, v3

    .line 261
    goto :goto_a

    .line 262
    :cond_10
    const/16 v6, 0xa

    .line 263
    .line 264
    if-nez v17, :cond_11

    .line 265
    .line 266
    if-eq v2, v6, :cond_11

    .line 267
    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isHoverExitPending()Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-nez v3, :cond_11

    .line 273
    .line 274
    const/4 v6, 0x1

    .line 275
    goto :goto_c

    .line 276
    :cond_11
    const/4 v6, 0x0

    .line 277
    :goto_c
    iget-boolean v3, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 278
    .line 279
    if-ne v6, v3, :cond_13

    .line 280
    .line 281
    if-eqz v6, :cond_12

    .line 282
    .line 283
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    or-int v17, v17, v2

    .line 288
    .line 289
    :cond_12
    :goto_d
    move-object/from16 v5, v18

    .line 290
    .line 291
    goto :goto_10

    .line 292
    :cond_13
    if-eqz v3, :cond_16

    .line 293
    .line 294
    const/16 v3, 0xa

    .line 295
    .line 296
    if-ne v2, v3, :cond_14

    .line 297
    .line 298
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    or-int v17, v17, v3

    .line 303
    .line 304
    :goto_e
    const/4 v3, 0x0

    .line 305
    goto :goto_f

    .line 306
    :cond_14
    const/4 v4, 0x7

    .line 307
    if-ne v2, v4, :cond_15

    .line 308
    .line 309
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 310
    .line 311
    .line 312
    :cond_15
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 317
    .line 318
    .line 319
    invoke-super {v0, v4}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 323
    .line 324
    .line 325
    move-object/from16 v18, v4

    .line 326
    .line 327
    goto :goto_e

    .line 328
    :goto_f
    iput-boolean v3, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 329
    .line 330
    :cond_16
    if-eqz v6, :cond_12

    .line 331
    .line 332
    const/16 v3, 0x9

    .line 333
    .line 334
    if-ne v2, v3, :cond_17

    .line 335
    .line 336
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    or-int v17, v17, v2

    .line 341
    .line 342
    const/4 v4, 0x1

    .line 343
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 344
    .line 345
    goto :goto_d

    .line 346
    :cond_17
    const/4 v4, 0x1

    .line 347
    const/4 v5, 0x7

    .line 348
    if-ne v2, v5, :cond_12

    .line 349
    .line 350
    invoke-static/range {v18 .. v18}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 355
    .line 356
    .line 357
    invoke-super {v0, v5}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    or-int v3, v17, v3

    .line 362
    .line 363
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 364
    .line 365
    .line 366
    invoke-super {v0, v5}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    or-int v17, v3, v2

    .line 371
    .line 372
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 373
    .line 374
    :goto_10
    if-eq v5, v1, :cond_18

    .line 375
    .line 376
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 377
    .line 378
    .line 379
    :cond_18
    return v17
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10
    .line 11
    const/16 v2, 0x12

    .line 12
    .line 13
    and-int/2addr v0, v2

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 28
    .line 29
    const/16 v3, 0x10

    .line 30
    .line 31
    and-int/2addr v2, v3

    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    and-int/2addr v1, v2

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    and-int/2addr v1, v2

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 8
    .line 9
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    aget-object v3, v1, v2

    .line 15
    .line 16
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    .line 32
    .line 33
    and-int/lit8 v5, v5, 0xc

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 44
    .line 45
    .line 46
    return v4

    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p2, "dispatchProvideAutofillStructure(): not laid out, ignoring "

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, " children of "

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "View"

    .line 46
    .line 47
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->getChildrenForAutofill(I)Landroid/view/ViewGroup$ChildListForAutoFill;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_0
    if-ge v2, v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAutoFill;->recycle()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isAssistBlocked()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_b

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 19
    .line 20
    if-gtz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    const-string p1, "dispatchProvideStructure(): not laid out, ignoring "

    .line 30
    .line 31
    const-string v1, " children of "

    .line 32
    .line 33
    invoke-static {p1, v0, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "View"

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    move v4, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move v4, v2

    .line 74
    :goto_0
    move v5, v2

    .line 75
    :goto_1
    if-ge v5, v0, :cond_a

    .line 76
    .line 77
    :try_start_0
    invoke-direct {p0, v0, v5, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 78
    .line 79
    .line 80
    move-result v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :catch_0
    move-exception v4

    .line 84
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 91
    .line 92
    const/16 v7, 0x17

    .line 93
    .line 94
    if-ge v6, v7, :cond_9

    .line 95
    .line 96
    const-string v6, "Bad getChildDrawingOrder while collecting assist @ "

    .line 97
    .line 98
    const-string v7, " of "

    .line 99
    .line 100
    invoke-static {v6, v5, v7, v0}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v7, "ViewGroup"

    .line 105
    .line 106
    invoke-static {v7, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    if-lez v5, :cond_8

    .line 110
    .line 111
    new-array v1, v0, [I

    .line 112
    .line 113
    new-instance v4, Landroid/util/SparseBooleanArray;

    .line 114
    .line 115
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 116
    .line 117
    .line 118
    move v6, v2

    .line 119
    :goto_2
    if-ge v6, v5, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0, v0, v6}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    aput v7, v1, v6

    .line 126
    .line 127
    invoke-virtual {v4, v7, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move v7, v2

    .line 134
    move v6, v5

    .line 135
    :goto_3
    if-ge v6, v0, :cond_6

    .line 136
    .line 137
    :goto_4
    invoke-virtual {v4, v7, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_5

    .line 142
    .line 143
    add-int/lit8 v7, v7, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    aput v7, v1, v6

    .line 147
    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    add-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .line 157
    .line 158
    move v6, v2

    .line 159
    :goto_5
    if-ge v6, v0, :cond_7

    .line 160
    .line 161
    aget v7, v1, v6

    .line 162
    .line 163
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 164
    .line 165
    aget-object v7, v8, v7

    .line 166
    .line 167
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    add-int/lit8 v6, v6, 0x1

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_7
    move-object v1, v4

    .line 174
    move v6, v5

    .line 175
    move v4, v2

    .line 176
    goto :goto_6

    .line 177
    :cond_8
    move v4, v2

    .line 178
    move v6, v5

    .line 179
    :goto_6
    iget-object v7, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 180
    .line 181
    invoke-static {v1, v7, v6}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {p1, v5}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v6, v7}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v5, v5, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_9
    throw v4

    .line 196
    :cond_a
    if-eqz v1, :cond_b

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 199
    .line 200
    .line 201
    :cond_b
    :goto_7
    return-void
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "dispatchRestoreInstanceState count: "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " is null, this: "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "ViewGroup"

    .line 38
    .line 39
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 44
    .line 45
    const/high16 v5, 0x20000000

    .line 46
    .line 47
    and-int/2addr v4, v5

    .line 48
    if-eq v4, v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 14
    .line 15
    const/high16 v5, 0x20000000

    .line 16
    .line 17
    and-int/2addr v4, v5

    .line 18
    if-eq v4, v5, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public dispatchScreenStateChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public dispatchSetPressed(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    iput-object v2, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 7
    iput-boolean v4, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    :cond_2
    :goto_0
    return v4

    .line 8
    :cond_3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v5

    goto :goto_1

    :cond_4
    move v9, v4

    .line 13
    :goto_1
    iget-object v10, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v11, v1, -0x1

    :goto_2
    if-ltz v11, :cond_7

    .line 14
    invoke-direct {p0, v1, v11, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    move-result v12

    .line 15
    invoke-static {v8, v10, v12}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    .line 16
    invoke-static {v12}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 17
    invoke-virtual {p0, v6, v7, v12, v2}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-direct {p0, p1, v12}, Landroid/view/ViewGroup;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object v2, v12

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    .line 19
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 20
    :cond_8
    iget-object v1, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eq v1, v2, :cond_a

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 22
    iget-object v1, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 24
    :cond_9
    iput-object v2, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    .line 25
    :cond_a
    iget-object v1, p0, Landroid/view/ViewGroup;->mTooltipHoverTarget:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 26
    iget-boolean v1, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    if-eqz v1, :cond_b

    .line 27
    iput-boolean v4, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    .line 28
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 29
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_b
    return v5

    .line 31
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewGroup;->mTooltipHoveredSelf:Z

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isAccessibilityFocusedViewOrHost()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2b

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    and-int/lit16 v5, v2, 0xff

    .line 40
    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 44
    .line 45
    .line 46
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 47
    .line 48
    .line 49
    :cond_2
    if-eqz v5, :cond_4

    .line 50
    .line 51
    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move v6, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    :goto_0
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 59
    .line 60
    const/high16 v7, 0x80000

    .line 61
    .line 62
    and-int/2addr v6, v7

    .line 63
    if-eqz v6, :cond_5

    .line 64
    .line 65
    move v6, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move v6, v4

    .line 68
    :goto_1
    if-nez v6, :cond_6

    .line 69
    .line 70
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    move v6, v4

    .line 79
    :goto_2
    if-nez v6, :cond_7

    .line 80
    .line 81
    iget-object v2, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 82
    .line 83
    if-eqz v2, :cond_8

    .line 84
    .line 85
    :cond_7
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 86
    .line 87
    .line 88
    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_a

    .line 93
    .line 94
    const/4 v2, 0x3

    .line 95
    if-ne v5, v2, :cond_9

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_9
    move v2, v4

    .line 99
    goto :goto_4

    .line 100
    :cond_a
    :goto_3
    move v2, v3

    .line 101
    :goto_4
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 102
    .line 103
    const/high16 v8, 0x200000

    .line 104
    .line 105
    and-int/2addr v7, v8

    .line 106
    if-eqz v7, :cond_b

    .line 107
    .line 108
    move v7, v3

    .line 109
    goto :goto_5

    .line 110
    :cond_b
    move v7, v4

    .line 111
    :goto_5
    const/4 v8, 0x7

    .line 112
    if-nez v2, :cond_1f

    .line 113
    .line 114
    if-nez v6, :cond_1f

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_c

    .line 121
    .line 122
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->findChildWithAccessibilityFocus()Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    goto :goto_6

    .line 127
    :cond_c
    const/4 v9, 0x0

    .line 128
    :goto_6
    if-eqz v5, :cond_e

    .line 129
    .line 130
    if-eqz v7, :cond_d

    .line 131
    .line 132
    const/4 v10, 0x5

    .line 133
    if-eq v5, v10, :cond_e

    .line 134
    .line 135
    :cond_d
    if-ne v5, v8, :cond_1f

    .line 136
    .line 137
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v7, :cond_f

    .line 142
    .line 143
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    shl-int v10, v3, v10

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_f
    const/4 v10, -0x1

    .line 151
    :goto_7
    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 152
    .line 153
    .line 154
    iget v11, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 155
    .line 156
    if-eqz v11, :cond_1b

    .line 157
    .line 158
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    if-nez v13, :cond_10

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    if-eqz v14, :cond_10

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_10
    move v3, v4

    .line 180
    :goto_8
    iget-object v4, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 181
    .line 182
    add-int/lit8 v14, v11, -0x1

    .line 183
    .line 184
    const/4 v15, 0x0

    .line 185
    move/from16 v16, v14

    .line 186
    .line 187
    :goto_9
    if-ltz v14, :cond_1a

    .line 188
    .line 189
    move-object/from16 v17, v15

    .line 190
    .line 191
    invoke-direct {v0, v11, v14, v3}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 192
    .line 193
    .line 194
    move-result v15

    .line 195
    move/from16 v18, v3

    .line 196
    .line 197
    invoke-static {v13, v4, v15}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-eqz v9, :cond_12

    .line 202
    .line 203
    if-eq v9, v3, :cond_11

    .line 204
    .line 205
    move/from16 v20, v8

    .line 206
    .line 207
    move-object/from16 v15, v17

    .line 208
    .line 209
    goto/16 :goto_e

    .line 210
    .line 211
    :cond_11
    const/4 v9, 0x0

    .line 212
    move/from16 v14, v16

    .line 213
    .line 214
    :cond_12
    invoke-static {v3}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    .line 215
    .line 216
    .line 217
    move-result v19

    .line 218
    if-eqz v19, :cond_19

    .line 219
    .line 220
    move-object/from16 v19, v9

    .line 221
    .line 222
    const/4 v9, 0x0

    .line 223
    invoke-virtual {v0, v12, v8, v3, v9}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-nez v9, :cond_13

    .line 228
    .line 229
    move/from16 v20, v8

    .line 230
    .line 231
    goto :goto_c

    .line 232
    :cond_13
    invoke-direct {v0, v3}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    if-eqz v9, :cond_14

    .line 237
    .line 238
    iget v3, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 239
    .line 240
    or-int/2addr v3, v10

    .line 241
    iput v3, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 242
    .line 243
    const/4 v3, 0x0

    .line 244
    const/4 v4, 0x0

    .line 245
    move-object v15, v9

    .line 246
    goto :goto_f

    .line 247
    :cond_14
    invoke-static {v3}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 248
    .line 249
    .line 250
    move/from16 v20, v8

    .line 251
    .line 252
    const/4 v8, 0x0

    .line 253
    invoke-direct {v0, v1, v8, v3, v10}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-eqz v8, :cond_18

    .line 258
    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 260
    .line 261
    .line 262
    move-result-wide v8

    .line 263
    iput-wide v8, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 264
    .line 265
    if-eqz v13, :cond_16

    .line 266
    .line 267
    const/4 v8, 0x0

    .line 268
    :goto_a
    if-ge v8, v11, :cond_17

    .line 269
    .line 270
    aget-object v9, v4, v15

    .line 271
    .line 272
    iget-object v12, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 273
    .line 274
    aget-object v12, v12, v8

    .line 275
    .line 276
    if-ne v9, v12, :cond_15

    .line 277
    .line 278
    iput v8, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_15
    add-int/lit8 v8, v8, 0x1

    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_16
    iput v15, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 285
    .line 286
    :cond_17
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    iput v4, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 291
    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    iput v4, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 297
    .line 298
    invoke-direct {v0, v3, v10}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    .line 299
    .line 300
    .line 301
    move-result-object v15

    .line 302
    const/4 v3, 0x0

    .line 303
    const/4 v4, 0x1

    .line 304
    goto :goto_f

    .line 305
    :cond_18
    const/4 v3, 0x0

    .line 306
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 307
    .line 308
    .line 309
    move-object v15, v9

    .line 310
    goto :goto_d

    .line 311
    :cond_19
    move/from16 v20, v8

    .line 312
    .line 313
    move-object/from16 v19, v9

    .line 314
    .line 315
    :goto_c
    const/4 v3, 0x0

    .line 316
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 317
    .line 318
    .line 319
    move-object/from16 v15, v17

    .line 320
    .line 321
    :goto_d
    move-object/from16 v9, v19

    .line 322
    .line 323
    :goto_e
    add-int/lit8 v14, v14, -0x1

    .line 324
    .line 325
    move/from16 v3, v18

    .line 326
    .line 327
    move/from16 v8, v20

    .line 328
    .line 329
    goto/16 :goto_9

    .line 330
    .line 331
    :cond_1a
    move-object/from16 v17, v15

    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    move v4, v3

    .line 335
    :goto_f
    if-eqz v13, :cond_1c

    .line 336
    .line 337
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 338
    .line 339
    .line 340
    goto :goto_10

    .line 341
    :cond_1b
    const/4 v15, 0x0

    .line 342
    move v3, v4

    .line 343
    :cond_1c
    :goto_10
    if-nez v15, :cond_1e

    .line 344
    .line 345
    iget-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 346
    .line 347
    if-eqz v8, :cond_1e

    .line 348
    .line 349
    :goto_11
    move-object v15, v8

    .line 350
    iget-object v8, v15, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 351
    .line 352
    if-eqz v8, :cond_1d

    .line 353
    .line 354
    goto :goto_11

    .line 355
    :cond_1d
    iget v8, v15, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 356
    .line 357
    or-int/2addr v8, v10

    .line 358
    iput v8, v15, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 359
    .line 360
    :cond_1e
    move/from16 v21, v4

    .line 361
    .line 362
    move v4, v3

    .line 363
    move/from16 v3, v21

    .line 364
    .line 365
    goto :goto_12

    .line 366
    :cond_1f
    const/4 v15, 0x0

    .line 367
    move v3, v4

    .line 368
    :goto_12
    iget-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 369
    .line 370
    if-nez v8, :cond_20

    .line 371
    .line 372
    const/4 v3, -0x1

    .line 373
    const/4 v4, 0x0

    .line 374
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    move v4, v3

    .line 379
    goto/16 :goto_19

    .line 380
    .line 381
    :cond_20
    const/4 v9, 0x0

    .line 382
    move v10, v4

    .line 383
    :goto_13
    if-eqz v8, :cond_28

    .line 384
    .line 385
    iget-object v11, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 386
    .line 387
    if-eqz v11, :cond_28

    .line 388
    .line 389
    iget-object v11, v8, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 390
    .line 391
    if-eqz v3, :cond_21

    .line 392
    .line 393
    if-ne v8, v15, :cond_21

    .line 394
    .line 395
    const/4 v10, 0x1

    .line 396
    goto :goto_17

    .line 397
    :cond_21
    iget-object v12, v8, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 398
    .line 399
    if-nez v12, :cond_22

    .line 400
    .line 401
    const-string v9, "Current action is :"

    .line 402
    .line 403
    const-string v12, ", Check TouchTarget: mFirstTouchTarget:"

    .line 404
    .line 405
    invoke-static {v9, v5, v12}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    iget-object v12, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 410
    .line 411
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v12, ", target:"

    .line 415
    .line 416
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v12, ", next:"

    .line 423
    .line 424
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v12, ", mFirstTouchTarget child: "

    .line 431
    .line 432
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    iget-object v12, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 436
    .line 437
    iget-object v12, v12, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 438
    .line 439
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    const-string v12, "ViewGroup"

    .line 447
    .line 448
    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    new-instance v9, Ljava/lang/Throwable;

    .line 452
    .line 453
    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v9}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 457
    .line 458
    .line 459
    const-string v13, "Throw"

    .line 460
    .line 461
    invoke-static {v12, v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .line 463
    .line 464
    goto :goto_17

    .line 465
    :cond_22
    invoke-static {v12}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 466
    .line 467
    .line 468
    move-result v12

    .line 469
    if-nez v12, :cond_24

    .line 470
    .line 471
    if-eqz v6, :cond_23

    .line 472
    .line 473
    goto :goto_14

    .line 474
    :cond_23
    move v12, v4

    .line 475
    goto :goto_15

    .line 476
    :cond_24
    :goto_14
    const/4 v12, 0x1

    .line 477
    :goto_15
    iget-object v13, v8, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 478
    .line 479
    iget v14, v8, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 480
    .line 481
    invoke-direct {v0, v1, v12, v13, v14}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 482
    .line 483
    .line 484
    move-result v13

    .line 485
    if-eqz v13, :cond_25

    .line 486
    .line 487
    const/4 v10, 0x1

    .line 488
    :cond_25
    if-eqz v12, :cond_27

    .line 489
    .line 490
    if-nez v9, :cond_26

    .line 491
    .line 492
    iput-object v11, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 493
    .line 494
    goto :goto_16

    .line 495
    :cond_26
    iput-object v11, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 496
    .line 497
    :goto_16
    invoke-virtual {v8}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 498
    .line 499
    .line 500
    goto :goto_18

    .line 501
    :cond_27
    :goto_17
    move-object v9, v8

    .line 502
    :goto_18
    move-object v8, v11

    .line 503
    goto :goto_13

    .line 504
    :cond_28
    move v4, v10

    .line 505
    :goto_19
    if-nez v2, :cond_2a

    .line 506
    .line 507
    const/4 v2, 0x1

    .line 508
    if-eq v5, v2, :cond_2a

    .line 509
    .line 510
    const/4 v3, 0x7

    .line 511
    if-ne v5, v3, :cond_29

    .line 512
    .line 513
    goto :goto_1a

    .line 514
    :cond_29
    if-eqz v7, :cond_2b

    .line 515
    .line 516
    const/4 v3, 0x6

    .line 517
    if-ne v5, v3, :cond_2b

    .line 518
    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 524
    .line 525
    .line 526
    move-result v3

    .line 527
    shl-int/2addr v2, v3

    .line 528
    invoke-direct {v0, v2}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 529
    .line 530
    .line 531
    goto :goto_1b

    .line 532
    :cond_2a
    :goto_1a
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 533
    .line 534
    .line 535
    :cond_2b
    :goto_1b
    if-nez v4, :cond_2c

    .line 536
    .line 537
    iget-object v2, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 538
    .line 539
    if-eqz v2, :cond_2c

    .line 540
    .line 541
    const/4 v3, 0x1

    .line 542
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 543
    .line 544
    .line 545
    :cond_2c
    return v4
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10
    .line 11
    const/16 v2, 0x12

    .line 12
    .line 13
    and-int/2addr v0, v2

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 28
    .line 29
    const/16 v3, 0x10

    .line 30
    .line 31
    and-int/2addr v2, v3

    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public dispatchViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public dispatchViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public dispatchVisibilityAggregated(Z)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6
    .line 7
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    aget-object v3, v1, v2

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return p1
.end method

.method public dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5
    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    and-int/2addr v1, v0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0x2000

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 16
    .line 17
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_2

    .line 21
    .line 22
    aget-object v3, v0, v2

    .line 23
    .line 24
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 25
    .line 26
    const/high16 v5, 0x400000

    .line 27
    .line 28
    and-int/2addr v4, v5

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2
    return-void
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "focus:descendantFocusability"

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "drawing:clipChildren"

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "drawing:clipToPadding"

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v0, "drawing:childrenDrawingOrderEnabled"

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    const-string v0, "drawing:persistentDrawingCache"

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPersistentDrawingCache()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const-string v1, "meta:__childCount__"

    .line 54
    .line 55
    int-to-short v2, v0

    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;S)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "meta:__child__"

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 50
    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    aget-object v2, v1, v0

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->canAcceptDrag()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p1}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 17
    .line 18
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v0, :cond_3

    .line 22
    .line 23
    aget-object v4, v2, v3

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    return-object v4

    .line 32
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    return-object v1
.end method

.method public findViewByAutofillIdTraversal(I)Landroid/view/View;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9
    .line 10
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_2

    .line 14
    .line 15
    aget-object v3, v1, v2

    .line 16
    .line 17
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0}, Landroid/text/format/b;->y(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9
    .line 10
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    if-eq v3, p2, :cond_1

    .line 18
    .line 19
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    .line 20
    .line 21
    and-int/lit8 v4, v4, 0x8

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public findViewTraversal(I)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mID:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    .line 16
    .line 17
    and-int/lit8 v4, v4, 0x8

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 13
    .line 14
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    .line 22
    .line 23
    and-int/lit8 v4, v4, 0x8

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 14
    .line 15
    and-int/lit8 v4, v4, 0xc

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    .line 20
    .line 21
    and-int/lit8 v4, v4, 0x8

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 25
    .line 26
    or-int/lit8 v0, v0, 0x4

    .line 27
    .line 28
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 42
    .line 43
    const/high16 v0, 0x10000

    .line 44
    .line 45
    and-int/2addr p2, v0

    .line 46
    if-ne p2, v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 49
    .line 50
    .line 51
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 52
    .line 53
    const v0, -0x10001

    .line 54
    .line 55
    .line 56
    and-int/2addr p2, v0

    .line 57
    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 58
    .line 59
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 60
    .line 61
    or-int/lit8 p1, p1, 0x4

    .line 62
    .line 63
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isRootNamespace()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x60000

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0xc

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/high16 v1, 0x40000

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 18
    .line 19
    .line 20
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 21
    .line 22
    if-lez v3, :cond_6

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    move v5, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v5, v1

    .line 39
    :goto_1
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 40
    .line 41
    move v7, v1

    .line 42
    move v8, v2

    .line 43
    :goto_2
    if-ge v7, v3, :cond_5

    .line 44
    .line 45
    invoke-direct {p0, v3, v7, v5}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-static {v4, v6, v9}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    iget v10, v9, Landroid/view/View;->mViewFlags:I

    .line 54
    .line 55
    and-int/lit8 v10, v10, 0xc

    .line 56
    .line 57
    if-eqz v10, :cond_3

    .line 58
    .line 59
    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    if-eqz v10, :cond_4

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v9, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_4

    .line 70
    .line 71
    move v8, v1

    .line 72
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    if-eqz v4, :cond_7

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    move v8, v2

    .line 82
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 83
    .line 84
    if-eqz v8, :cond_9

    .line 85
    .line 86
    :cond_8
    move v1, v2

    .line 87
    :cond_9
    return v1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    return p2
.end method

.method public getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getChildTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/Transformation;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 13
    .line 14
    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result p1

    return p1
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z
    .locals 7

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    :cond_1
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    .line 7
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v3, v1

    int-to-float v4, v2

    .line 8
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 11
    :goto_1
    iget v5, p3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 12
    iget v5, p3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    aput v5, v4, v3

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 14
    aget p1, v4, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 15
    aget p1, v4, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 16
    :cond_3
    iget p1, p3, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 17
    iget p1, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 18
    :cond_4
    iget p1, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v1

    .line 19
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    .line 20
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_5

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    check-cast v2, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    int-to-float v2, p1

    int-to-float v3, v1

    const/4 v4, 0x0

    .line 22
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    :cond_6
    if-nez p4, :cond_7

    if-eqz v3, :cond_8

    .line 23
    :cond_7
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 24
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    :cond_8
    if-nez p4, :cond_9

    if-eqz v3, :cond_a

    .line 25
    :cond_9
    iget-object p1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_a

    .line 26
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    .line 27
    :cond_a
    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v2

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 29
    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p4, :cond_b

    if-eqz v3, :cond_d

    .line 30
    :cond_b
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_d

    .line 31
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    move-result v3

    goto :goto_2

    .line 34
    :cond_c
    invoke-interface {p1, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    :cond_d
    :goto_2
    return v3
.end method

.method public getClipChildren()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getClipToPadding()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDeepestFocusedChild()Landroid/view/View;
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    const/4 v1, 0x0

    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    return-object v1
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7
    .line 8
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 26
    .line 27
    return v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return v0
.end method

.method public getNumChildrenForAccessibility()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->includeForAccessibility()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getNumChildrenForAccessibility()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v1

    .line 33
    move v1, v2

    .line 34
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v1
.end method

.method public getOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    check-cast v0, Landroid/view/ViewGroupOverlay;

    return-object v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method public getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

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
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 26
    .line 27
    sub-int/2addr v0, v1

    .line 28
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 40
    .line 41
    sub-int/2addr v0, v1

    .line 42
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public getTouchscreenBlocksFocus()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTransientView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/View;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public getTransientViewCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTransientViewIndex(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 28
    return p1
.end method

.method public handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public hasDefaultFocus()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasDefaultFocus()Z

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

.method public hasFocus()Z
    .locals 1

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

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

.method public hasFocusable(ZZ)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xc

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getFocusable()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/high16 v0, 0x60000

    .line 32
    .line 33
    if-eq p1, v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_3
    return v1
.end method

.method public hasFocusableChild(Z)Z
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_3

    .line 8
    .line 9
    aget-object v4, v1, v3

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/view/View;->hasExplicitFocusable()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    return v2
.end method

.method public hasHoveredChild()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransientState()Z
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

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

.method public indexOfChild(Landroid/view/View;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-object v3, v1, v2

    .line 9
    .line 10
    if-ne v3, p1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, -0x1

    .line 17
    return p1
.end method

.method public internalSetPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 5
    .line 6
    iget p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 7
    .line 8
    or-int/2addr p1, p2

    .line 9
    iget p2, p0, Landroid/view/View;->mPaddingRight:I

    .line 10
    .line 11
    or-int/2addr p1, p2

    .line 12
    iget p2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 13
    .line 14
    or-int/2addr p1, p2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 18
    .line 19
    or-int/lit8 p1, p1, 0x20

    .line 20
    .line 21
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 25
    .line 26
    and-int/lit8 p1, p1, -0x21

    .line 27
    .line 28
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p1}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz v0, :cond_10

    .line 14
    .line 15
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0x40

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, v2

    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    move v5, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v5, v2

    .line 53
    :goto_1
    const/high16 v6, 0x200000

    .line 54
    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    const/high16 v5, 0x400000

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move v5, v6

    .line 61
    :goto_2
    iget v7, p1, Landroid/view/View;->mLayerType:I

    .line 62
    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 66
    .line 67
    const/high16 v8, -0x80000000

    .line 68
    .line 69
    or-int/2addr v7, v8

    .line 70
    const v8, -0x8001

    .line 71
    .line 72
    .line 73
    and-int/2addr v7, v8

    .line 74
    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 75
    .line 76
    :cond_4
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 77
    .line 78
    iget v8, p1, Landroid/view/View;->mLeft:I

    .line 79
    .line 80
    aput v8, v7, v2

    .line 81
    .line 82
    iget v2, p1, Landroid/view/View;->mTop:I

    .line 83
    .line 84
    aput v2, v7, v3

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 93
    .line 94
    and-int/lit16 v2, v2, 0x800

    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    :cond_5
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 99
    .line 100
    invoke-virtual {v2, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 101
    .line 102
    .line 103
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 104
    .line 105
    and-int/lit16 v8, v8, 0x800

    .line 106
    .line 107
    if-eqz v8, :cond_7

    .line 108
    .line 109
    iget-object v8, v0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 110
    .line 111
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_7

    .line 116
    .line 117
    iget-object p1, v0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 118
    .line 119
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {p1, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_6

    .line 131
    .line 132
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 133
    .line 134
    .line 135
    :cond_6
    move-object v4, p1

    .line 136
    :cond_7
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 137
    .line 138
    .line 139
    iget p1, v2, Landroid/graphics/RectF;->left:F

    .line 140
    .line 141
    float-to-double v8, p1

    .line 142
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    double-to-int p1, v8

    .line 147
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 148
    .line 149
    float-to-double v8, v4

    .line 150
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 151
    .line 152
    .line 153
    move-result-wide v8

    .line 154
    double-to-int v4, v8

    .line 155
    iget v8, v2, Landroid/graphics/RectF;->right:F

    .line 156
    .line 157
    float-to-double v8, v8

    .line 158
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v8

    .line 162
    double-to-int v8, v8

    .line 163
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 164
    .line 165
    float-to-double v9, v2

    .line 166
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 167
    .line 168
    .line 169
    move-result-wide v9

    .line 170
    double-to-int v2, v9

    .line 171
    invoke-virtual {p2, p1, v4, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    .line 173
    .line 174
    :cond_8
    move-object p1, p0

    .line 175
    :cond_9
    instance-of v2, p1, Landroid/view/View;

    .line 176
    .line 177
    if-eqz v2, :cond_a

    .line 178
    .line 179
    move-object v2, p1

    .line 180
    check-cast v2, Landroid/view/View;

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_a
    const/4 v2, 0x0

    .line 184
    :goto_3
    if-eqz v1, :cond_c

    .line 185
    .line 186
    if-eqz v2, :cond_b

    .line 187
    .line 188
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    .line 189
    .line 190
    or-int/lit8 v4, v4, 0x40

    .line 191
    .line 192
    iput v4, v2, Landroid/view/View;->mPrivateFlags:I

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_b
    instance-of v4, p1, Landroid/view/ViewRootImpl;

    .line 196
    .line 197
    if-eqz v4, :cond_c

    .line 198
    .line 199
    move-object v4, p1

    .line 200
    check-cast v4, Landroid/view/ViewRootImpl;

    .line 201
    .line 202
    iput-boolean v3, v4, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 203
    .line 204
    :cond_c
    :goto_4
    if-eqz v2, :cond_e

    .line 205
    .line 206
    iget v4, v2, Landroid/view/View;->mViewFlags:I

    .line 207
    .line 208
    and-int/lit16 v4, v4, 0x3000

    .line 209
    .line 210
    if-eqz v4, :cond_d

    .line 211
    .line 212
    invoke-virtual {v2}, Landroid/view/View;->getSolidColor()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-nez v4, :cond_d

    .line 217
    .line 218
    move v5, v6

    .line 219
    :cond_d
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    .line 220
    .line 221
    const/high16 v8, 0x600000

    .line 222
    .line 223
    and-int/2addr v8, v4

    .line 224
    if-eq v8, v6, :cond_e

    .line 225
    .line 226
    const v8, -0x600001

    .line 227
    .line 228
    .line 229
    and-int/2addr v4, v8

    .line 230
    or-int/2addr v4, v5

    .line 231
    iput v4, v2, Landroid/view/View;->mPrivateFlags:I

    .line 232
    .line 233
    :cond_e
    invoke-interface {p1, v7, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-eqz v2, :cond_f

    .line 238
    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-nez v4, :cond_f

    .line 248
    .line 249
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 250
    .line 251
    invoke-virtual {v4, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 255
    .line 256
    .line 257
    iget v2, v4, Landroid/graphics/RectF;->left:F

    .line 258
    .line 259
    float-to-double v8, v2

    .line 260
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 261
    .line 262
    .line 263
    move-result-wide v8

    .line 264
    double-to-int v2, v8

    .line 265
    iget v8, v4, Landroid/graphics/RectF;->top:F

    .line 266
    .line 267
    float-to-double v8, v8

    .line 268
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v8

    .line 272
    double-to-int v8, v8

    .line 273
    iget v9, v4, Landroid/graphics/RectF;->right:F

    .line 274
    .line 275
    float-to-double v9, v9

    .line 276
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 277
    .line 278
    .line 279
    move-result-wide v9

    .line 280
    double-to-int v9, v9

    .line 281
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 282
    .line 283
    float-to-double v10, v4

    .line 284
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 285
    .line 286
    .line 287
    move-result-wide v10

    .line 288
    double-to-int v4, v10

    .line 289
    invoke-virtual {p2, v2, v8, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    .line 291
    .line 292
    :cond_f
    if-nez p1, :cond_9

    .line 293
    .line 294
    :cond_10
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    const v1, 0x8020

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 10
    .line 11
    and-int/lit16 v1, v0, 0x90

    .line 12
    .line 13
    const/16 v2, 0x80

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    aget v0, p1, v4

    .line 20
    .line 21
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    aget v1, p1, v3

    .line 25
    .line 26
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 27
    .line 28
    sub-int/2addr v1, v2

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 33
    .line 34
    and-int/2addr v0, v3

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 38
    .line 39
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 40
    .line 41
    sub-int/2addr v0, v1

    .line 42
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 43
    .line 44
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 45
    .line 46
    sub-int/2addr v1, v2

    .line 47
    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 51
    .line 52
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 53
    .line 54
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 55
    .line 56
    and-int/2addr v2, v3

    .line 57
    if-ne v2, v3, :cond_1

    .line 58
    .line 59
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 60
    .line 61
    sub-int/2addr v2, v0

    .line 62
    iget v5, p0, Landroid/view/View;->mBottom:I

    .line 63
    .line 64
    sub-int/2addr v5, v1

    .line 65
    invoke-virtual {p2, v4, v4, v2, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 72
    .line 73
    .line 74
    :cond_1
    aput v0, p1, v4

    .line 75
    .line 76
    aput v1, p1, v3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    and-int/2addr v0, v3

    .line 80
    if-ne v0, v3, :cond_3

    .line 81
    .line 82
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 83
    .line 84
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 85
    .line 86
    sub-int/2addr v0, v1

    .line 87
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 88
    .line 89
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 90
    .line 91
    sub-int/2addr v1, v2

    .line 92
    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    iget v0, p0, Landroid/view/View;->mRight:I

    .line 97
    .line 98
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 99
    .line 100
    sub-int/2addr v0, v1

    .line 101
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 102
    .line 103
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 104
    .line 105
    sub-int/2addr v1, v2

    .line 106
    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iget p2, p0, Landroid/view/View;->mLeft:I

    .line 110
    .line 111
    aput p2, p1, v4

    .line 112
    .line 113
    iget p2, p0, Landroid/view/View;->mTop:I

    .line 114
    .line 115
    aput p2, p1, v3

    .line 116
    .line 117
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 118
    .line 119
    and-int/lit8 p1, p1, -0x21

    .line 120
    .line 121
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 122
    .line 123
    :goto_1
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 124
    .line 125
    const p2, -0x8001

    .line 126
    .line 127
    .line 128
    and-int/2addr p1, p2

    .line 129
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 130
    .line 131
    iget p2, p0, Landroid/view/View;->mLayerType:I

    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    const/high16 p2, -0x80000000

    .line 136
    .line 137
    or-int/2addr p1, p2

    .line 138
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 139
    .line 140
    :cond_4
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 141
    .line 142
    return-object p1

    .line 143
    :cond_5
    const/4 p1, 0x0

    .line 144
    return-object p1
.end method

.method public invalidateInheritedLayoutMode(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-eq v0, p1, :cond_1

    .line 7
    .line 8
    const/high16 v0, 0x800000

    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_0
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return-void
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutModeOptical()Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShowingContextMenuWithCoords()Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aput p1, v0, v1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    aput p2, v0, p1

    .line 10
    .line 11
    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 12
    .line 13
    .line 14
    aget p2, v0, v1

    .line 15
    .line 16
    aget v2, v0, p1

    .line 17
    .line 18
    invoke-virtual {p3, p2, v2}, Landroid/view/View;->pointInView(FF)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    if-eqz p4, :cond_0

    .line 25
    .line 26
    aget p3, v0, v1

    .line 27
    .line 28
    aget p1, v0, p1

    .line 29
    .line 30
    invoke-virtual {p4, p3, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return p2
.end method

.method public isTransitionGroup()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x2000000

    .line 4
    .line 5
    and-int/2addr v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/high16 v1, 0x1000000

    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    :cond_0
    return v2

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    .line 36
    .line 37
    if-eq v0, v1, :cond_3

    .line 38
    .line 39
    :cond_2
    move v2, v3

    .line 40
    :cond_3
    return v2
.end method

.method public isViewTransitioning(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5
    .line 6
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    .line 6
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 6
    .line 7
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    .line 12
    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 17
    .line 18
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    .line 23
    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 8
    .line 9
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    add-int/2addr v1, p3

    .line 19
    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 26
    .line 27
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 28
    .line 29
    add-int/2addr p3, v1

    .line 30
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    add-int/2addr p3, v1

    .line 33
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 34
    .line 35
    add-int/2addr p3, v1

    .line 36
    add-int/2addr p3, p5

    .line 37
    iget p5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public measureChildren(II)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-object v3, v1, v2

    .line 9
    .line 10
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    .line 11
    .line 12
    and-int/lit8 v4, v4, 0xc

    .line 13
    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    if-eq v4, v5, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public notifyChildOfDragStart(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/DragEvent;->mX:F

    .line 4
    .line 5
    iget v0, v0, Landroid/view/DragEvent;->mY:F

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/ViewGroup;->getTempPoint()[F

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput v1, v2, v3

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput v0, v2, v4

    .line 16
    .line 17
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 21
    .line 22
    aget v6, v2, v3

    .line 23
    .line 24
    iput v6, v5, Landroid/view/DragEvent;->mX:F

    .line 25
    .line 26
    aget v2, v2, v4

    .line 27
    .line 28
    iput v2, v5, Landroid/view/DragEvent;->mY:F

    .line 29
    .line 30
    invoke-virtual {p1, v5}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 35
    .line 36
    iput v1, v5, Landroid/view/DragEvent;->mX:F

    .line 37
    .line 38
    iput v0, v5, Landroid/view/DragEvent;->mY:F

    .line 39
    .line 40
    iput-boolean v3, v5, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    iget v0, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 56
    .line 57
    or-int/2addr v0, v4

    .line 58
    iput v0, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return v2
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    iget-object p2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string p3, " does not fully implement ViewParent"

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string p3, "View"

    .line 38
    .line 39
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v1, v0, Landroid/view/View;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    check-cast v0, Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-super {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v3, v0, :cond_1

    .line 9
    .line 10
    aget-object v5, v1, v3

    .line 11
    .line 12
    iget v6, v5, Landroid/view/View;->mTop:I

    .line 13
    .line 14
    add-int/2addr v6, p1

    .line 15
    iput v6, v5, Landroid/view/View;->mTop:I

    .line 16
    .line 17
    iget v6, v5, Landroid/view/View;->mBottom:I

    .line 18
    .line 19
    add-int/2addr v6, p1

    .line 20
    iput v6, v5, Landroid/view/View;->mBottom:I

    .line 21
    .line 22
    iget-object v5, v5, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 6

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    :goto_0
    if-eqz v0, :cond_4

    .line 8
    .line 9
    instance-of v2, v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    if-eq v0, p0, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    iget v3, v1, Landroid/view/View;->mLeft:I

    .line 19
    .line 20
    iget v4, v1, Landroid/view/View;->mScrollX:I

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iget v4, v1, Landroid/view/View;->mTop:I

    .line 24
    .line 25
    iget v1, v1, Landroid/view/View;->mScrollY:I

    .line 26
    .line 27
    sub-int/2addr v4, v1

    .line 28
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 29
    .line 30
    .line 31
    if-eqz p4, :cond_3

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, Landroid/view/View;

    .line 35
    .line 36
    iget v3, v1, Landroid/view/View;->mRight:I

    .line 37
    .line 38
    iget v4, v1, Landroid/view/View;->mLeft:I

    .line 39
    .line 40
    sub-int/2addr v3, v4

    .line 41
    iget v4, v1, Landroid/view/View;->mBottom:I

    .line 42
    .line 43
    iget v1, v1, Landroid/view/View;->mTop:I

    .line 44
    .line 45
    sub-int/2addr v4, v1

    .line 46
    invoke-virtual {p2, v2, v2, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-eqz p4, :cond_2

    .line 57
    .line 58
    move-object v3, v0

    .line 59
    check-cast v3, Landroid/view/View;

    .line 60
    .line 61
    iget v4, v3, Landroid/view/View;->mRight:I

    .line 62
    .line 63
    iget v5, v3, Landroid/view/View;->mLeft:I

    .line 64
    .line 65
    sub-int/2addr v4, v5

    .line 66
    iget v5, v3, Landroid/view/View;->mBottom:I

    .line 67
    .line 68
    iget v3, v3, Landroid/view/View;->mTop:I

    .line 69
    .line 70
    sub-int/2addr v5, v3

    .line 71
    invoke-virtual {p2, v2, v2, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget v2, v1, Landroid/view/View;->mScrollX:I

    .line 81
    .line 82
    iget v3, v1, Landroid/view/View;->mLeft:I

    .line 83
    .line 84
    sub-int/2addr v2, v3

    .line 85
    iget v3, v1, Landroid/view/View;->mScrollY:I

    .line 86
    .line 87
    iget v1, v1, Landroid/view/View;->mTop:I

    .line 88
    .line 89
    sub-int/2addr v3, v1

    .line 90
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    move-object v1, v0

    .line 94
    check-cast v1, Landroid/view/View;

    .line 95
    .line 96
    iget-object v0, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    if-ne v0, p0, :cond_6

    .line 100
    .line 101
    if-eqz p3, :cond_5

    .line 102
    .line 103
    iget p1, v1, Landroid/view/View;->mLeft:I

    .line 104
    .line 105
    iget p3, v1, Landroid/view/View;->mScrollX:I

    .line 106
    .line 107
    sub-int/2addr p1, p3

    .line 108
    iget p3, v1, Landroid/view/View;->mTop:I

    .line 109
    .line 110
    iget p4, v1, Landroid/view/View;->mScrollY:I

    .line 111
    .line 112
    sub-int/2addr p3, p4

    .line 113
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    iget p1, v1, Landroid/view/View;->mScrollX:I

    .line 118
    .line 119
    iget p3, v1, Landroid/view/View;->mLeft:I

    .line 120
    .line 121
    sub-int/2addr p1, p3

    .line 122
    iget p3, v1, Landroid/view/View;->mScrollY:I

    .line 123
    .line 124
    iget p4, v1, Landroid/view/View;->mTop:I

    .line 125
    .line 126
    sub-int/2addr p3, p4

    .line 127
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 132
    .line 133
    const-string p4, "parameter must be a descendant of this view"

    .line 134
    .line 135
    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v0, "descendant:"

    .line 141
    .line 142
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string p4, "ViewGroup"

    .line 153
    .line 154
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_8

    .line 162
    .line 163
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    if-eqz p2, :cond_7

    .line 171
    .line 172
    const/4 p1, -0x1

    .line 173
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_2
    return-void

    .line 177
    :cond_8
    throw p3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iget-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    new-instance p2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    if-nez p3, :cond_3

    .line 44
    .line 45
    iget-object p2, p0, Landroid/view/ViewGroup;->mCurrentDragStartEvent:Landroid/view/DragEvent;

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    iget-object p2, p0, Landroid/view/ViewGroup;->mChildrenInterestedInDrag:Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDragStart(Landroid/view/View;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v2, v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    array-length v4, v4

    .line 32
    add-int/2addr v3, v4

    .line 33
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    add-int/2addr p1, v3

    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_1
    if-ge v1, v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-static {p1, v2}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    return-object p1
.end method

.method public onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-static {}, Landroid/view/View;->getDebugPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v8

    .line 5
    const/high16 v0, -0x10000

    .line 6
    .line 7
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 11
    .line 12
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move v7, v6

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v9, 0x8

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-ge v7, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v2, v9, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget v4, v2, Landroid/graphics/Insets;->left:I

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget v5, v2, Landroid/graphics/Insets;->top:I

    .line 52
    .line 53
    add-int/2addr v4, v5

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    iget v9, v2, Landroid/graphics/Insets;->right:I

    .line 59
    .line 60
    sub-int/2addr v5, v9

    .line 61
    sub-int/2addr v5, v1

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 67
    .line 68
    sub-int/2addr v0, v2

    .line 69
    add-int/lit8 v9, v0, -0x1

    .line 70
    .line 71
    move-object v0, p1

    .line 72
    move-object v1, v8

    .line 73
    move v2, v3

    .line 74
    move v3, v4

    .line 75
    move v4, v5

    .line 76
    move v5, v9

    .line 77
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 78
    .line 79
    .line 80
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/16 v0, 0x3f

    .line 84
    .line 85
    const/16 v2, 0xff

    .line 86
    .line 87
    invoke-static {v0, v2, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 95
    .line 96
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    sget v2, Landroid/view/View;->DEBUG_CORNERS_COLOR:I

    .line 103
    .line 104
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v9}, Landroid/view/View;->dipsToPixels(I)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    invoke-virtual {p0, v1}, Landroid/view/View;->dipsToPixels(I)I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    move v12, v6

    .line 119
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-ge v12, v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eq v1, v9, :cond_2

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    move-object v0, p1

    .line 152
    move-object v5, v8

    .line 153
    move v6, v10

    .line 154
    move v7, v11

    .line 155
    invoke-static/range {v0 .. v7}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    .line 156
    .line 157
    .line 158
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    return-void
.end method

.method public onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    .line 3
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x40

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9
    .line 10
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    .line 11
    .line 12
    const v1, -0x600001

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    and-int/2addr p1, v1

    .line 19
    const/high16 v0, 0x200000

    .line 20
    .line 21
    or-int/2addr p1, v0

    .line 22
    const v0, -0x8001

    .line 23
    .line 24
    .line 25
    and-int/2addr p1, v0

    .line 26
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 27
    .line 28
    :cond_0
    iget p1, p0, Landroid/view/View;->mLayerType:I

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 34
    .line 35
    const/high16 p2, -0x7fe00000

    .line 36
    .line 37
    or-int/2addr p1, p2

    .line 38
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 39
    .line 40
    move-object p2, p0

    .line 41
    :cond_1
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, p0, p2}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildUnchecked(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const/16 v0, 0x2002

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v2, 0x7

    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    const/16 v2, 0x9

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->isOnScrollbar(FF)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x2002

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->isOnScrollbarThumb(FF)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    return v0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public abstract onLayout(ZIIII)V
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    and-int/lit8 v1, p1, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move v1, v0

    .line 10
    move v0, v2

    .line 11
    move v4, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    move v4, v1

    .line 17
    :goto_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 18
    .line 19
    :goto_1
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    aget-object v6, v5, v0

    .line 22
    .line 23
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    .line 24
    .line 25
    and-int/lit8 v7, v7, 0xc

    .line 26
    .line 27
    if-nez v7, :cond_1

    .line 28
    .line 29
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    add-int/2addr v0, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    return v2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 9

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->isOnScrollbarThumb(FF)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_7

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isDraggingScrollBar()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 23
    .line 24
    if-eqz v2, :cond_6

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v4, 0x0

    .line 41
    :goto_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 42
    .line 43
    add-int/lit8 v6, v2, -0x1

    .line 44
    .line 45
    :goto_1
    if-ltz v6, :cond_5

    .line 46
    .line 47
    invoke-direct {p0, v2, v6, v4}, Landroid/view/ViewGroup;->getAndVerifyPreorderedIndex(IIZ)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-static {v3, v5, v7}, Landroid/view/ViewGroup;->getAndVerifyPreorderedView(Ljava/util/ArrayList;[Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v7}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_4

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-direct {p0, p1, p2, v7}, Landroid/view/ViewGroup;->dispatchResolvePointerIcon(Landroid/view/MotionEvent;ILandroid/view/View;)Landroid/view/PointerIcon;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-object v7

    .line 81
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    if-eqz v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_7
    :goto_3
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const/16 p2, 0x3e8

    .line 97
    .line 98
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1
.end method

.method public onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/view/ViewGroup;->mNestedScrollAxes:I

    .line 6
    .line 7
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 10
    .line 11
    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 12
    .line 13
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    move v4, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v4, v2

    .line 21
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 22
    .line 23
    .line 24
    sub-int/2addr v0, v5

    .line 25
    move v6, v2

    .line 26
    :goto_1
    if-ltz v0, :cond_8

    .line 27
    .line 28
    aget-object v7, v1, v0

    .line 29
    .line 30
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 31
    .line 32
    if-eqz v8, :cond_2

    .line 33
    .line 34
    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 v8, 0x0

    .line 38
    if-ne v7, v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    move v6, v5

    .line 44
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    if-nez v9, :cond_5

    .line 58
    .line 59
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 60
    .line 61
    if-eqz v9, :cond_4

    .line 62
    .line 63
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_4

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    if-eqz v4, :cond_6

    .line 71
    .line 72
    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    :goto_2
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-eqz v9, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 86
    .line 87
    .line 88
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 92
    .line 93
    aput-object v8, v1, v0

    .line 94
    .line 95
    add-int/lit8 v0, v0, -0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 106
    .line 107
    if-eqz v0, :cond_a

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    :cond_a
    if-eqz v6, :cond_b

    .line 113
    .line 114
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_b

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :cond_b
    return-void
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearDefaultFocus(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->clearFocusedInCluster(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p2, :cond_5

    .line 45
    .line 46
    :cond_4
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz p2, :cond_6

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_6

    .line 55
    .line 56
    :cond_5
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    iget-object p2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 61
    .line 62
    if-eqz p2, :cond_7

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 65
    .line 66
    .line 67
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_8

    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 75
    .line 76
    .line 77
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchViewRemoved(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public removeTransientView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientViews:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransientIndices:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)Z

    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x60000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-super {p0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 14
    .line 15
    if-eq v0, p1, :cond_2

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 23
    .line 24
    :cond_2
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_3
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x80000

    .line 4
    .line 5
    and-int v2, v0, v1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const v1, -0x80001

    .line 22
    .line 23
    .line 24
    and-int/2addr v0, v1

    .line 25
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 26
    .line 27
    :goto_1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x20000

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/high16 v1, 0x40000

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/high16 v1, 0x60000

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string p2, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    .line 25
    .line 26
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    return v0

    .line 46
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_1
    return v0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4
    .line 5
    or-int/lit16 v0, v0, 0x200

    .line 6
    .line 7
    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 8
    .line 9
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public resetResolvedDrawables()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public resetSubtreeAccessibilityStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5
    .line 6
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public resolveDrawables()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->areDrawablesResolved()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method public resolveLayoutParams()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->isPaddingResolved()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method public resolveTextAlignment()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method public resolveTextDirection()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method public restoreDefaultFocus()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x60000

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 14
    .line 15
    iget v1, v0, Landroid/view/View;->mViewFlags:I

    .line 16
    .line 17
    and-int/lit8 v1, v1, 0xc

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public restoreFocusInCluster(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 20
    .line 21
    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocusNoRefocus(Z)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->restoreFocusInClusterInternal(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public restoreFocusNotInCluster()Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocusedInCluster:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->restoreFocusInCluster(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0xc

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/high16 v3, 0x60000

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-ne v0, v3, :cond_2

    .line 34
    .line 35
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_2
    const/high16 v3, 0x20000

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    if-ne v0, v3, :cond_3

    .line 44
    .line 45
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    return v5

    .line 52
    :cond_3
    move v3, v2

    .line 53
    :goto_0
    iget v6, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 54
    .line 55
    if-ge v3, v6, :cond_5

    .line 56
    .line 57
    iget-object v6, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 58
    .line 59
    aget-object v6, v6, v3

    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_4

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/view/View;->restoreFocusNotInCluster()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_4

    .line 72
    .line 73
    return v5

    .line 74
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    const/high16 v3, 0x40000

    .line 78
    .line 79
    if-ne v0, v3, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->hasFocusableChild(Z)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    invoke-super {p0, v1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    return v0

    .line 92
    :cond_6
    :goto_1
    return v2
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    .line 5
    or-int/lit16 p1, p1, 0x2000

    .line 6
    .line 7
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 11
    .line 12
    and-int/lit16 p1, p1, -0x2001

    .line 13
    .line 14
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 10
    .line 11
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setClipChildren(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

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
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 14
    .line 15
    .line 16
    :goto_1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 17
    .line 18
    if-ge v2, v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setDefaultFocus(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isFocusedByDefault()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mDefaultFocus:Landroid/view/View;

    .line 13
    .line 14
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15
    .line 16
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setDefaultFocus(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 3

    .line 1
    const/high16 v0, 0x20000

    .line 2
    .line 3
    const/high16 v1, 0x60000

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x40000

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 23
    .line 24
    const v2, -0x60001

    .line 25
    .line 26
    .line 27
    and-int/2addr v0, v2

    .line 28
    and-int/2addr p1, v1

    .line 29
    or-int/2addr p1, v0

    .line 30
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 31
    .line 32
    return-void
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1

    .line 3
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateInheritedLayoutMode(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    .line 5
    const/high16 v0, 0x200000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 12
    .line 13
    const v0, -0x200001

    .line 14
    .line 15
    .line 16
    and-int/2addr p1, v0

    .line 17
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    iput p1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return-void
.end method

.method public setStaticTransformationsEnabled(Z)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setTouchscreenBlocksFocus(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    .line 5
    const/high16 v0, 0x4000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDeepestFocusedChild()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x2

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 44
    .line 45
    const v0, -0x4000001

    .line 46
    .line 47
    .line 48
    and-int/2addr p1, v0

    .line 49
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public setTransitionGroup(Z)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x2000000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/high16 p1, 0x1000000

    .line 11
    .line 12
    or-int/2addr p1, v0

    .line 13
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const p1, -0x1000001

    .line 17
    .line 18
    .line 19
    and-int/2addr p1, v0

    .line 20
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public shouldBlockFocusForTouchscreen()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.hardware.touchscreen"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->findKeyboardNavigationCluster()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-ne v0, p0, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 3

    const v0, -0x20000001

    .line 3
    :try_start_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return v2

    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :catchall_0
    move-exception p1

    .line 7
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v0

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    const v1, -0x10000001

    .line 2
    :try_start_0
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v1

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-object p1

    :catchall_0
    move-exception p1

    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v1

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw p1

    .line 5
    :cond_0
    sget-object p1, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3

    .line 6
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    const v1, -0x8000001

    .line 7
    :try_start_0
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 10
    sget-object v1, Landroid/view/ViewGroup;->SENTINEL_ACTION_MODE:Landroid/view/ActionMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 11
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p2, v1

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    throw p1

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 13
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 14
    :catch_0
    iget-object p3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {p3, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public startLayoutAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    .line 3
    if-ne v0, p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public transformPointToViewLocal([FLandroid/view/View;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 5
    .line 6
    iget v3, p2, Landroid/view/View;->mLeft:I

    .line 7
    .line 8
    sub-int/2addr v2, v3

    .line 9
    int-to-float v2, v2

    .line 10
    add-float/2addr v1, v2

    .line 11
    aput v1, p1, v0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aget v1, p1, v0

    .line 15
    .line 16
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 17
    .line 18
    iget v3, p2, Landroid/view/View;->mTop:I

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    int-to-float v2, v2

    .line 22
    add-float/2addr v1, v2

    .line 23
    aput v1, p1, v0

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public unFocus(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->unFocus(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public updateLocalSystemUiVisibility(II)Z
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6
    .line 7
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    aget-object v4, v2, v3

    .line 13
    .line 14
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    or-int/2addr v0, v4

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Given view not a child of "

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "Invalid LayoutParams supplied to "

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
