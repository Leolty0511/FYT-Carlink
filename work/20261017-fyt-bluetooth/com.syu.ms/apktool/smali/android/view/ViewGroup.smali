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

.field public static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field public static DEBUG_DRAW:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field public static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field public static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field public static final FLAG_ANIMATION_DONE:I = 0x10

.field public static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field public static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field public static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field public static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field public static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET:I = 0x800000

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field public static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field public static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field public static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

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

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field public mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field public mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field public mGroupFlags:I
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
    .end annotation
.end field

.field private mHoveredSelf:Z

.field public mInvalidateRegion:Landroid/graphics/RectF;

.field public mInvalidationTransformation:Landroid/view/animation/Transformation;

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

.field public mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public mPersistentDrawingCache:I

.field public mSuppressLayout:Z

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

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    const/4 v0, 0x0

    .line 2
    sput v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    return-void

    :array_0
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 5
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 6
    iput p1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 7
    new-instance p1, Landroid/view/ViewGroup$3;

    invoke-direct {p1, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 8
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 11
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 13
    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 14
    iput v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 15
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 16
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 19
    iput p3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 20
    iput p3, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 p3, 0x0

    .line 21
    iput-boolean p3, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    .line 22
    iput-boolean p3, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 23
    iput p3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 24
    new-instance p3, Landroid/view/ViewGroup$3;

    invoke-direct {p3, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object p3, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 25
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method public static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p0
.end method

.method public static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    return p1
.end method

.method public static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    if-ne v2, v1, :cond_0

    add-int/lit8 p2, v2, 0xc

    .line 4
    new-array p2, p2, [Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5
    invoke-static {v0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 7
    :cond_0
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, p2

    goto :goto_1

    :cond_1
    if-ge p2, v1, :cond_4

    if-ne v2, v1, :cond_2

    add-int/lit8 v2, v2, 0xc

    .line 8
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 9
    invoke-static {v0, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v1, p2

    .line 12
    invoke-static {v0, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :goto_0
    aput-object p1, v0, p2

    .line 14
    iget p1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 15
    iget p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt p1, p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 16
    iput p1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    :cond_3
    :goto_1
    return-void

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " count="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object p1

    .line 2
    iget-object p2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object p2, p1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3
    iput-object p1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    return-object p1
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 4
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6
    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_2
    if-eqz p4, :cond_3

    .line 8
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-gez p2, :cond_4

    .line 10
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 11
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    if-eqz p4, :cond_5

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    goto :goto_1

    .line 13
    :cond_5
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 14
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 16
    :cond_6
    iget-object p2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 p3, 0x1

    const/high16 p4, 0x400000

    if-eqz p2, :cond_8

    .line 17
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, p4

    if-nez v0, :cond_8

    .line 18
    iget-boolean v0, p2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 20
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 21
    iget-boolean v1, p2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {p0, p3}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 23
    :cond_7
    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 24
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->resetRtlProperties()V

    .line 26
    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 27
    iget p2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr p2, p4

    if-ne p2, p4, :cond_a

    .line 28
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 p4, 0x10000

    or-int/2addr p2, p4

    iput p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 29
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 30
    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 31
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_c

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_c
    return-void

    .line 33
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    .line 3
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v0, 0x1002

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    move v0, v1

    .line 5
    :cond_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    iget-object v3, v2, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v3}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 7
    iget-object v3, v2, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v1, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 8
    iget-object v2, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v2, v0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 3
    iget-object v3, v0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    if-nez v1, :cond_0

    .line 4
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 5
    :cond_0
    iput-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    .line 8
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3
    iget-object v3, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v3, p1, :cond_1

    if-nez v1, :cond_0

    .line 4
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 5
    :cond_0
    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    .line 8
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearCachedLayoutMode()V
    .locals 1

    const/high16 v0, 0x800000

    .line 1
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    :cond_0
    return-void
.end method

.method private clearTouchTargets()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/view/ViewGroup;->DEBUG_DRAW:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

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

.method private dipsToPixels(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget v2, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    neg-float v0, v0

    neg-float v1, v1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_0
    return p2
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-nez p2, :cond_8

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result p2

    and-int/2addr p4, p2

    if-nez p4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-ne p4, p2, :cond_5

    if-eqz p3, :cond_3

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_1

    .line 6
    :cond_4
    iget p2, p0, Landroid/view/View;->mScrollX:I

    iget p4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    .line 7
    iget p4, p0, Landroid/view/View;->mScrollY:I

    iget v0, p3, Landroid/view/View;->mTop:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    .line 8
    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 9
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    neg-float p2, p2

    neg-float p4, p4

    .line 10
    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move p1, p3

    :goto_1
    return p1

    .line 11
    :cond_5
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p1

    :goto_2
    if-nez p3, :cond_6

    .line 12
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    goto :goto_3

    .line 13
    :cond_6
    iget p2, p0, Landroid/view/View;->mScrollX:I

    iget p4, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    .line 14
    iget p4, p0, Landroid/view/View;->mScrollY:I

    iget v0, p3, Landroid/view/View;->mTop:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    .line 15
    invoke-virtual {p1, p2, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 16
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result p2

    if-nez p2, :cond_7

    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 18
    :cond_7
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 19
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p2

    .line 20
    :cond_8
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    if-nez p3, :cond_9

    .line 21
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    goto :goto_5

    .line 22
    :cond_9
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 23
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return p2
.end method

.method private static drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V
    .locals 6

    add-int v4, p2, p4

    .line 1
    invoke-static {p5}, Landroid/view/ViewGroup;->sign(I)I

    move-result v0

    mul-int/2addr v0, p6

    add-int v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 2
    invoke-static {p4}, Landroid/view/ViewGroup;->sign(I)I

    move-result p4

    mul-int/2addr p6, p4

    add-int v4, p2, p6

    add-int v5, p3, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 3
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float p2, p2

    aput p2, v0, v1

    const/4 v1, 0x1

    int-to-float p3, p3

    .line 4
    aput p3, v0, v1

    const/4 v1, 0x2

    int-to-float p4, p4

    .line 5
    aput p4, v0, v1

    const/4 v1, 0x3

    .line 6
    aput p3, v0, v1

    const/4 v1, 0x4

    .line 7
    aput p4, v0, v1

    const/4 v1, 0x5

    .line 8
    aput p3, v0, v1

    const/4 v1, 0x6

    .line 9
    aput p4, v0, v1

    const/4 v1, 0x7

    int-to-float p5, p5

    .line 10
    aput p5, v0, v1

    const/16 v1, 0x8

    .line 11
    aput p4, v0, v1

    const/16 p4, 0x9

    .line 12
    aput p5, v0, p4

    const/16 p4, 0xa

    .line 13
    aput p2, v0, p4

    const/16 p4, 0xb

    .line 14
    aput p5, v0, p4

    const/16 p4, 0xc

    .line 15
    aput p2, v0, p4

    const/16 p4, 0xd

    .line 16
    aput p5, v0, p4

    const/16 p4, 0xe

    .line 17
    aput p2, v0, p4

    const/16 p2, 0xf

    .line 18
    aput p3, v0, p2

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private static drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V
    .locals 8

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p6

    move v5, p6

    move v6, p7

    .line 1
    invoke-static/range {v0 .. v6}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    neg-int v0, p6

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p4

    move v6, v0

    move v7, p7

    .line 2
    invoke-static/range {v1 .. v7}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    move v3, p3

    move v4, p2

    move v5, v0

    move v6, p6

    .line 3
    invoke-static/range {v1 .. v7}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    move v4, p4

    move v6, v0

    .line 4
    invoke-static/range {v1 .. v7}, Landroid/view/ViewGroup;->drawCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIII)V

    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 3
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return-void
.end method

.method private static fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    .locals 9

    sub-int v6, p1, p5

    sub-int v3, p2, p6

    add-int v7, p3, p7

    add-int v8, p4, p8

    move-object v0, p0

    move-object/from16 v1, p9

    move v2, v6

    move v4, v7

    move v5, p2

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move v3, p2

    move v4, p1

    move v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move v2, p3

    move v4, v7

    .line 3
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    move v2, v6

    move v3, p4

    move v5, v8

    .line 4
    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->fillRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

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

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_4

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    move p2, p0

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_7

    goto :goto_1

    :cond_3
    if-ltz p2, :cond_7

    goto :goto_0

    :cond_4
    if-ltz p2, :cond_5

    :goto_0
    move p1, v4

    goto :goto_3

    :cond_5
    if-ne p2, v2, :cond_6

    :goto_1
    move p2, p0

    move p1, v3

    goto :goto_3

    :cond_6
    if-ne p2, v1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    move p2, p1

    .line 4
    :goto_3
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .locals 2

    .line 1
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getLocalPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasBooleanFlag(I)Z
    .locals 1

    .line 1
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

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Li/a;->ViewGroup:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    goto :goto_1

    .line 5
    :pswitch_1
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 8
    :pswitch_3
    sget-object v3, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v2, v3, v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 9
    :pswitch_4
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 10
    :pswitch_5
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    :pswitch_6
    const/4 v3, 0x2

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 12
    :pswitch_7
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 13
    :pswitch_8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_0

    .line 14
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 15
    :pswitch_9
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 16
    :pswitch_a
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x2

    or-int/2addr v0, v1

    .line 4
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    .line 5
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    .line 6
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    .line 7
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 8
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 9
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_1
    const/high16 v0, 0x20000

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    .line 11
    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 13
    iput v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return-void
.end method

.method private notifyAnimationListener()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    .line 2
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_1

    const v1, -0x8001

    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 8
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 10
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
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

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v2, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 3
    iget v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int v4, v3, p1

    if-eqz v4, :cond_1

    not-int v4, p1

    and-int/2addr v3, v4

    .line 4
    iput v3, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    .line 5
    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 6
    :cond_0
    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 7
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 3

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

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->unFocus()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 9
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 10
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v2, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 15
    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 17
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 18
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result p1

    if-nez p1, :cond_7

    .line 21
    invoke-virtual {p0, p0}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    .line 22
    :cond_7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_8

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_8
    return-void
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int v5, p1, p2

    move v6, p1

    move v7, v3

    :goto_1
    if-ge v6, v5, :cond_8

    .line 4
    aget-object v8, v4, v6

    .line 5
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_1

    .line 6
    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    if-ne v8, v0, :cond_2

    .line 7
    invoke-virtual {v8}, Landroid/view/View;->unFocus()V

    move v7, v2

    .line 8
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 9
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 10
    :cond_3
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 11
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 16
    invoke-virtual {p0, v8, v3}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 17
    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 18
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 19
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    if-eqz v7, :cond_9

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result p1

    if-nez p1, :cond_9

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const v1, -0x4000001

    and-int/2addr v0, v1

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetTouchState()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

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

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw p1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
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

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 3
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 5
    aget-object v5, v3, v4

    .line 6
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 7
    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 9
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .line 1
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
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, v1, v2

    .line 5
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x1

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    .line 10
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
.end method

.method public attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0

    .line 1
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 4
    :cond_0
    iput p4, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 5
    iput p3, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-gez p2, :cond_0

    .line 2
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const p3, -0x600001

    and-int/2addr p2, p3

    const p3, -0x8001

    and-int/2addr p2, p3

    or-int/lit8 p2, p2, 0x20

    const/high16 p3, -0x80000000

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 6
    iget p2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr p2, p3

    iput p2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public canAnimate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result p1

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 3
    :cond_0
    iget p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result p2

    .line 5
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    if-eq p1, p2, :cond_1

    .line 6
    :try_start_0
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not fully implement ViewParent"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewGroup"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public cleanupLayoutState(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :goto_0
    return-void
.end method

.method public computeOpticalInsets()Landroid/graphics/Insets;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 2
    :goto_0
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v0, v5, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v5

    .line 6
    iget v6, v5, Landroid/graphics/Insets;->left:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7
    iget v6, v5, Landroid/graphics/Insets;->top:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8
    iget v6, v5, Landroid/graphics/Insets;->right:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9
    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 2
    new-array v2, v0, [I

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v2, v3

    .line 5
    aget v5, v2, v3

    if-nez v5, :cond_0

    const/4 v5, 0x4

    .line 6
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_3

    :goto_1
    if-ge v1, v0, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    aget p3, v2, v1

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public debug(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 2
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    const-string v1, "View"

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mFocused"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v3, v3, v2

    add-int/lit8 v4, p1, 0x1

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/View;->debug(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_3

    .line 14
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public detachAllViewsFromParent()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v2, v1, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    return-void
.end method

.method public dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    aget-object v3, v1, v2

    .line 7
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchCancelPendingInputEvents()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    .line 2
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5

    and-int/lit8 v0, p2, 0xc

    if-nez v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    .line 5
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchDetachedFromWindow()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    .line 4
    iput-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 5
    iget-object v2, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 7
    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 8
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 9
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 10

    .line 1
    iget v0, p1, Landroid/view/DragEvent;->mX:F

    .line 2
    iget v1, p1, Landroid/view/DragEvent;->mY:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 4
    invoke-direct {p0}, Landroid/view/ViewGroup;->getLocalPoint()Landroid/graphics/PointF;

    move-result-object v3

    .line 5
    iget v4, p1, Landroid/view/DragEvent;->mAction:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_9

    const/4 v8, 0x6

    const/4 v9, 0x2

    if-eq v4, v9, :cond_5

    const/4 v2, 0x3

    if-eq v4, v2, :cond_4

    const/4 v0, 0x4

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 8
    iget v1, v0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_3

    .line 11
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 13
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 14
    iget v2, v1, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v2, v2, -0x4

    iput v2, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 17
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    .line 19
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 20
    :cond_3
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    if-eqz v0, :cond_d

    move v6, v7

    goto/16 :goto_3

    .line 21
    :cond_4
    iget v2, p1, Landroid/view/DragEvent;->mX:F

    iget v4, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v2, v4, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 22
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 23
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, p1, Landroid/view/DragEvent;->mY:F

    .line 24
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    .line 25
    iput v0, p1, Landroid/view/DragEvent;->mX:F

    .line 26
    iput v1, p1, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_3

    .line 27
    :cond_5
    iget v4, p1, Landroid/view/DragEvent;->mX:F

    iget v5, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p0, v4, v5, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v4

    .line 28
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    if-eq v5, v4, :cond_8

    .line 29
    invoke-virtual {v2, v4}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 30
    iget v2, p1, Landroid/view/DragEvent;->mAction:I

    .line 31
    iget-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 32
    iput v8, p1, Landroid/view/DragEvent;->mAction:I

    .line 33
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 34
    iget v7, v5, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v7, v7, -0x3

    iput v7, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 35
    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    .line 36
    :cond_6
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    const/4 v5, 0x5

    .line 37
    iput v5, p1, Landroid/view/DragEvent;->mAction:I

    .line 38
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 39
    iget v5, v4, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v5, v9

    iput v5, v4, Landroid/view/View;->mPrivateFlags2:I

    .line 40
    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    .line 41
    :cond_7
    iput v2, p1, Landroid/view/DragEvent;->mAction:I

    :cond_8
    if-eqz v4, :cond_d

    .line 42
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/view/DragEvent;->mX:F

    .line 43
    iget v2, v3, Landroid/graphics/PointF;->y:F

    iput v2, p1, Landroid/view/DragEvent;->mY:F

    .line 44
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    .line 45
    iput v0, p1, Landroid/view/DragEvent;->mX:F

    .line 46
    iput v1, p1, Landroid/view/DragEvent;->mY:F

    goto :goto_3

    .line 47
    :cond_9
    iput-object v5, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 48
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 49
    iget-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    if-nez v0, :cond_a

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    goto :goto_1

    .line 51
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 52
    :goto_1
    iput-boolean v6, p0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 53
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 54
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    :goto_2
    if-ge v6, v0, :cond_c

    .line 55
    aget-object v2, v1, v6

    .line 56
    iget v3, v2, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v3, v3, -0x4

    iput v3, v2, Landroid/view/View;->mPrivateFlags2:I

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 58
    aget-object v2, v1, v6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 59
    iput-boolean v7, p0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 60
    :cond_c
    iget-boolean v6, p0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    :cond_d
    :goto_3
    if-nez v6, :cond_e

    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    :cond_e
    return v6
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v6, 0x40

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v6

    xor-int/2addr v6, v5

    move v7, v4

    :goto_1
    if-ge v7, v0, :cond_2

    .line 7
    aget-object v8, v1, v7

    .line 8
    iget v9, v8, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v9, v9, 0xc

    if-nez v9, :cond_1

    .line 9
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 10
    invoke-virtual {p0, v8, v9, v7, v0}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 11
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v8, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {v8, v5}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14
    :cond_2
    iget-object v6, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 15
    invoke-virtual {v6}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 16
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 17
    :cond_3
    invoke-virtual {v6}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 18
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x9

    iput v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x11

    .line 19
    iput v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    if-eqz v3, :cond_4

    const v3, 0x8000

    or-int/2addr v3, v7

    .line 20
    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 21
    :cond_4
    iget-object v3, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v6}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_5
    and-int/lit8 v3, v2, 0x22

    const/16 v6, 0x22

    if-ne v3, v6, :cond_6

    move v3, v5

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    if-eqz v3, :cond_7

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 24
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v8, v7

    iget v9, p0, Landroid/view/View;->mScrollY:I

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v10, v9

    iget v11, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v11

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v11

    iget v11, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v9, v11

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v9, v11

    invoke-virtual {p1, v8, v10, v7, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    :cond_7
    move v6, v4

    .line 25
    :goto_3
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v7, v7, -0x41

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 26
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v7

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_a

    move v2, v4

    :goto_4
    if-ge v4, v0, :cond_d

    .line 28
    aget-object v9, v1, v4

    .line 29
    iget v10, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 30
    :cond_8
    invoke-virtual {p0, p1, v9, v7, v8}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    or-int/2addr v2, v9

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    move v2, v4

    :goto_5
    if-ge v4, v0, :cond_d

    .line 31
    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v9

    aget-object v9, v1, v9

    .line 32
    iget v10, v9, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 33
    :cond_b
    invoke-virtual {p0, p1, v9, v7, v8}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    or-int/2addr v2, v9

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 34
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_6
    if-ltz v1, :cond_e

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 37
    invoke-virtual {p0, p1, v4, v7, v8}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 38
    :cond_e
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    :cond_f
    if-eqz v3, :cond_10

    .line 40
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 41
    :cond_10
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 42
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    :cond_11
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_12

    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_12

    .line 43
    iget-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {p1}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result p1

    if-eqz p1, :cond_12

    if-nez v2, :cond_12

    .line 44
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 45
    new-instance p1, Landroid/view/ViewGroup$1;

    invoke-direct {p1, p0}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    add-int/lit8 v5, v0, -0x1

    :goto_0
    if-ltz v5, :cond_3

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v5

    .line 7
    :goto_1
    aget-object v6, v1, v6

    .line 8
    invoke-static {v6}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-direct {p0, p1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchGetDisplayList()V
    .locals 10

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const v4, 0x7fffffff

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    if-ge v3, v0, :cond_3

    .line 3
    aget-object v7, v1, v3

    .line 4
    iget v8, v7, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->hasStaticLayer()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    and-int v9, v8, v6

    if-ne v9, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    iput-boolean v5, v7, Landroid/view/View;->mRecreateDisplayList:Z

    and-int/2addr v4, v8

    .line 6
    iput v4, v7, Landroid/view/View;->mPrivateFlags:I

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 8
    iput-boolean v2, v7, Landroid/view/View;->mRecreateDisplayList:Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 11
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int v3, v1, v6

    if-ne v3, v6, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    iput-boolean v5, v0, Landroid/view/View;->mRecreateDisplayList:Z

    and-int/2addr v1, v4

    .line 12
    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 14
    iput-boolean v2, v0, Landroid/view/View;->mRecreateDisplayList:Z

    :cond_5
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4
    iget-object v4, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/4 v5, 0x0

    .line 5
    iput-object v5, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    const/16 v10, 0xa

    if-nez v3, :cond_b

    if-eq v2, v10, :cond_b

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 8
    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v12, :cond_b

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v13

    .line 10
    iget-object v14, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v17, v1

    move-object v9, v5

    const/16 v16, 0x0

    :goto_0
    if-ltz v15, :cond_c

    if-eqz v13, :cond_0

    .line 11
    invoke-virtual {v0, v12, v15}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v18

    goto :goto_1

    :cond_0
    move/from16 v18, v15

    .line 12
    :goto_1
    aget-object v6, v14, v18

    .line 13
    invoke-static {v6}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v0, v3, v11, v6, v5}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v18

    if-nez v18, :cond_1

    goto/16 :goto_8

    :cond_1
    move-object v10, v4

    move-object v8, v5

    :goto_2
    if-nez v10, :cond_2

    .line 14
    invoke-static {v6}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v10

    const/4 v7, 0x0

    goto :goto_4

    .line 15
    :cond_2
    iget-object v7, v10, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v7, v6, :cond_9

    if-eqz v8, :cond_3

    .line 16
    iget-object v7, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    iput-object v7, v8, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    .line 17
    :cond_3
    iget-object v4, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 18
    :goto_3
    iput-object v5, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    const/4 v7, 0x1

    :goto_4
    if-eqz v9, :cond_4

    .line 19
    iput-object v10, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_5

    .line 20
    :cond_4
    iput-object v10, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    :goto_5
    const/16 v8, 0x9

    if-ne v2, v8, :cond_5

    if-nez v7, :cond_7

    .line 21
    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    :goto_6
    or-int v6, v16, v6

    move/from16 v16, v6

    goto :goto_7

    :cond_5
    const/4 v9, 0x7

    if-ne v2, v9, :cond_7

    if-nez v7, :cond_6

    .line 22
    invoke-static/range {v17 .. v17}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 23
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 24
    invoke-direct {v0, v7, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v8

    or-int v8, v16, v8

    .line 25
    invoke-virtual {v7, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 26
    invoke-direct {v0, v7, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    or-int/2addr v6, v8

    move/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_7

    .line 27
    :cond_6
    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    goto :goto_6

    :cond_7
    :goto_7
    if-eqz v16, :cond_8

    goto :goto_9

    :cond_8
    move-object v9, v10

    goto :goto_8

    .line 28
    :cond_9
    iget-object v7, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object v8, v10

    move-object v10, v7

    goto :goto_2

    :cond_a
    :goto_8
    add-int/lit8 v15, v15, -0x1

    const/16 v10, 0xa

    goto :goto_0

    :cond_b
    move-object/from16 v17, v1

    const/16 v16, 0x0

    :cond_c
    :goto_9
    if-eqz v4, :cond_f

    .line 29
    iget-object v3, v4, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    const/16 v5, 0xa

    if-ne v2, v5, :cond_d

    .line 30
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    or-int v3, v16, v3

    move/from16 v16, v3

    goto :goto_a

    :cond_d
    const/4 v6, 0x7

    if-ne v2, v6, :cond_e

    .line 31
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 32
    :cond_e
    invoke-static/range {v17 .. v17}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 33
    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 34
    invoke-direct {v0, v6, v3}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 35
    invoke-virtual {v6, v2}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v17, v6

    .line 36
    :goto_a
    iget-object v3, v4, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 37
    invoke-virtual {v4}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    move-object v4, v3

    goto :goto_9

    :cond_f
    xor-int/lit8 v3, v16, 0x1

    .line 38
    iget-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-ne v3, v4, :cond_11

    if-eqz v3, :cond_10

    .line 39
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int v16, v16, v2

    :cond_10
    :goto_b
    move-object/from16 v5, v17

    goto :goto_e

    :cond_11
    if-eqz v4, :cond_14

    const/16 v4, 0xa

    if-ne v2, v4, :cond_12

    .line 40
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v16, v16, v4

    :goto_c
    const/4 v4, 0x0

    goto :goto_d

    :cond_12
    const/4 v5, 0x7

    if-ne v2, v5, :cond_13

    .line 41
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 42
    :cond_13
    invoke-static/range {v17 .. v17}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 43
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 44
    invoke-super {v0, v5}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 45
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v17, v5

    goto :goto_c

    .line 46
    :goto_d
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    :cond_14
    if-eqz v3, :cond_10

    const/16 v3, 0x9

    if-ne v2, v3, :cond_15

    .line 47
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int v16, v16, v2

    const/4 v4, 0x1

    .line 48
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_b

    :cond_15
    const/4 v4, 0x1

    const/4 v5, 0x7

    if-ne v2, v5, :cond_10

    .line 49
    invoke-static/range {v17 .. v17}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 50
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 51
    invoke-super {v0, v5}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v3, v16, v3

    .line 52
    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 53
    invoke-super {v0, v5}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int v16, v3, v2

    .line 54
    iput-boolean v4, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    :goto_e
    if-eq v5, v1, :cond_16

    .line 55
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_16
    return v16
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x12

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    iget v5, v4, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw p1
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
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, v1, v2

    .line 5
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 6
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, v1, v2

    .line 5
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 6
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchScreenStateChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchSetPressed(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    aget-object v3, v0, v2

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    .line 5
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v5, v2, 0xff

    if-nez v5, :cond_1

    .line 5
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 6
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    :cond_1
    if-eqz v5, :cond_3

    .line 7
    iget-object v6, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_2

    .line 8
    :cond_3
    :goto_0
    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    if-nez v6, :cond_5

    .line 9
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2

    :cond_5
    move v6, v4

    .line 11
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x3

    if-ne v5, v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v3

    .line 12
    :goto_4
    iget v7, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    move v7, v3

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    const/4 v8, 0x7

    const/4 v10, 0x0

    if-nez v2, :cond_15

    if-nez v6, :cond_15

    if-eqz v5, :cond_a

    if-eqz v7, :cond_9

    const/4 v11, 0x5

    if-eq v5, v11, :cond_a

    :cond_9
    if-ne v5, v8, :cond_15

    .line 13
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    if-eqz v7, :cond_b

    .line 14
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    shl-int v12, v3, v12

    goto :goto_6

    :cond_b
    const/4 v12, -0x1

    .line 15
    :goto_6
    invoke-direct {v0, v12}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 16
    iget v13, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v13, :cond_12

    .line 17
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 18
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 19
    iget-object v15, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v16

    add-int/lit8 v17, v13, -0x1

    move/from16 v8, v17

    move-object/from16 v17, v10

    :goto_7
    if-ltz v8, :cond_11

    if-eqz v16, :cond_c

    .line 21
    invoke-virtual {v0, v13, v8}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v18

    move/from16 v3, v18

    goto :goto_8

    :cond_c
    move v3, v8

    .line 22
    :goto_8
    aget-object v9, v15, v3

    .line 23
    invoke-static {v9}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v0, v14, v11, v9, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v19

    if-nez v19, :cond_d

    goto :goto_9

    .line 24
    :cond_d
    invoke-direct {v0, v9}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 25
    iget v3, v10, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v3, v12

    iput v3, v10, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move v3, v4

    move-object/from16 v17, v10

    goto :goto_a

    .line 26
    :cond_e
    invoke-static {v9}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 27
    invoke-direct {v0, v1, v4, v9, v12}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    iput-wide v10, v0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 29
    iput v3, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 32
    invoke-direct {v0, v9, v12}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v17

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v17, v10

    :cond_10
    :goto_9
    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x1

    const/4 v10, 0x0

    goto :goto_7

    :cond_11
    move v3, v4

    goto :goto_a

    :cond_12
    move v3, v4

    const/16 v17, 0x0

    :goto_a
    if-nez v17, :cond_14

    .line 33
    iget-object v8, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v8, :cond_14

    .line 34
    :goto_b
    iget-object v9, v8, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v9, :cond_13

    move-object v8, v9

    goto :goto_b

    .line 35
    :cond_13
    iget v9, v8, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    or-int/2addr v9, v12

    iput v9, v8, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    goto :goto_c

    :cond_14
    move-object/from16 v8, v17

    goto :goto_c

    :cond_15
    move v3, v4

    const/4 v8, 0x0

    .line 36
    :goto_c
    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-nez v9, :cond_16

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 37
    invoke-direct {v0, v1, v2, v11, v10}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v3

    move v4, v3

    goto :goto_13

    :cond_16
    const/4 v11, 0x0

    move-object v10, v9

    move v9, v4

    :goto_d
    if-eqz v10, :cond_1d

    .line 38
    iget-object v12, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v3, :cond_17

    if-ne v10, v8, :cond_17

    const/4 v9, 0x1

    goto :goto_11

    .line 39
    :cond_17
    iget-object v13, v10, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v13}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_19

    if-eqz v6, :cond_18

    goto :goto_e

    :cond_18
    move v13, v4

    goto :goto_f

    :cond_19
    :goto_e
    const/4 v13, 0x1

    .line 40
    :goto_f
    iget-object v14, v10, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v15, v10, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {v0, v1, v13, v14, v15}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v14

    if-eqz v14, :cond_1a

    const/4 v9, 0x1

    :cond_1a
    if-eqz v13, :cond_1c

    if-nez v11, :cond_1b

    .line 41
    iput-object v12, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_10

    .line 42
    :cond_1b
    iput-object v12, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 43
    :goto_10
    invoke-virtual {v10}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    goto :goto_12

    :cond_1c
    :goto_11
    move-object v11, v10

    :goto_12
    move-object v10, v12

    goto :goto_d

    :cond_1d
    move v4, v9

    :goto_13
    if-nez v2, :cond_1f

    const/4 v2, 0x1

    if-eq v5, v2, :cond_1f

    const/4 v3, 0x7

    if-ne v5, v3, :cond_1e

    goto :goto_14

    :cond_1e
    if-eqz v7, :cond_20

    const/4 v3, 0x6

    if-ne v5, v3, :cond_20

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 45
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    shl-int v3, v2, v3

    .line 46
    invoke-direct {v0, v3}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto :goto_15

    .line 47
    :cond_1f
    :goto_14
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    :cond_20
    :goto_15
    if-nez v4, :cond_21

    .line 48
    iget-object v2, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_21

    const/4 v3, 0x1

    .line 49
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_21
    return v4
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x12

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/view/View;->mPrivateFlags:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    .line 5
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    aget-object v3, v0, v2

    .line 6
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 10
    :cond_1
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 11
    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    aget-object v2, v1, v0

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->canAcceptDrag()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    aget-object v3, v1, v2

    .line 5
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewByPredicateTraversal(Lu/k;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/k<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lu/k;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    aget-object v3, v0, v2

    if-eq v3, p2, :cond_1

    .line 5
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Lu/k;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewTraversal(I)Landroid/view/View;
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    aget-object v3, v0, v2

    .line 5
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    aget-object v3, v0, v2

    .line 5
    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

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
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget-object v3, v1, v2

    .line 5
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v3, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 7
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 10
    :cond_2
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 12
    iget p2, p1, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x10001

    and-int/2addr p2, v0

    iput p2, p1, Landroid/view/View;->mPrivateFlags:I

    .line 13
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_3
    return-void
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    aget-object v0, v2, v3

    invoke-virtual {v0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 3
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v5, v1

    move v6, v2

    :goto_1
    if-ge v5, v4, :cond_4

    .line 5
    aget-object v7, v3, v5

    .line 6
    iget v8, v7, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 7
    :cond_2
    invoke-virtual {v7, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    if-nez v7, :cond_3

    move v6, v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 1
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

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    :cond_1
    iget v1, p1, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    .line 6
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v3, v1

    int-to-float v4, v2

    .line 7
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz p3, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_3

    .line 9
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_2

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [F

    .line 10
    :goto_1
    iget v7, p3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aput v7, v6, v4

    .line 11
    iget v7, p3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    aput v7, v6, v3

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 13
    aget p1, v6, v4

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 14
    aget p1, v6, v3

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 15
    :cond_3
    iget p1, p3, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 16
    iget p1, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 17
    :cond_4
    iget p1, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez p1, :cond_5

    return v3

    .line 19
    :cond_5
    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v5

    float-to-int p1, p1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    return p1

    :cond_6
    return v4
.end method

.method public getClipChildren()Z
    .locals 2

    .line 1
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

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Landroid/view/ViewGroup;->LAYOUT_MODE_DEFAULT:I

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 4
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
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

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method public handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 1
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

.method public hasFocusable()Z
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v3, 0x60000

    if-eq v0, v3, :cond_3

    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_3

    .line 6
    aget-object v5, v3, v4

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public hasHoveredChild()Z
    .locals 1

    .line 1
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

    .line 1
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
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    aget-object v3, v1, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public internalSetPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 2
    iget p1, p0, Landroid/view/View;->mPaddingLeft:I

    iget p2, p0, Landroid/view/View;->mPaddingTop:I

    or-int/2addr p1, p2

    iget p2, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr p1, p2

    iget p2, p0, Landroid/view/View;->mPaddingBottom:I

    or-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_f

    .line 2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const/high16 v7, 0x200000

    if-eqz v6, :cond_2

    const/high16 v6, 0x400000

    goto :goto_2

    :cond_2
    move v6, v7

    .line 5
    :goto_2
    iget v8, p1, Landroid/view/View;->mLayerType:I

    if-eqz v8, :cond_3

    .line 6
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, -0x80000000

    or-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x8001

    and-int/2addr v8, v9

    .line 7
    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8
    iget-object v8, p1, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v8, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 9
    :cond_3
    iget-object v8, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 10
    iget v9, p1, Landroid/view/View;->mLeft:I

    aput v9, v8, v3

    .line 11
    iget v3, p1, Landroid/view/View;->mTop:I

    aput v3, v8, v4

    .line 12
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_7

    .line 13
    :cond_4
    iget-object v3, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 14
    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 15
    iget v10, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_6

    .line 16
    iget-object v10, v0, Landroid/view/View$AttachInfo;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 17
    invoke-virtual {p0, p1, v10}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    iget-object p1, v0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 19
    invoke-virtual {v10}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 20
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-nez v10, :cond_5

    .line 21
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_5
    move-object v5, p1

    .line 22
    :cond_6
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 23
    iget p1, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v9

    float-to-int p1, p1

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iget v10, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v9

    float-to-int v10, v10

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {p2, p1, v5, v10, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    move-object p1, p0

    :cond_8
    const/4 v3, 0x0

    .line 24
    instance-of v5, p1, Landroid/view/View;

    if-eqz v5, :cond_9

    .line 25
    move-object v3, p1

    check-cast v3, Landroid/view/View;

    :cond_9
    if-eqz v1, :cond_b

    if-eqz v3, :cond_a

    .line 26
    iget v5, v3, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v2

    iput v5, v3, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3

    .line 27
    :cond_a
    instance-of v5, p1, Landroid/view/ViewRootImpl;

    if-eqz v5, :cond_b

    .line 28
    move-object v5, p1

    check-cast v5, Landroid/view/ViewRootImpl;

    iput-boolean v4, v5, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    :cond_b
    :goto_3
    if-eqz v3, :cond_d

    .line 29
    iget v5, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v5, v5, 0x3000

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getSolidColor()I

    move-result v5

    if-nez v5, :cond_c

    move v6, v7

    .line 30
    :cond_c
    iget v5, v3, Landroid/view/View;->mPrivateFlags:I

    const/high16 v10, 0x600000

    and-int/2addr v10, v5

    if-eq v10, v7, :cond_d

    const v10, -0x600001

    and-int/2addr v5, v10

    or-int/2addr v5, v6

    .line 31
    iput v5, v3, Landroid/view/View;->mPrivateFlags:I

    .line 32
    :cond_d
    invoke-interface {p1, v8, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz v3, :cond_e

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_e

    .line 35
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 36
    invoke-virtual {v5, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 38
    iget v3, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v9

    float-to-int v3, v3

    iget v10, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v9

    float-to-int v10, v10

    iget v11, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v9

    float-to-int v11, v11

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {p2, v3, v10, v11, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_e
    if-nez p1, :cond_8

    :cond_f
    return-void
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_5

    .line 2
    iget v1, p1, Landroid/view/View;->mLayerType:I

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4
    :cond_0
    iget v1, p1, Landroid/view/View;->mLeft:I

    .line 5
    iget v2, p1, Landroid/view/View;->mTop:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    :cond_1
    move-object p1, p0

    .line 8
    :cond_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 9
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    iget v3, p1, Landroid/view/View;->mLayerType:I

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, v1, v2, p2}, Landroid/view/ViewGroup;->invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    .line 13
    iget v2, p1, Landroid/view/View;->mLeft:I

    .line 14
    iget p1, p1, Landroid/view/View;->mTop:I

    move v5, v2

    move v2, p1

    move-object p1, v1

    move v1, v5

    goto :goto_0

    .line 15
    :cond_4
    iget-object v3, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    const/4 v4, 0x0

    .line 16
    aput v1, v3, v4

    const/4 v4, 0x1

    .line 17
    aput v2, v3, v4

    .line 18
    invoke-interface {p1, v3, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    :cond_5
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const v1, 0x8000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v1, 0x90

    const/16 v3, 0x80

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_5

    .line 3
    aget v0, p1, v6

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    aget v1, p1, v5

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v5

    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v6, v6, v0, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 6
    :cond_2
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 7
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 8
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_3

    .line 9
    iget v2, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v6, v6, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    :cond_3
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12
    aput v0, p1, v6

    .line 13
    aput v1, p1, v5

    .line 14
    iget p1, p0, Landroid/view/View;->mLayerType:I

    if-eqz p1, :cond_4

    or-int p1, v2, v4

    .line 15
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 16
    iget-object p1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 17
    :cond_4
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object p1

    :cond_5
    const v2, -0x8021

    and-int/2addr v0, v2

    .line 18
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 19
    iget v0, p0, Landroid/view/View;->mLeft:I

    aput v0, p1, v6

    .line 20
    iget v2, p0, Landroid/view/View;->mTop:I

    aput v2, p1, v5

    and-int/lit8 p1, v1, 0x1

    if-ne p1, v5, :cond_6

    .line 21
    iget p1, p0, Landroid/view/View;->mRight:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v0, v2

    invoke-virtual {p2, v6, v6, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 22
    :cond_6
    iget p1, p0, Landroid/view/View;->mRight:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v0, v2

    invoke-virtual {p2, v6, v6, p1, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 23
    :goto_1
    iget p1, p0, Landroid/view/View;->mLayerType:I

    if-eqz p1, :cond_7

    .line 24
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr p1, v4

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 25
    iget-object p1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 26
    :cond_7
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object p1
.end method

.method public invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 2
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Landroid/view/View;->mRight:I

    iget v0, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p3, p2, p2, p1, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 5
    :cond_1
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Landroid/view/View;->mRight:I

    iget v0, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p3, p2, p2, p1, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_3
    :goto_0
    iget p1, p0, Landroid/view/View;->mLayerType:I

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    invoke-virtual {p0, p3}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    .line 10
    :cond_5
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object p1
.end method

.method public invalidateInheritedLayoutMode(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq v0, p1, :cond_1

    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->hasBooleanFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v1, v0}, Landroid/view/ViewGroup;->setLayoutMode(IZ)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->invalidateInheritedLayoutMode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
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
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
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

    .line 1
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
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
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

    .line 1
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

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    return v0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .line 1
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

.method public isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p3, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 2
    iget v0, p0, Landroid/view/View;->mScrollY:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget v0, p3, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 6
    aput p2, v0, p1

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 8
    aget p2, v0, v1

    .line 9
    aget p1, v0, p1

    move v2, p2

    move p2, p1

    move p1, v2

    .line 10
    :cond_0
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->pointInView(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 11
    invoke-virtual {p4, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    return p3
.end method

.method public isViewTransitioning(Landroid/view/View;)Z
    .locals 1

    .line 1
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
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 4
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    :goto_0
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 3
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 3
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public measureChildren(II)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    aget-object v3, v1, v2

    .line 4
    iget v4, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 5
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p1, p0, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not fully implement ViewParent"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "View"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 3
    aget-object v5, v1, v3

    .line 4
    iget v6, v5, Landroid/view/View;->mTop:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/view/View;->mTop:I

    .line 5
    iget v6, v5, Landroid/view/View;->mBottom:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/view/View;->mBottom:I

    .line 6
    iget-object v5, v5, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_0

    int-to-float v4, p1

    .line 7
    invoke-virtual {v5, v4}, Landroid/view/DisplayList;->offsetTopAndBottom(F)V

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_2
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 5

    if-ne p1, p0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :goto_0
    if-eqz v0, :cond_4

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_4

    if-eq v0, p0, :cond_4

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget p1, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p4, :cond_3

    .line 4
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 5
    iget v2, p1, Landroid/view/View;->mRight:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mBottom:I

    iget p1, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, p1

    invoke-virtual {p2, v1, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 6
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 7
    iget v3, v2, Landroid/view/View;->mRight:I

    iget v4, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/View;->mBottom:I

    iget v2, v2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 8
    :cond_2
    iget v1, p1, Landroid/view/View;->mScrollX:I

    iget v2, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/view/View;->mScrollY:I

    iget p1, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, p1

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 9
    :cond_3
    :goto_1
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 10
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    :cond_4
    if-ne v0, p0, :cond_6

    if-eqz p3, :cond_5

    .line 11
    iget p3, p1, Landroid/view/View;->mLeft:I

    iget p4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr p3, p4

    iget p4, p1, Landroid/view/View;->mTop:I

    iget p1, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr p4, p1

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 12
    :cond_5
    iget p3, p1, Landroid/view/View;->mScrollX:I

    iget p4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr p3, p4

    iget p4, p1, Landroid/view/View;->mScrollY:I

    iget p1, p1, Landroid/view/View;->mTop:I

    sub-int/2addr p4, p1

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    :goto_2
    return-void

    .line 13
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter must be a descendant of this view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const v1, -0x8001

    and-int/2addr v0, v1

    .line 3
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 6
    aget-object v5, v1, v4

    .line 7
    iget v6, v5, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 8
    invoke-virtual {v5, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v5, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    return-void
.end method

.method public onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 4
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 7
    :cond_1
    iget-object p2, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 9
    :cond_2
    :goto_0
    iget-object p2, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    :cond_3
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v3

    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    :goto_1
    if-ge v1, v0, :cond_4

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-static {p1, v2}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    move-result-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/high16 v0, -0x10000

    .line 2
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v6, 0x0

    move v7, v6

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v7, v0, :cond_0

    .line 5
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v2, Landroid/graphics/Insets;->top:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    iget v9, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v5, v9

    sub-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v2

    add-int/lit8 v9, v0, -0x1

    move-object v0, p1

    move-object v1, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    const/16 v2, 0xff

    .line 8
    invoke-static {v0, v2, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    invoke-virtual {p0, p1, v8}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/16 v4, 0x7f

    .line 11
    invoke-static {v0, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x8

    .line 13
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v9

    .line 14
    invoke-direct {p0, v1}, Landroid/view/ViewGroup;->dipsToPixels(I)I

    move-result v10

    move v11, v6

    .line 15
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v11, v0, :cond_1

    .line 16
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    move-object v0, p1

    move-object v5, v8

    move v6, v9

    move v7, v10

    invoke-static/range {v0 .. v7}, Landroid/view/ViewGroup;->drawRectCorners(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearCachedLayoutMode()V

    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onLayout(ZIIII)V
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    .line 2
    :goto_0
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    :goto_1
    if-eq v0, v3, :cond_2

    .line 3
    aget-object v6, v5, v0

    .line 4
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 5
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 9

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4
    iget-object v3, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 5
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v2

    .line 6
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    sub-int/2addr v0, v5

    move v6, v2

    :goto_1
    if-ltz v0, :cond_9

    .line 7
    aget-object v7, v1, v0

    .line 8
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    .line 9
    invoke-virtual {v8, p0, v7}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_2
    if-ne v7, v3, :cond_3

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->unFocus()V

    move v6, v5

    .line 11
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 12
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 13
    :cond_4
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 14
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_7

    .line 16
    invoke-virtual {v7}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 17
    :cond_6
    :goto_2
    invoke-direct {p0, v7}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 18
    :cond_7
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 19
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 20
    :cond_8
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 21
    iput-object v8, v7, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 22
    aput-object v8, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_9
    if-eqz v6, :cond_a

    .line 23
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_a

    .line 25
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 7
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    iget-object p2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 14
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 3
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 5
    :cond_1
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 6
    :cond_2
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

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

    const/high16 v1, 0x80000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne p1, v2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    or-int/2addr v0, v1

    .line 2
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1

    :cond_2
    const v1, -0x80001

    and-int/2addr v0, v1

    .line 3
    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4
    :goto_1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    .line 6
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resetResolvedDrawables()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedDrawables()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedPadding()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedPadding()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextAlignment()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->resetResolvedTextDirection()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetSubtreeAccessibilityStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resolveDrawables()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->resolveDrawables()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public resolveLayoutParams()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->resolveLayoutParams()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolvePadding()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->resolvePadding()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public resolveTextAlignment()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveTextAlignment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->isTextAlignmentInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->resolveTextAlignment()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public resolveTextDirection()Z
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->isTextDirectionInherited()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->resolveTextDirection()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1

    const/16 v0, 0x4000

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Z)V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1

    const v0, 0x8000

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setClipChildren(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq p1, v0, :cond_2

    .line 2
    invoke-direct {p0, v1, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3
    :goto_1
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 3

    const/high16 v0, 0x20000

    const/high16 v1, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x60001

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    .line 3
    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    return-void
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 1
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

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 4
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v0, -0x200001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :goto_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setPersistentDrawingCache(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x3

    .line 1
    iput p1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return-void
.end method

.method public setStaticTransformationsEnabled(Z)V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public startLayoutAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public suppressLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mSuppressLayout:Z

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutCalledWhileSuppressed:Z

    :cond_0
    return-void
.end method

.method public unFocus()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public updateLocalSystemUiVisibility(II)Z
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 2
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    aget-object v4, v2, v3

    .line 5
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Given view not a child of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid LayoutParams supplied to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
