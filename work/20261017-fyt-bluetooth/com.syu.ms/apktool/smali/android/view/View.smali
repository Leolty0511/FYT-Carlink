.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$SendViewStateChangedAccessibilityEvent;,
        Landroid/view/View$MatchLabelForPredicate;,
        Landroid/view/View$MatchIdPredicate;,
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_CURSOR_POSITION_UNDEFINED:I = -0x1

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_DEFAULT:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final ALL_RTL_PROPERTIES_RESOLVED:I = 0x60010220

.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field public static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field public static final DISABLED:I = 0x20

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field public static final DRAG_MASK:I = 0x3

.field public static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field public static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field public static final DRAW_MASK:I = 0x80

.field public static final DUPLICATE_PARENT_STATE:I = 0x400000

.field public static final EMPTY_STATE_SET:[I

.field public static final ENABLED:I = 0x0

.field public static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field public static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final ENABLED_FOCUSED_STATE_SET:[I

.field public static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final ENABLED_MASK:I = 0x20

.field public static final ENABLED_SELECTED_STATE_SET:[I

.field public static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final ENABLED_STATE_SET:[I

.field public static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field public static final FADING_EDGE_MASK:I = 0x3000

.field public static final FADING_EDGE_NONE:I = 0x0

.field public static final FADING_EDGE_VERTICAL:I = 0x2000

.field public static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS:I = 0x4

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field public static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUSED_SELECTED_STATE_SET:[I

.field public static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FOCUSED_STATE_SET:[I

.field public static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_DEFAULT:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final INVISIBLE:I = 0x4

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = 0x2

.field private static final LAYOUT_DIRECTION_FLAGS:[I

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RESOLVED_DEFAULT:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final LONG_CLICKABLE:I = 0x200000

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final NAVIGATION_BAR_TRANSIENT:I = 0x8000000

.field public static final NAVIGATION_BAR_TRANSLUCENT:I = -0x80000000

.field public static final NAVIGATION_BAR_UNHIDE:I = 0x20000000

.field private static final NONZERO_EPSILON:F = 0.001f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field public static final OPTIONAL_FITS_SYSTEM_WINDOWS:I = 0x800

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field public static final PARENT_SAVE_DISABLED:I = 0x20000000

.field public static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field public static final PFLAG2_ACCESSIBILITY_FOCUSED:I = 0x4000000

.field public static final PFLAG2_ACCESSIBILITY_LIVE_REGION_MASK:I = 0x1800000

.field public static final PFLAG2_ACCESSIBILITY_LIVE_REGION_SHIFT:I = 0x17

.field public static final PFLAG2_DRAG_CAN_ACCEPT:I = 0x1

.field public static final PFLAG2_DRAG_HOVERED:I = 0x2

.field public static final PFLAG2_DRAWABLE_RESOLVED:I = 0x40000000

.field public static final PFLAG2_HAS_TRANSIENT_STATE:I = -0x80000000

.field public static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK:I = 0x700000

.field public static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_SHIFT:I = 0x14

.field public static final PFLAG2_LAYOUT_DIRECTION_MASK:I = 0xc

.field public static final PFLAG2_LAYOUT_DIRECTION_MASK_SHIFT:I = 0x2

.field public static final PFLAG2_LAYOUT_DIRECTION_RESOLVED:I = 0x20

.field public static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_MASK:I = 0x30

.field public static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x10

.field public static final PFLAG2_PADDING_RESOLVED:I = 0x20000000

.field public static final PFLAG2_SUBTREE_ACCESSIBILITY_STATE_CHANGED:I = 0x8000000

.field private static final PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

.field public static final PFLAG2_TEXT_ALIGNMENT_MASK:I = 0xe000

.field public static final PFLAG2_TEXT_ALIGNMENT_MASK_SHIFT:I = 0xd

.field public static final PFLAG2_TEXT_ALIGNMENT_RESOLVED:I = 0x10000

.field private static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x20000

.field public static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK:I = 0xe0000

.field public static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT:I = 0x11

.field private static final PFLAG2_TEXT_DIRECTION_FLAGS:[I

.field public static final PFLAG2_TEXT_DIRECTION_MASK:I = 0x1c0

.field public static final PFLAG2_TEXT_DIRECTION_MASK_SHIFT:I = 0x6

.field public static final PFLAG2_TEXT_DIRECTION_RESOLVED:I = 0x200

.field public static final PFLAG2_TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x400

.field public static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK:I = 0x1c00

.field public static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK_SHIFT:I = 0xa

.field public static final PFLAG2_VIEW_QUICK_REJECTED:I = 0x10000000

.field public static final PFLAG3_CALLED_SUPER:I = 0x10

.field public static final PFLAG3_IS_LAID_OUT:I = 0x4

.field public static final PFLAG3_MEASURE_NEEDED_BEFORE_LAYOUT:I = 0x8

.field public static final PFLAG3_VIEW_IS_ANIMATING_ALPHA:I = 0x2

.field public static final PFLAG3_VIEW_IS_ANIMATING_TRANSFORM:I = 0x1

.field public static final PFLAG_ACTIVATED:I = 0x40000000

.field public static final PFLAG_ALPHA_SET:I = 0x40000

.field public static final PFLAG_ANIMATION_STARTED:I = 0x10000

.field private static final PFLAG_AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field public static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field public static final PFLAG_DIRTY:I = 0x200000

.field public static final PFLAG_DIRTY_MASK:I = 0x600000

.field public static final PFLAG_DIRTY_OPAQUE:I = 0x400000

.field public static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field public static final PFLAG_DRAWING_CACHE_VALID:I = 0x8000

.field public static final PFLAG_DRAWN:I = 0x20

.field public static final PFLAG_DRAW_ANIMATION:I = 0x40

.field public static final PFLAG_FOCUSED:I = 0x2

.field public static final PFLAG_FORCE_LAYOUT:I = 0x1000

.field public static final PFLAG_HAS_BOUNDS:I = 0x10

.field private static final PFLAG_HOVERED:I = 0x10000000

.field public static final PFLAG_INVALIDATED:I = -0x80000000

.field public static final PFLAG_IS_ROOT_NAMESPACE:I = 0x8

.field public static final PFLAG_LAYOUT_REQUIRED:I = 0x2000

.field public static final PFLAG_MEASURED_DIMENSION_SET:I = 0x800

.field public static final PFLAG_ONLY_DRAWS_BACKGROUND:I = 0x100

.field public static final PFLAG_OPAQUE_BACKGROUND:I = 0x800000

.field public static final PFLAG_OPAQUE_MASK:I = 0x1800000

.field public static final PFLAG_OPAQUE_SCROLLBARS:I = 0x1000000

.field private static final PFLAG_PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field public static final PFLAG_REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field private static final PFLAG_SAVE_STATE_CALLED:I = 0x20000

.field public static final PFLAG_SCROLL_CONTAINER:I = 0x80000

.field public static final PFLAG_SCROLL_CONTAINER_ADDED:I = 0x100000

.field public static final PFLAG_SELECTED:I = 0x4

.field public static final PFLAG_SKIP_DRAW:I = 0x80

.field public static final PFLAG_WANTS_FOCUS:I = 0x1

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x2a1bf

.field public static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field public static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field public static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field public static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRESSED_ENABLED_STATE_SET:[I

.field public static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field public static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRESSED_FOCUSED_STATE_SET:[I

.field public static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRESSED_SELECTED_STATE_SET:[I

.field public static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PRESSED_STATE_SET:[I

.field public static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0xffff

.field public static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAVE_DISABLED:I = 0x10000

.field public static final SAVE_DISABLED_MASK:I = 0x10000

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x1

.field public static final SCROLLBARS_HORIZONTAL:I = 0x100

.field public static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field public static final SCROLLBARS_MASK:I = 0x300

.field public static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field public static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field public static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field public static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field public static final SELECTED_STATE_SET:[I

.field public static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SEARCH:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_TRANSIENT:I = 0x4000000

.field public static final STATUS_BAR_TRANSLUCENT:I = 0x40000000

.field public static final STATUS_BAR_UNHIDE:I = 0x10000000

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x7

.field public static final SYSTEM_UI_FLAG_FULLSCREEN:I = 0x4

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_IMMERSIVE:I = 0x800

.field public static final SYSTEM_UI_FLAG_IMMERSIVE_STICKY:I = 0x1000

.field public static final SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN:I = 0x400

.field public static final SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION:I = 0x200

.field public static final SYSTEM_UI_FLAG_LAYOUT_STABLE:I = 0x100

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_SHOW_FULLSCREEN:I = 0x8

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_LAYOUT_FLAGS:I = 0x600

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x4

.field private static final TEXT_ALIGNMENT_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_GRAVITY:I = 0x1

.field public static final TEXT_ALIGNMENT_INHERIT:I = 0x0

.field public static final TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_TEXT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_TEXT_START:I = 0x2

.field public static final TEXT_ALIGNMENT_VIEW_END:I = 0x6

.field public static final TEXT_ALIGNMENT_VIEW_START:I = 0x5

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field private static final TEXT_DIRECTION_DEFAULT:I = 0x0

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LOCALE:I = 0x5

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field public static final TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static final TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDEFINED_PADDING:I = -0x80000000

.field public static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field public static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field public static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field public static final WILL_NOT_DRAW:I = 0x80

.field public static final WINDOW_FOCUSED_STATE_SET:[I

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sCompatibilityDone:Z = false

.field private static sIgnoreMeasureCache:Z = false

.field private static sNextAccessibilityViewId:I = 0x0

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseBrokenMakeMeasureSpec:Z = false


# instance fields
.field private mAccessibilityCursorPosition:I

.field public mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field public mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field public mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBackground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "bg_"
    .end annotation
.end field

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field public mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContentDescription:Ljava/lang/CharSequence;

.field public mContext:Landroid/content/Context;

.field public mCurrentAnimation:Landroid/view/animation/Animation;

.field public mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field public mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field public final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelForId:I

.field private mLastIsOpaque:Z

.field public mLayerPaint:Landroid/graphics/Paint;

.field public mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field private mLayoutInsets:Landroid/graphics/Insets;

.field public mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field public mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mLeftPaddingDefined:Z

.field public mListenerInfo:Landroid/view/View$ListenerInfo;

.field public mLocalDirtyRect:Landroid/graphics/Rect;

.field private mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

.field private mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

.field private mMeasureCache:Landroid/util/LongSparseLongArray;

.field public mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field public mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNextFocusDownId:I

.field public mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field public mOldHeightMeasureSpec:I

.field public mOldWidthMeasureSpec:I

.field private mOverScrollMode:I

.field public mOverlay:Landroid/view/ViewOverlay;

.field public mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field public mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field public mPrivateFlags2:I

.field public mPrivateFlags3:I

.field public mRecreateDisplayList:Z

.field private final mResources:Landroid/content/res/Resources;

.field public mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mRightPaddingDefined:Z

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field public mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field public mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field public mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field public mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0xffff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
    .end annotation
.end field

.field public mTag:Ljava/lang/Object;

.field public mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field public mTransformationInfo:Landroid/view/View$TransformationInfo;

.field public mTransientStateCount:I

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field public mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mUserPaddingLeftInitial:I

.field public mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field public mUserPaddingRightInitial:I

.field public mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field public mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Landroid/view/View;->VISIBILITY_FLAGS:[I

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    const/16 v1, 0x14

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_2

    sput-object v2, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 4
    array-length v3, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sget-object v5, Li/a;->ViewDrawableStates:[I

    array-length v5, v5

    if-ne v3, v5, :cond_6

    .line 5
    array-length v2, v2

    new-array v3, v2, [I

    const/4 v5, 0x0

    move v6, v5

    .line 6
    :goto_0
    sget-object v7, Li/a;->ViewDrawableStates:[I

    array-length v8, v7

    const/4 v9, 0x1

    if-ge v6, v8, :cond_2

    .line 7
    aget v7, v7, v6

    move v8, v5

    .line 8
    :goto_1
    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v11, v10

    if-ge v8, v11, :cond_1

    .line 9
    aget v11, v10, v8

    if-ne v11, v7, :cond_0

    mul-int/lit8 v11, v6, 0x2

    .line 10
    aput v7, v3, v11

    add-int/2addr v11, v9

    add-int/lit8 v12, v8, 0x1

    .line 11
    aget v10, v10, v12

    aput v10, v3, v11

    :cond_0
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_2
    sget-object v6, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v6, v6

    div-int/2addr v6, v4

    shl-int v6, v9, v6

    .line 13
    new-array v6, v6, [[I

    sput-object v6, Landroid/view/View;->VIEW_STATE_SETS:[[I

    move v6, v5

    .line 14
    :goto_2
    sget-object v7, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    .line 16
    new-array v7, v7, [I

    move v8, v5

    move v10, v8

    :goto_3
    if-ge v8, v2, :cond_4

    add-int/lit8 v11, v8, 0x1

    .line 17
    aget v11, v3, v11

    and-int/2addr v11, v6

    if-eqz v11, :cond_3

    add-int/lit8 v11, v10, 0x1

    .line 18
    aget v12, v3, v8

    aput v12, v7, v10

    move v10, v11

    :cond_3
    add-int/lit8 v8, v8, 0x2

    goto :goto_3

    .line 19
    :cond_4
    sget-object v8, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 20
    :cond_5
    aget-object v2, v7, v5

    sput-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 21
    aget-object v2, v7, v9

    sput-object v2, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 22
    aget-object v2, v7, v4

    sput-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 23
    aget-object v0, v7, v0

    sput-object v0, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/4 v0, 0x4

    .line 24
    aget-object v2, v7, v0

    sput-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    const/4 v2, 0x5

    .line 25
    aget-object v2, v7, v2

    sput-object v2, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/4 v2, 0x6

    .line 26
    aget-object v3, v7, v2

    sput-object v3, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    const/4 v3, 0x7

    .line 27
    aget-object v4, v7, v3

    sput-object v4, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v4, 0x8

    .line 28
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/16 v4, 0x9

    .line 29
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v4, 0xa

    .line 30
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    const/16 v4, 0xb

    .line 31
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v4, 0xc

    .line 32
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    const/16 v4, 0xd

    .line 33
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v4, 0xe

    .line 34
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    const/16 v4, 0xf

    .line 35
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v4, 0x10

    .line 36
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->PRESSED_STATE_SET:[I

    const/16 v4, 0x11

    .line 37
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v4, 0x12

    .line 38
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    const/16 v4, 0x13

    .line 39
    aget-object v4, v7, v4

    sput-object v4, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 40
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    const/16 v1, 0x15

    .line 41
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v1, 0x16

    .line 42
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    const/16 v1, 0x17

    .line 43
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v1, 0x18

    .line 44
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    const/16 v1, 0x19

    .line 45
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v1, 0x1a

    .line 46
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    const/16 v1, 0x1b

    .line 47
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v1, 0x1c

    .line 48
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    const/16 v1, 0x1d

    .line 49
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v1, 0x1e

    .line 50
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    const/16 v1, 0x1f

    .line 51
    aget-object v1, v7, v1

    sput-object v1, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 52
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_3

    sput-object v0, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    new-array v0, v2, [I

    .line 54
    fill-array-data v0, :array_4

    sput-object v0, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    new-array v0, v3, [I

    .line 55
    fill-array-data v0, :array_5

    sput-object v0, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v0, Landroid/view/View$3;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/view/View$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 58
    new-instance v0, Landroid/view/View$4;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 59
    new-instance v0, Landroid/view/View$5;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 60
    new-instance v0, Landroid/view/View$6;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->X:Landroid/util/Property;

    .line 61
    new-instance v0, Landroid/view/View$7;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    .line 62
    new-instance v0, Landroid/view/View$8;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 63
    new-instance v0, Landroid/view/View$9;

    const-string/jumbo v1, "rotationX"

    invoke-direct {v0, v1}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    .line 64
    new-instance v0, Landroid/view/View$10;

    const-string/jumbo v1, "rotationY"

    invoke-direct {v0, v1}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    .line 65
    new-instance v0, Landroid/view/View$11;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 66
    new-instance v0, Landroid/view/View$12;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-void

    .line 67
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80000
        0x100000
    .end array-data

    :array_2
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0x100
        0x140
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x2000
        0x4000
        0x6000
        0x8000
        0xa000
        0xc000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    .line 157
    iput-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    const/4 v2, -0x1

    .line 158
    iput v2, p0, Landroid/view/View;->mID:I

    .line 159
    iput v2, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 160
    iput v2, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 161
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    .line 162
    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    .line 163
    iput v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 164
    iput v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 165
    iput v2, p0, Landroid/view/View;->mLabelForId:I

    .line 166
    iput-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 167
    iput-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    const/high16 v3, -0x80000000

    .line 168
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 169
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 170
    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 171
    iput v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 172
    iput v2, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 173
    iput v2, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 174
    iput v2, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 175
    iput v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 176
    iput-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 177
    iput-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 178
    iput v1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 179
    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 180
    iput v1, p0, Landroid/view/View;->mLayerType:I

    .line 181
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v2, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 182
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Landroid/view/View;->mID:I

    .line 5
    iput v2, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 6
    iput v2, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 7
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    .line 8
    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    .line 9
    iput v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 10
    iput v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 11
    iput v2, p0, Landroid/view/View;->mLabelForId:I

    .line 12
    iput-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 13
    iput-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    const/high16 v3, -0x80000000

    .line 14
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 15
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 16
    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 17
    iput v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 18
    iput v2, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 19
    iput v2, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 20
    iput v2, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 21
    iput v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 22
    iput-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 23
    iput-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 24
    iput v1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 25
    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 26
    iput v1, p0, Landroid/view/View;->mLayerType:I

    .line 27
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v2, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 28
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    const/high16 v0, 0x18000000

    .line 30
    iput v0, p0, Landroid/view/View;->mViewFlags:I

    const v0, 0x22408

    .line 31
    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 34
    iput v3, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 35
    iput v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 36
    sget-boolean v2, Landroid/view/View;->sCompatibilityDone:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_4

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    if-gt p1, v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 38
    :goto_1
    sput-boolean v2, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    const/16 v2, 0x13

    if-ge p1, v2, :cond_3

    move v1, v0

    .line 39
    :cond_3
    sput-boolean v1, Landroid/view/View;->sIgnoreMeasureCache:Z

    .line 40
    sput-boolean v0, Landroid/view/View;->sCompatibilityDone:Z

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 42

    move-object/from16 v0, p0

    .line 42
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v1, Li/a;->View:[I

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    iget v4, v0, Landroid/view/View;->mOverScrollMode:I

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    const/4 v7, 0x0

    const/high16 v9, -0x80000000

    const/4 v11, -0x1

    move v12, v2

    move/from16 v16, v12

    move/from16 v18, v16

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v27, v22

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v31, v30

    move/from16 v39, v31

    move-object v15, v7

    move v13, v9

    move v14, v13

    move/from16 v17, v11

    move/from16 v23, v17

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    const/high16 v38, 0x3f800000    # 1.0f

    :goto_0
    const/4 v8, 0x1

    if-ge v12, v6, :cond_8

    .line 47
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move/from16 v7, v19

    move/from16 v9, v20

    goto/16 :goto_9

    .line 48
    :pswitch_1
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    goto :goto_1

    .line 49
    :pswitch_2
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setLabelFor(I)V

    goto :goto_1

    .line 50
    :pswitch_3
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    if-eq v14, v9, :cond_1

    move/from16 v22, v8

    goto/16 :goto_4

    :cond_1
    move/from16 v22, v2

    goto/16 :goto_4

    .line 51
    :pswitch_4
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    if-eq v13, v9, :cond_2

    move/from16 v21, v8

    goto/16 :goto_4

    :cond_2
    move/from16 v21, v2

    goto/16 :goto_4

    .line 52
    :pswitch_5
    iget v8, v0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v8, v8, -0x3d

    iput v8, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 53
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v10, 0x2

    if-eq v8, v11, :cond_3

    .line 54
    sget-object v40, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v8, v40, v8

    goto :goto_2

    :cond_3
    move v8, v10

    .line 55
    :goto_2
    iget v9, v0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    iput v8, v0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 56
    :pswitch_6
    iget v9, v0, Landroid/view/View;->mPrivateFlags2:I

    const v41, -0xe001

    and-int v9, v9, v41

    iput v9, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 57
    invoke-virtual {v1, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 58
    iget v9, v0, Landroid/view/View;->mPrivateFlags2:I

    sget-object v10, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    aget v8, v10, v8

    or-int/2addr v8, v9

    iput v8, v0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 59
    :pswitch_7
    iget v8, v0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v8, v8, -0x1c1

    iput v8, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 60
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 61
    iget v9, v0, Landroid/view/View;->mPrivateFlags2:I

    sget-object v10, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    aget v8, v10, v8

    or-int/2addr v8, v9

    iput v8, v0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 62
    :pswitch_8
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_1

    :pswitch_9
    move/from16 v7, v19

    move/from16 v9, v20

    goto/16 :goto_5

    .line 63
    :pswitch_a
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 64
    :pswitch_b
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_1

    .line 65
    :pswitch_c
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_1

    :pswitch_d
    const/4 v9, 0x0

    .line 66
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v36

    goto :goto_3

    :pswitch_e
    const/4 v9, 0x0

    .line 67
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v35

    goto :goto_3

    :pswitch_f
    const/4 v9, 0x0

    .line 68
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v34

    goto :goto_3

    :pswitch_10
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 69
    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    goto :goto_3

    :pswitch_11
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 70
    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v37

    goto :goto_3

    :pswitch_12
    const/4 v9, 0x0

    .line 71
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    int-to-float v7, v7

    move/from16 v33, v7

    goto :goto_3

    :pswitch_13
    const/4 v9, 0x0

    .line 72
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    int-to-float v7, v7

    move/from16 v32, v7

    :goto_3
    move/from16 v31, v8

    :goto_4
    move/from16 v7, v19

    goto/16 :goto_a

    :pswitch_14
    const/4 v9, 0x0

    .line 73
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    :pswitch_15
    const/4 v9, 0x0

    .line 74
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_1

    :pswitch_16
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 75
    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    :pswitch_17
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 76
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    move/from16 v8, v19

    or-int/lit16 v8, v8, 0x400

    move/from16 v10, v20

    or-int/lit16 v10, v10, 0x400

    move v7, v8

    move/from16 v20, v10

    goto/16 :goto_a

    :pswitch_18
    move/from16 v7, v19

    move/from16 v9, v20

    .line 77
    invoke-virtual {v1, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_19
    move/from16 v7, v19

    move/from16 v9, v20

    .line 78
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :pswitch_1a
    move/from16 v7, v19

    move/from16 v9, v20

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_4

    .line 80
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 81
    new-instance v10, Landroid/view/View$1;

    invoke-direct {v10, v0, v8}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 82
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1b
    move/from16 v7, v19

    move/from16 v9, v20

    .line 83
    invoke-virtual {v1, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-nez v8, :cond_7

    const v8, -0x10000001

    and-int/2addr v7, v8

    const/high16 v8, 0x10000000

    goto/16 :goto_8

    :pswitch_1c
    move/from16 v7, v19

    move/from16 v9, v20

    .line 84
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 85
    invoke-virtual {v0, v8}, Landroid/view/View;->setScrollContainer(Z)V

    :cond_5
    move/from16 v39, v8

    goto/16 :goto_9

    :pswitch_1d
    move/from16 v7, v19

    move/from16 v9, v20

    .line 86
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x4000000

    goto/16 :goto_7

    :pswitch_1e
    move/from16 v7, v19

    move/from16 v9, v20

    .line 87
    invoke-virtual {v1, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-nez v8, :cond_7

    const v8, -0x8000001

    and-int/2addr v7, v8

    const/high16 v8, 0x8000000

    goto/16 :goto_8

    :pswitch_1f
    move/from16 v7, v19

    move/from16 v9, v20

    .line 88
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_9

    :pswitch_20
    move/from16 v7, v19

    move/from16 v9, v20

    .line 89
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_9

    :pswitch_21
    move/from16 v7, v19

    move/from16 v9, v20

    .line 90
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x400000

    goto/16 :goto_7

    :pswitch_22
    move/from16 v7, v19

    move/from16 v9, v20

    .line 91
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-eqz v8, :cond_7

    .line 92
    sget-object v10, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v8, v10, v8

    or-int/2addr v7, v8

    const/high16 v8, 0x180000

    goto/16 :goto_8

    :pswitch_23
    move/from16 v7, v19

    move/from16 v9, v20

    .line 93
    invoke-virtual {v1, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-nez v8, :cond_7

    const/high16 v8, 0x10000

    goto/16 :goto_7

    :pswitch_24
    move/from16 v7, v19

    move/from16 v9, v20

    .line 94
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x200000

    goto/16 :goto_7

    :pswitch_25
    move/from16 v7, v19

    move/from16 v9, v20

    .line 95
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    or-int/lit16 v7, v7, 0x4000

    or-int/lit16 v8, v9, 0x4000

    goto :goto_6

    :pswitch_26
    move/from16 v7, v19

    move/from16 v9, v20

    .line 96
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_9

    :pswitch_27
    move/from16 v7, v19

    move/from16 v9, v20

    .line 97
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_9

    :pswitch_28
    move/from16 v7, v19

    move/from16 v9, v20

    .line 98
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_9

    :pswitch_29
    move/from16 v7, v19

    move/from16 v9, v20

    .line 99
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_9

    :pswitch_2a
    move/from16 v7, v19

    move/from16 v9, v20

    const/16 v8, 0xe

    if-lt v5, v8, :cond_6

    goto/16 :goto_9

    .line 100
    :cond_6
    :goto_5
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-eqz v8, :cond_7

    or-int/2addr v7, v8

    or-int/lit16 v8, v9, 0x3000

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    :goto_6
    move/from16 v20, v8

    goto/16 :goto_a

    :pswitch_2b
    move/from16 v7, v19

    move/from16 v9, v20

    .line 102
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    if-eqz v10, :cond_7

    or-int/2addr v7, v10

    or-int/lit16 v9, v9, 0x300

    move/from16 v27, v8

    goto/16 :goto_9

    :pswitch_2c
    move/from16 v7, v19

    move/from16 v9, v20

    .line 103
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    or-int/lit8 v7, v7, 0x2

    or-int/lit8 v20, v9, 0x2

    goto/16 :goto_a

    :pswitch_2d
    move/from16 v7, v19

    move/from16 v9, v20

    .line 104
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-eqz v8, :cond_7

    .line 105
    sget-object v10, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v8, v10, v8

    or-int/2addr v7, v8

    or-int/lit8 v20, v9, 0xc

    goto/16 :goto_a

    :pswitch_2e
    move/from16 v7, v19

    move/from16 v9, v20

    .line 106
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    const v8, 0x40001

    :goto_7
    or-int/2addr v7, v8

    goto/16 :goto_8

    :pswitch_2f
    move/from16 v7, v19

    move/from16 v9, v20

    .line 107
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_7

    or-int/lit8 v7, v7, 0x1

    or-int/lit8 v20, v9, 0x1

    goto/16 :goto_a

    :pswitch_30
    move/from16 v7, v19

    move/from16 v9, v20

    .line 108
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    goto/16 :goto_a

    :pswitch_31
    move/from16 v7, v19

    move/from16 v9, v20

    .line 109
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 110
    iput v10, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v16, v8

    move/from16 v24, v10

    goto/16 :goto_a

    :pswitch_32
    move/from16 v7, v19

    move/from16 v9, v20

    .line 111
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    goto/16 :goto_a

    :pswitch_33
    move/from16 v7, v19

    move/from16 v9, v20

    .line 112
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 113
    iput v10, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v18, v8

    move/from16 v23, v10

    goto :goto_a

    :pswitch_34
    move/from16 v7, v19

    move/from16 v9, v20

    .line 114
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 115
    iput v10, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 116
    iput v10, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v16, v8

    move/from16 v18, v16

    move/from16 v17, v10

    goto :goto_a

    :pswitch_35
    move/from16 v7, v19

    move/from16 v9, v20

    .line 117
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto :goto_a

    :pswitch_36
    move/from16 v7, v19

    move/from16 v9, v20

    .line 118
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v30

    goto :goto_a

    :pswitch_37
    move/from16 v7, v19

    move/from16 v9, v20

    .line 119
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v29

    goto :goto_a

    :pswitch_38
    move/from16 v7, v19

    move/from16 v9, v20

    .line 120
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto :goto_9

    :pswitch_39
    move/from16 v7, v19

    move/from16 v9, v20

    .line 121
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroid/view/View;->mID:I

    goto :goto_9

    :pswitch_3a
    move/from16 v7, v19

    move/from16 v9, v20

    .line 122
    invoke-virtual {v1, v10, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    if-eqz v28, :cond_7

    const/high16 v8, 0x3000000

    and-int v10, v28, v8

    or-int/2addr v7, v10

    :goto_8
    or-int v20, v9, v8

    goto :goto_a

    :cond_7
    :goto_9
    move/from16 v20, v9

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v7

    const/4 v7, 0x0

    const/high16 v9, -0x80000000

    goto/16 :goto_0

    :cond_8
    move/from16 v7, v19

    move/from16 v9, v20

    .line 123
    invoke-virtual {v0, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 124
    iput v13, v0, Landroid/view/View;->mUserPaddingStart:I

    .line 125
    iput v14, v0, Landroid/view/View;->mUserPaddingEnd:I

    if-eqz v15, :cond_9

    .line 126
    invoke-virtual {v0, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    move/from16 v3, v18

    .line 127
    iput-boolean v3, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v3, v16

    .line 128
    iput-boolean v3, v0, Landroid/view/View;->mRightPaddingDefined:Z

    move/from16 v11, v17

    if-ltz v11, :cond_a

    .line 129
    iput v11, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 130
    iput v11, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move v3, v11

    move/from16 v17, v3

    move/from16 v26, v17

    goto :goto_b

    :cond_a
    move/from16 v11, v23

    move/from16 v3, v24

    move/from16 v17, v25

    .line 131
    :goto_b
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 132
    iget-boolean v2, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-nez v2, :cond_b

    if-eqz v21, :cond_b

    goto :goto_c

    :cond_b
    move v13, v11

    :goto_c
    if-ltz v13, :cond_c

    goto :goto_d

    .line 133
    :cond_c
    iget v13, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    :goto_d
    iput v13, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 134
    iget-boolean v2, v0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v2, :cond_d

    if-eqz v22, :cond_d

    goto :goto_e

    :cond_d
    move v14, v3

    :goto_e
    if-ltz v14, :cond_e

    goto :goto_f

    .line 135
    :cond_e
    iget v14, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    :goto_f
    iput v14, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    goto :goto_10

    :cond_f
    if-nez v21, :cond_10

    if-eqz v22, :cond_11

    :cond_10
    move v2, v8

    .line 136
    :cond_11
    iget-boolean v4, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-eqz v4, :cond_12

    if-nez v2, :cond_12

    .line 137
    iput v11, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 138
    :cond_12
    iget-boolean v4, v0, Landroid/view/View;->mRightPaddingDefined:Z

    if-eqz v4, :cond_13

    if-nez v2, :cond_13

    .line 139
    iput v3, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 140
    :cond_13
    :goto_10
    iget v2, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    if-ltz v17, :cond_14

    move/from16 v3, v17

    goto :goto_11

    :cond_14
    iget v3, v0, Landroid/view/View;->mPaddingTop:I

    :goto_11
    iget v4, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    if-ltz v26, :cond_15

    move/from16 v5, v26

    goto :goto_12

    :cond_15
    iget v5, v0, Landroid/view/View;->mPaddingBottom:I

    :goto_12
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->internalSetPadding(IIII)V

    if-eqz v9, :cond_16

    .line 141
    invoke-virtual {v0, v7, v9}, Landroid/view/View;->setFlags(II)V

    :cond_16
    if-eqz v27, :cond_17

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 143
    :cond_17
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v28, :cond_18

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    :cond_18
    move/from16 v2, v29

    move/from16 v1, v30

    if-nez v2, :cond_19

    if-eqz v1, :cond_1a

    .line 145
    :cond_19
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_1a
    if-eqz v31, :cond_1b

    move/from16 v10, v32

    .line 146
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    move/from16 v10, v33

    .line 147
    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    move/from16 v10, v34

    .line 148
    invoke-virtual {v0, v10}, Landroid/view/View;->setRotation(F)V

    move/from16 v10, v35

    .line 149
    invoke-virtual {v0, v10}, Landroid/view/View;->setRotationX(F)V

    move/from16 v10, v36

    .line 150
    invoke-virtual {v0, v10}, Landroid/view/View;->setRotationY(F)V

    move/from16 v1, v37

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    move/from16 v1, v38

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1b
    if-nez v39, :cond_1c

    and-int/lit16 v1, v7, 0x200

    if-eqz v1, :cond_1c

    .line 153
    invoke-virtual {v0, v8}, Landroid/view/View;->setScrollContainer(Z)V

    .line 154
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
    .end packed-switch
.end method

.method public static synthetic access$2400()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    return v0
.end method

.method public static synthetic access$2502(Landroid/view/View;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method public static synthetic access$2600(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method public static synthetic access$2700(Landroid/view/View;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/view/View;->mLabelForId:I

    return p0
.end method

.method public static synthetic access$2800(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View;->inLiveRegion()Z

    move-result p0

    return p0
.end method

.method private checkForLongClick(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 3
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 6
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private cleanupDraw()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/DisplayList;->markDirty()V

    .line 4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueDisplayList(Landroid/view/DisplayList;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->cancelInvalidate(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    :goto_0
    return-void
.end method

.method private clearDisplayList()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/DisplayList;->clear()V

    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static debugIndent(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x3

    mul-int/lit8 v1, p0, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const/16 v2, 0x20

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2
    return v1
.end method

.method private drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1
    iget v5, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    invoke-virtual {p4}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3
    iget v6, v0, Landroid/view/View;->mRight:I

    iget v7, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/view/View;->mBottom:I

    iget v8, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p4, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4
    iget v6, v0, Landroid/view/View;->mRight:I

    iget v7, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/view/View;->mBottom:I

    iget v8, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p4, v8, v8, v6, v7}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 5
    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, v6}, Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onAnimationStart()V

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p4, p2, p3, v6, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    if-eqz p5, :cond_3

    .line 9
    iget-object v8, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mApplicationScale:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_3

    .line 10
    iget-object v6, v1, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v6, :cond_2

    .line 11
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v6, v1, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 12
    :cond_2
    iget-object v6, v1, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 13
    invoke-virtual {p4, p2, p3, v6, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    :cond_3
    move-object v8, v6

    if-eqz v9, :cond_7

    .line 14
    invoke-virtual {p4}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v2

    if-nez v2, :cond_5

    and-int/lit16 v2, v5, 0x90

    const/16 v3, 0x80

    if-ne v2, v3, :cond_4

    .line 15
    iget v2, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v5, 0x4

    if-nez v2, :cond_7

    .line 16
    iget v2, v1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/view/View;->mPrivateFlags:I

    .line 17
    iget v2, v0, Landroid/view/View;->mLeft:I

    iget v3, v0, Landroid/view/View;->mTop:I

    iget v4, v0, Landroid/view/View;->mRight:I

    iget v5, v0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 18
    :cond_5
    iget-object v2, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v2, :cond_6

    .line 19
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 20
    :cond_6
    iget-object v10, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 21
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v6

    iget v2, v0, Landroid/view/View;->mBottom:I

    iget v7, v0, Landroid/view/View;->mTop:I

    sub-int v7, v2, v7

    move-object v2, p4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v10

    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 22
    iget v2, v1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/view/View;->mPrivateFlags:I

    .line 23
    iget v2, v0, Landroid/view/View;->mLeft:I

    iget v3, v10, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 24
    iget v3, v0, Landroid/view/View;->mTop:I

    iget v4, v10, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 25
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    :cond_7
    :goto_0
    return v9
.end method

.method private static dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "%32s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x30

    const/16 v2, 0x20

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x5f

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static dumpFlags()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    :try_start_0
    const-class v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 4
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v8, [I

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move v7, v3

    .line 10
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_1

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget v9, v6, v7

    invoke-static {v0, v8, v9}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private findLabelForView(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View$MatchLabelForPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$MatchLabelForPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    invoke-static {v0, p2}, Landroid/view/View$MatchLabelForPredicate;->access$802(Landroid/view/View$MatchLabelForPredicate;I)I

    .line 4
    iget-object p2, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lu/k;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View$MatchIdPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$MatchIdPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    iput p2, v0, Landroid/view/View$MatchIdPredicate;->mId:I

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lu/k;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t find view with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "View"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public static generateViewId()I
    .locals 4

    .line 1
    :cond_0
    sget-object v0, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 2
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public static getDefaultSize(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method private getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v0, v1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8000

    and-int/2addr v0, v2

    const v2, -0x600001

    const v3, 0x8020

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    iget-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 3
    iget v0, v1, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v3

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    .line 4
    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    :cond_2
    move-object/from16 v4, p1

    goto/16 :goto_4

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    iget-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v0, :cond_4

    .line 6
    iget v0, v1, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v3

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    .line 7
    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->dispatchGetDisplayList()V

    return-object p1

    :cond_4
    const/4 v0, 0x1

    if-nez p2, :cond_5

    .line 9
    iput-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    :cond_5
    if-nez p1, :cond_6

    .line 10
    iget-object v4, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object v4

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentCaches()V

    goto :goto_1

    :cond_6
    move-object/from16 v4, p1

    .line 12
    :goto_1
    iget v5, v1, Landroid/view/View;->mRight:I

    iget v6, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    .line 13
    iget v6, v1, Landroid/view/View;->mBottom:I

    iget v7, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayerType()I

    move-result v7

    .line 15
    invoke-virtual {v4, v5, v6}, Landroid/view/DisplayList;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v8

    const/4 v15, 0x0

    if-nez p2, :cond_9

    if-eqz v7, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v7, v2, :cond_8

    .line 16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {v2}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 18
    iget-object v7, v1, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v3, v7}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 19
    iget v2, v1, Landroid/view/View;->mRight:I

    iget v3, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    iget v2, v1, Landroid/view/View;->mBottom:I

    iget v3, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v12, v2

    iget-object v13, v1, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v14, 0x14

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_3

    .line 20
    :cond_8
    invoke-virtual {v1, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 22
    iget-object v7, v1, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 24
    iget v0, v1, Landroid/view/View;->mScrollX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/View;->mScrollY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v8, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez p2, :cond_a

    .line 25
    iget v0, v1, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v3

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    .line 26
    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 27
    :cond_a
    iget v0, v1, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_b

    .line 28
    invoke-virtual {v1, v8}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 29
    iget-object v0, v1, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 30
    iget-object v0, v1, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 31
    :cond_b
    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_2
    move v0, v15

    .line 32
    :goto_3
    invoke-virtual {v4}, Landroid/view/DisplayList;->end()V

    .line 33
    invoke-virtual {v4, v0}, Landroid/view/DisplayList;->setCaching(Z)V

    if-eqz p2, :cond_d

    .line 34
    invoke-virtual {v4, v15, v15, v5, v6}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    goto :goto_4

    .line 35
    :cond_d
    invoke-virtual {v1, v4}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    :goto_4
    return-object v4

    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {v4}, Landroid/view/DisplayList;->end()V

    .line 37
    invoke-virtual {v4, v15}, Landroid/view/DisplayList;->setCaching(Z)V

    if-eqz p2, :cond_e

    .line 38
    invoke-virtual {v4, v15, v15, v5, v6}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    goto :goto_5

    .line 39
    :cond_e
    invoke-virtual {v1, v4}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    :goto_5
    throw v0
.end method

.method private getFinalAlpha()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    mul-float/2addr v1, v0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/HardwareLayer;->setDisplayList(Landroid/view/DisplayList;)V

    return-object v0
.end method

.method private getScrollCache()Landroid/view/View$ScrollabilityCache;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    return-object v0
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasListenersForAccessibility()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v0

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

.method private hasRtlSupport()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private inLiveRegion()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 4
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private initScrollCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isDrawablesResolved()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHoverable()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    and-int/lit16 v1, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v1, v3, :cond_1

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isLayoutModeOptical(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public static mergeDrawableStates([I[I)[I
    .locals 3

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    aget v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 3
    array-length v2, p1

    invoke-static {p1, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private needRtlPropertiesResolution()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0x60010220

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static nonzero(F)Z
    .locals 1

    const v0, -0x457ced91    # -0.001f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

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

.method private postSendViewScrolledAccessibilityEventCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 5
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 4

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TAKES_FOCUS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0xc

    const/4 v0, 0x4

    const-string v3, " "

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GONE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "INVISIBLE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 5

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WANTS_FOCUS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, p0, 0x2

    const/4 v3, 0x2

    const-string v4, " "

    if-ne v0, v3, :cond_2

    if-lez v1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FOCUSED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    and-int/lit8 v0, p0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    if-lez v1, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SELECTED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    :cond_4
    and-int/lit8 v0, p0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    if-lez v1, :cond_5

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IS_ROOT_NAMESPACE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    :cond_6
    and-int/lit8 v0, p0, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_8

    if-lez v1, :cond_7

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HAS_BOUNDS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    :cond_8
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_a

    if-lez v1, :cond_9

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DRAWN"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    return-object v2
.end method

.method private removeLongPressCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removePerformClickCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eq v1, v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    return v3

    :cond_3
    :goto_0
    return v2
.end method

.method private resetDisplayList()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/DisplayList;->reset()V

    :cond_0
    return-void
.end method

.method private resetPressedState()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    :cond_1
    return-void
.end method

.method public static resolveSize(II)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static resolveSizeAndState(III)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    if-ge p1, p0, :cond_2

    const/high16 p0, 0x1000000

    or-int/2addr p0, p1

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private sendAccessibilityHoverEvent(I)V
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendViewTextTraversedAtGranularityEvent(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x20000

    .line 2
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 6
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 9
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setOpticalFrame(IIII)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 3
    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr p1, v2

    iget v3, v1, Landroid/graphics/Insets;->left:I

    sub-int/2addr p1, v3

    iget v0, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr p2, v0

    iget v3, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr p2, v3

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Insets;->right:I

    add-int/2addr p3, v2

    add-int/2addr p4, v0

    iget v0, v1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method private sizeChange(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setRight(I)V

    .line 4
    iget-object p1, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {p1}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    :cond_0
    return-void
.end method

.method private skipInvalidate()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private transformMotionEventToGlobal(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroid/view/View;

    .line 7
    iget v1, v0, Landroid/view/View;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/view/View;->mScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 8
    invoke-direct {v0, p1}, Landroid/view/View;->transformMotionEventToGlobal(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    .line 11
    iget v0, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private transformMotionEventToLocal(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    invoke-direct {v0, p1}, Landroid/view/View;->transformMotionEventToLocal(Landroid/view/MotionEvent;)V

    .line 5
    iget v1, v0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    iget v0, v0, Landroid/view/View;->mScrollY:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    .line 8
    iget v0, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 9
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method private traverseAtGranularity(IZZ)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    if-eqz p2, :cond_2

    move v3, v1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v3, v0

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 6
    invoke-interface {v2, v3}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-interface {v2, v3}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    return v1

    .line 7
    :cond_5
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 8
    aget v0, v0, v2

    if-eqz p3, :cond_9

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilitySelectionExtendable()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result p3

    if-ne p3, v4, :cond_7

    if-eqz p2, :cond_6

    move p3, v1

    goto :goto_2

    :cond_6
    move p3, v0

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    move v3, v0

    goto :goto_4

    :cond_8
    move v3, v1

    goto :goto_4

    :cond_9
    if-eqz p2, :cond_a

    move p3, v0

    goto :goto_3

    :cond_a
    move p3, v1

    :goto_3
    move v3, p3

    .line 11
    :goto_4
    invoke-virtual {p0, p3, v3}, Landroid/view/View;->setAccessibilitySelection(II)V

    if-eqz p2, :cond_b

    const/16 p2, 0x100

    goto :goto_5

    :cond_b
    const/16 p2, 0x200

    .line 12
    :goto_5
    invoke-direct {p0, p2, p1, v1, v0}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    return v2

    :cond_c
    :goto_6
    return v1
.end method

.method private updateMatrix()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_5

    .line 3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 4
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 5
    :cond_1
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;I)I

    .line 6
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;I)I

    .line 7
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 8
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 9
    :cond_2
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 10
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 12
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 13
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    if-nez v1, :cond_4

    .line 15
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 16
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 17
    :cond_4
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 18
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 19
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 20
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 21
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 23
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 24
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    :goto_0
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 26
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Z)Z

    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2102(Landroid/view/View$TransformationInfo;Z)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    :cond_0
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$002(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4
    :cond_0
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    const/high16 v1, 0x200000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_1

    :cond_0
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/16 v0, 0x4000

    .line 2
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v6

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v8, v0, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v9, v0, v1

    .line 6
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-lez v3, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, v6

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v8, :cond_1

    const/4 v2, 0x0

    .line 9
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, v6

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 10
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, v6

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 12
    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v9, :cond_3

    const/4 v1, 0x0

    .line 13
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, v6

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 14
    :cond_3
    iget-object p1, v7, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    .line 16
    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {v6, v0, p1}, Landroid/graphics/Region;->translate(II)V

    .line 17
    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v6, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 18
    :cond_4
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :goto_0
    return-void
.end method

.method public assignParent(Landroid/view/ViewParent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " being added, but"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " it already has a parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public awakenScrollBars()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public awakenScrollBars(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result p1

    return p1
.end method

.method public awakenScrollBars(IZ)Z
    .locals 3

    .line 3
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 4
    iget-boolean v2, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v2}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 9
    :cond_4
    iget p2, v0, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez p2, :cond_5

    const/16 p2, 0x2ee

    .line 10
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    int-to-long p1, p1

    add-long/2addr v1, p1

    .line 12
    iput-wide v1, v0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    const/4 p1, 0x1

    .line 13
    iput p1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 14
    iget-object p2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_6

    .line 15
    iget-object p2, p2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object p2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p2, p2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    return p1

    :cond_7
    :goto_1
    return v1
.end method

.method public bringToFront()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1a

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1a

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Landroid/view/View;->mCachingFailed:Z

    .line 4
    iget v3, v0, Landroid/view/View;->mRight:I

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    .line 5
    iget v4, v0, Landroid/view/View;->mBottom:I

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    .line 6
    iget-object v5, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 7
    iget-boolean v7, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v7, :cond_3

    int-to-float v3, v3

    .line 8
    iget v8, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    mul-float/2addr v3, v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v9

    float-to-int v4, v4

    .line 9
    :cond_3
    iget v8, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-nez v8, :cond_5

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move v9, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v6

    :goto_3
    if-eqz v5, :cond_6

    .line 11
    iget-boolean v10, v5, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    if-eqz v10, :cond_6

    move v10, v6

    goto :goto_4

    :cond_6
    move v10, v1

    :goto_4
    mul-int v11, v3, v4

    if-eqz v9, :cond_7

    if-nez v10, :cond_7

    const/4 v12, 0x2

    goto :goto_5

    :cond_7
    const/4 v12, 0x4

    :goto_5
    mul-int/2addr v11, v12

    int-to-long v11, v11

    .line 12
    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v13

    int-to-long v13, v13

    if-lez v3, :cond_1c

    if-lez v4, :cond_1c

    cmp-long v15, v11, v13

    if-lez v15, :cond_8

    goto/16 :goto_c

    :cond_8
    if-eqz p1, :cond_9

    .line 13
    iget-object v11, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_6

    :cond_9
    iget-object v11, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    :goto_6
    const/4 v12, 0x0

    if-eqz v11, :cond_a

    .line 14
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v13, v3, :cond_a

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-eq v13, v4, :cond_11

    :cond_a
    if-nez v9, :cond_b

    .line 15
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_7

    :cond_b
    if-eqz v10, :cond_c

    .line 16
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_7

    :cond_c
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_7
    if-eqz v11, :cond_d

    .line 17
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    :cond_d
    :try_start_0
    iget-object v11, v0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v11, v3, v4, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v11, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-eqz p1, :cond_e

    .line 20
    iput-object v11, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 21
    :cond_e
    iput-object v11, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    :goto_8
    if-eqz v9, :cond_f

    if-eqz v10, :cond_f

    .line 22
    invoke-virtual {v11, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    if-eqz v8, :cond_10

    move v1, v6

    :cond_10
    move v6, v1

    :cond_11
    if-eqz v5, :cond_13

    .line 23
    iget-object v1, v5, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_12

    .line 24
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 25
    :cond_12
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    iput-object v12, v5, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_9

    .line 27
    :cond_13
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_9
    if-eqz v6, :cond_14

    .line 28
    invoke-virtual {v11, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 29
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    if-eqz p1, :cond_15

    if-eqz v7, :cond_15

    .line 31
    iget v4, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 32
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    :cond_15
    iget v4, v0, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Landroid/view/View;->mScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 35
    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_16

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v6, :cond_16

    iget v6, v0, Landroid/view/View;->mLayerType:I

    if-eqz v6, :cond_17

    :cond_16
    or-int/2addr v2, v4

    .line 36
    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 37
    :cond_17
    iget v2, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v2, 0x80

    const/16 v6, 0x80

    if-ne v4, v6, :cond_18

    const v4, -0x600001

    and-int/2addr v2, v4

    .line 38
    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 40
    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 41
    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    .line 42
    :cond_18
    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 43
    :cond_19
    :goto_a
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 44
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_1a

    .line 45
    iput-object v1, v5, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    :cond_1a
    return-void

    :catch_0
    if-eqz p1, :cond_1b

    .line 46
    iput-object v12, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_b

    .line 47
    :cond_1b
    iput-object v12, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 48
    :goto_b
    iput-boolean v6, v0, Landroid/view/View;->mCachingFailed:Z

    return-void

    :cond_1c
    :goto_c
    if-lez v3, :cond_1d

    if-lez v4, :cond_1d

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View too large to fit into drawing cache, needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes, only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 51
    iput-boolean v6, v0, Landroid/view/View;->mCachingFailed:Z

    return-void
.end method

.method public buildLayer()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    .line 5
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->hasOnPreDrawListeners()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchFlushHardwareLayerUpdates()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_3
    :goto_0
    return-void

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view must be attached to a window first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callOnClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canAcceptDrag()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canHaveDisplayList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canResolveLayoutDirection()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v0}, Landroid/view/ViewParent;->canResolveLayoutDirection()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v0}, Landroid/view/ViewParent;->canResolveTextAlignment()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v0}, Landroid/view/ViewParent;->canResolveTextDirection()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-gez p1, :cond_2

    if-lez v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public canScrollVertically(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-gez p1, :cond_2

    if-lez v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public cancelLongPress()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 2
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    return-void
.end method

.method public final cancelPendingInputEvents()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public clearAccessibilityFocus()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1, p0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public clearAccessibilityFocusNoCallbacks()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const v1, -0x4000001

    and-int/2addr v0, v1

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    return-void
.end method

.method public clearFocus()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->clearFocusInternal(ZZ)V

    return-void
.end method

.method public clearFocusInternal(ZZ)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, -0x3

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0, p0}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 7
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return v1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public computeOpaqueFlags()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4
    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_1

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    :cond_1
    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_2
    return-void
.end method

.method public computeOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/c;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/c;->I(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 4
    iget-object v2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2, p1, p0, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/c;->I(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    :cond_1
    return-void
.end method

.method public createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget p3, p0, Landroid/view/View;->mRight:I

    iget v0, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p3, v0

    .line 2
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 4
    iget v2, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    int-to-float p3, p3

    mul-float/2addr p3, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p3, v3

    float-to-int p3, p3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 5
    iget-object v3, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, v4

    :goto_1
    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    invoke-static {v3, p3, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_3
    const/4 p3, 0x0

    if-eqz v1, :cond_5

    .line 8
    iget-object v0, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_4

    .line 9
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 10
    :cond_4
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    iput-object p3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_3

    .line 12
    :cond_5
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_3
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    if-eqz v3, :cond_6

    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result p2

    .line 16
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 17
    iget v2, p0, Landroid/view/View;->mScrollX:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x600001

    and-int/2addr v3, v2

    .line 19
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 21
    iget-object v3, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 22
    iget-object v3, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v3}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 23
    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 24
    :cond_8
    :goto_4
    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 25
    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 26
    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_9

    .line 27
    iput-object v0, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    :cond_9
    return-object p1

    .line 28
    :cond_a
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public debug()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    return-void
.end method

.method public debug(I)V
    .locals 5

    add-int/lit8 v0, p1, -0x1

    .line 2
    invoke-static {v0}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, ")"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (tag="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "View"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FOCUSED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "frame={"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} scroll={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    const-string/jumbo v3, "}"

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v2, :cond_4

    .line 16
    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "padding={"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mMeasureWidth="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMeasureHeight="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_5

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BAD! no layout params"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flags={"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v0}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "privateFlags={"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {p1}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public destroyDrawingCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public destroyHardwareResources()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    return-void
.end method

.method public destroyLayer(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    iget-object p1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p1}, Landroid/view/HardwareRenderer;->validate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p1, v0}, Landroid/view/HardwareRenderer;->cancelLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 5
    iget-object p1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->destroy()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 4
    :cond_0
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 5
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 8
    iput-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 9
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 14
    iget-object p2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz p2, :cond_3

    .line 15
    invoke-static {p2}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    .line 18
    invoke-interface {v0, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .line 19
    :cond_4
    iget p1, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    const/16 p2, 0x8

    if-eq p1, p2, :cond_5

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 21
    :cond_5
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_6
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    return-void
.end method

.method public dispatchCancelPendingInputEvents()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 3
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onCancelPendingInputEvents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 9
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_1

    .line 10
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x100001

    and-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13
    :cond_3
    iput-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->dispatchDetachedFromWindow()V

    :cond_4
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    return-void
.end method

.method public dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 8
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_6
    return v1
.end method

.method public dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchGetDisplayList()V
    .locals 0

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-interface {v0, p0, v3, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4
    return v1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 3
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 4
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 5
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchScreenStateChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 0

    return-void
.end method

.method public dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View;->clearDisplayList()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-interface {v0, p1}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 102
    iget-object v1, v0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 104
    :cond_0
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x600000

    and-int/2addr v2, v1

    const/high16 v3, 0x400000

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 105
    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_2

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v5

    :goto_0
    const v2, -0x600001

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    .line 106
    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    if-nez v9, :cond_5

    .line 107
    iget-object v1, v0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 108
    iget v2, v0, Landroid/view/View;->mScrollX:I

    .line 109
    iget v3, v0, Landroid/view/View;->mScrollY:I

    .line 110
    iget-boolean v6, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v6, :cond_3

    .line 111
    iget v6, v0, Landroid/view/View;->mRight:I

    iget v7, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/view/View;->mBottom:I

    iget v10, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v10

    invoke-virtual {v1, v5, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iput-boolean v5, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    :cond_3
    or-int v6, v2, v3

    if-nez v6, :cond_4

    .line 113
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    int-to-float v6, v2

    int-to-float v7, v3

    .line 114
    invoke-virtual {v8, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v1, v2

    int-to-float v1, v1

    neg-int v2, v3

    int-to-float v2, v2

    .line 116
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    :cond_5
    :goto_1
    iget v1, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v5

    :goto_2
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v5

    :goto_3
    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-nez v9, :cond_8

    .line 118
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    :cond_8
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 120
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 121
    iget-object v1, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 122
    iget-object v1, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void

    .line 123
    :cond_a
    iget v3, v0, Landroid/view/View;->mPaddingLeft:I

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v7

    add-int/2addr v3, v7

    .line 126
    :cond_b
    iget v7, v0, Landroid/view/View;->mScrollX:I

    add-int v10, v7, v3

    .line 127
    iget v7, v0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v10

    iget v11, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v11

    iget v11, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v11

    sub-int/2addr v7, v3

    .line 128
    iget v3, v0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v0, v6}, Landroid/view/View;->getFadeTop(Z)I

    move-result v11

    add-int/2addr v11, v3

    .line 129
    invoke-virtual {v0, v6}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v3

    add-int/2addr v3, v11

    if-eqz v6, :cond_c

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v6

    add-int/2addr v7, v6

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v6

    add-int/2addr v3, v6

    :cond_c
    move v12, v3

    move v13, v7

    .line 132
    iget-object v14, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 133
    iget v3, v14, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v15, v3

    float-to-int v3, v15

    if-eqz v1, :cond_d

    add-int v6, v11, v3

    sub-int v7, v12, v3

    if-le v6, v7, :cond_d

    sub-int v3, v12, v11

    .line 134
    div-int/lit8 v3, v3, 0x2

    :cond_d
    if-eqz v2, :cond_e

    add-int v6, v10, v3

    sub-int v7, v13, v3

    if-le v6, v7, :cond_e

    sub-int v3, v13, v10

    .line 135
    div-int/lit8 v3, v3, 0x2

    :cond_e
    move/from16 v16, v3

    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_11

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v6, v1, v15

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    const/4 v6, 0x1

    goto :goto_4

    :cond_f
    move v6, v5

    .line 137
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v18, v4, v15

    cmpl-float v18, v18, v7

    if-lez v18, :cond_10

    const/16 v18, 0x1

    goto :goto_5

    :cond_10
    move/from16 v18, v5

    :goto_5
    move/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v18

    move/from16 v18, v1

    goto :goto_6

    :cond_11
    move/from16 v18, v3

    move/from16 v19, v18

    move/from16 v20, v5

    move/from16 v21, v20

    :goto_6
    if-eqz v2, :cond_14

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v2, v1, v15

    cmpl-float v2, v2, v7

    if-lez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_7

    :cond_12
    move v2, v5

    .line 139
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v4, v3, v15

    cmpl-float v4, v4, v7

    if-lez v4, :cond_13

    const/4 v4, 0x1

    goto :goto_8

    :cond_13
    move v4, v5

    :goto_8
    move/from16 v17, v1

    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v24, v4

    goto :goto_9

    :cond_14
    move/from16 v17, v3

    move/from16 v22, v17

    move/from16 v23, v5

    move/from16 v24, v23

    .line 140
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v1

    if-nez v1, :cond_18

    if-eqz v20, :cond_15

    int-to-float v2, v10

    int-to-float v3, v11

    int-to-float v4, v13

    add-int v1, v11, v16

    int-to-float v5, v1

    const/16 v25, 0x0

    const/16 v26, 0x4

    move-object/from16 v1, p1

    move v0, v6

    move-object/from16 v6, v25

    move/from16 v25, v0

    move v0, v7

    move/from16 v7, v26

    .line 142
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_a

    :cond_15
    move/from16 v25, v6

    move v0, v7

    :goto_a
    if-eqz v21, :cond_16

    int-to-float v2, v10

    sub-int v1, v12, v16

    int-to-float v3, v1

    int-to-float v4, v13

    int-to-float v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v1, p1

    .line 143
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    :cond_16
    if-eqz v23, :cond_17

    int-to-float v2, v10

    int-to-float v3, v11

    add-int v1, v10, v16

    int-to-float v4, v1

    int-to-float v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v1, p1

    .line 144
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    :cond_17
    if-eqz v24, :cond_19

    sub-int v1, v13, v16

    int-to-float v2, v1

    int-to-float v3, v11

    int-to-float v4, v13

    int-to-float v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v1, p1

    .line 145
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_b

    :cond_18
    move/from16 v25, v6

    move v0, v7

    .line 146
    invoke-virtual {v14, v1}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    :cond_19
    :goto_b
    if-nez v9, :cond_1a

    .line 147
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v7, v14, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 150
    iget-object v9, v14, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 151
    iget-object v14, v14, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    if-eqz v20, :cond_1b

    mul-float v1, v15, v18

    .line 152
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v2, v10

    int-to-float v3, v11

    .line 153
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 154
    invoke-virtual {v14, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    int-to-float v4, v13

    add-int v1, v11, v16

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v7

    .line 155
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1b
    if-eqz v21, :cond_1c

    mul-float v1, v15, v19

    .line 156
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v1, 0x43340000    # 180.0f

    .line 157
    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v2, v10

    int-to-float v5, v12

    .line 158
    invoke-virtual {v9, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 159
    invoke-virtual {v14, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sub-int v1, v12, v16

    int-to-float v3, v1

    int-to-float v4, v13

    move-object/from16 v1, p1

    move-object v6, v7

    .line 160
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1c
    if-eqz v23, :cond_1d

    mul-float v1, v15, v17

    .line 161
    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 162
    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v2, v10

    int-to-float v3, v11

    .line 163
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 164
    invoke-virtual {v14, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    add-int v10, v10, v16

    int-to-float v4, v10

    int-to-float v5, v12

    move-object/from16 v1, p1

    move-object v6, v7

    .line 165
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1d
    if-eqz v24, :cond_1e

    mul-float v15, v15, v22

    .line 166
    invoke-virtual {v9, v0, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 167
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v4, v13

    int-to-float v3, v11

    .line 168
    invoke-virtual {v9, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    invoke-virtual {v14, v9}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sub-int v13, v13, v16

    int-to-float v2, v13

    int-to-float v5, v12

    move-object/from16 v1, p1

    move-object v6, v7

    .line 170
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1e
    move/from16 v0, v25

    .line 171
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 172
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    .line 173
    iget-object v1, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 174
    iget-object v1, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_1f
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z
    .locals 31

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 1
    iget-object v0, v6, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    move v7, v13

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v8

    .line 3
    iget v11, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v11, 0x100

    const/16 v9, 0x100

    if-ne v0, v9, :cond_1

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 5
    iget v0, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayerType()I

    move-result v10

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v16

    const v0, 0x8000

    and-int/2addr v0, v11

    if-nez v0, :cond_5

    and-int/lit16 v0, v11, 0x4000

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez v10, :cond_4

    if-eqz v16, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v13

    :goto_2
    move/from16 v18, v0

    goto :goto_4

    .line 8
    :cond_5
    :goto_3
    iget-object v0, v6, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v17, v0

    move/from16 v18, v13

    goto :goto_5

    :cond_6
    move/from16 v18, v13

    :goto_4
    const/16 v17, 0x0

    .line 9
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v2, 0x2

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v9, v2

    move-wide/from16 v2, p3

    move-object v9, v4

    move-object v4, v5

    move-object/from16 p3, v5

    move/from16 v5, v17

    .line 10
    invoke-direct/range {v0 .. v5}, Landroid/view/View;->drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z

    move-result v0

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    iget v2, v6, Landroid/view/View;->mPrivateFlags3:I

    or-int/2addr v2, v13

    iput v2, v6, Landroid/view/View;->mPrivateFlags3:I

    .line 13
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v4

    move/from16 v20, v0

    move-object/from16 v21, v4

    goto :goto_9

    :cond_8
    move-object v9, v4

    move-object/from16 p3, v5

    .line 14
    iget v0, v6, Landroid/view/View;->mPrivateFlags3:I

    and-int/2addr v0, v13

    if-ne v0, v13, :cond_9

    iget-object v0, v6, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {v0, v9}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 16
    iget v0, v6, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v6, Landroid/view/View;->mPrivateFlags3:I

    :cond_9
    if-nez v7, :cond_c

    and-int/lit16 v0, v11, 0x800

    if-eqz v0, :cond_c

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    .line 18
    invoke-virtual {v15, v6, v0}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 19
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v1

    if-eqz v1, :cond_a

    move-object v4, v0

    goto :goto_6

    :cond_a
    move-object v4, v9

    :goto_6
    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move v1, v13

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    move-object/from16 v21, v4

    goto :goto_8

    :cond_c
    move-object/from16 v21, v9

    const/4 v1, 0x0

    :goto_8
    const/16 v20, 0x0

    :goto_9
    xor-int/lit8 v0, v8, 0x1

    or-int v22, v1, v0

    .line 20
    iget v0, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v6, Landroid/view/View;->mPrivateFlags:I

    if-nez v22, :cond_d

    and-int/lit16 v0, v11, 0x801

    if-ne v0, v13, :cond_d

    .line 21
    iget v0, v6, Landroid/view/View;->mLeft:I

    int-to-float v1, v0

    iget v0, v6, Landroid/view/View;->mTop:I

    int-to-float v2, v0

    iget v0, v6, Landroid/view/View;->mRight:I

    int-to-float v3, v0

    iget v0, v6, Landroid/view/View;->mBottom:I

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v6, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_d

    .line 22
    iget v0, v6, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/View;->mPrivateFlags2:I

    return v20

    .line 23
    :cond_d
    iget v0, v6, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, v6, Landroid/view/View;->mPrivateFlags2:I

    if-eqz v16, :cond_f

    .line 24
    iget v0, v6, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_e

    move v1, v13

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, v6, Landroid/view/View;->mRecreateDisplayList:Z

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 25
    iput v0, v6, Landroid/view/View;->mPrivateFlags:I

    :cond_f
    if-eqz v18, :cond_16

    if-nez v16, :cond_11

    if-eqz v10, :cond_10

    .line 26
    invoke-virtual {v6, v13}, Landroid/view/View;->buildDrawingCache(Z)V

    move v10, v13

    .line 27
    :cond_10
    invoke-virtual {v6, v13}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_d

    :cond_11
    if-eqz v10, :cond_15

    if-eq v10, v13, :cond_13

    const/4 v0, 0x2

    if-eq v10, v0, :cond_12

    goto :goto_c

    :cond_12
    if-eqz v7, :cond_16

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v0

    goto :goto_b

    :cond_13
    if-eqz v7, :cond_14

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v0

    goto :goto_b

    .line 30
    :cond_14
    invoke-virtual {v6, v13}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 31
    invoke-virtual {v6, v13}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_d

    .line 32
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v0

    :goto_b
    move-object v4, v9

    move v1, v10

    goto :goto_e

    :cond_16
    :goto_c
    move-object v4, v9

    :goto_d
    move v1, v10

    const/4 v0, 0x0

    :goto_e
    and-int v2, v7, v0

    if-eqz v2, :cond_17

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroid/view/DisplayList;->isValid()Z

    move-result v5

    if-nez v5, :cond_18

    move-object v3, v9

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_f

    :cond_17
    move-object v3, v9

    :cond_18
    :goto_f
    if-nez v0, :cond_19

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 36
    iget v5, v6, Landroid/view/View;->mScrollX:I

    .line 37
    iget v7, v6, Landroid/view/View;->mScrollY:I

    move v10, v7

    goto :goto_10

    :cond_19
    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_10
    if-eqz v4, :cond_1b

    if-eqz v0, :cond_1a

    goto :goto_11

    :cond_1a
    const/16 v18, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    move/from16 v18, v13

    :goto_12
    if-nez v4, :cond_1c

    if-nez v0, :cond_1c

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1c

    move/from16 v23, v13

    goto :goto_13

    :cond_1c
    const/16 v23, 0x0

    :goto_13
    const/4 v7, -0x1

    if-eqz v2, :cond_1d

    if-eqz v21, :cond_1e

    .line 38
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    :cond_1e
    const/high16 v24, 0x3f800000    # 1.0f

    if-eqz v23, :cond_1f

    .line 39
    iget v9, v6, Landroid/view/View;->mLeft:I

    sub-int/2addr v9, v5

    int-to-float v9, v9

    iget v12, v6, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v10

    int-to-float v12, v12

    invoke-virtual {v14, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_14

    :cond_1f
    if-nez v2, :cond_20

    .line 40
    iget v9, v6, Landroid/view/View;->mLeft:I

    int-to-float v9, v9

    iget v12, v6, Landroid/view/View;->mTop:I

    int-to-float v12, v12

    invoke-virtual {v14, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_20
    if-eqz v17, :cond_22

    if-eqz v2, :cond_21

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 42
    :cond_21
    iget-object v9, v6, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v9, v9, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v9, v24, v9

    .line 43
    invoke-virtual {v14, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_22
    :goto_14
    move v12, v7

    if-eqz v2, :cond_23

    move/from16 v7, v24

    goto :goto_15

    .line 44
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v9

    mul-float/2addr v7, v9

    :goto_15
    const/high16 v25, 0x437f0000    # 255.0f

    if-nez v21, :cond_26

    cmpg-float v26, v7, v24

    if-ltz v26, :cond_26

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v26

    if-eqz v26, :cond_26

    iget v13, v6, Landroid/view/View;->mPrivateFlags3:I

    const/4 v9, 0x2

    and-int/2addr v13, v9

    if-ne v13, v9, :cond_24

    goto :goto_16

    .line 46
    :cond_24
    iget v8, v6, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    const/16 v13, 0xff

    if-ne v8, v9, :cond_25

    .line 47
    invoke-virtual {v6, v13}, Landroid/view/View;->onSetAlpha(I)Z

    .line 48
    iget v8, v6, Landroid/view/View;->mPrivateFlags:I

    const v19, -0x40001

    and-int v8, v8, v19

    iput v8, v6, Landroid/view/View;->mPrivateFlags:I

    :cond_25
    move-object/from16 v19, v3

    move v15, v9

    move/from16 v29, v10

    move v3, v11

    move/from16 v30, v12

    goto/16 :goto_23

    :cond_26
    :goto_16
    const/high16 v9, 0x40000

    const/16 v13, 0xff

    if-nez v21, :cond_28

    if-nez v8, :cond_27

    goto :goto_17

    :cond_27
    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v27, v12

    goto/16 :goto_1c

    :cond_28
    :goto_17
    if-eqz v23, :cond_29

    neg-int v9, v5

    neg-int v13, v10

    goto :goto_18

    :cond_29
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_18
    if-eqz v21, :cond_2c

    if-eqz v22, :cond_2b

    if-eqz v2, :cond_2a

    move/from16 v22, v10

    .line 49
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    move/from16 v27, v12

    goto :goto_19

    :cond_2a
    move/from16 v22, v10

    neg-int v10, v9

    int-to-float v10, v10

    move/from16 v27, v12

    neg-int v12, v13

    int-to-float v12, v12

    .line 50
    invoke-virtual {v14, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    int-to-float v10, v9

    int-to-float v12, v13

    .line 52
    invoke-virtual {v14, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    :goto_19
    iget v10, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v12, 0x100

    or-int/2addr v10, v12

    iput v10, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1a

    :cond_2b
    move/from16 v22, v10

    move/from16 v27, v12

    const/16 v12, 0x100

    .line 54
    :goto_1a
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v10

    cmpg-float v19, v10, v24

    if-gez v19, :cond_2d

    mul-float/2addr v7, v10

    .line 55
    iget v10, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v10, v12

    iput v10, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_1b

    :cond_2c
    move/from16 v22, v10

    move/from16 v27, v12

    :cond_2d
    :goto_1b
    if-nez v8, :cond_2e

    if-nez v2, :cond_2e

    neg-int v8, v9

    int-to-float v8, v8

    neg-int v10, v13

    int-to-float v10, v10

    .line 56
    invoke-virtual {v14, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    int-to-float v8, v9

    int-to-float v9, v13

    .line 58
    invoke-virtual {v14, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2e
    move/from16 v21, v7

    :goto_1c
    cmpg-float v7, v21, v24

    if-ltz v7, :cond_30

    .line 59
    iget v8, v6, Landroid/view/View;->mPrivateFlags3:I

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_2f

    goto :goto_1e

    :cond_2f
    :goto_1d
    move-object/from16 v19, v3

    move v3, v11

    move/from16 v29, v22

    move/from16 v30, v27

    const/high16 v15, 0x40000

    goto/16 :goto_22

    :cond_30
    const/4 v9, 0x2

    :goto_1e
    if-gez v7, :cond_31

    .line 60
    iget v7, v6, Landroid/view/View;->mPrivateFlags3:I

    or-int/2addr v7, v9

    iput v7, v6, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_1f

    .line 61
    :cond_31
    iget v7, v6, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v7, v7, -0x3

    iput v7, v6, Landroid/view/View;->mPrivateFlags3:I

    .line 62
    :goto_1f
    iget v7, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    const/16 v8, 0x100

    or-int/2addr v7, v8

    iput v7, v15, Landroid/view/ViewGroup;->mGroupFlags:I

    if-eqz v18, :cond_2f

    mul-float v7, v21, v25

    float-to-int v12, v7

    .line 63
    invoke-virtual {v6, v12}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v7

    if-nez v7, :cond_37

    const/4 v7, 0x4

    and-int/lit8 v8, v11, 0x1

    if-nez v8, :cond_32

    if-eqz v1, :cond_33

    :cond_32
    const/16 v7, 0x14

    :cond_33
    move v13, v7

    if-eqz v2, :cond_34

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float v7, v7, v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_1d

    :cond_34
    if-nez v1, :cond_2f

    if-eqz v0, :cond_35

    const/4 v7, 0x0

    goto :goto_20

    :cond_35
    move v7, v5

    :goto_20
    if-eqz v0, :cond_36

    const/4 v8, 0x0

    goto :goto_21

    :cond_36
    move/from16 v8, v22

    :goto_21
    int-to-float v10, v7

    int-to-float v9, v8

    move-object/from16 v19, v3

    .line 65
    iget v3, v6, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v3, v6, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v3

    int-to-float v3, v7

    iget v7, v6, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v7

    iget v7, v6, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    move-object/from16 v7, p1

    move/from16 v28, v8

    move v8, v10

    const/16 v10, 0xff

    const/high16 v15, 0x40000

    move/from16 v29, v22

    move v10, v3

    move v3, v11

    move/from16 v11, v28

    move/from16 v30, v27

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_22

    :cond_37
    move-object/from16 v19, v3

    move v3, v11

    move/from16 v29, v22

    move/from16 v30, v27

    const/high16 v15, 0x40000

    .line 66
    iget v7, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v7, v15

    iput v7, v6, Landroid/view/View;->mPrivateFlags:I

    :goto_22
    move/from16 v7, v21

    :goto_23
    and-int/lit8 v8, v3, 0x1

    const/4 v13, 0x1

    if-ne v8, v13, :cond_3b

    if-nez v2, :cond_3b

    if-nez v4, :cond_3b

    if-eqz v23, :cond_38

    .line 67
    iget v8, v6, Landroid/view/View;->mRight:I

    iget v9, v6, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v5

    iget v9, v6, Landroid/view/View;->mBottom:I

    iget v10, v6, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v10

    move/from16 v12, v29

    add-int v10, v12, v9

    invoke-virtual {v14, v5, v12, v8, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_25

    :cond_38
    move/from16 v12, v29

    if-eqz v17, :cond_3a

    if-nez v4, :cond_39

    goto :goto_24

    .line 68
    :cond_39
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual {v14, v11, v11, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_26

    :cond_3a
    :goto_24
    const/4 v11, 0x0

    .line 69
    iget v8, v6, Landroid/view/View;->mRight:I

    iget v9, v6, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, v6, Landroid/view/View;->mBottom:I

    iget v10, v6, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v10

    invoke-virtual {v14, v11, v11, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_26

    :cond_3b
    move/from16 v12, v29

    :goto_25
    const/4 v11, 0x0

    :goto_26
    if-nez v2, :cond_3d

    if-eqz v0, :cond_3d

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v8

    .line 71
    invoke-virtual {v8}, Landroid/view/DisplayList;->isValid()Z

    move-result v9

    if-nez v9, :cond_3c

    move/from16 v17, v11

    const/4 v0, 0x0

    goto :goto_27

    :cond_3c
    move/from16 v17, v0

    move-object v0, v8

    goto :goto_27

    :cond_3d
    move/from16 v17, v0

    move-object/from16 v0, v19

    :goto_27
    const v19, -0x600001

    const/4 v8, 0x0

    if-eqz v18, :cond_45

    const/4 v9, 0x2

    if-ne v1, v9, :cond_41

    if-nez v2, :cond_41

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 73
    invoke-virtual {v1}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 74
    iget-object v2, v6, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    mul-float v7, v7, v25

    float-to-int v4, v7

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    move-object v2, v14

    check-cast v2, Landroid/view/HardwareCanvas;

    iget-object v4, v6, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v8, v4}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    move v5, v11

    move v1, v13

    goto :goto_29

    :cond_3e
    if-eqz v17, :cond_3f

    move v5, v11

    :cond_3f
    if-eqz v17, :cond_40

    move v12, v11

    :cond_40
    int-to-float v8, v5

    int-to-float v9, v12

    .line 76
    iget v1, v6, Landroid/view/View;->mRight:I

    add-int/2addr v5, v1

    iget v1, v6, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v1

    int-to-float v10, v5

    iget v1, v6, Landroid/view/View;->mBottom:I

    add-int/2addr v12, v1

    iget v1, v6, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v1

    int-to-float v1, v12

    iget-object v12, v6, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v2, 0x14

    move-object/from16 v7, p1

    move v5, v11

    move v11, v1

    move v1, v13

    move v13, v2

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_28

    :cond_41
    move v5, v11

    move v1, v13

    :goto_28
    move v13, v5

    :goto_29
    if-nez v13, :cond_44

    if-nez v17, :cond_43

    .line 77
    iget v0, v6, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_42

    and-int v0, v0, v19

    .line 78
    iput v0, v6, Landroid/view/View;->mPrivateFlags:I

    .line 79
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_2a

    .line 80
    :cond_42
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2a

    .line 81
    :cond_43
    iget v2, v6, Landroid/view/View;->mPrivateFlags:I

    and-int v2, v2, v19

    iput v2, v6, Landroid/view/View;->mPrivateFlags:I

    .line 82
    move-object v2, v14

    check-cast v2, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    :cond_44
    :goto_2a
    move v0, v1

    move v2, v15

    move/from16 v7, v30

    const/16 v3, 0xff

    move-object/from16 v1, p2

    goto :goto_2e

    :cond_45
    move v5, v11

    move v0, v13

    if-eqz v4, :cond_4a

    .line 83
    iget v2, v6, Landroid/view/View;->mPrivateFlags:I

    and-int v2, v2, v19

    iput v2, v6, Landroid/view/View;->mPrivateFlags:I

    if-nez v1, :cond_49

    move-object/from16 v1, p2

    move v2, v15

    .line 84
    iget-object v9, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    if-nez v9, :cond_46

    .line 85
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 86
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 87
    iput-object v9, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    :cond_46
    cmpg-float v10, v7, v24

    if-gez v10, :cond_47

    mul-float v7, v7, v25

    float-to-int v3, v7

    .line 88
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget v3, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2b

    :cond_47
    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_48

    const/16 v3, 0xff

    .line 90
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    iget v7, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v7, v7, -0x1001

    iput v7, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2c

    :cond_48
    :goto_2b
    const/16 v3, 0xff

    goto :goto_2c

    :cond_49
    move-object/from16 v1, p2

    move v2, v15

    const/16 v3, 0xff

    .line 92
    iget-object v9, v6, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    mul-float v7, v7, v25

    float-to-int v7, v7

    .line 93
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    :goto_2c
    invoke-virtual {v14, v4, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2d

    :cond_4a
    move-object/from16 v1, p2

    move v2, v15

    const/16 v3, 0xff

    :goto_2d
    move/from16 v7, v30

    :goto_2e
    if-ltz v7, :cond_4b

    .line 95
    invoke-virtual {v14, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4b
    move-object/from16 v4, p3

    if-eqz v4, :cond_4d

    if-nez v20, :cond_4d

    if-nez v16, :cond_4c

    .line 96
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 97
    invoke-virtual {v6, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 98
    :cond_4c
    invoke-virtual {v1, v6, v4}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    :cond_4d
    if-eqz v20, :cond_4e

    if-eqz v16, :cond_4e

    .line 99
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget v1, v6, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4e

    .line 100
    invoke-virtual {v6, v0}, Landroid/view/View;->invalidate(Z)V

    .line 101
    :cond_4e
    iput-boolean v5, v6, Landroid/view/View;->mRecreateDisplayList:Z

    return v20
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public ensureTransformationInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    :cond_0
    return-void
.end method

.method public executeHardwareAction(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->safelyRun(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/16 v0, 0x11

    if-eq p2, v0, :cond_6

    const/16 v0, 0x21

    if-eq p2, v0, :cond_4

    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    const/16 v0, 0x82

    if-eq p2, v0, :cond_0

    return-object v2

    .line 1
    :cond_0
    iget p2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-ne p2, v1, :cond_1

    return-object v2

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    iget p2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-ne p2, v1, :cond_3

    return-object v2

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    iget p2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-ne p2, v1, :cond_5

    return-object v2

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 7
    :cond_6
    iget p2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-ne p2, v1, :cond_7

    return-object v2

    .line 8
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 9
    :cond_8
    iget p2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-ne p2, v1, :cond_9

    return-object v2

    .line 10
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 11
    :cond_a
    iget p2, p0, Landroid/view/View;->mID:I

    if-ne p2, v1, :cond_b

    return-object v2

    .line 12
    :cond_b
    new-instance v0, Landroid/view/View$2;

    invoke-direct {v0, p0, p2}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lu/k;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final findViewByAccessibilityId(I)Landroid/view/View;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final findViewByPredicate(Lu/k;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/k<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lu/k;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lu/k;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lu/k<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->findViewByPredicateTraversal(Lu/k;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    if-ne p1, p0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    check-cast v1, Landroid/view/View;

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public findViewByPredicateTraversal(Lu/k;Landroid/view/View;)Landroid/view/View;
    .locals 0
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

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewTraversal(I)Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 1
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
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    and-int/lit8 p2, p3, 0x4

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1

    iget-object p3, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object p3, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 3
    iput v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 4
    sget-object v0, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    .line 8
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 9
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 10
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/view/View;->internalSetPadding(IIII)V

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public fitsSystemWindows()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public forceLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clear()V

    .line 2
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 3
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 2
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_0

    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 5
    aget v4, v0, v2

    aget v5, v0, v1

    aget v2, v0, v2

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v3

    aget v0, v0, v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int v7, v0, v2

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAccessibilityLiveRegion()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x1800000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    return v0
.end method

.method public getAccessibilityViewId()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getAlpha()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBottomPaddingOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 3
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    :cond_1
    iget v1, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 7
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 9
    check-cast v1, Landroid/view/View;

    .line 10
    iget v2, v1, Landroid/view/View;->mScrollX:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v4, v1, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 13
    :cond_2
    iget v2, v1, Landroid/view/View;->mLeft:I

    int-to-float v2, v2

    iget v4, v1, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 14
    iget-object v1, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 15
    :cond_3
    instance-of v2, v1, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_4

    .line 16
    check-cast v1, Landroid/view/ViewRootImpl;

    .line 17
    iget v1, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 18
    :cond_4
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v2, v2

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 19
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getCameraDistance()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 4
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 6
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 7
    :cond_0
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v1

    mul-float/2addr v1, v0

    neg-float v0, v1

    return v0
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .locals 2

    .line 40
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    return-object v0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 2
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x20000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    :goto_0
    return-object p1
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x180000

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 3
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFadeHeight(Z)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result p1

    add-int/2addr v0, p1

    .line 3
    :cond_0
    iget p1, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    return p1
.end method

.method public getFadeTop(Z)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFitsSystemWindows()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 3
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_0

    .line 4
    iget v0, p0, Landroid/view/View;->mScrollX:I

    neg-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v2

    .line 4
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    if-eqz v0, :cond_b

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v3, :cond_a

    .line 6
    :cond_3
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 7
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v5

    invoke-virtual {v3, v0, v2, v5}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v3

    iput-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 8
    iget-object v3, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v3}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 10
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3, v0, v2}, Landroid/view/HardwareLayer;->resize(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11
    iget-object v3, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    .line 14
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->isOpaque()Z

    move-result v5

    if-eq v5, v3, :cond_7

    .line 15
    iget-object v5, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v5, v3}, Landroid/view/HardwareLayer;->setOpaque(Z)V

    .line 16
    iget-object v3, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    :cond_7
    :goto_0
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    return-object v1

    .line 18
    :cond_8
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 19
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-direct {p0, v0}, Landroid/view/View;->getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/HardwareLayer;->redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 21
    iget-object v1, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->pushHardwareLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 22
    :cond_9
    iget-object v0, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 23
    :cond_a
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    return-object v0

    :cond_b
    :goto_1
    return-object v1
.end method

.method public getHardwareRenderer()Landroid/view/HardwareRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v2, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v0, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int/2addr v5, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v0, v3, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollFactor()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v1}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v1

    if-gtz v1, :cond_0

    .line 4
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_0
    return v1
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getImportantForAccessibility()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "noHideDescendants"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x700000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public final getInverseMatrix()Landroid/graphics/Matrix;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 3
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2100(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2202(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2102(Landroid/view/View$TransformationInfo;Z)Z

    .line 8
    :cond_1
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$2200(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    invoke-static {}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

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

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLabelFor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    return v0
.end method

.method public getLayerType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v1

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method public getLeftFadingEdgeStrength()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLeftPaddingOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListenerInfo()Landroid/view/View$ListenerInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    return-object v0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getLocationInWindow([I)V
    .locals 6

    if-eqz p1, :cond_5

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    aput v2, p1, v1

    aput v2, p1, v2

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    const/4 v3, 0x0

    .line 5
    aput v3, v0, v1

    aput v3, v0, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 8
    :cond_1
    aget v3, v0, v2

    iget v4, p0, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 9
    aget v3, v0, v1

    iget v4, p0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 10
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 12
    check-cast v3, Landroid/view/View;

    .line 13
    aget v4, v0, v2

    iget v5, v3, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v2

    .line 14
    aget v4, v0, v1

    iget v5, v3, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v1

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 17
    :cond_2
    aget v4, v0, v2

    iget v5, v3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 18
    aget v4, v0, v1

    iget v5, v3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v1

    .line 19
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 20
    :cond_3
    instance-of v4, v3, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_4

    .line 21
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 22
    aget v4, v0, v1

    iget v3, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    aput v4, v0, v1

    .line 23
    :cond_4
    aget v3, v0, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p1, v2

    .line 24
    aget v0, v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p1, v1

    return-void

    .line 25
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "location must be an array of two integers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLocationOnScreen([I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 4
    aget v2, p1, v1

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v0

    aput v2, p1, v1

    :cond_0
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->computeOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOverScrollMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getOverlay()Landroid/view/ViewOverlay;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewOverlay;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_0
    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPivotX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPivotY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRawLayoutDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRawTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0xe000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public getRawTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method public getRightFadingEdgeStrength()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRightPaddingOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    .line 3
    :goto_0
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 4
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRootWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRotation()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRotationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRotationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScaleX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getScaleY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    :goto_0
    return v0
.end method

.method public getScrollBarFadeDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    :goto_0
    return v0
.end method

.method public getScrollBarSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :goto_0
    return v0
.end method

.method public getScrollBarStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinHeight:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinWidth:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0xe0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c00

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopPaddingOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getTransitionAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getTranslationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTranslationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalScrollFactor()F
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/view/View;->mVerticalScrollFactor:F

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v0
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v2, v1}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v1

    if-gtz v1, :cond_0

    .line 4
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_0
    return v1
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getWindow()Landroid/view/IWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWindowAttachCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method public getWindowId()Landroid/view/WindowId;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    if-nez v1, :cond_1

    .line 3
    :try_start_0
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    .line 4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Landroid/view/WindowId;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    invoke-direct {v1, v2}, Landroid/view/WindowId;-><init>(Landroid/view/IWindowId;)V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    return-object v0
.end method

.method public getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWindowSystemUiVisibility()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWindowVisibility()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v0, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 7
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :catch_0
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getX()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/view/View$TransformationInfo;->mTranslationX:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/view/View$TransformationInfo;->mTranslationY:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    return-void
.end method

.method public handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_3
    return-void
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFocusable()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHoveredChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasIdentityMatrix()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasOnClickListeners()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOpaqueScrollbars()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStaticLayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public includeForAccessibility()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    return-void
.end method

.method public initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v1}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    :cond_0
    const/16 v1, 0x2c

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iput v2, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 7
    :cond_1
    iput-boolean v1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    const/16 v1, 0x2a

    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    const/16 v1, 0x2b

    .line 9
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 10
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    const/4 v1, 0x3

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 12
    iget-object v4, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v4, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v1, 0x5

    .line 15
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    :cond_3
    const/4 v1, 0x4

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 18
    iget-object v4, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x2

    .line 19
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 20
    iget-object v5, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 v5, 0x6

    .line 21
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    iget-object p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {p1, v2}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 23
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    :cond_6
    if-eqz v4, :cond_7

    .line 25
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 26
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    return-void
.end method

.method public internalSetPadding(IIII)V
    .locals 7

    .line 1
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 2
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 3
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 4
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v0, 0x300

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    and-int/lit16 v1, v0, 0x200

    const/high16 v4, 0x1000000

    if-eqz v1, :cond_4

    and-int v1, v0, v4

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    .line 6
    :goto_0
    iget v5, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eqz v5, :cond_3

    if-eq v5, v3, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr p3, v1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr p1, v1

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_4
    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    and-int/2addr v0, v4

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_3

    .line 8
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v0

    :goto_3
    add-int/2addr p4, v0

    .line 9
    :cond_6
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v0, p1, :cond_7

    .line 10
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    move v2, v3

    .line 11
    :cond_7
    iget p1, p0, Landroid/view/View;->mPaddingTop:I

    if-eq p1, p2, :cond_8

    .line 12
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    move v2, v3

    .line 13
    :cond_8
    iget p1, p0, Landroid/view/View;->mPaddingRight:I

    if-eq p1, p3, :cond_9

    .line 14
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    move v2, v3

    .line 15
    :cond_9
    iget p1, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p1, p4, :cond_a

    .line 16
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    if-eqz v3, :cond_b

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_b
    return-void
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 4

    .line 13
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x30

    const/high16 v3, -0x80000000

    if-eq v1, v2, :cond_1

    const v1, 0x8000

    and-int v2, v0, v1

    if-eq v2, v1, :cond_1

    and-int v1, v0, v3

    if-eq v1, v3, :cond_2

    :cond_1
    const v1, -0x8001

    and-int/2addr v0, v1

    .line 15
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v3

    .line 16
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 17
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 18
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 19
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-ge p1, p3, :cond_2

    if-ge p2, p4, :cond_2

    .line 20
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 21
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 22
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    sub-int/2addr p3, v2

    sub-int/2addr p4, v3

    .line 23
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x30

    const/high16 v3, -0x80000000

    if-eq v1, v2, :cond_1

    const v1, 0x8000

    and-int v2, v0, v1

    if-eq v2, v1, :cond_1

    and-int v1, v0, v3

    if-eq v1, v3, :cond_2

    :cond_1
    const v1, -0x8001

    and-int/2addr v0, v1

    .line 3
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v3

    .line 4
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 8
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 9
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 10
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 11
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {p1, p0, v1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public invalidate(Z)V
    .locals 4

    .line 26
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x30

    const/high16 v3, -0x80000000

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_1

    const v1, 0x8000

    and-int v2, v0, v1

    if-eq v2, v1, :cond_2

    :cond_1
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    iget-boolean v1, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v0, v1, :cond_4

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 29
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 30
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    if-eqz p1, :cond_3

    or-int p1, v0, v3

    .line 31
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x8001

    and-int/2addr p1, v0

    .line 32
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 33
    :cond_3
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 34
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 35
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 36
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 4
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 5
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public invalidateInheritedLayoutMode(I)V
    .locals 0

    return-void
.end method

.method public invalidateParentCaches()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    :cond_0
    return-void
.end method

.method public invalidateParentIfNeeded()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public invalidateViewProperty(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3
    iget-object p2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 4
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5
    iget p2, p0, Landroid/view/View;->mRight:I

    iget v0, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p2, v0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object p2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 7
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p2, p0, p1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    :cond_3
    if-eqz p2, :cond_4

    .line 10
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

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

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionableForAccessibility()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

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

.method public isActivated()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

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

.method public isDirty()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x600000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

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

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHovered()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x700000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 4
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-ne v4, v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/view/View;->hasListenersForAccessibility()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public isInEditMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInLayout()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 3
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    return v0

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public isLaidOut()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutDirectionInherited()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLongClickable()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

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

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaddingOffsetRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

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

.method public isPaddingResolved()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPressed()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

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

.method public isRootNamespace()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSaveFromParentEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollContainer()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShown()Z
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    iget v1, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0xc

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_2
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextAlignmentInherited()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextDirectionInherited()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalScrollBarHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 4
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 5
    check-cast v0, Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v2

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 9
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 10
    invoke-virtual {p0, v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    if-eqz p1, :cond_5

    .line 11
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 12
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 18

    move-object/from16 v10, p0

    .line 1
    iget v0, v10, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget v0, v10, Landroid/view/View;->mOldWidthMeasureSpec:I

    iget v1, v10, Landroid/view/View;->mOldHeightMeasureSpec:I

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->onMeasure(II)V

    .line 3
    iget v0, v10, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v10, Landroid/view/View;->mPrivateFlags3:I

    .line 4
    :cond_0
    iget v11, v10, Landroid/view/View;->mLeft:I

    .line 5
    iget v12, v10, Landroid/view/View;->mTop:I

    .line 6
    iget v13, v10, Landroid/view/View;->mBottom:I

    .line 7
    iget v14, v10, Landroid/view/View;->mRight:I

    .line 8
    iget-object v0, v10, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p4}, Landroid/view/View;->setOpticalFrame(IIII)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    :goto_0
    move v1, v0

    if-nez v1, :cond_2

    .line 9
    iget v0, v10, Landroid/view/View;->mPrivateFlags:I

    const/16 v2, 0x2000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 11
    iget v0, v10, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, v10, Landroid/view/View;->mPrivateFlags:I

    .line 12
    iget-object v0, v10, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v9, :cond_3

    .line 16
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v11

    move v7, v12

    move/from16 v16, v8

    move v8, v14

    move/from16 v17, v9

    move v9, v13

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    add-int/lit8 v8, v16, 0x1

    move/from16 v9, v17

    goto :goto_1

    .line 17
    :cond_3
    iget v0, v10, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, v10, Landroid/view/View;->mPrivateFlags:I

    .line 18
    iget v0, v10, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v10, Landroid/view/View;->mPrivateFlags3:I

    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public final measure(II)V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 4
    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->right:I

    add-int/2addr v2, v3

    .line 5
    iget v3, v1, Landroid/graphics/Insets;->top:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v3, v1

    if-eqz v0, :cond_0

    neg-int v2, v2

    .line 6
    :cond_0
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p1

    if-eqz v0, :cond_1

    neg-int v3, v3

    .line 7
    :cond_1
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p2

    :cond_2
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 8
    iget-object v3, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-nez v3, :cond_3

    new-instance v3, Landroid/util/LongSparseLongArray;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/util/LongSparseLongArray;-><init>(I)V

    iput-object v3, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    .line 9
    :cond_3
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v3, 0x1000

    const/16 v7, 0x1000

    if-eq v4, v7, :cond_4

    iget v4, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v4, :cond_8

    :cond_4
    and-int/lit16 v3, v3, -0x801

    .line 10
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 12
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_5

    const/4 v3, -0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_7

    .line 13
    sget-boolean v4, Landroid/view/View;->sIgnoreMeasureCache:Z

    if-eqz v4, :cond_6

    goto :goto_1

    .line 14
    :cond_6
    iget-object v4, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v3

    shr-long v7, v3, v2

    long-to-int v7, v7

    long-to-int v3, v3

    .line 15
    invoke-virtual {p0, v7, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16
    iget v3, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_2

    .line 17
    :cond_7
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 18
    iget v3, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 19
    :goto_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v3, 0x800

    const/16 v7, 0x800

    if-ne v4, v7, :cond_9

    or-int/lit16 v3, v3, 0x2000

    .line 20
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 21
    :cond_8
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 22
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 23
    iget-object p1, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    iget p2, p0, Landroid/view/View;->mMeasuredWidth:I

    int-to-long v3, p2

    shl-long v2, v3, v2

    iget p2, p0, Landroid/view/View;->mMeasuredHeight:I

    int-to-long v7, p2

    and-long v4, v7, v5

    or-long/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public needGlobalAttributesUpdate(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 3
    iget-boolean p1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez p1, :cond_0

    iget p1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez p1, :cond_0

    iget-boolean p1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    :cond_1
    return-void
.end method

.method public notifyGlobalFocusCleared(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x8000000

    and-int v2, v0, v1

    if-nez v2, :cond_1

    or-int/2addr v0, v1

    .line 3
    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 4
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-interface {v0, p0, p0, v1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not fully implement ViewParent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyViewAccessibilityStateChangedIfNeeded(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    invoke-virtual {v0, p1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->runOrPost(I)V

    return-void
.end method

.method public offsetLeftAndRight(I)V
    .locals 8

    if-eqz p1, :cond_8

    .line 1
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 3
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_3

    .line 5
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_5

    .line 6
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_5

    .line 7
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    if-gez p1, :cond_3

    .line 8
    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v5, p1

    .line 9
    iget v6, p0, Landroid/view/View;->mRight:I

    goto :goto_2

    .line 10
    :cond_3
    iget v5, p0, Landroid/view/View;->mLeft:I

    .line 11
    iget v6, p0, Landroid/view/View;->mRight:I

    add-int/2addr v6, p1

    :goto_2
    sub-int/2addr v6, v5

    .line 12
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {v4, v2, v2, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 15
    :cond_5
    :goto_3
    iget v3, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/view/View;->mLeft:I

    .line 16
    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/view/View;->mRight:I

    .line 17
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_6

    int-to-float p1, p1

    .line 18
    invoke-virtual {v3, p1}, Landroid/view/DisplayList;->offsetLeftAndRight(F)V

    .line 19
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    .line 20
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 21
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_8
    :goto_4
    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 10

    if-eqz p1, :cond_8

    .line 1
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 3
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_3

    .line 5
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_5

    .line 6
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_5

    .line 7
    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    if-gez p1, :cond_3

    .line 8
    iget v5, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, p1

    .line 9
    iget v6, p0, Landroid/view/View;->mBottom:I

    move v7, p1

    goto :goto_2

    .line 10
    :cond_3
    iget v5, p0, Landroid/view/View;->mTop:I

    .line 11
    iget v6, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v6, p1

    move v7, v2

    .line 12
    :goto_2
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v5

    invoke-virtual {v4, v2, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 15
    :cond_5
    :goto_3
    iget v3, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/view/View;->mTop:I

    .line 16
    iget v3, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/view/View;->mBottom:I

    .line 17
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_6

    int-to-float p1, p1

    .line 18
    invoke-virtual {v3, p1}, Landroid/view/DisplayList;->offsetTopAndBottom(F)V

    .line 19
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    .line 20
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 21
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_8
    :goto_4
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 5
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 12
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Landroid/view/DisplayList;->clearDirty()V

    :cond_3
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    .line 3
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v1, 0x4000

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    or-int/lit8 v2, v2, 0x8

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_4

    or-int/lit8 v2, v2, 0x2

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    or-int/lit8 v2, v2, 0x1

    :cond_5
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    or-int/lit8 v2, v2, 0x20

    .line 6
    :cond_6
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    or-int/lit8 v2, v2, 0x40

    :cond_7
    const/high16 v0, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    or-int/lit16 v2, v2, 0x80

    .line 7
    :cond_8
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    or-int/lit16 v2, v2, 0x100

    :cond_9
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    or-int/lit16 v2, v2, 0x200

    .line 8
    :cond_a
    sget-object v0, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v0, v2

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    if-eqz v0, :cond_c

    .line 9
    array-length v1, v0

    add-int/2addr v1, p1

    new-array p1, v1, [I

    .line 10
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 11
    :cond_c
    new-array p1, p1, [I

    :goto_1
    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    .line 3
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 4
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 5
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 6
    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 9
    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public onDisplayHint(I)V
    .locals 0

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v8, :cond_10

    .line 2
    iget v0, v8, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    if-ne v0, v9, :cond_3

    .line 3
    iget-object v0, v8, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v0, :cond_1

    new-array v0, v10, [F

    .line 4
    iput-object v0, v8, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 5
    :cond_1
    iget-object v0, v8, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 6
    iget-object v2, v8, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_2

    .line 7
    iput v1, v8, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, v8, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    :goto_0
    move v11, v10

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, v8, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    move v11, v1

    .line 10
    :goto_1
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_4

    move v2, v10

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_5

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v3

    if-nez v3, :cond_5

    move v12, v10

    goto :goto_3

    :cond_5
    move v12, v1

    :goto_3
    if-nez v12, :cond_6

    if-eqz v2, :cond_10

    .line 12
    :cond_6
    iget v3, v7, Landroid/view/View;->mRight:I

    iget v4, v7, Landroid/view/View;->mLeft:I

    sub-int v13, v3, v4

    .line 13
    iget v3, v7, Landroid/view/View;->mBottom:I

    iget v4, v7, Landroid/view/View;->mTop:I

    sub-int v14, v3, v4

    .line 14
    iget-object v15, v8, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 15
    iget v6, v7, Landroid/view/View;->mScrollX:I

    .line 16
    iget v5, v7, Landroid/view/View;->mScrollY:I

    const/high16 v3, 0x2000000

    and-int/2addr v0, v3

    if-nez v0, :cond_7

    const/4 v0, -0x1

    move/from16 v16, v0

    goto :goto_4

    :cond_7
    move/from16 v16, v1

    :goto_4
    if-eqz v2, :cond_a

    .line 17
    invoke-virtual {v15, v1}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v0

    if-gtz v0, :cond_8

    .line 18
    iget v0, v8, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 19
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v4

    invoke-virtual {v15, v2, v3, v4, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    if-eqz v12, :cond_9

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    :cond_9
    add-int v2, v5, v14

    sub-int/2addr v2, v0

    .line 21
    iget v3, v7, Landroid/view/View;->mUserPaddingBottom:I

    and-int v3, v3, v16

    sub-int v4, v2, v3

    .line 22
    iget v2, v7, Landroid/view/View;->mPaddingLeft:I

    and-int v2, v2, v16

    add-int v3, v6, v2

    add-int v2, v6, v13

    .line 23
    iget v9, v7, Landroid/view/View;->mUserPaddingRight:I

    and-int v9, v9, v16

    sub-int/2addr v2, v9

    sub-int v9, v2, v1

    add-int v2, v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v17, v2

    move-object v2, v15

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move v5, v9

    move/from16 v21, v6

    move/from16 v6, v17

    .line 24
    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz v11, :cond_b

    move/from16 v4, v17

    move/from16 v6, v18

    move/from16 v2, v19

    .line 25
    invoke-virtual {v7, v6, v2, v9, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_5

    :cond_a
    move/from16 v20, v5

    move/from16 v21, v6

    :cond_b
    :goto_5
    if-eqz v12, :cond_10

    .line 26
    invoke-virtual {v15, v10}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v0

    if-gtz v0, :cond_c

    .line 27
    iget v0, v8, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 28
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v3

    invoke-virtual {v15, v1, v2, v3, v10}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 29
    iget v1, v7, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-nez v1, :cond_e

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_d

    move v9, v10

    goto :goto_6

    :cond_d
    const/4 v9, 0x2

    :goto_6
    move v1, v9

    :cond_e
    if-eq v1, v10, :cond_f

    add-int v6, v21, v13

    sub-int/2addr v6, v0

    .line 31
    iget v1, v7, Landroid/view/View;->mUserPaddingRight:I

    and-int v1, v1, v16

    sub-int/2addr v6, v1

    goto :goto_7

    .line 32
    :cond_f
    iget v1, v7, Landroid/view/View;->mUserPaddingLeft:I

    and-int v1, v1, v16

    add-int v6, v21, v1

    :goto_7
    move v8, v6

    .line 33
    iget v1, v7, Landroid/view/View;->mPaddingTop:I

    and-int v1, v1, v16

    add-int v9, v20, v1

    add-int v10, v8, v0

    add-int v5, v20, v14

    .line 34
    iget v0, v7, Landroid/view/View;->mUserPaddingBottom:I

    and-int v0, v0, v16

    sub-int v12, v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v12

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz v11, :cond_10

    .line 36
    invoke-virtual {v7, v8, v9, v10, v12}, Landroid/view/View;->invalidate(IIII)V

    :cond_10
    return-void
.end method

.method public onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public onFinishInflate()V
    .locals 0

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p3, 0x8

    .line 1
    invoke-virtual {p0, p3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 3
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p3

    if-nez p1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    iget-object p2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p3, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 9
    iget-object p2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_4

    iget-boolean p2, p2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p3, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    :cond_4
    :goto_1
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->invalidate(Z)V

    .line 12
    iget-object p2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz p2, :cond_5

    .line 13
    iget-object p2, p2, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz p2, :cond_5

    .line 14
    invoke-interface {p2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 15
    :cond_5
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p1, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public onFocusLost()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHoverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    const/16 v2, 0x9

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v1, v6}, Landroid/view/View;->pointInView(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x80

    .line 4
    invoke-direct {p0, v1}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 5
    iput-boolean v4, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v1, v6}, Landroid/view/View;->pointInView(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    :cond_2
    iput-boolean v5, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    const/16 v1, 0x100

    .line 8
    invoke-direct {p0, v1}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 9
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 11
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0, v5}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setHovered(Z)V

    .line 14
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    return v4

    :cond_6
    return v5
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 2
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 16
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 9
    :cond_0
    iget v0, p0, Landroid/view/View;->mID:I

    const/16 v1, 0x10

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 11
    :cond_1
    iget v3, p0, Landroid/view/View;->mID:I

    invoke-direct {v0, p0, v3}, Landroid/view/View;->findLabelForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    .line 13
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/View;->mID:I

    invoke-static {v0}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Landroid/view/View;->mID:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_3
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-eq v0, v2, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, p0

    .line 18
    :cond_4
    iget v2, p0, Landroid/view/View;->mLabelForId:I

    invoke-direct {v0, p0, v2}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 20
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 21
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 22
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    const/4 v0, 0x4

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 38
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x40

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    :cond_8
    const/16 v0, 0x80

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 41
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 43
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x20

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 45
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    const/high16 v0, 0x20000

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x100

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x200

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0xb

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    :cond_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    and-int/lit16 v1, p1, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_1

    const/high16 v1, 0x200000

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5
    invoke-direct {p0, v0}, Landroid/view/View;->checkForLongClick(I)V

    return v3

    :cond_2
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x4000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    .line 5
    iget-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead. This usually happens "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "This view\'s id is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {p1, v2}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "other views do not use the same id."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 4
    iget-object p2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p2, :cond_1

    .line 5
    iput-boolean p1, p2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    :cond_1
    return-void
.end method

.method public onSetAlpha(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    const/high16 v3, 0x200000

    const/16 v4, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_0

    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr p1, v4

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    and-int/lit16 p1, v0, 0x4000

    if-eq p1, v4, :cond_2

    and-int p1, v0, v3

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5

    .line 4
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v1, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v5

    :cond_4
    and-int/lit16 v1, v0, 0x4000

    if-eq v1, v4, :cond_6

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    goto :goto_1

    :cond_5
    return v6

    .line 6
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x2000000

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    if-eq v0, v5, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    goto/16 :goto_4

    .line 7
    :cond_7
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 9
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto/16 :goto_4

    .line 10
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v0

    int-to-float p1, p1

    .line 12
    iget v1, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/View;->pointInView(FFF)Z

    move-result p1

    if-nez p1, :cond_17

    .line 13
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 14
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr p1, v4

    if-eqz p1, :cond_17

    .line 15
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 16
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_4

    .line 17
    :cond_9
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int v0, p1, v1

    if-eqz v0, :cond_a

    move v0, v5

    goto :goto_2

    :cond_a
    move v0, v6

    :goto_2
    and-int/2addr p1, v4

    if-nez p1, :cond_b

    if-eqz v0, :cond_17

    .line 18
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_c

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v6

    :cond_c
    if-eqz v0, :cond_d

    .line 20
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 21
    :cond_d
    iget-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez p1, :cond_f

    .line 22
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    if-nez v6, :cond_f

    .line 23
    iget-object p1, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez p1, :cond_e

    .line 24
    new-instance p1, Landroid/view/View$PerformClick;

    invoke-direct {p1, p0, v2}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object p1, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 25
    :cond_e
    iget-object p1, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 27
    :cond_f
    iget-object p1, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez p1, :cond_10

    .line 28
    new-instance p1, Landroid/view/View$UnsetPressedState;

    invoke-direct {p1, p0, v2}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object p1, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    :cond_10
    if-eqz v0, :cond_11

    .line 29
    iget-object p1, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 30
    :cond_11
    iget-object p1, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 31
    iget-object p1, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p1}, Landroid/view/View$UnsetPressedState;->run()V

    .line 32
    :cond_12
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_4

    .line 33
    :cond_13
    iput-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_4

    .line 35
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 36
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 37
    iget-object p1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez p1, :cond_15

    .line 38
    new-instance p1, Landroid/view/View$CheckForTap;

    invoke-direct {p1, p0, v2}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object p1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 39
    :cond_15
    iget-object p1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 40
    :cond_16
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 41
    invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V

    :cond_17
    :goto_4
    return v5
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_1

    .line 1
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 p2, 0x8000000

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez p1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 6
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 7
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "             DIRTY("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x600000

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") DRAWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CACHE_VALID("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, 0x8000

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") INVALIDATED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, p3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 5

    .line 1
    iget p9, p0, Landroid/view/View;->mOverScrollMode:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v4

    if-le v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz p9, :cond_3

    if-ne p9, v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p9, :cond_5

    if-ne p9, v3, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move p9, v2

    goto :goto_5

    :cond_5
    :goto_4
    move p9, v3

    :goto_5
    add-int/2addr p3, p1

    if-nez v0, :cond_6

    move p7, v2

    :cond_6
    add-int/2addr p4, p2

    if-nez p9, :cond_7

    move p8, v2

    :cond_7
    neg-int p1, p7

    add-int/2addr p7, p5

    neg-int p2, p8

    add-int/2addr p8, p6

    if-le p3, p7, :cond_8

    move p3, p7

    :goto_6
    move p1, v3

    goto :goto_7

    :cond_8
    if-ge p3, p1, :cond_9

    move p3, p1

    goto :goto_6

    :cond_9
    move p1, v2

    :goto_7
    if-le p4, p8, :cond_a

    move p4, p8

    :goto_8
    move p2, v3

    goto :goto_9

    :cond_a
    if-ge p4, p2, :cond_b

    move p4, p2

    goto :goto_8

    :cond_b
    move p2, v2

    .line 4
    :goto_9
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/view/View;->onOverScrolled(IIZZ)V

    if-nez p1, :cond_c

    if-eqz p2, :cond_d

    :cond_c
    move v2, v3

    :cond_d
    return v2
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_c

    const/16 v2, 0x8

    if-eq p1, v2, :cond_b

    const/16 v2, 0x10

    if-eq p1, v2, :cond_a

    const/16 v2, 0x20

    if-eq p1, v2, :cond_9

    const/16 v2, 0x40

    if-eq p1, v2, :cond_8

    const/16 v2, 0x80

    if-eq p1, v2, :cond_7

    const/16 v2, 0x100

    const-string v3, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    const-string v4, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    if-eq p1, v2, :cond_6

    const/16 v2, 0x200

    if-eq p1, v2, :cond_5

    const/high16 v2, 0x20000

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, -0x1

    if-eqz p2, :cond_2

    const-string v2, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 2
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    if-eqz p2, :cond_3

    const-string v3, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 3
    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result p2

    if-ne p2, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result p2

    if-eq p2, p1, :cond_f

    :cond_4
    if-ne v2, p1, :cond_f

    .line 5
    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setAccessibilitySelection(II)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return v1

    :cond_5
    if-eqz p2, :cond_f

    .line 7
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 9
    invoke-direct {p0, p1, v0, p2}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result p1

    return p1

    :cond_6
    if-eqz p2, :cond_f

    .line 10
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 12
    invoke-direct {p0, p1, v1, p2}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result p1

    return p1

    .line 13
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    return v1

    .line 15
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p1

    if-nez p1, :cond_f

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result p1

    return p1

    .line 17
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    return v1

    .line 19
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return v1

    .line 21
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 24
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_f

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    return p1

    .line 27
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 30
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_f

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_f
    :goto_1
    return v0
.end method

.method public performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v3, v1, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 5
    iget-object v1, v1, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v0

    :cond_0
    return v2
.end method

.method public performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 2

    and-int/lit8 p2, p2, 0xc

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v0, 0x4000000

    and-int/2addr p2, v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iput-boolean v1, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3
    :cond_0
    iget p2, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 4
    iget-object p2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p2}, Landroid/view/View$ListenerInfo;->access$1100(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iput-boolean v1, p1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    :cond_1
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result p1

    return p1
.end method

.method public performHapticFeedback(II)Z
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, p1, v1}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result p1

    return p1
.end method

.method public performLongClick()Z
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final pointInView(FF)Z
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 1
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    iget p1, p0, Landroid/view/View;->mBottom:I

    iget v0, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pointInView(FFF)Z
    .locals 2

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Landroid/view/View;->mBottom:I

    iget v0, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr p1, p3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public postInvalidate()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 7

    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2
    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateDelayed(Landroid/view/View;J)V

    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 5
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 6
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 7
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 8
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 9
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 10
    iget-object p3, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p3, v1, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V

    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->dispatchInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation(IIII)V
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 5
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 6
    iput p1, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 7
    iput p2, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 8
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 9
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 10
    iget-object p1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p1, v1}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    :cond_0
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public recomputePadding()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public requestAccessibilityFocus()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int v3, v0, v1

    if-nez v3, :cond_3

    or-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    :cond_0
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    const/16 v0, 0x82

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;->requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final requestFocusFromTouch()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_0
    const/16 v0, 0x82

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clear()V

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->requestLayoutDuringLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p0, v0, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    .line 7
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 8
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 11
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-ne v1, p0, :cond_4

    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    :cond_4
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 8

    .line 2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v3, p0

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    invoke-interface {v2, v3, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    or-int/2addr v1, v4

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10
    :cond_2
    iget v4, v3, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v3, v3, Landroid/view/View;->mTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 11
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public resetPaddingToInitialValues()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    :goto_0
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 6
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    :goto_1
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_4

    .line 7
    :cond_3
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    :goto_2
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 8
    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    :goto_3
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_4
    return-void
.end method

.method public resetResolvedDrawables()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedPadding()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1e01

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetRtlProperties()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawables()V

    return-void
.end method

.method public resetSubtreeAccessibilityStateChanged()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resolveDrawables()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 5
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->onResolveDrawables(I)V

    return-void
.end method

.method public resolveLayoutDirection()Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 2
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v2, v0, 0xc

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    if-eq v2, v1, :cond_4

    if-eq v2, v3, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 5
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 7
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 9
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "View"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    or-int/lit8 v0, v0, 0x10

    .line 11
    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 12
    :cond_5
    :goto_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v1
.end method

.method public resolveLayoutParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->resolveLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 2
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v1, :cond_3

    .line 4
    :cond_0
    sget-object v1, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    iget-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-nez v1, :cond_2

    .line 9
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 10
    :cond_2
    iget-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v1, :cond_3

    .line 11
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    :cond_3
    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    if-eq v0, v1, :cond_6

    .line 12
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v1, v2, :cond_4

    .line 13
    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_0

    .line 14
    :cond_4
    iget v1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 15
    :goto_0
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v1, v2, :cond_5

    .line 16
    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_2

    .line 17
    :cond_5
    iget v1, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_2

    .line 18
    :cond_6
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v1, v2, :cond_7

    .line 19
    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_1

    .line 20
    :cond_7
    iget v1, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 21
    :goto_1
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v1, v2, :cond_8

    .line 22
    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_2

    .line 23
    :cond_8
    iget v1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 24
    :goto_2
    iget v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v1, :cond_9

    goto :goto_3

    :cond_9
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    :goto_3
    iput v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 25
    :cond_a
    iget v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v4, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 27
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->needRtlPropertiesResolution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isTextDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isTextAlignmentResolved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 9
    :cond_3
    invoke-direct {p0}, Landroid/view/View;->isDrawablesResolved()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public resolveTextAlignment()Z
    .locals 7

    const-string v0, " does not fully implement ViewParent"

    const-string v1, "View"

    .line 1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const v3, -0xf0001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 2
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x20000

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v0, v4

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 5
    :pswitch_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, v2, 0x11

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextAlignment()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 7
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v0, v4

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v5

    .line 8
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2}, Landroid/view/ViewParent;->isTextAlignmentResolved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    return v5

    .line 10
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2}, Landroid/view/ViewParent;->getTextAlignment()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 12
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v0, v4

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 13
    :pswitch_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    :catch_1
    move-exception v2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v3

    .line 16
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v0, v4

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17
    :goto_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resolveTextDirection()Z
    .locals 10

    const-string v0, " does not fully implement ViewParent"

    const-string v1, "View"

    .line 1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v2, v2, -0x1e01

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 2
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    .line 4
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 5
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, v2, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextDirection()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_2

    .line 7
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v8

    .line 8
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2}, Landroid/view/ViewParent;->isTextDirectionResolved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    return v8

    .line 10
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2}, Landroid/view/ViewParent;->getTextDirection()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    :goto_0
    if-eq v0, v3, :cond_4

    if-eq v0, v6, :cond_4

    if-eq v0, v7, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 12
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    .line 13
    :cond_4
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v0, v0, 0xa

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    :catch_1
    move-exception v2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v3

    .line 16
    :cond_5
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 17
    :goto_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return v3
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
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
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public rootViewRequestFocus()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
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
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 3
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    invoke-static {p3, p4}, Landroid/view/Choreographer;->subtractFrameDelay(J)J

    move-result-wide v5

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget p1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-ne v0, p1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq v1, p2, :cond_1

    .line 2
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 3
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 4
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 6
    iget p1, p0, Landroid/view/View;->mScrollX:I

    iget p2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    :goto_0
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x2a1bf

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public setAccessibilityLiveRegion(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x1800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 p1, p1, 0x17

    const/high16 v1, 0x1800000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    .line 3
    iput p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_0
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 1

    if-ne p1, p2, :cond_0

    .line 1
    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-ne p1, p2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 3
    iput p1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    :goto_0
    const/16 p1, 0x2000

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setActivated(Z)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eq v2, p1, :cond_2

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    :cond_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 3
    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000

    or-int/2addr p1, v1

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr p1, v1

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10
    iget-object p1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlphaNoInvalidation(F)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 3
    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x40001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7
    iget-object p1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setAlpha(F)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroid/view/View;->mBackgroundResource:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 6
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-nez v3, :cond_2

    .line 7
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 11
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 14
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 15
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 16
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v4, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0

    .line 17
    :cond_3
    iget v2, v3, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 18
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 19
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v4, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 20
    :goto_0
    iput-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 21
    iput-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 22
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v0

    .line 23
    :goto_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 26
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 27
    iput-object p1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_b

    and-int/lit16 p1, p1, -0x81

    .line 29
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 p1, p1, 0x100

    .line 30
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_4

    .line 31
    :cond_9
    iput-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 32
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_a

    and-int/lit16 p1, p1, -0x101

    .line 33
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 p1, p1, 0x80

    .line 34
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_a
    :goto_4
    move v2, v0

    .line 35
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    if-eqz v2, :cond_c

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 37
    :cond_c
    iput-boolean v0, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    return-void
.end method

.method public final setBottom(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v0, :cond_8

    .line 2
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_4

    .line 5
    iget v3, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, p1

    .line 6
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v5

    invoke-virtual {p0, v1, v1, v4, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8
    :cond_4
    :goto_3
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v3

    .line 9
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    .line 10
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 11
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v4, p1}, Landroid/view/DisplayList;->setBottom(I)V

    .line 13
    :cond_5
    iget p1, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v4

    invoke-direct {p0, v1, p1, v1, v3}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v0, :cond_7

    .line 14
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    :cond_6
    or-int/lit8 p1, p1, 0x20

    .line 16
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 17
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 18
    :cond_7
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 20
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_8

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_8
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 3
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    .line 4
    iget-object v3, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 5
    invoke-static {v3}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    new-instance v4, Landroid/graphics/Camera;

    invoke-direct {v4}, Landroid/graphics/Camera;-><init>()V

    invoke-static {v3, v4}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 7
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v3, v4}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 8
    :cond_0
    invoke-static {v3}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    neg-float v5, v5

    div-float/2addr v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v5}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 9
    iput-boolean v0, v3, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 10
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 11
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 13
    :cond_1
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_2
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    const/16 v0, 0x4000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 5
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 6
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    :cond_3
    :goto_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :goto_1
    return-void
.end method

.method public setDisabledSystemUiVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 2
    iget v1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    .line 4
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDisplayListProperties(Landroid/view/DisplayList;)V
    .locals 13

    if-eqz p1, :cond_8

    .line 1
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setHasOverlappingRendering(Z)V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/DisplayList;->setClipToBounds(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget v1, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v1

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_3
    move v3, v2

    .line 12
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_7

    .line 13
    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    mul-float/2addr v3, v0

    cmpg-float v0, v3, v2

    if-gez v0, :cond_5

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v3

    .line 15
    :goto_3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v6, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v7, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    iget v8, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v9, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v10, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v11, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v12, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/view/DisplayList;->setTransformationInfo(FFFFFFFF)V

    .line 16
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    if-nez v0, :cond_6

    .line 17
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1902(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 18
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 19
    :cond_6
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 20
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotY(F)V

    goto :goto_4

    :cond_7
    cmpg-float v0, v3, v2

    if-gez v0, :cond_8

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/DisplayList;->setAlpha(F)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    const v1, 0x8000

    if-eqz p1, :cond_0

    move v0, v1

    .line 2
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1

    const/high16 v0, 0x180000

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 1

    const/high16 v0, 0x400000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x20

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_2
    return-void
.end method

.method public setFadingEdgeLength(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .locals 1

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setFlags(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3
    :goto_0
    iget v4, p0, Landroid/view/View;->mViewFlags:I

    not-int v5, p2

    and-int/2addr v5, v4

    and-int/2addr p2, p1

    or-int/2addr p2, v5

    .line 4
    iput p2, p0, Landroid/view/View;->mViewFlags:I

    xor-int/2addr p2, v4

    if-nez p2, :cond_1

    return-void

    .line 5
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_3

    and-int/lit8 v7, v5, 0x10

    if-eqz v7, :cond_3

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_2

    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    and-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_3

    .line 7
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_3

    invoke-interface {v4, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    :cond_3
    :goto_1
    and-int/lit8 p1, p1, 0xc

    if-nez p1, :cond_4

    and-int/lit8 v4, p2, 0xc

    if-eqz v4, :cond_4

    .line 8
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 11
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    if-le v5, v7, :cond_4

    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    if-le v5, v7, :cond_4

    .line 12
    invoke-interface {v4, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    :cond_4
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_8

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    iget v4, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 17
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 19
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_6

    .line 20
    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->invalidate(Z)V

    .line 21
    :cond_6
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 22
    :cond_7
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_8

    .line 23
    iput-boolean v2, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    :cond_8
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_b

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 25
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 26
    iget v4, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    if-eq v4, p0, :cond_a

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 29
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 30
    :cond_a
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_b

    .line 31
    iput-boolean v2, v4, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    :cond_b
    and-int/lit8 v4, p2, 0xc

    if-eqz v4, :cond_f

    if-eqz p1, :cond_c

    .line 32
    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    .line 33
    :cond_c
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_d

    .line 34
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, p0, v4, p1}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 35
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2

    :cond_d
    if-eqz v5, :cond_e

    const/4 v7, 0x0

    .line 36
    invoke-interface {v5, p0, v7}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 37
    :cond_e
    :goto_2
    invoke-virtual {p0, p0, p1}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    :cond_f
    const/high16 p1, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_10

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_10
    const p1, 0x8000

    and-int/2addr p1, p2

    const v5, -0x8001

    if-eqz p1, :cond_11

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 40
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr p1, v5

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    :cond_11
    const/high16 p1, 0x180000

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 43
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr p1, v5

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_12
    and-int/lit16 p1, p2, 0x80

    if-eqz p1, :cond_15

    .line 44
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_14

    .line 45
    iget-object p1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_13

    .line 46
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 p1, p1, 0x100

    .line 47
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3

    .line 48
    :cond_13
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3

    .line 49
    :cond_14
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 50
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 51
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    :cond_15
    const/high16 p1, 0x4000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_16

    .line 52
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_16

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_16

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v2, :cond_16

    .line 53
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_16
    if-eqz v0, :cond_1a

    if-nez v6, :cond_18

    if-nez v4, :cond_18

    and-int/lit16 p1, p2, 0x4000

    if-nez p1, :cond_18

    const/high16 p1, 0x200000

    and-int/2addr p1, p2

    if-eqz p1, :cond_17

    goto :goto_4

    :cond_17
    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_1a

    .line 54
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_5

    .line 55
    :cond_18
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result p1

    if-eq v3, p1, :cond_19

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_5

    .line 57
    :cond_19
    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_1a
    :goto_5
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x40000

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 2

    const/high16 v0, 0x40000

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setFlags(II)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setFlags(II)V

    :cond_1
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/view/View;->mLeft:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    iget v3, p0, Landroid/view/View;->mRight:I

    if-ne v3, p3, :cond_0

    iget v3, p0, Landroid/view/View;->mTop:I

    if-ne v3, p2, :cond_0

    iget v3, p0, Landroid/view/View;->mBottom:I

    if-eq v3, p4, :cond_7

    .line 2
    :cond_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    .line 3
    iget v4, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v4, v0

    .line 4
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v5

    sub-int v5, p3, p1

    sub-int v6, p4, p2

    if-ne v5, v4, :cond_1

    if-eq v6, v0, :cond_2

    :cond_1
    move v1, v2

    .line 5
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 6
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 7
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 8
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 9
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 10
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_3

    .line 11
    invoke-virtual {v7, p1, p2, p3, p4}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 12
    :cond_3
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    if-eqz v1, :cond_5

    const/high16 p2, 0x20000000

    and-int/2addr p1, p2

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz p1, :cond_4

    .line 14
    iput-boolean v2, p1, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 15
    :cond_4
    invoke-direct {p0, v5, v6, v4, v0}, Landroid/view/View;->sizeChange(IIII)V

    .line 16
    :cond_5
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 p1, p1, 0xc

    if-nez p1, :cond_6

    .line 17
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 20
    :cond_6
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr p1, v3

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 21
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    move v1, v2

    :cond_7
    return v1
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 1

    const/high16 v0, 0x10000000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setHasTransientState(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-eqz p1, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    const-string v2, "View"

    const/4 v3, 0x0

    if-gez v1, :cond_1

    .line 2
    iput v3, p0, Landroid/view/View;->mTransientStateCount:I

    const-string p1, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls"

    .line 3
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    if-eq v1, v0, :cond_3

    :cond_2
    if-nez p1, :cond_5

    if-nez v1, :cond_5

    .line 4
    :cond_3
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    if-eqz p1, :cond_4

    const/high16 v3, -0x80000000

    :cond_4
    or-int/2addr v0, v3

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_5

    .line 6
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not fully implement ViewParent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3
    :cond_0
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/View;->mViewFlags:I

    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroid/view/View;->mViewFlags:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 2

    const/high16 v0, 0x10000000

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int v1, p1, v0

    if-nez v1, :cond_1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const v0, -0x10000001

    and-int/2addr p1, v0

    .line 6
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setId(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/view/View;->mID:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Landroid/view/View;->mLabelForId:I

    if-eq p1, v0, :cond_0

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    iput p1, p0, Landroid/view/View;->mID:I

    :cond_0
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 3
    :goto_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const v4, -0x700001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 p1, p1, 0x14

    const/high16 v4, 0x700000

    and-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 4
    iput p1, p0, Landroid/view/View;->mPrivateFlags2:I

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result p1

    if-eq v1, p1, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_4

    .line 7
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_5
    :goto_4
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_0
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    const/high16 v0, 0x4000000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setLabelFor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput p1, p0, Landroid/view/View;->mLabelForId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget p1, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    iput p1, p0, Landroid/view/View;->mID:I

    :cond_0
    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 4

    if-ltz p1, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    .line 1
    iget v1, p0, Landroid/view/View;->mLayerType:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_0
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->destroyLayer(Z)Z

    .line 7
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8
    :goto_0
    iput p1, p0, Landroid/view/View;->mLayerType:I

    if-nez p1, :cond_5

    move v3, v2

    :cond_5
    const/4 p1, 0x0

    if-eqz v3, :cond_6

    move-object p2, p1

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    .line 9
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_7
    :goto_1
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_8

    goto :goto_2

    .line 10
    :cond_8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :goto_2
    iput-object p1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    return-void

    .line 13
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->resetRtlProperties()V

    .line 4
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const-string v0, "Layout parameters cannot be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    .line 4
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setLeft(I)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v0, :cond_8

    .line 2
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_4

    .line 5
    iget v3, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v3, :cond_2

    sub-int v3, p1, v3

    move v4, p1

    goto :goto_2

    :cond_2
    move v4, v3

    move v3, v1

    .line 6
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v5, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v3, v1, v5, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8
    :cond_4
    :goto_3
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v3

    .line 9
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    .line 10
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 11
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v4, p1}, Landroid/view/DisplayList;->setLeft(I)V

    .line 13
    :cond_5
    iget p1, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v4

    invoke-direct {p0, p1, v3, v1, v3}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v0, :cond_7

    .line 14
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    :cond_6
    or-int/lit8 p1, p1, 0x20

    .line 16
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 17
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 18
    :cond_7
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 20
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_8

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_8
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    const/high16 v0, 0x200000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 4
    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->right:I

    add-int/2addr v2, v3

    .line 5
    iget v3, v1, Landroid/graphics/Insets;->top:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v2, v2

    :goto_0
    add-int/2addr p1, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    neg-int v3, v3

    :goto_1
    add-int/2addr p2, v3

    .line 6
    :cond_2
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 7
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 8
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    return-void
.end method

.method public setNextFocusForwardId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$1102(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 2
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 3
    iput v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 4
    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 5
    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 7
    iput-boolean v0, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    .line 2
    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 3
    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    .line 5
    iput-boolean v0, p0, Landroid/view/View;->mRightPaddingDefined:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 7
    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 8
    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0

    .line 10
    :cond_0
    iput p3, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    .line 11
    iput p1, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .line 12
    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    and-int v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 4
    :goto_0
    iget v6, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    cmpl-float v6, v6, p1

    if-nez v6, :cond_1

    if-nez v3, :cond_3

    :cond_1
    or-int/2addr v1, v2

    .line 5
    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6
    invoke-virtual {p0, v5, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 7
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 8
    iput-boolean v5, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 12
    :cond_2
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_3
    return-void
.end method

.method public setPivotY(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000000

    and-int v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 4
    :goto_0
    iget v6, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    cmpl-float v6, v6, p1

    if-nez v6, :cond_1

    if-nez v3, :cond_3

    :cond_1
    or-int/2addr v1, v2

    .line 5
    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6
    invoke-virtual {p0, v5, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 7
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 8
    iput-boolean v5, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 12
    :cond_2
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_3
    return-void
.end method

.method public setPressed(Z)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v0, 0x4000

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz p1, :cond_2

    or-int/2addr v0, v4

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x4001

    .line 3
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_2
    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    return-void
.end method

.method public final setRight(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/view/View;->mRight:I

    if-eq p1, v0, :cond_8

    .line 2
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_4

    .line 5
    iget v3, p0, Landroid/view/View;->mRight:I

    if-ge p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, p1

    .line 6
    :goto_2
    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v1, v1, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8
    :cond_4
    :goto_3
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v3

    .line 9
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    .line 10
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 11
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v4, p1}, Landroid/view/DisplayList;->setRight(I)V

    .line 13
    :cond_5
    iget p1, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v4

    invoke-direct {p0, p1, v3, v1, v3}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v0, :cond_7

    .line 14
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    :cond_6
    or-int/lit8 p1, p1, 0x20

    .line 16
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 17
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 18
    :cond_7
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 20
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_8

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_8
    return-void
.end method

.method public setRotation(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 5
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 6
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setRotation(F)V

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_1
    return-void
.end method

.method public setRotationX(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 5
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 6
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setRotationX(F)V

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_1
    return-void
.end method

.method public setRotationY(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 5
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 6
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setRotationY(F)V

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_1
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 1

    const/high16 v0, 0x10000

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setSaveFromParentEnabled(Z)V
    .locals 1

    const/high16 v0, 0x20000000

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 5
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 6
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setScaleX(F)V

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_1
    return-void
.end method

.method public setScaleY(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 5
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 6
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setScaleY(F)V

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_1
    return-void
.end method

.method public setScrollBarDefaultDelayBeforeFade(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    return-void
.end method

.method public setScrollBarFadeDuration(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    return-void
.end method

.method public setScrollBarSize(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x3000000

    and-int v2, v0, v1

    if-eq p1, v2, :cond_0

    const v2, -0x3000001

    and-int/2addr v0, v2

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Landroid/view/View;->mViewFlags:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2

    const/high16 v0, 0x100000

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object p1, p1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x180001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_0
    return-void
.end method

.method public setScrollX(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public setScrollY(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput p1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput p1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eq v1, p1, :cond_3

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    or-int/2addr v0, v1

    .line 2
    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    if-nez p1, :cond_2

    .line 3
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 4
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 7
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_3
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 1

    const/high16 v0, 0x8000000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 3
    iget-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key must be an application-specific resource id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key must be a framework-specific resource id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextAlignment(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xe001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 4
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 p1, p1, 0xd

    const v1, 0xe000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public setTextDirection(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1c1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 4
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x1c0

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public final setTop(I)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/view/View;->mTop:I

    if-eq p1, v0, :cond_8

    .line 2
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_4

    .line 5
    iget v3, p0, Landroid/view/View;->mTop:I

    if-ge p1, v3, :cond_2

    sub-int v3, p1, v3

    move v4, p1

    goto :goto_2

    :cond_2
    move v4, v3

    move v3, v1

    .line 6
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v6, v4

    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 8
    :cond_4
    :goto_3
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v3

    .line 9
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    .line 10
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 11
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v4, p1}, Landroid/view/DisplayList;->setTop(I)V

    .line 13
    :cond_5
    iget p1, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v4

    invoke-direct {p0, v1, p1, v1, v3}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v0, :cond_7

    .line 14
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    :cond_6
    or-int/lit8 p1, p1, 0x20

    .line 16
    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 17
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 18
    :cond_7
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 20
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_8

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_8
    return-void
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-void
.end method

.method public setTransitionAlpha(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 3
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    .line 4
    iget p1, p0, Landroid/view/View;->mPrivateFlags:I

    const v0, -0x40001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 6
    iget-object p1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 5
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 6
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setTranslationX(F)V

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 3
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 5
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 6
    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 8
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setTranslationY(F)V

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_1
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3
    :cond_0
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 p1, p1, 0x2000

    iput p1, p0, Landroid/view/View;->mViewFlags:I

    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget p1, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 p1, p1, 0x200

    iput p1, p0, Landroid/view/View;->mViewFlags:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 2
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 1

    const/high16 v0, 0x20000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setWillNotDraw(Z)V
    .locals 1

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result p1

    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 4
    iget v4, v2, Landroid/graphics/Point;->x:I

    if-ltz v4, :cond_1

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_1

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-ltz v4, :cond_1

    iget v4, v3, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_1

    .line 5
    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4}, Landroid/view/Surface;-><init>()V

    const/4 v11, 0x0

    .line 6
    :try_start_0
    iget-object v5, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v7, v5, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, p4

    move-object v10, v4

    invoke-interface/range {v5 .. v10}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v14

    if-eqz v14, :cond_0

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v4, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v11, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9
    invoke-virtual {v0, v5}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v4, v5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    move-object/from16 v5, p3

    .line 12
    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 14
    iget-object v0, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v13, v0, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v15, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, p1

    invoke-interface/range {v12 .. v19}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v11

    .line 15
    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v4, v5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "View"

    const-string v3, "Unable to initiate drag"

    .line 17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    invoke-virtual {v4}, Landroid/view/Surface;->destroy()V

    :cond_0
    :goto_0
    return v11

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toGlobalMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/View;->transformMotionEventToGlobal(Landroid/view/MotionEvent;)V

    .line 3
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v1, v1

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public toLocalMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View;->transformMotionEventToLocal(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x49

    const/16 v5, 0x56

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/16 v8, 0x2e

    if-eqz v3, :cond_2

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_0

    .line 7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v3, 0x47

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :goto_0
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    const/4 v9, 0x1

    and-int/2addr v3, v9

    const/16 v10, 0x46

    if-ne v3, v9, :cond_3

    move v3, v10

    goto :goto_1

    :cond_3
    move v3, v8

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v3, v2

    if-nez v3, :cond_4

    const/16 v3, 0x45

    goto :goto_2

    :cond_4
    move v3, v8

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v3, v1

    const/16 v9, 0x44

    if-ne v3, v1, :cond_5

    move v1, v8

    goto :goto_3

    :cond_5
    move v1, v9

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x48

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v8

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v5, v8

    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_8

    const/16 v1, 0x43

    goto :goto_6

    :cond_8
    move v1, v8

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x200000

    and-int/2addr v1, v5

    if-eqz v1, :cond_9

    const/16 v1, 0x4c

    goto :goto_7

    :cond_9
    move v1, v8

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_a

    const/16 v1, 0x52

    goto :goto_8

    :cond_a
    move v1, v8

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    move v10, v8

    :goto_9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_c

    const/16 v1, 0x53

    goto :goto_a

    :cond_c
    move v1, v8

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x2000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_d

    const/16 v1, 0x70

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    const/16 v1, 0x50

    goto :goto_b

    :cond_e
    move v1, v8

    .line 24
    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :goto_c
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_f

    goto :goto_d

    :cond_f
    move v3, v8

    :goto_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    const/16 v1, 0x41

    goto :goto_e

    :cond_10
    move v1, v8

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_11

    goto :goto_f

    :cond_11
    move v4, v8

    :goto_f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, 0x600000

    and-int/2addr v1, v3

    if-eqz v1, :cond_12

    move v8, v9

    :cond_12
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget v2, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    const-string v2, " #"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    const/high16 v4, 0x1000000

    if-eq v3, v4, :cond_14

    const/high16 v4, 0x7f000000

    if-eq v3, v4, :cond_13

    .line 41
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_13
    const-string v3, "app"

    goto :goto_10

    :cond_14
    const-string v3, "android"

    .line 42
    :goto_10
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_15
    const-string/jumbo v1, "}"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformRect(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public unFocus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->clearFocusInternal(ZZ)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLocalSystemUiVisibility(II)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
