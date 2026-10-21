package android.view;

import android.R;
import android.content.ClipData;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Interpolator;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManagerGlobal;
import android.media.AudioSystem;
import android.net.ProxyProperties;
import android.net.http.CharArrayBuffers;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatProperty;
import android.util.Log;
import android.util.LongSparseLongArray;
import android.util.Pools;
import android.util.Property;
import android.util.SparseArray;
import android.util.SuperNotCalledException;
import android.util.TypedValue;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityEventSource;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.ExpandableListView;
import android.widget.ScrollBarDrawable;
import com.android.internal.view.menu.c;
import com.google.android.collect.Lists;
import com.google.android.collect.Maps;
import i.a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import u.k;

/* JADX INFO: loaded from: classes.dex */
public class View implements Drawable.Callback, KeyEvent.Callback, AccessibilityEventSource {
    public static final int ACCESSIBILITY_CURSOR_POSITION_UNDEFINED = -1;
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_DEFAULT = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    public static final int ALL_RTL_PROPERTIES_RESOLVED = 1610678816;
    public static final Property<View, Float> ALPHA;
    public static final int CLICKABLE = 16384;
    private static final boolean DBG = false;
    public static final String DEBUG_LAYOUT_PROPERTY = "debug.layout";
    public static final int DISABLED = 32;
    public static final int DRAG_FLAG_GLOBAL = 1;
    public static final int DRAG_MASK = 3;
    public static final int DRAWING_CACHE_ENABLED = 32768;
    public static final int DRAWING_CACHE_QUALITY_AUTO = 0;
    public static final int DRAWING_CACHE_QUALITY_HIGH = 1048576;
    public static final int DRAWING_CACHE_QUALITY_LOW = 524288;
    public static final int DRAWING_CACHE_QUALITY_MASK = 1572864;
    public static final int DRAW_MASK = 128;
    public static final int DUPLICATE_PARENT_STATE = 4194304;
    public static final int[] EMPTY_STATE_SET;
    public static final int ENABLED = 0;
    public static final int[] ENABLED_FOCUSED_SELECTED_STATE_SET;
    public static final int[] ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] ENABLED_FOCUSED_STATE_SET;
    public static final int[] ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET;
    public static final int ENABLED_MASK = 32;
    public static final int[] ENABLED_SELECTED_STATE_SET;
    public static final int[] ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] ENABLED_STATE_SET;
    public static final int[] ENABLED_WINDOW_FOCUSED_STATE_SET;
    public static final int FADING_EDGE_HORIZONTAL = 4096;
    public static final int FADING_EDGE_MASK = 12288;
    public static final int FADING_EDGE_NONE = 0;
    public static final int FADING_EDGE_VERTICAL = 8192;
    public static final int FILTER_TOUCHES_WHEN_OBSCURED = 1024;
    public static final int FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS = 4;
    public static final int FIND_VIEWS_WITH_CONTENT_DESCRIPTION = 2;
    public static final int FIND_VIEWS_WITH_TEXT = 1;
    private static final int FITS_SYSTEM_WINDOWS = 2;
    private static final int FOCUSABLE = 1;
    public static final int FOCUSABLES_ALL = 0;
    public static final int FOCUSABLES_TOUCH_MODE = 1;
    public static final int FOCUSABLE_IN_TOUCH_MODE = 262144;
    private static final int FOCUSABLE_MASK = 1;
    public static final int[] FOCUSED_SELECTED_STATE_SET;
    public static final int[] FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] FOCUSED_STATE_SET;
    public static final int[] FOCUSED_WINDOW_FOCUSED_STATE_SET;
    public static final int FOCUS_BACKWARD = 1;
    public static final int FOCUS_DOWN = 130;
    public static final int FOCUS_FORWARD = 2;
    public static final int FOCUS_LEFT = 17;
    public static final int FOCUS_RIGHT = 66;
    public static final int FOCUS_UP = 33;
    public static final int GONE = 8;
    public static final int HAPTIC_FEEDBACK_ENABLED = 268435456;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_DEFAULT = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int INVISIBLE = 4;
    public static final int KEEP_SCREEN_ON = 67108864;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    private static final int LAYOUT_DIRECTION_DEFAULT = 2;
    private static final int[] LAYOUT_DIRECTION_FLAGS;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RESOLVED_DEFAULT = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int LONG_CLICKABLE = 2097152;
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    public static final int MEASURED_SIZE_MASK = 16777215;
    public static final int MEASURED_STATE_MASK = -16777216;
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    public static final int NAVIGATION_BAR_TRANSIENT = 134217728;
    public static final int NAVIGATION_BAR_TRANSLUCENT = Integer.MIN_VALUE;
    public static final int NAVIGATION_BAR_UNHIDE = 536870912;
    private static final float NONZERO_EPSILON = 0.001f;
    private static final int NOT_FOCUSABLE = 0;
    public static final int NO_ID = -1;
    public static final int OPTIONAL_FITS_SYSTEM_WINDOWS = 2048;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int PARENT_SAVE_DISABLED = 536870912;
    public static final int PARENT_SAVE_DISABLED_MASK = 536870912;
    public static final int PFLAG2_ACCESSIBILITY_FOCUSED = 67108864;
    public static final int PFLAG2_ACCESSIBILITY_LIVE_REGION_MASK = 25165824;
    public static final int PFLAG2_ACCESSIBILITY_LIVE_REGION_SHIFT = 23;
    public static final int PFLAG2_DRAG_CAN_ACCEPT = 1;
    public static final int PFLAG2_DRAG_HOVERED = 2;
    public static final int PFLAG2_DRAWABLE_RESOLVED = 1073741824;
    public static final int PFLAG2_HAS_TRANSIENT_STATE = Integer.MIN_VALUE;
    public static final int PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK = 7340032;
    public static final int PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_SHIFT = 20;
    public static final int PFLAG2_LAYOUT_DIRECTION_MASK = 12;
    public static final int PFLAG2_LAYOUT_DIRECTION_MASK_SHIFT = 2;
    public static final int PFLAG2_LAYOUT_DIRECTION_RESOLVED = 32;
    public static final int PFLAG2_LAYOUT_DIRECTION_RESOLVED_MASK = 48;
    public static final int PFLAG2_LAYOUT_DIRECTION_RESOLVED_RTL = 16;
    public static final int PFLAG2_PADDING_RESOLVED = 536870912;
    public static final int PFLAG2_SUBTREE_ACCESSIBILITY_STATE_CHANGED = 134217728;
    private static final int[] PFLAG2_TEXT_ALIGNMENT_FLAGS;
    public static final int PFLAG2_TEXT_ALIGNMENT_MASK = 57344;
    public static final int PFLAG2_TEXT_ALIGNMENT_MASK_SHIFT = 13;
    public static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED = 65536;
    private static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED_DEFAULT = 131072;
    public static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK = 917504;
    public static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT = 17;
    private static final int[] PFLAG2_TEXT_DIRECTION_FLAGS;
    public static final int PFLAG2_TEXT_DIRECTION_MASK = 448;
    public static final int PFLAG2_TEXT_DIRECTION_MASK_SHIFT = 6;
    public static final int PFLAG2_TEXT_DIRECTION_RESOLVED = 512;
    public static final int PFLAG2_TEXT_DIRECTION_RESOLVED_DEFAULT = 1024;
    public static final int PFLAG2_TEXT_DIRECTION_RESOLVED_MASK = 7168;
    public static final int PFLAG2_TEXT_DIRECTION_RESOLVED_MASK_SHIFT = 10;
    public static final int PFLAG2_VIEW_QUICK_REJECTED = 268435456;
    public static final int PFLAG3_CALLED_SUPER = 16;
    public static final int PFLAG3_IS_LAID_OUT = 4;
    public static final int PFLAG3_MEASURE_NEEDED_BEFORE_LAYOUT = 8;
    public static final int PFLAG3_VIEW_IS_ANIMATING_ALPHA = 2;
    public static final int PFLAG3_VIEW_IS_ANIMATING_TRANSFORM = 1;
    public static final int PFLAG_ACTIVATED = 1073741824;
    public static final int PFLAG_ALPHA_SET = 262144;
    public static final int PFLAG_ANIMATION_STARTED = 65536;
    private static final int PFLAG_AWAKEN_SCROLL_BARS_ON_ATTACH = 134217728;
    public static final int PFLAG_CANCEL_NEXT_UP_EVENT = 67108864;
    public static final int PFLAG_DIRTY = 2097152;
    public static final int PFLAG_DIRTY_MASK = 6291456;
    public static final int PFLAG_DIRTY_OPAQUE = 4194304;
    public static final int PFLAG_DRAWABLE_STATE_DIRTY = 1024;
    public static final int PFLAG_DRAWING_CACHE_VALID = 32768;
    public static final int PFLAG_DRAWN = 32;
    public static final int PFLAG_DRAW_ANIMATION = 64;
    public static final int PFLAG_FOCUSED = 2;
    public static final int PFLAG_FORCE_LAYOUT = 4096;
    public static final int PFLAG_HAS_BOUNDS = 16;
    private static final int PFLAG_HOVERED = 268435456;
    public static final int PFLAG_INVALIDATED = Integer.MIN_VALUE;
    public static final int PFLAG_IS_ROOT_NAMESPACE = 8;
    public static final int PFLAG_LAYOUT_REQUIRED = 8192;
    public static final int PFLAG_MEASURED_DIMENSION_SET = 2048;
    public static final int PFLAG_ONLY_DRAWS_BACKGROUND = 256;
    public static final int PFLAG_OPAQUE_BACKGROUND = 8388608;
    public static final int PFLAG_OPAQUE_MASK = 25165824;
    public static final int PFLAG_OPAQUE_SCROLLBARS = 16777216;
    private static final int PFLAG_PIVOT_EXPLICITLY_SET = 536870912;
    private static final int PFLAG_PREPRESSED = 33554432;
    private static final int PFLAG_PRESSED = 16384;
    public static final int PFLAG_REQUEST_TRANSPARENT_REGIONS = 512;
    private static final int PFLAG_SAVE_STATE_CALLED = 131072;
    public static final int PFLAG_SCROLL_CONTAINER = 524288;
    public static final int PFLAG_SCROLL_CONTAINER_ADDED = 1048576;
    public static final int PFLAG_SELECTED = 4;
    public static final int PFLAG_SKIP_DRAW = 128;
    public static final int PFLAG_WANTS_FOCUS = 1;
    private static final int POPULATING_ACCESSIBILITY_EVENT_TYPES = 172479;
    public static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET;
    public static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] PRESSED_ENABLED_FOCUSED_STATE_SET;
    public static final int[] PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] PRESSED_ENABLED_SELECTED_STATE_SET;
    public static final int[] PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] PRESSED_ENABLED_STATE_SET;
    public static final int[] PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] PRESSED_FOCUSED_SELECTED_STATE_SET;
    public static final int[] PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] PRESSED_FOCUSED_STATE_SET;
    public static final int[] PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] PRESSED_SELECTED_STATE_SET;
    public static final int[] PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int[] PRESSED_STATE_SET;
    public static final int[] PRESSED_WINDOW_FOCUSED_STATE_SET;
    public static final int PUBLIC_STATUS_BAR_VISIBILITY_MASK = 65535;
    public static final Property<View, Float> ROTATION;
    public static final Property<View, Float> ROTATION_X;
    public static final Property<View, Float> ROTATION_Y;
    public static final int SAVE_DISABLED = 65536;
    public static final int SAVE_DISABLED_MASK = 65536;
    public static final Property<View, Float> SCALE_X;
    public static final Property<View, Float> SCALE_Y;
    public static final int SCREEN_STATE_OFF = 0;
    public static final int SCREEN_STATE_ON = 1;
    public static final int SCROLLBARS_HORIZONTAL = 256;
    public static final int SCROLLBARS_INSET_MASK = 16777216;
    public static final int SCROLLBARS_INSIDE_INSET = 16777216;
    public static final int SCROLLBARS_INSIDE_OVERLAY = 0;
    public static final int SCROLLBARS_MASK = 768;
    public static final int SCROLLBARS_NONE = 0;
    public static final int SCROLLBARS_OUTSIDE_INSET = 50331648;
    public static final int SCROLLBARS_OUTSIDE_MASK = 33554432;
    public static final int SCROLLBARS_OUTSIDE_OVERLAY = 33554432;
    public static final int SCROLLBARS_STYLE_MASK = 50331648;
    public static final int SCROLLBARS_VERTICAL = 512;
    public static final int SCROLLBAR_POSITION_DEFAULT = 0;
    public static final int SCROLLBAR_POSITION_LEFT = 1;
    public static final int SCROLLBAR_POSITION_RIGHT = 2;
    public static final int[] SELECTED_STATE_SET;
    public static final int[] SELECTED_WINDOW_FOCUSED_STATE_SET;
    public static final int SOUND_EFFECTS_ENABLED = 134217728;
    public static final int STATUS_BAR_DISABLE_BACK = 4194304;
    public static final int STATUS_BAR_DISABLE_CLOCK = 8388608;
    public static final int STATUS_BAR_DISABLE_EXPAND = 65536;
    public static final int STATUS_BAR_DISABLE_HOME = 2097152;
    public static final int STATUS_BAR_DISABLE_NOTIFICATION_ALERTS = 262144;
    public static final int STATUS_BAR_DISABLE_NOTIFICATION_ICONS = 131072;
    public static final int STATUS_BAR_DISABLE_NOTIFICATION_TICKER = 524288;
    public static final int STATUS_BAR_DISABLE_RECENT = 16777216;
    public static final int STATUS_BAR_DISABLE_SEARCH = 33554432;
    public static final int STATUS_BAR_DISABLE_SYSTEM_INFO = 1048576;
    public static final int STATUS_BAR_HIDDEN = 1;
    public static final int STATUS_BAR_TRANSIENT = 67108864;
    public static final int STATUS_BAR_TRANSLUCENT = 1073741824;
    public static final int STATUS_BAR_UNHIDE = 268435456;
    public static final int STATUS_BAR_VISIBLE = 0;
    public static final int SYSTEM_UI_CLEARABLE_FLAGS = 7;
    public static final int SYSTEM_UI_FLAG_FULLSCREEN = 4;
    public static final int SYSTEM_UI_FLAG_HIDE_NAVIGATION = 2;
    public static final int SYSTEM_UI_FLAG_IMMERSIVE = 2048;
    public static final int SYSTEM_UI_FLAG_IMMERSIVE_STICKY = 4096;
    public static final int SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN = 1024;
    public static final int SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION = 512;
    public static final int SYSTEM_UI_FLAG_LAYOUT_STABLE = 256;
    public static final int SYSTEM_UI_FLAG_LOW_PROFILE = 1;
    public static final int SYSTEM_UI_FLAG_SHOW_FULLSCREEN = 8;
    public static final int SYSTEM_UI_FLAG_VISIBLE = 0;
    public static final int SYSTEM_UI_LAYOUT_FLAGS = 1536;
    public static final int TEXT_ALIGNMENT_CENTER = 4;
    private static final int TEXT_ALIGNMENT_DEFAULT = 1;
    public static final int TEXT_ALIGNMENT_GRAVITY = 1;
    public static final int TEXT_ALIGNMENT_INHERIT = 0;
    public static final int TEXT_ALIGNMENT_RESOLVED_DEFAULT = 1;
    public static final int TEXT_ALIGNMENT_TEXT_END = 3;
    public static final int TEXT_ALIGNMENT_TEXT_START = 2;
    public static final int TEXT_ALIGNMENT_VIEW_END = 6;
    public static final int TEXT_ALIGNMENT_VIEW_START = 5;
    public static final int TEXT_DIRECTION_ANY_RTL = 2;
    private static final int TEXT_DIRECTION_DEFAULT = 0;
    public static final int TEXT_DIRECTION_FIRST_STRONG = 1;
    public static final int TEXT_DIRECTION_INHERIT = 0;
    public static final int TEXT_DIRECTION_LOCALE = 5;
    public static final int TEXT_DIRECTION_LTR = 3;
    public static final int TEXT_DIRECTION_RESOLVED_DEFAULT = 1;
    public static final int TEXT_DIRECTION_RTL = 4;
    public static final Property<View, Float> TRANSLATION_X;
    public static final Property<View, Float> TRANSLATION_Y;
    private static final int UNDEFINED_PADDING = Integer.MIN_VALUE;
    public static final String VIEW_LOG_TAG = "View";
    public static final int VIEW_STATE_ACCELERATED = 64;
    public static final int VIEW_STATE_ACTIVATED = 32;
    public static final int VIEW_STATE_DRAG_CAN_ACCEPT = 256;
    public static final int VIEW_STATE_DRAG_HOVERED = 512;
    public static final int VIEW_STATE_ENABLED = 8;
    public static final int VIEW_STATE_FOCUSED = 4;
    public static final int VIEW_STATE_HOVERED = 128;
    public static final int[] VIEW_STATE_IDS;
    public static final int VIEW_STATE_PRESSED = 16;
    public static final int VIEW_STATE_SELECTED = 2;
    private static final int[][] VIEW_STATE_SETS;
    public static final int VIEW_STATE_WINDOW_FOCUSED = 1;
    public static final int VISIBILITY_MASK = 12;
    public static final int VISIBLE = 0;
    public static final int WILL_NOT_CACHE_DRAWING = 131072;
    public static final int WILL_NOT_DRAW = 128;
    public static final int[] WINDOW_FOCUSED_STATE_SET;
    public static final Property<View, Float> X;
    public static final Property<View, Float> Y;
    private static boolean sCompatibilityDone = false;
    private static boolean sIgnoreMeasureCache = false;
    private static int sNextAccessibilityViewId = 0;
    private static final AtomicInteger sNextGeneratedId;
    public static final ThreadLocal<Rect> sThreadLocal;
    private static boolean sUseBrokenMakeMeasureSpec = false;
    private int mAccessibilityCursorPosition;
    public AccessibilityDelegate mAccessibilityDelegate;
    public int mAccessibilityViewId;
    private ViewPropertyAnimator mAnimator;
    public AttachInfo mAttachInfo;

    @ViewDebug.ExportedProperty(deepExport = true, prefix = "bg_")
    private Drawable mBackground;
    private int mBackgroundResource;
    private boolean mBackgroundSizeChanged;

    @ViewDebug.ExportedProperty(category = "layout")
    public int mBottom;
    public boolean mCachingFailed;
    private Rect mClipBounds;
    private CharSequence mContentDescription;
    public Context mContext;
    public Animation mCurrentAnimation;
    public DisplayList mDisplayList;
    private int[] mDrawableState;
    private Bitmap mDrawingCache;
    private int mDrawingCacheBackgroundColor;
    private ViewTreeObserver mFloatingTreeObserver;
    private HardwareLayer mHardwareLayer;
    private boolean mHasPerformedLongPress;

    @ViewDebug.ExportedProperty(resolveId = true)
    public int mID;
    public final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    private SparseArray<Object> mKeyedTags;
    private int mLabelForId;
    private boolean mLastIsOpaque;
    public Paint mLayerPaint;

    @ViewDebug.ExportedProperty(category = "drawing", mapping = {@ViewDebug.IntToString(from = 0, to = "NONE"), @ViewDebug.IntToString(from = 1, to = "SOFTWARE"), @ViewDebug.IntToString(from = 2, to = "HARDWARE")})
    public int mLayerType;
    private Insets mLayoutInsets;
    public ViewGroup.LayoutParams mLayoutParams;

    @ViewDebug.ExportedProperty(category = "layout")
    public int mLeft;
    private boolean mLeftPaddingDefined;
    public ListenerInfo mListenerInfo;
    public Rect mLocalDirtyRect;
    private MatchIdPredicate mMatchIdPredicate;
    private MatchLabelForPredicate mMatchLabelForPredicate;
    private LongSparseLongArray mMeasureCache;

    @ViewDebug.ExportedProperty(category = "measurement")
    public int mMeasuredHeight;

    @ViewDebug.ExportedProperty(category = "measurement")
    public int mMeasuredWidth;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mMinHeight;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mMinWidth;
    private int mNextFocusDownId;
    public int mNextFocusForwardId;
    private int mNextFocusLeftId;
    private int mNextFocusRightId;
    private int mNextFocusUpId;
    public int mOldHeightMeasureSpec;
    public int mOldWidthMeasureSpec;
    private int mOverScrollMode;
    public ViewOverlay mOverlay;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mPaddingBottom;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mPaddingLeft;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mPaddingRight;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mPaddingTop;
    public ViewParent mParent;
    private CheckForLongPress mPendingCheckForLongPress;
    private CheckForTap mPendingCheckForTap;
    private PerformClick mPerformClick;

    @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 4096, mask = 4096, name = "FORCE_LAYOUT"), @ViewDebug.FlagToString(equals = 8192, mask = 8192, name = "LAYOUT_REQUIRED"), @ViewDebug.FlagToString(equals = 32768, mask = 32768, name = "DRAWING_CACHE_INVALID", outputIf = false), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "DRAWN", outputIf = true), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "NOT_DRAWN", outputIf = false), @ViewDebug.FlagToString(equals = 4194304, mask = 6291456, name = "DIRTY_OPAQUE"), @ViewDebug.FlagToString(equals = 2097152, mask = 6291456, name = "DIRTY")})
    public int mPrivateFlags;
    public int mPrivateFlags2;
    public int mPrivateFlags3;
    public boolean mRecreateDisplayList;
    private final Resources mResources;

    @ViewDebug.ExportedProperty(category = "layout")
    public int mRight;
    private boolean mRightPaddingDefined;
    private ScrollabilityCache mScrollCache;

    @ViewDebug.ExportedProperty(category = "scrolling")
    public int mScrollX;

    @ViewDebug.ExportedProperty(category = "scrolling")
    public int mScrollY;
    private SendViewScrolledAccessibilityEvent mSendViewScrolledAccessibilityEvent;
    public SendViewStateChangedAccessibilityEvent mSendViewStateChangedAccessibilityEvent;
    private boolean mSendingHoverAccessibilityEvents;

    @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 1, mask = 1, name = "SYSTEM_UI_FLAG_LOW_PROFILE", outputIf = true), @ViewDebug.FlagToString(equals = 2, mask = 2, name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION", outputIf = true), @ViewDebug.FlagToString(equals = 0, mask = 65535, name = "SYSTEM_UI_FLAG_VISIBLE", outputIf = true)})
    public int mSystemUiVisibility;
    public Object mTag;

    @ViewDebug.ExportedProperty(category = "layout")
    public int mTop;
    private TouchDelegate mTouchDelegate;
    private int mTouchSlop;
    public TransformationInfo mTransformationInfo;
    public int mTransientStateCount;
    private Bitmap mUnscaledDrawingCache;
    private UnsetPressedState mUnsetPressedState;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mUserPaddingBottom;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mUserPaddingEnd;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mUserPaddingLeft;
    public int mUserPaddingLeftInitial;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mUserPaddingRight;
    public int mUserPaddingRightInitial;

    @ViewDebug.ExportedProperty(category = "padding")
    public int mUserPaddingStart;
    private float mVerticalScrollFactor;
    private int mVerticalScrollbarPosition;

    @ViewDebug.ExportedProperty
    public int mViewFlags;
    public int mWindowAttachCount;
    private static final int[] VISIBILITY_FLAGS = {0, 4, 8};
    private static final int[] DRAWING_CACHE_QUALITY_FLAGS = {0, 524288, 1048576};

    public static class AccessibilityDelegate {
        public AccessibilityNodeInfo createAccessibilityNodeInfo(View view) {
            return view.createAccessibilityNodeInfoInternal();
        }

        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return view.dispatchPopulateAccessibilityEventInternal(accessibilityEvent);
        }

        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            return null;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            view.onInitializeAccessibilityEventInternal(accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            view.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        }

        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            view.onPopulateAccessibilityEventInternal(accessibilityEvent);
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return viewGroup.onRequestSendAccessibilityEventInternal(view, accessibilityEvent);
        }

        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            return view.performAccessibilityActionInternal(i2, bundle);
        }

        public void sendAccessibilityEvent(View view, int i2) {
            view.sendAccessibilityEventInternal(i2);
        }

        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            view.sendAccessibilityEventUncheckedInternal(accessibilityEvent);
        }
    }

    public static class AttachInfo {
        public int mAccessibilityFetchFlags;
        public Drawable mAccessibilityFocusDrawable;
        public float mApplicationScale;
        public Canvas mCanvas;
        public int mDisabledSystemUiVisibility;
        public final Display mDisplay;
        public long mDrawingTime;
        public boolean mForceReportNewAttributes;
        public int mGlobalSystemUiVisibility;
        public final Handler mHandler;
        public boolean mHardwareAccelerated;
        public boolean mHardwareAccelerationRequested;
        public HardwareCanvas mHardwareCanvas;
        public HardwareRenderer mHardwareRenderer;
        public boolean mHasNonEmptyGivenInternalInsets;
        public boolean mHasSystemUiListeners;
        public boolean mHasWindowFocus;
        public IWindowId mIWindowId;
        public boolean mIgnoreDirtyState;
        public boolean mInTouchMode;
        public boolean mKeepScreenOn;
        public boolean mOverscanRequested;
        public IBinder mPanelParentWindowToken;
        public boolean mRecomputeGlobalAttributes;
        public final Callbacks mRootCallbacks;
        public View mRootView;
        public boolean mScalingRequired;
        public boolean mScreenOn;
        public final IWindowSession mSession;
        public Surface mSurface;
        public int mSystemUiVisibility;
        public boolean mTurnOffWindowResizeAnim;
        public boolean mUse32BitDrawingCache;
        public View mViewRequestingLayout;
        public final ViewRootImpl mViewRootImpl;
        public boolean mViewScrollChanged;
        public boolean mViewVisibilityChanged;
        public final IWindow mWindow;
        public WindowId mWindowId;
        public int mWindowLeft;
        public final IBinder mWindowToken;
        public int mWindowTop;
        public int mWindowVisibility;
        public final Rect mOverscanInsets = new Rect();
        public final Rect mContentInsets = new Rect();
        public final Rect mVisibleInsets = new Rect();
        public final ViewTreeObserver.InternalInsetsInfo mGivenInternalInsets = new ViewTreeObserver.InternalInsetsInfo();
        public final ArrayList<View> mScrollContainers = new ArrayList<>();
        public final KeyEvent.DispatcherState mKeyDispatchState = new KeyEvent.DispatcherState();
        public boolean mSetIgnoreDirtyState = false;
        public final int[] mTransparentLocation = new int[2];
        public final int[] mInvalidateChildLocation = new int[2];
        public final float[] mTmpTransformLocation = new float[2];
        public final ViewTreeObserver mTreeObserver = new ViewTreeObserver();
        public final Rect mTmpInvalRect = new Rect();
        public final RectF mTmpTransformRect = new RectF();
        public final Matrix mTmpMatrix = new Matrix();
        public final Transformation mTmpTransformation = new Transformation();
        public final ArrayList<View> mTempArrayList = new ArrayList<>(24);
        public int mAccessibilityWindowId = -1;
        public boolean mDebugLayout = SystemProperties.getBoolean(View.DEBUG_LAYOUT_PROPERTY, false);
        public final Point mPoint = new Point();

        public interface Callbacks {
            boolean performHapticFeedback(int i2, boolean z2);

            void playSoundEffect(int i2);
        }

        public static class InvalidateInfo {
            private static final int POOL_LIMIT = 10;
            private static final Pools.SynchronizedPool<InvalidateInfo> sPool = new Pools.SynchronizedPool<>(10);
            public int bottom;
            public int left;
            public int right;
            public View target;
            public int top;

            public static InvalidateInfo obtain() {
                InvalidateInfo invalidateInfoAcquire = sPool.acquire();
                return invalidateInfoAcquire != null ? invalidateInfoAcquire : new InvalidateInfo();
            }

            public void recycle() {
                this.target = null;
                sPool.release(this);
            }
        }

        public AttachInfo(IWindowSession iWindowSession, IWindow iWindow, Display display, ViewRootImpl viewRootImpl, Handler handler, Callbacks callbacks) {
            this.mSession = iWindowSession;
            this.mWindow = iWindow;
            this.mWindowToken = iWindow.asBinder();
            this.mDisplay = display;
            this.mViewRootImpl = viewRootImpl;
            this.mHandler = handler;
            this.mRootCallbacks = callbacks;
        }
    }

    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new Parcelable.Creator<BaseSavedState>() { // from class: android.view.View.BaseSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BaseSavedState[] newArray(int i2) {
                return new BaseSavedState[i2];
            }
        };

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public class CheckForLongPress implements Runnable {
        private int mOriginalWindowAttachCount;

        public CheckForLongPress() {
        }

        public void rememberWindowAttachCount() {
            this.mOriginalWindowAttachCount = View.this.mWindowAttachCount;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (View.this.isPressed()) {
                View view = View.this;
                if (view.mParent != null && this.mOriginalWindowAttachCount == view.mWindowAttachCount && view.performLongClick()) {
                    View.this.mHasPerformedLongPress = true;
                }
            }
        }
    }

    public final class CheckForTap implements Runnable {
        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = View.this;
            view.mPrivateFlags &= -33554433;
            view.setPressed(true);
            View.this.checkForLongClick(ViewConfiguration.getTapTimeout());
        }
    }

    public static class ListenerInfo {
        private CopyOnWriteArrayList<OnAttachStateChangeListener> mOnAttachStateChangeListeners;
        public OnClickListener mOnClickListener;
        public OnCreateContextMenuListener mOnCreateContextMenuListener;
        private OnDragListener mOnDragListener;
        public OnFocusChangeListener mOnFocusChangeListener;
        private OnGenericMotionListener mOnGenericMotionListener;
        private OnHoverListener mOnHoverListener;
        private OnKeyListener mOnKeyListener;
        private ArrayList<OnLayoutChangeListener> mOnLayoutChangeListeners;
        public OnLongClickListener mOnLongClickListener;
        private OnSystemUiVisibilityChangeListener mOnSystemUiVisibilityChangeListener;
        private OnTouchListener mOnTouchListener;
    }

    public class MatchIdPredicate implements k<View> {
        public int mId;

        private MatchIdPredicate() {
        }

        @Override // u.k
        public boolean apply(View view) {
            return view.mID == this.mId;
        }
    }

    public class MatchLabelForPredicate implements k<View> {
        private int mLabeledId;

        private MatchLabelForPredicate() {
        }

        @Override // u.k
        public boolean apply(View view) {
            return view.mLabelForId == this.mLabeledId;
        }
    }

    public static class MeasureSpec {
        public static final int AT_MOST = Integer.MIN_VALUE;
        public static final int EXACTLY = 1073741824;
        private static final int MODE_MASK = -1073741824;
        private static final int MODE_SHIFT = 30;
        public static final int UNSPECIFIED = 0;

        public static int adjust(int i2, int i3) {
            return makeMeasureSpec(getSize(i3 + i2), getMode(i2));
        }

        public static int getMode(int i2) {
            return i2 & (-1073741824);
        }

        public static int getSize(int i2) {
            return i2 & 1073741823;
        }

        public static int makeMeasureSpec(int i2, int i3) {
            return View.sUseBrokenMakeMeasureSpec ? i2 + i3 : (i2 & 1073741823) | (i3 & (-1073741824));
        }

        public static String toString(int i2) {
            int mode = getMode(i2);
            int size = getSize(i2);
            StringBuilder sb = new StringBuilder("MeasureSpec: ");
            if (mode == 0) {
                sb.append("UNSPECIFIED ");
            } else if (mode == 1073741824) {
                sb.append("EXACTLY ");
            } else if (mode == Integer.MIN_VALUE) {
                sb.append("AT_MOST ");
            } else {
                sb.append(mode);
                sb.append(" ");
            }
            sb.append(size);
            return sb.toString();
        }
    }

    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    public interface OnClickListener {
        void onClick(View view);
    }

    public interface OnCreateContextMenuListener {
        void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo);
    }

    public interface OnDragListener {
        boolean onDrag(View view, DragEvent dragEvent);
    }

    public interface OnFocusChangeListener {
        void onFocusChange(View view, boolean z2);
    }

    public interface OnGenericMotionListener {
        boolean onGenericMotion(View view, MotionEvent motionEvent);
    }

    public interface OnHoverListener {
        boolean onHover(View view, MotionEvent motionEvent);
    }

    public interface OnKeyListener {
        boolean onKey(View view, int i2, KeyEvent keyEvent);
    }

    public interface OnLayoutChangeListener {
        void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);
    }

    public interface OnLongClickListener {
        boolean onLongClick(View view);
    }

    public interface OnSystemUiVisibilityChangeListener {
        void onSystemUiVisibilityChange(int i2);
    }

    public interface OnTouchListener {
        boolean onTouch(View view, MotionEvent motionEvent);
    }

    public final class PerformClick implements Runnable {
        private PerformClick() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View.this.performClick();
        }
    }

    public static class ScrollabilityCache implements Runnable {
        public static final int FADING = 2;
        public static final int OFF = 0;
        public static final int ON = 1;
        private static final float[] OPAQUE = {255.0f};
        private static final float[] TRANSPARENT = {0.0f};
        public boolean fadeScrollBars;
        public long fadeStartTime;
        public int fadingEdgeLength;
        public View host;
        public float[] interpolatorValues;
        private int mLastColor;
        public final Matrix matrix;
        public final Paint paint;
        public ScrollBarDrawable scrollBar;
        public int scrollBarSize;
        public Shader shader;
        public final Interpolator scrollBarInterpolator = new Interpolator(1, 2);
        public int state = 0;
        public int scrollBarDefaultDelayBeforeFade = ViewConfiguration.getScrollDefaultDelay();
        public int scrollBarFadeDuration = ViewConfiguration.getScrollBarFadeDuration();

        public ScrollabilityCache(ViewConfiguration viewConfiguration, View view) {
            this.fadingEdgeLength = viewConfiguration.getScaledFadingEdgeLength();
            this.scrollBarSize = viewConfiguration.getScaledScrollBarSize();
            Paint paint = new Paint();
            this.paint = paint;
            this.matrix = new Matrix();
            LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, -16777216, 0, Shader.TileMode.CLAMP);
            this.shader = linearGradient;
            paint.setShader(linearGradient);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.host = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (jCurrentAnimationTimeMillis >= this.fadeStartTime) {
                int i2 = (int) jCurrentAnimationTimeMillis;
                Interpolator interpolator = this.scrollBarInterpolator;
                interpolator.setKeyFrame(0, i2, OPAQUE);
                interpolator.setKeyFrame(1, i2 + this.scrollBarFadeDuration, TRANSPARENT);
                this.state = 2;
                this.host.invalidate(true);
            }
        }

        public void setFadeColor(int i2) {
            if (i2 != this.mLastColor) {
                this.mLastColor = i2;
                if (i2 != 0) {
                    LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, i2 | (-16777216), i2 & 16777215, Shader.TileMode.CLAMP);
                    this.shader = linearGradient;
                    this.paint.setShader(linearGradient);
                    this.paint.setXfermode(null);
                    return;
                }
                LinearGradient linearGradient2 = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, -16777216, 0, Shader.TileMode.CLAMP);
                this.shader = linearGradient2;
                this.paint.setShader(linearGradient2);
                this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            }
        }
    }

    public class SendViewScrolledAccessibilityEvent implements Runnable {
        public volatile boolean mIsPending;

        private SendViewScrolledAccessibilityEvent() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View.this.sendAccessibilityEvent(4096);
            this.mIsPending = false;
        }
    }

    public class SendViewStateChangedAccessibilityEvent implements Runnable {
        private int mChangeTypes;
        private long mLastEventTimeMillis;
        private boolean mPosted;
        private boolean mPostedWithDelay;

        private SendViewStateChangedAccessibilityEvent() {
            this.mChangeTypes = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mPosted = false;
            this.mPostedWithDelay = false;
            this.mLastEventTimeMillis = SystemClock.uptimeMillis();
            if (AccessibilityManager.getInstance(View.this.mContext).isEnabled()) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(2048);
                accessibilityEventObtain.setContentChangeTypes(this.mChangeTypes);
                View.this.sendAccessibilityEventUnchecked(accessibilityEventObtain);
            }
            this.mChangeTypes = 0;
        }

        public void runOrPost(int i2) {
            this.mChangeTypes = i2 | this.mChangeTypes;
            if (View.this.inLiveRegion()) {
                if (this.mPostedWithDelay) {
                    View.this.removeCallbacks(this);
                    this.mPostedWithDelay = false;
                }
                if (this.mPosted) {
                    return;
                }
                View.this.post(this);
                this.mPosted = true;
                return;
            }
            if (this.mPosted) {
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis() - this.mLastEventTimeMillis;
            long sendRecurringAccessibilityEventsInterval = ViewConfiguration.getSendRecurringAccessibilityEventsInterval();
            if (jUptimeMillis >= sendRecurringAccessibilityEventsInterval) {
                View.this.removeCallbacks(this);
                run();
            } else {
                View.this.postDelayed(this, sendRecurringAccessibilityEventsInterval - jUptimeMillis);
                this.mPosted = true;
                this.mPostedWithDelay = true;
            }
        }
    }

    public static class TransformationInfo {
        private Matrix mInverseMatrix;
        private final Matrix mMatrix = new Matrix();
        public boolean mMatrixDirty = false;
        private boolean mInverseMatrixDirty = true;
        private boolean mMatrixIsIdentity = true;
        private Camera mCamera = null;
        private Matrix matrix3D = null;
        private int mPrevWidth = -1;
        private int mPrevHeight = -1;

        @ViewDebug.ExportedProperty
        public float mRotationY = 0.0f;

        @ViewDebug.ExportedProperty
        public float mRotationX = 0.0f;

        @ViewDebug.ExportedProperty
        public float mRotation = 0.0f;

        @ViewDebug.ExportedProperty
        public float mTranslationX = 0.0f;

        @ViewDebug.ExportedProperty
        public float mTranslationY = 0.0f;

        @ViewDebug.ExportedProperty
        public float mScaleX = 1.0f;

        @ViewDebug.ExportedProperty
        public float mScaleY = 1.0f;

        @ViewDebug.ExportedProperty
        public float mPivotX = 0.0f;

        @ViewDebug.ExportedProperty
        public float mPivotY = 0.0f;

        @ViewDebug.ExportedProperty
        public float mAlpha = 1.0f;
        public float mTransitionAlpha = 1.0f;
    }

    public final class UnsetPressedState implements Runnable {
        private UnsetPressedState() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View.this.setPressed(false);
        }
    }

    static {
        int[] iArr = {R.attr.state_window_focused, 1, R.attr.state_selected, 2, R.attr.state_focused, 4, R.attr.state_enabled, 8, R.attr.state_pressed, 16, R.attr.state_activated, 32, R.attr.state_accelerated, 64, R.attr.state_hovered, 128, R.attr.state_drag_can_accept, 256, R.attr.state_drag_hovered, 512};
        VIEW_STATE_IDS = iArr;
        if (iArr.length / 2 != a.ViewDrawableStates.length) {
            throw new IllegalStateException("VIEW_STATE_IDs array length does not match ViewDrawableStates style array");
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i2 = 0;
        while (true) {
            int[] iArr3 = a.ViewDrawableStates;
            if (i2 >= iArr3.length) {
                break;
            }
            int i3 = iArr3[i2];
            int i4 = 0;
            while (true) {
                int[] iArr4 = VIEW_STATE_IDS;
                if (i4 < iArr4.length) {
                    if (iArr4[i4] == i3) {
                        int i5 = i2 * 2;
                        iArr2[i5] = i3;
                        iArr2[i5 + 1] = iArr4[i4 + 1];
                    }
                    i4 += 2;
                }
            }
            i2++;
        }
        VIEW_STATE_SETS = new int[1 << (VIEW_STATE_IDS.length / 2)][];
        int i6 = 0;
        while (true) {
            int[][] iArr5 = VIEW_STATE_SETS;
            if (i6 >= iArr5.length) {
                EMPTY_STATE_SET = iArr5[0];
                WINDOW_FOCUSED_STATE_SET = iArr5[1];
                SELECTED_STATE_SET = iArr5[2];
                SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[3];
                FOCUSED_STATE_SET = iArr5[4];
                FOCUSED_WINDOW_FOCUSED_STATE_SET = iArr5[5];
                FOCUSED_SELECTED_STATE_SET = iArr5[6];
                FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[7];
                ENABLED_STATE_SET = iArr5[8];
                ENABLED_WINDOW_FOCUSED_STATE_SET = iArr5[9];
                ENABLED_SELECTED_STATE_SET = iArr5[10];
                ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[11];
                ENABLED_FOCUSED_STATE_SET = iArr5[12];
                ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = iArr5[13];
                ENABLED_FOCUSED_SELECTED_STATE_SET = iArr5[14];
                ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[15];
                PRESSED_STATE_SET = iArr5[16];
                PRESSED_WINDOW_FOCUSED_STATE_SET = iArr5[17];
                PRESSED_SELECTED_STATE_SET = iArr5[18];
                PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[19];
                PRESSED_FOCUSED_STATE_SET = iArr5[20];
                PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET = iArr5[21];
                PRESSED_FOCUSED_SELECTED_STATE_SET = iArr5[22];
                PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[23];
                PRESSED_ENABLED_STATE_SET = iArr5[24];
                PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET = iArr5[25];
                PRESSED_ENABLED_SELECTED_STATE_SET = iArr5[26];
                PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[27];
                PRESSED_ENABLED_FOCUSED_STATE_SET = iArr5[28];
                PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = iArr5[29];
                PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET = iArr5[30];
                PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = iArr5[31];
                sThreadLocal = new ThreadLocal<>();
                LAYOUT_DIRECTION_FLAGS = new int[]{0, 1, 2, 3};
                PFLAG2_TEXT_DIRECTION_FLAGS = new int[]{0, 64, 128, 192, 256, 320};
                PFLAG2_TEXT_ALIGNMENT_FLAGS = new int[]{0, 8192, 16384, AudioSystem.DEVICE_OUT_ALL_USB, 32768, 40960, 49152};
                sNextGeneratedId = new AtomicInteger(1);
                ALPHA = new FloatProperty<View>("alpha") { // from class: android.view.View.3
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getAlpha());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setAlpha(f2);
                    }
                };
                TRANSLATION_X = new FloatProperty<View>("translationX") { // from class: android.view.View.4
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getTranslationX());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setTranslationX(f2);
                    }
                };
                TRANSLATION_Y = new FloatProperty<View>("translationY") { // from class: android.view.View.5
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getTranslationY());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setTranslationY(f2);
                    }
                };
                X = new FloatProperty<View>("x") { // from class: android.view.View.6
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getX());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setX(f2);
                    }
                };
                Y = new FloatProperty<View>("y") { // from class: android.view.View.7
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getY());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setY(f2);
                    }
                };
                ROTATION = new FloatProperty<View>("rotation") { // from class: android.view.View.8
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getRotation());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setRotation(f2);
                    }
                };
                ROTATION_X = new FloatProperty<View>("rotationX") { // from class: android.view.View.9
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getRotationX());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setRotationX(f2);
                    }
                };
                ROTATION_Y = new FloatProperty<View>("rotationY") { // from class: android.view.View.10
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getRotationY());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setRotationY(f2);
                    }
                };
                SCALE_X = new FloatProperty<View>("scaleX") { // from class: android.view.View.11
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getScaleX());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setScaleX(f2);
                    }
                };
                SCALE_Y = new FloatProperty<View>("scaleY") { // from class: android.view.View.12
                    @Override // android.util.Property
                    public Float get(View view) {
                        return Float.valueOf(view.getScaleY());
                    }

                    @Override // android.util.FloatProperty
                    public void setValue(View view, float f2) {
                        view.setScaleY(f2);
                    }
                };
                return;
            }
            int[] iArr6 = new int[Integer.bitCount(i6)];
            int i7 = 0;
            for (int i8 = 0; i8 < length; i8 += 2) {
                if ((iArr2[i8 + 1] & i6) != 0) {
                    iArr6[i7] = iArr2[i8];
                    i7++;
                }
            }
            VIEW_STATE_SETS[i6] = iArr6;
            i6++;
        }
    }

    public View(Context context) {
        this.mCurrentAnimation = null;
        this.mRecreateDisplayList = false;
        this.mID = -1;
        this.mAccessibilityViewId = -1;
        this.mAccessibilityCursorPosition = -1;
        this.mTransientStateCount = 0;
        this.mClipBounds = null;
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mLabelForId = -1;
        this.mLeftPaddingDefined = false;
        this.mRightPaddingDefined = false;
        this.mOldWidthMeasureSpec = Integer.MIN_VALUE;
        this.mOldHeightMeasureSpec = Integer.MIN_VALUE;
        this.mDrawableState = null;
        this.mNextFocusLeftId = -1;
        this.mNextFocusRightId = -1;
        this.mNextFocusUpId = -1;
        this.mNextFocusDownId = -1;
        this.mNextFocusForwardId = -1;
        this.mPendingCheckForTap = null;
        this.mTouchDelegate = null;
        this.mDrawingCacheBackgroundColor = 0;
        this.mAnimator = null;
        this.mLayerType = 0;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mContext = context;
        this.mResources = context != null ? context.getResources() : null;
        this.mViewFlags = 402653184;
        this.mPrivateFlags2 = 140296;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setOverScrollMode(1);
        this.mUserPaddingStart = Integer.MIN_VALUE;
        this.mUserPaddingEnd = Integer.MIN_VALUE;
        if (sCompatibilityDone || context == null) {
            return;
        }
        int i2 = context.getApplicationInfo().targetSdkVersion;
        sUseBrokenMakeMeasureSpec = i2 <= 17;
        sIgnoreMeasureCache = i2 < 19;
        sCompatibilityDone = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForLongClick(int i2) {
        if ((this.mViewFlags & 2097152) == 2097152) {
            this.mHasPerformedLongPress = false;
            if (this.mPendingCheckForLongPress == null) {
                this.mPendingCheckForLongPress = new CheckForLongPress();
            }
            this.mPendingCheckForLongPress.rememberWindowAttachCount();
            postDelayed(this.mPendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - i2);
        }
    }

    private void cleanupDraw() {
        if (this.mAttachInfo == null) {
            resetDisplayList();
            return;
        }
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.markDirty();
            this.mAttachInfo.mViewRootImpl.enqueueDisplayList(this.mDisplayList);
        }
        this.mAttachInfo.mViewRootImpl.cancelInvalidate(this);
    }

    private void clearDisplayList() {
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.clear();
        }
    }

    public static int combineMeasuredStates(int i2, int i3) {
        return i2 | i3;
    }

    public static String debugIndent(int i2) {
        int i3 = (i2 * 2) + 3;
        StringBuilder sb = new StringBuilder(i3 * 2);
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(CharArrayBuffers.uppercaseAddon);
            sb.append(CharArrayBuffers.uppercaseAddon);
        }
        return sb.toString();
    }

    private boolean dispatchGenericMotionEventInternal(MotionEvent motionEvent) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if ((listenerInfo != null && listenerInfo.mOnGenericMotionListener != null && (this.mViewFlags & 32) == 0 && listenerInfo.mOnGenericMotionListener.onGenericMotion(this, motionEvent)) || onGenericMotionEvent(motionEvent)) {
            return true;
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onUnhandledEvent(motionEvent, 0);
        }
        return false;
    }

    private boolean drawAnimation(ViewGroup viewGroup, long j2, Animation animation, boolean z2) {
        int i2 = viewGroup.mGroupFlags;
        if (!animation.isInitialized()) {
            animation.initialize(this.mRight - this.mLeft, this.mBottom - this.mTop, viewGroup.getWidth(), viewGroup.getHeight());
            animation.initializeInvalidateRegion(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null) {
                animation.setListenerHandler(attachInfo.mHandler);
            }
            onAnimationStart();
        }
        Transformation childTransformation = viewGroup.getChildTransformation();
        boolean transformation = animation.getTransformation(j2, childTransformation, 1.0f);
        if (z2 && this.mAttachInfo.mApplicationScale != 1.0f) {
            if (viewGroup.mInvalidationTransformation == null) {
                viewGroup.mInvalidationTransformation = new Transformation();
            }
            childTransformation = viewGroup.mInvalidationTransformation;
            animation.getTransformation(j2, childTransformation, 1.0f);
        }
        Transformation transformation2 = childTransformation;
        if (transformation) {
            if (animation.willChangeBounds()) {
                if (viewGroup.mInvalidateRegion == null) {
                    viewGroup.mInvalidateRegion = new RectF();
                }
                RectF rectF = viewGroup.mInvalidateRegion;
                animation.getInvalidateRegion(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop, rectF, transformation2);
                viewGroup.mPrivateFlags |= 64;
                int i3 = this.mLeft + ((int) rectF.left);
                int i4 = this.mTop + ((int) rectF.top);
                viewGroup.invalidate(i3, i4, ((int) (rectF.width() + 0.5f)) + i3, ((int) (rectF.height() + 0.5f)) + i4);
            } else if ((i2 & 144) == 128) {
                viewGroup.mGroupFlags |= 4;
            } else if ((i2 & 4) == 0) {
                viewGroup.mPrivateFlags |= 64;
                viewGroup.invalidate(this.mLeft, this.mTop, this.mRight, this.mBottom);
            }
        }
        return transformation;
    }

    private static void dumpFlag(HashMap<String, String> map, String str, int i2) {
        String strReplace = String.format("%32s", Integer.toBinaryString(i2)).replace('0', CharArrayBuffers.uppercaseAddon);
        int iIndexOf = str.indexOf(95);
        StringBuilder sb = new StringBuilder();
        sb.append(iIndexOf > 0 ? str.substring(0, iIndexOf) : str);
        sb.append(strReplace);
        sb.append(str);
        map.put(sb.toString(), strReplace + " " + str);
    }

    private static void dumpFlags() {
        HashMap mapNewHashMap = Maps.newHashMap();
        try {
            for (Field field : View.class.getDeclaredFields()) {
                int modifiers = field.getModifiers();
                if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers)) {
                    if (field.getType().equals(Integer.TYPE)) {
                        dumpFlag(mapNewHashMap, field.getName(), field.getInt(null));
                    } else if (field.getType().equals(int[].class)) {
                        int[] iArr = (int[]) field.get(null);
                        for (int i2 = 0; i2 < iArr.length; i2++) {
                            dumpFlag(mapNewHashMap, field.getName() + "[" + i2 + "]", iArr[i2]);
                        }
                    }
                }
            }
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            arrayListNewArrayList.addAll(mapNewHashMap.keySet());
            Collections.sort(arrayListNewArrayList);
            Iterator it = arrayListNewArrayList.iterator();
            while (it.hasNext()) {
                Log.d(VIEW_LOG_TAG, (String) mapNewHashMap.get((String) it.next()));
            }
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        }
    }

    private View findLabelForView(View view, int i2) {
        if (this.mMatchLabelForPredicate == null) {
            this.mMatchLabelForPredicate = new MatchLabelForPredicate();
        }
        this.mMatchLabelForPredicate.mLabeledId = i2;
        return findViewByPredicateInsideOut(view, this.mMatchLabelForPredicate);
    }

    private View findViewInsideOutShouldExist(View view, int i2) {
        if (this.mMatchIdPredicate == null) {
            this.mMatchIdPredicate = new MatchIdPredicate();
        }
        MatchIdPredicate matchIdPredicate = this.mMatchIdPredicate;
        matchIdPredicate.mId = i2;
        View viewFindViewByPredicateInsideOut = view.findViewByPredicateInsideOut(this, matchIdPredicate);
        if (viewFindViewByPredicateInsideOut == null) {
            Log.w(VIEW_LOG_TAG, "couldn't find view with id " + i2);
        }
        return viewFindViewByPredicateInsideOut;
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i2;
        int i3;
        do {
            atomicInteger = sNextGeneratedId;
            i2 = atomicInteger.get();
            i3 = i2 + 1;
            if (i3 > 16777215) {
                i3 = 1;
            }
        } while (!atomicInteger.compareAndSet(i2, i3));
        return i2;
    }

    public static int getDefaultSize(int i2, int i3) {
        int mode = MeasureSpec.getMode(i3);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? MeasureSpec.getSize(i3) : i2;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0100  */
    /* JADX WARN: Code duplicated, block: B:61:0x0104  */
    private DisplayList getDisplayList(DisplayList displayList, boolean z2) {
        DisplayList displayListCreateDisplayList;
        if (!canHaveDisplayList()) {
            return null;
        }
        if ((this.mPrivateFlags & 32768) != 0 && displayList != null && displayList.isValid() && (z2 || !this.mRecreateDisplayList)) {
            if (!z2) {
                int i2 = this.mPrivateFlags | 32800;
                this.mPrivateFlags = i2;
                this.mPrivateFlags = i2 & (-6291457);
            }
            return displayList;
        }
        if (displayList != null && displayList.isValid() && !z2 && !this.mRecreateDisplayList) {
            int i3 = this.mPrivateFlags | 32800;
            this.mPrivateFlags = i3;
            this.mPrivateFlags = i3 & (-6291457);
            dispatchGetDisplayList();
            return displayList;
        }
        boolean z3 = true;
        if (!z2) {
            this.mRecreateDisplayList = true;
        }
        if (displayList == null) {
            displayListCreateDisplayList = this.mAttachInfo.mHardwareRenderer.createDisplayList(getClass().getName());
            invalidateParentCaches();
        } else {
            displayListCreateDisplayList = displayList;
        }
        int i4 = this.mRight - this.mLeft;
        int i5 = this.mBottom - this.mTop;
        int layerType = getLayerType();
        HardwareCanvas hardwareCanvasStart = displayListCreateDisplayList.start(i4, i5);
        try {
            if (!z2 && layerType != 0) {
                if (layerType == 2) {
                    HardwareLayer hardwareLayer = getHardwareLayer();
                    if (hardwareLayer == null || !hardwareLayer.isValid()) {
                        hardwareCanvasStart.saveLayer(0.0f, 0.0f, this.mRight - this.mLeft, this.mBottom - this.mTop, this.mLayerPaint, 20);
                    } else {
                        hardwareCanvasStart.drawHardwareLayer(hardwareLayer, 0.0f, 0.0f, this.mLayerPaint);
                    }
                } else {
                    buildDrawingCache(true);
                    Bitmap drawingCache = getDrawingCache(true);
                    if (drawingCache != null) {
                        hardwareCanvasStart.drawBitmap(drawingCache, 0.0f, 0.0f, this.mLayerPaint);
                    }
                }
                displayListCreateDisplayList.end();
                displayListCreateDisplayList.setCaching(z3);
                if (z2) {
                    displayListCreateDisplayList.setLeftTopRightBottom(0, 0, i4, i5);
                    return displayListCreateDisplayList;
                }
                setDisplayListProperties(displayListCreateDisplayList);
                return displayListCreateDisplayList;
            }
            computeScroll();
            hardwareCanvasStart.translate(-this.mScrollX, -this.mScrollY);
            if (!z2) {
                int i6 = this.mPrivateFlags | 32800;
                this.mPrivateFlags = i6;
                this.mPrivateFlags = i6 & (-6291457);
            }
            if ((this.mPrivateFlags & 128) == 128) {
                dispatchDraw(hardwareCanvasStart);
                ViewOverlay viewOverlay = this.mOverlay;
                if (viewOverlay != null && !viewOverlay.isEmpty()) {
                    this.mOverlay.getOverlayView().draw(hardwareCanvasStart);
                }
            } else {
                draw(hardwareCanvasStart);
            }
            z3 = false;
            displayListCreateDisplayList.end();
            displayListCreateDisplayList.setCaching(z3);
            if (z2) {
                displayListCreateDisplayList.setLeftTopRightBottom(0, 0, i4, i5);
                return displayListCreateDisplayList;
            }
            setDisplayListProperties(displayListCreateDisplayList);
            return displayListCreateDisplayList;
        } catch (Throwable th) {
            displayListCreateDisplayList.end();
            displayListCreateDisplayList.setCaching(false);
            if (z2) {
                displayListCreateDisplayList.setLeftTopRightBottom(0, 0, i4, i5);
            } else {
                setDisplayListProperties(displayListCreateDisplayList);
            }
            throw th;
        }
    }

    private float getFinalAlpha() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mAlpha * transformationInfo.mTransitionAlpha;
        }
        return 1.0f;
    }

    private DisplayList getHardwareLayerDisplayList(HardwareLayer hardwareLayer) {
        DisplayList displayList = getDisplayList(hardwareLayer.getDisplayList(), true);
        hardwareLayer.setDisplayList(displayList);
        return displayList;
    }

    private ScrollabilityCache getScrollCache() {
        initScrollCache();
        return this.mScrollCache;
    }

    private boolean hasAncestorThatBlocksDescendantFocus() {
        ViewParent parent = this.mParent;
        while (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.getDescendantFocusability() == 393216) {
                return true;
            }
            parent = viewGroup.getParent();
        }
        return false;
    }

    private boolean hasListenersForAccessibility() {
        ListenerInfo listenerInfo = getListenerInfo();
        return (this.mTouchDelegate == null && listenerInfo.mOnKeyListener == null && listenerInfo.mOnTouchListener == null && listenerInfo.mOnGenericMotionListener == null && listenerInfo.mOnHoverListener == null && listenerInfo.mOnDragListener == null) ? false : true;
    }

    private boolean hasRtlSupport() {
        return this.mContext.getApplicationInfo().hasRtlSupport();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean inLiveRegion() {
        if (getAccessibilityLiveRegion() != 0) {
            return true;
        }
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (((View) parent).getAccessibilityLiveRegion() != 0) {
                return true;
            }
        }
        return false;
    }

    public static View inflate(Context context, int i2, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(i2, viewGroup);
    }

    private void initScrollCache() {
        if (this.mScrollCache == null) {
            this.mScrollCache = new ScrollabilityCache(ViewConfiguration.get(this.mContext), this);
        }
    }

    private boolean initialAwakenScrollBars() {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        return scrollabilityCache != null && awakenScrollBars(scrollabilityCache.scrollBarDefaultDelayBeforeFade * 4, true);
    }

    private boolean isDrawablesResolved() {
        return (this.mPrivateFlags2 & 1073741824) == 1073741824;
    }

    private boolean isHoverable() {
        int i2 = this.mViewFlags;
        if ((i2 & 32) == 32) {
            return false;
        }
        return (i2 & 16384) == 16384 || (i2 & 2097152) == 2097152;
    }

    public static boolean isLayoutModeOptical(Object obj) {
        return (obj instanceof ViewGroup) && ((ViewGroup) obj).isLayoutModeOptical();
    }

    private boolean isRtlCompatibilityMode() {
        return getContext().getApplicationInfo().targetSdkVersion < 17 || !hasRtlSupport();
    }

    public static int[] mergeDrawableStates(int[] iArr, int[] iArr2) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        System.arraycopy(iArr2, 0, iArr, length + 1, iArr2.length);
        return iArr;
    }

    private boolean needRtlPropertiesResolution() {
        return (this.mPrivateFlags2 & ALL_RTL_PROPERTIES_RESOLVED) != 1610678816;
    }

    private static boolean nonzero(float f2) {
        return f2 < -0.001f || f2 > 0.001f;
    }

    private void postSendViewScrolledAccessibilityEventCallback() {
        if (this.mSendViewScrolledAccessibilityEvent == null) {
            this.mSendViewScrolledAccessibilityEvent = new SendViewScrolledAccessibilityEvent();
        }
        if (this.mSendViewScrolledAccessibilityEvent.mIsPending) {
            return;
        }
        this.mSendViewScrolledAccessibilityEvent.mIsPending = true;
        postDelayed(this.mSendViewScrolledAccessibilityEvent, ViewConfiguration.getSendRecurringAccessibilityEventsInterval());
    }

    private static String printFlags(int i2) {
        int i3 = i2 & 1;
        char c2 = 1;
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        if (i3 == 1) {
            str = ProxyProperties.LOCAL_EXCL_LIST + "TAKES_FOCUS";
        } else {
            c2 = 0;
        }
        int i4 = i2 & 12;
        if (i4 == 4) {
            if (c2 > 0) {
                str = str + " ";
            }
            return str + "INVISIBLE";
        }
        if (i4 != 8) {
            return str;
        }
        if (c2 > 0) {
            str = str + " ";
        }
        return str + "GONE";
    }

    private static String printPrivateFlags(int i2) {
        int i3 = i2 & 1;
        int i4 = 1;
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        if (i3 == 1) {
            str = ProxyProperties.LOCAL_EXCL_LIST + "WANTS_FOCUS";
        } else {
            i4 = 0;
        }
        if ((i2 & 2) == 2) {
            if (i4 > 0) {
                str = str + " ";
            }
            str = str + "FOCUSED";
            i4++;
        }
        if ((i2 & 4) == 4) {
            if (i4 > 0) {
                str = str + " ";
            }
            str = str + "SELECTED";
            i4++;
        }
        if ((i2 & 8) == 8) {
            if (i4 > 0) {
                str = str + " ";
            }
            str = str + "IS_ROOT_NAMESPACE";
            i4++;
        }
        if ((i2 & 16) == 16) {
            if (i4 > 0) {
                str = str + " ";
            }
            str = str + "HAS_BOUNDS";
            i4++;
        }
        if ((i2 & 32) != 32) {
            return str;
        }
        if (i4 > 0) {
            str = str + " ";
        }
        return str + "DRAWN";
    }

    private void removeLongPressCallback() {
        CheckForLongPress checkForLongPress = this.mPendingCheckForLongPress;
        if (checkForLongPress != null) {
            removeCallbacks(checkForLongPress);
        }
    }

    private void removePerformClickCallback() {
        PerformClick performClick = this.mPerformClick;
        if (performClick != null) {
            removeCallbacks(performClick);
        }
    }

    private void removeSendViewScrolledAccessibilityEventCallback() {
        SendViewScrolledAccessibilityEvent sendViewScrolledAccessibilityEvent = this.mSendViewScrolledAccessibilityEvent;
        if (sendViewScrolledAccessibilityEvent != null) {
            removeCallbacks(sendViewScrolledAccessibilityEvent);
            this.mSendViewScrolledAccessibilityEvent.mIsPending = false;
        }
    }

    private void removeTapCallback() {
        CheckForTap checkForTap = this.mPendingCheckForTap;
        if (checkForTap != null) {
            this.mPrivateFlags &= -33554433;
            removeCallbacks(checkForTap);
        }
    }

    private void removeUnsetPressCallback() {
        if ((this.mPrivateFlags & 16384) == 0 || this.mUnsetPressedState == null) {
            return;
        }
        setPressed(false);
        removeCallbacks(this.mUnsetPressedState);
    }

    private boolean requestFocusNoSearch(int i2, Rect rect) {
        int i3 = this.mViewFlags;
        if ((i3 & 1) != 1 || (i3 & 12) != 0) {
            return false;
        }
        if ((isInTouchMode() && 262144 != (this.mViewFlags & 262144)) || hasAncestorThatBlocksDescendantFocus()) {
            return false;
        }
        handleFocusGainInternal(i2, rect);
        return true;
    }

    private void resetDisplayList() {
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.reset();
        }
    }

    private void resetPressedState() {
        if ((this.mViewFlags & 32) != 32 && isPressed()) {
            setPressed(false);
            if (this.mHasPerformedLongPress) {
                return;
            }
            removeLongPressCallback();
        }
    }

    public static int resolveSize(int i2, int i3) {
        return resolveSizeAndState(i2, i3, 0) & 16777215;
    }

    public static int resolveSizeAndState(int i2, int i3, int i4) {
        int mode = MeasureSpec.getMode(i3);
        int size = MeasureSpec.getSize(i3);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 1073741824) {
                i2 = size;
            }
        } else if (size < i2) {
            i2 = 16777216 | size;
        }
        return i2 | ((-16777216) & i4);
    }

    private void sendAccessibilityHoverEvent(int i2) {
        View view = this;
        while (!view.includeForAccessibility()) {
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            } else {
                view = (View) parent;
            }
        }
        view.sendAccessibilityEvent(i2);
    }

    private void sendViewTextTraversedAtGranularityEvent(int i2, int i3, int i4, int i5) {
        if (this.mParent == null) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(131072);
        onInitializeAccessibilityEvent(accessibilityEventObtain);
        onPopulateAccessibilityEvent(accessibilityEventObtain);
        accessibilityEventObtain.setFromIndex(i4);
        accessibilityEventObtain.setToIndex(i5);
        accessibilityEventObtain.setAction(i2);
        accessibilityEventObtain.setMovementGranularity(i3);
        this.mParent.requestSendAccessibilityEvent(this, accessibilityEventObtain);
    }

    private void setKeyedTag(int i2, Object obj) {
        if (this.mKeyedTags == null) {
            this.mKeyedTags = new SparseArray<>(2);
        }
        this.mKeyedTags.put(i2, obj);
    }

    private boolean setOpticalFrame(int i2, int i3, int i4, int i5) {
        Object obj = this.mParent;
        Insets opticalInsets = obj instanceof View ? ((View) obj).getOpticalInsets() : Insets.NONE;
        Insets opticalInsets2 = getOpticalInsets();
        int i6 = opticalInsets.left;
        int i7 = (i2 + i6) - opticalInsets2.left;
        int i8 = opticalInsets.top;
        return setFrame(i7, (i3 + i8) - opticalInsets2.top, i4 + i6 + opticalInsets2.right, i5 + i8 + opticalInsets2.bottom);
    }

    private void sizeChange(int i2, int i3, int i4, int i5) {
        onSizeChanged(i2, i3, i4, i5);
        ViewOverlay viewOverlay = this.mOverlay;
        if (viewOverlay != null) {
            viewOverlay.getOverlayView().setRight(i2);
            this.mOverlay.getOverlayView().setBottom(i3);
        }
    }

    private boolean skipInvalidate() {
        if ((this.mViewFlags & 12) != 0 && this.mCurrentAnimation == null) {
            ViewParent viewParent = this.mParent;
            if (!(viewParent instanceof ViewGroup) || !((ViewGroup) viewParent).isViewTransitioning(this)) {
                return true;
            }
        }
        return false;
    }

    private void transformMotionEventToGlobal(MotionEvent motionEvent) {
        if (!hasIdentityMatrix()) {
            motionEvent.transform(getMatrix());
        }
        motionEvent.offsetLocation(this.mLeft, this.mTop);
        Object obj = this.mParent;
        if (obj instanceof View) {
            View view = (View) obj;
            motionEvent.offsetLocation(-view.mScrollX, -view.mScrollY);
            view.transformMotionEventToGlobal(motionEvent);
        } else if (obj instanceof ViewRootImpl) {
            motionEvent.offsetLocation(0.0f, -((ViewRootImpl) obj).mCurScrollY);
        }
    }

    private void transformMotionEventToLocal(MotionEvent motionEvent) {
        Object obj = this.mParent;
        if (obj instanceof View) {
            View view = (View) obj;
            view.transformMotionEventToLocal(motionEvent);
            motionEvent.offsetLocation(view.mScrollX, view.mScrollY);
        } else if (obj instanceof ViewRootImpl) {
            motionEvent.offsetLocation(0.0f, ((ViewRootImpl) obj).mCurScrollY);
        }
        motionEvent.offsetLocation(-this.mLeft, -this.mTop);
        if (hasIdentityMatrix()) {
            return;
        }
        motionEvent.transform(getInverseMatrix());
    }

    private boolean traverseAtGranularity(int i2, boolean z2, boolean z3) {
        AccessibilityIterators.TextSegmentIterator iteratorForGranularity;
        int accessibilitySelectionStart;
        int i3;
        CharSequence iterableTextForAccessibility = getIterableTextForAccessibility();
        if (iterableTextForAccessibility == null || iterableTextForAccessibility.length() == 0 || (iteratorForGranularity = getIteratorForGranularity(i2)) == null) {
            return false;
        }
        int accessibilitySelectionEnd = getAccessibilitySelectionEnd();
        if (accessibilitySelectionEnd == -1) {
            accessibilitySelectionEnd = z2 ? 0 : iterableTextForAccessibility.length();
        }
        int[] iArrFollowing = z2 ? iteratorForGranularity.following(accessibilitySelectionEnd) : iteratorForGranularity.preceding(accessibilitySelectionEnd);
        if (iArrFollowing == null) {
            return false;
        }
        int i4 = iArrFollowing[0];
        int i5 = iArrFollowing[1];
        if (z3 && isAccessibilitySelectionExtendable()) {
            accessibilitySelectionStart = getAccessibilitySelectionStart();
            if (accessibilitySelectionStart == -1) {
                accessibilitySelectionStart = z2 ? i4 : i5;
            }
            i3 = z2 ? i5 : i4;
        } else {
            accessibilitySelectionStart = z2 ? i5 : i4;
            i3 = accessibilitySelectionStart;
        }
        setAccessibilitySelection(accessibilitySelectionStart, i3);
        sendViewTextTraversedAtGranularityEvent(z2 ? 256 : 512, i2, i4, i5);
        return true;
    }

    private void updateMatrix() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null && transformationInfo.mMatrixDirty) {
            if ((this.mPrivateFlags & 536870912) == 0 && (this.mRight - this.mLeft != transformationInfo.mPrevWidth || this.mBottom - this.mTop != transformationInfo.mPrevHeight)) {
                transformationInfo.mPrevWidth = this.mRight - this.mLeft;
                transformationInfo.mPrevHeight = this.mBottom - this.mTop;
                transformationInfo.mPivotX = transformationInfo.mPrevWidth / 2.0f;
                transformationInfo.mPivotY = transformationInfo.mPrevHeight / 2.0f;
            }
            transformationInfo.mMatrix.reset();
            if (nonzero(transformationInfo.mRotationX) || nonzero(transformationInfo.mRotationY)) {
                if (transformationInfo.mCamera == null) {
                    transformationInfo.mCamera = new Camera();
                    transformationInfo.matrix3D = new Matrix();
                }
                transformationInfo.mCamera.save();
                transformationInfo.mMatrix.preScale(transformationInfo.mScaleX, transformationInfo.mScaleY, transformationInfo.mPivotX, transformationInfo.mPivotY);
                transformationInfo.mCamera.rotate(transformationInfo.mRotationX, transformationInfo.mRotationY, -transformationInfo.mRotation);
                transformationInfo.mCamera.getMatrix(transformationInfo.matrix3D);
                transformationInfo.matrix3D.preTranslate(-transformationInfo.mPivotX, -transformationInfo.mPivotY);
                transformationInfo.matrix3D.postTranslate(transformationInfo.mPivotX + transformationInfo.mTranslationX, transformationInfo.mPivotY + transformationInfo.mTranslationY);
                transformationInfo.mMatrix.postConcat(transformationInfo.matrix3D);
                transformationInfo.mCamera.restore();
            } else {
                transformationInfo.mMatrix.setTranslate(transformationInfo.mTranslationX, transformationInfo.mTranslationY);
                transformationInfo.mMatrix.preRotate(transformationInfo.mRotation, transformationInfo.mPivotX, transformationInfo.mPivotY);
                transformationInfo.mMatrix.preScale(transformationInfo.mScaleX, transformationInfo.mScaleY, transformationInfo.mPivotX, transformationInfo.mPivotY);
            }
            transformationInfo.mMatrixDirty = false;
            transformationInfo.mMatrixIsIdentity = transformationInfo.mMatrix.isIdentity();
            transformationInfo.mInverseMatrixDirty = true;
        }
    }

    public void addChildrenForAccessibility(ArrayList<View> arrayList) {
        if (includeForAccessibility()) {
            arrayList.add(this);
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i2) {
        addFocusables(arrayList, i2, 1);
    }

    public void addOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
        ListenerInfo listenerInfo = getListenerInfo();
        if (listenerInfo.mOnAttachStateChangeListeners == null) {
            listenerInfo.mOnAttachStateChangeListeners = new CopyOnWriteArrayList();
        }
        listenerInfo.mOnAttachStateChangeListeners.add(onAttachStateChangeListener);
    }

    public void addOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
        ListenerInfo listenerInfo = getListenerInfo();
        if (listenerInfo.mOnLayoutChangeListeners == null) {
            listenerInfo.mOnLayoutChangeListeners = new ArrayList();
        }
        if (listenerInfo.mOnLayoutChangeListeners.contains(onLayoutChangeListener)) {
            return;
        }
        listenerInfo.mOnLayoutChangeListeners.add(onLayoutChangeListener);
    }

    public void addTouchables(ArrayList<View> arrayList) {
        int i2 = this.mViewFlags;
        if (((i2 & 16384) == 16384 || (i2 & 2097152) == 2097152) && (i2 & 32) == 0) {
            arrayList.add(this);
        }
    }

    public ViewPropertyAnimator animate() {
        if (this.mAnimator == null) {
            this.mAnimator = new ViewPropertyAnimator(this);
        }
        return this.mAnimator;
    }

    public void announceForAccessibility(CharSequence charSequence) {
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled() || this.mParent == null) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16384);
        onInitializeAccessibilityEvent(accessibilityEventObtain);
        accessibilityEventObtain.getText().add(charSequence);
        accessibilityEventObtain.setContentDescription(null);
        this.mParent.requestSendAccessibilityEvent(this, accessibilityEventObtain);
    }

    public void applyDrawableToTransparentRegion(Drawable drawable, Region region) {
        Region transparentRegion = drawable.getTransparentRegion();
        Rect bounds = drawable.getBounds();
        AttachInfo attachInfo = this.mAttachInfo;
        if (transparentRegion == null || attachInfo == null) {
            region.op(bounds, Region.Op.DIFFERENCE);
            return;
        }
        int right = getRight() - getLeft();
        int bottom = getBottom() - getTop();
        int i2 = bounds.left;
        if (i2 > 0) {
            transparentRegion.op(0, 0, i2, bottom, Region.Op.UNION);
        }
        int i3 = bounds.right;
        if (i3 < right) {
            transparentRegion.op(i3, 0, right, bottom, Region.Op.UNION);
        }
        int i4 = bounds.top;
        if (i4 > 0) {
            transparentRegion.op(0, 0, right, i4, Region.Op.UNION);
        }
        int i5 = bounds.bottom;
        if (i5 < bottom) {
            transparentRegion.op(0, i5, right, bottom, Region.Op.UNION);
        }
        int[] iArr = attachInfo.mTransparentLocation;
        getLocationInWindow(iArr);
        transparentRegion.translate(iArr[0], iArr[1]);
        region.op(transparentRegion, Region.Op.INTERSECT);
    }

    public void assignParent(ViewParent viewParent) {
        if (this.mParent == null) {
            this.mParent = viewParent;
            return;
        }
        if (viewParent == null) {
            this.mParent = null;
            return;
        }
        throw new RuntimeException("view " + this + " being added, but it already has a parent");
    }

    public boolean awakenScrollBars() {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        return scrollabilityCache != null && awakenScrollBars(scrollabilityCache.scrollBarDefaultDelayBeforeFade, true);
    }

    public void bringToFront() {
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.bringChildToFront(this);
        }
    }

    public void buildDrawingCache() {
        buildDrawingCache(false);
    }

    public void buildLayer() {
        HardwareRenderer hardwareRenderer;
        int i2 = this.mLayerType;
        if (i2 == 0) {
            return;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            throw new IllegalStateException("This view must be attached to a window first");
        }
        if (i2 == 1) {
            buildDrawingCache(true);
            return;
        }
        if (i2 == 2 && (hardwareRenderer = attachInfo.mHardwareRenderer) != null && hardwareRenderer.isEnabled() && attachInfo.mHardwareRenderer.validate()) {
            getHardwareLayer();
            if (attachInfo.mTreeObserver.hasOnPreDrawListeners()) {
                return;
            }
            attachInfo.mViewRootImpl.dispatchFlushHardwareLayerUpdates();
        }
    }

    public boolean callOnClick() {
        OnClickListener onClickListener;
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || (onClickListener = listenerInfo.mOnClickListener) == null) {
            return false;
        }
        onClickListener.onClick(this);
        return true;
    }

    public boolean canAcceptDrag() {
        return (this.mPrivateFlags2 & 1) != 0;
    }

    public boolean canHaveDisplayList() {
        AttachInfo attachInfo = this.mAttachInfo;
        return (attachInfo == null || attachInfo.mHardwareRenderer == null) ? false : true;
    }

    public boolean canResolveLayoutDirection() {
        if (getRawLayoutDirection() != 2) {
            return true;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent == null) {
            return false;
        }
        try {
            return viewParent.canResolveLayoutDirection();
        } catch (AbstractMethodError e2) {
            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
            return false;
        }
    }

    public boolean canResolveTextAlignment() {
        if (getRawTextAlignment() != 0) {
            return true;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent == null) {
            return false;
        }
        try {
            return viewParent.canResolveTextAlignment();
        } catch (AbstractMethodError e2) {
            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
            return false;
        }
    }

    public boolean canResolveTextDirection() {
        if (getRawTextDirection() != 0) {
            return true;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent == null) {
            return false;
        }
        try {
            return viewParent.canResolveTextDirection();
        } catch (AbstractMethodError e2) {
            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
            return false;
        }
    }

    public boolean canScrollHorizontally(int i2) {
        int iComputeHorizontalScrollOffset = computeHorizontalScrollOffset();
        int iComputeHorizontalScrollRange = computeHorizontalScrollRange() - computeHorizontalScrollExtent();
        if (iComputeHorizontalScrollRange == 0) {
            return false;
        }
        if (i2 < 0) {
            return iComputeHorizontalScrollOffset > 0;
        }
        return iComputeHorizontalScrollOffset < iComputeHorizontalScrollRange - 1;
    }

    public boolean canScrollVertically(int i2) {
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        int iComputeVerticalScrollRange = computeVerticalScrollRange() - computeVerticalScrollExtent();
        if (iComputeVerticalScrollRange == 0) {
            return false;
        }
        if (i2 < 0) {
            return iComputeVerticalScrollOffset > 0;
        }
        return iComputeVerticalScrollOffset < iComputeVerticalScrollRange - 1;
    }

    public void cancelLongPress() {
        removeLongPressCallback();
        removeTapCallback();
    }

    public final void cancelPendingInputEvents() {
        dispatchCancelPendingInputEvents();
    }

    public boolean checkInputConnectionProxy(View view) {
        return false;
    }

    public void clearAccessibilityFocus() {
        View accessibilityFocusedHost;
        clearAccessibilityFocusNoCallbacks();
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl == null || (accessibilityFocusedHost = viewRootImpl.getAccessibilityFocusedHost()) == null || !ViewRootImpl.isViewDescendantOf(accessibilityFocusedHost, this)) {
            return;
        }
        viewRootImpl.setAccessibilityFocus(null, null);
    }

    public void clearAccessibilityFocusNoCallbacks() {
        int i2 = this.mPrivateFlags2;
        if ((67108864 & i2) != 0) {
            this.mPrivateFlags2 = i2 & (-67108865);
            invalidate();
            sendAccessibilityEvent(65536);
        }
    }

    public void clearAnimation() {
        Animation animation = this.mCurrentAnimation;
        if (animation != null) {
            animation.detach();
        }
        this.mCurrentAnimation = null;
        invalidateParentIfNeeded();
    }

    public void clearFocus() {
        clearFocusInternal(true, true);
    }

    public void clearFocusInternal(boolean z2, boolean z3) {
        ViewParent viewParent;
        int i2 = this.mPrivateFlags;
        if ((i2 & 2) != 0) {
            this.mPrivateFlags = i2 & (-3);
            if (z2 && (viewParent = this.mParent) != null) {
                viewParent.clearChildFocus(this);
            }
            onFocusChanged(false, 0, null);
            refreshDrawableState();
            if (z2) {
                if (z3 && rootViewRequestFocus()) {
                    return;
                }
                notifyGlobalFocusCleared(this);
            }
        }
    }

    public boolean computeFitSystemWindows(Rect rect, Rect rect2) {
        AttachInfo attachInfo;
        if ((this.mViewFlags & 2048) == 0 || (attachInfo = this.mAttachInfo) == null || ((attachInfo.mSystemUiVisibility & 1536) == 0 && !attachInfo.mOverscanRequested)) {
            rect2.set(rect);
            rect.set(0, 0, 0, 0);
            return true;
        }
        Rect rect3 = attachInfo.mOverscanInsets;
        rect2.set(rect3);
        rect.left -= rect3.left;
        rect.top -= rect3.top;
        rect.right -= rect3.right;
        rect.bottom -= rect3.bottom;
        return false;
    }

    public int computeHorizontalScrollExtent() {
        return getWidth();
    }

    public int computeHorizontalScrollOffset() {
        return this.mScrollX;
    }

    public int computeHorizontalScrollRange() {
        return getWidth();
    }

    public void computeOpaqueFlags() {
        int i2;
        Drawable drawable = this.mBackground;
        if (drawable == null || drawable.getOpacity() != -1) {
            this.mPrivateFlags &= -8388609;
        } else {
            this.mPrivateFlags |= 8388608;
        }
        int i3 = this.mViewFlags;
        if (((i3 & 512) == 0 && (i3 & 256) == 0) || (i2 = i3 & 50331648) == 0 || i2 == 33554432) {
            this.mPrivateFlags |= 16777216;
        } else {
            this.mPrivateFlags &= -16777217;
        }
    }

    public Insets computeOpticalInsets() {
        Drawable drawable = this.mBackground;
        return drawable == null ? Insets.NONE : drawable.getOpticalInsets();
    }

    public void computeScroll() {
    }

    public int computeVerticalScrollExtent() {
        return getHeight();
    }

    public int computeVerticalScrollOffset() {
        return this.mScrollY;
    }

    public int computeVerticalScrollRange() {
        return getHeight();
    }

    public AccessibilityNodeInfo createAccessibilityNodeInfo() {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        return accessibilityDelegate != null ? accessibilityDelegate.createAccessibilityNodeInfo(this) : createAccessibilityNodeInfoInternal();
    }

    public AccessibilityNodeInfo createAccessibilityNodeInfoInternal() {
        AccessibilityNodeProvider accessibilityNodeProvider = getAccessibilityNodeProvider();
        if (accessibilityNodeProvider != null) {
            return accessibilityNodeProvider.createAccessibilityNodeInfo(-1);
        }
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(this);
        onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        return accessibilityNodeInfoObtain;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void createContextMenu(ContextMenu contextMenu) {
        OnCreateContextMenuListener onCreateContextMenuListener;
        ContextMenu.ContextMenuInfo contextMenuInfo = getContextMenuInfo();
        c cVar = (c) contextMenu;
        cVar.I(contextMenuInfo);
        onCreateContextMenu(contextMenu);
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo != null && (onCreateContextMenuListener = listenerInfo.mOnCreateContextMenuListener) != null) {
            onCreateContextMenuListener.onCreateContextMenu(contextMenu, this, contextMenuInfo);
        }
        cVar.I(null);
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.createContextMenu(contextMenu);
        }
    }

    public Bitmap createSnapshot(Bitmap.Config config, int i2, boolean z2) {
        Canvas canvas;
        int i3 = this.mRight - this.mLeft;
        int i4 = this.mBottom - this.mTop;
        AttachInfo attachInfo = this.mAttachInfo;
        float f2 = attachInfo != null ? attachInfo.mApplicationScale : 1.0f;
        int i5 = (int) ((i3 * f2) + 0.5f);
        int i6 = (int) ((i4 * f2) + 0.5f);
        DisplayMetrics displayMetrics = this.mResources.getDisplayMetrics();
        if (i5 <= 0) {
            i5 = 1;
        }
        if (i6 <= 0) {
            i6 = 1;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(displayMetrics, i5, i6, config);
        if (bitmapCreateBitmap == null) {
            throw new OutOfMemoryError();
        }
        Resources resources = getResources();
        if (resources != null) {
            bitmapCreateBitmap.setDensity(resources.getDisplayMetrics().densityDpi);
        }
        if (attachInfo != null) {
            canvas = attachInfo.mCanvas;
            if (canvas == null) {
                canvas = new Canvas();
            }
            canvas.setBitmap(bitmapCreateBitmap);
            attachInfo.mCanvas = null;
        } else {
            canvas = new Canvas(bitmapCreateBitmap);
        }
        if (((-16777216) & i2) != 0) {
            bitmapCreateBitmap.eraseColor(i2);
        }
        computeScroll();
        int iSave = canvas.save();
        canvas.scale(f2, f2);
        canvas.translate(-this.mScrollX, -this.mScrollY);
        int i7 = this.mPrivateFlags;
        int i8 = (-6291457) & i7;
        this.mPrivateFlags = i8;
        if ((i8 & 128) == 128) {
            dispatchDraw(canvas);
            ViewOverlay viewOverlay = this.mOverlay;
            if (viewOverlay != null && !viewOverlay.isEmpty()) {
                this.mOverlay.getOverlayView().draw(canvas);
            }
        } else {
            draw(canvas);
        }
        this.mPrivateFlags = i7;
        canvas.restoreToCount(iSave);
        canvas.setBitmap(null);
        if (attachInfo != null) {
            attachInfo.mCanvas = canvas;
        }
        return bitmapCreateBitmap;
    }

    public void debug() {
        debug(0);
    }

    public void destroyDrawingCache() {
        Bitmap bitmap = this.mDrawingCache;
        if (bitmap != null) {
            bitmap.recycle();
            this.mDrawingCache = null;
        }
        Bitmap bitmap2 = this.mUnscaledDrawingCache;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.mUnscaledDrawingCache = null;
        }
    }

    public void destroyHardwareResources() {
        resetDisplayList();
        destroyLayer(true);
    }

    public boolean destroyLayer(boolean z2) {
        HardwareRenderer hardwareRenderer;
        if (this.mHardwareLayer == null) {
            return false;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && (hardwareRenderer = attachInfo.mHardwareRenderer) != null && hardwareRenderer.isEnabled() && (z2 || attachInfo.mHardwareRenderer.validate())) {
            attachInfo.mHardwareRenderer.cancelLayerUpdate(this.mHardwareLayer);
            this.mHardwareLayer.destroy();
            this.mHardwareLayer = null;
            invalidate(true);
            invalidateParentCaches();
        }
        return true;
    }

    public void dispatchAttachedToWindow(AttachInfo attachInfo, int i2) {
        this.mAttachInfo = attachInfo;
        ViewOverlay viewOverlay = this.mOverlay;
        if (viewOverlay != null) {
            viewOverlay.getOverlayView().dispatchAttachedToWindow(attachInfo, i2);
        }
        this.mWindowAttachCount++;
        this.mPrivateFlags |= 1024;
        ViewTreeObserver viewTreeObserver = this.mFloatingTreeObserver;
        if (viewTreeObserver != null) {
            attachInfo.mTreeObserver.merge(viewTreeObserver);
            this.mFloatingTreeObserver = null;
        }
        if ((this.mPrivateFlags & 524288) != 0) {
            this.mAttachInfo.mScrollContainers.add(this);
            this.mPrivateFlags |= 1048576;
        }
        performCollectViewAttributes(this.mAttachInfo, i2);
        onAttachedToWindow();
        ListenerInfo listenerInfo = this.mListenerInfo;
        CopyOnWriteArrayList copyOnWriteArrayList = listenerInfo != null ? listenerInfo.mOnAttachStateChangeListeners : null;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((OnAttachStateChangeListener) it.next()).onViewAttachedToWindow(this);
            }
        }
        int i3 = attachInfo.mWindowVisibility;
        if (i3 != 8) {
            onWindowVisibilityChanged(i3);
        }
        if ((this.mPrivateFlags & 1024) != 0) {
            refreshDrawableState();
        }
        needGlobalAttributesUpdate(false);
    }

    public void dispatchCancelPendingInputEvents() {
        this.mPrivateFlags3 &= -17;
        onCancelPendingInputEvents();
        if ((this.mPrivateFlags3 & 16) == 16) {
            return;
        }
        throw new SuperNotCalledException("View " + getClass().getSimpleName() + " did not call through to super.onCancelPendingInputEvents()");
    }

    public void dispatchCollectViewAttributes(AttachInfo attachInfo, int i2) {
        performCollectViewAttributes(attachInfo, i2);
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    public void dispatchDetachedFromWindow() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && attachInfo.mWindowVisibility != 8) {
            onWindowVisibilityChanged(8);
        }
        onDetachedFromWindow();
        ListenerInfo listenerInfo = this.mListenerInfo;
        CopyOnWriteArrayList copyOnWriteArrayList = listenerInfo != null ? listenerInfo.mOnAttachStateChangeListeners : null;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((OnAttachStateChangeListener) it.next()).onViewDetachedFromWindow(this);
            }
        }
        if ((this.mPrivateFlags & 1048576) != 0) {
            this.mAttachInfo.mScrollContainers.remove(this);
            this.mPrivateFlags &= -1048577;
        }
        this.mAttachInfo = null;
        ViewOverlay viewOverlay = this.mOverlay;
        if (viewOverlay != null) {
            viewOverlay.getOverlayView().dispatchDetachedFromWindow();
        }
    }

    public void dispatchDisplayHint(int i2) {
        onDisplayHint(i2);
    }

    public boolean dispatchDragEvent(DragEvent dragEvent) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || listenerInfo.mOnDragListener == null || (this.mViewFlags & 32) != 0 || !listenerInfo.mOnDragListener.onDrag(this, dragEvent)) {
            return onDragEvent(dragEvent);
        }
        return true;
    }

    public void dispatchDraw(Canvas canvas) {
    }

    public void dispatchFinishTemporaryDetach() {
        onFinishTemporaryDetach();
    }

    public boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onGenericMotionEvent(motionEvent, 0);
        }
        if ((motionEvent.getSource() & 2) != 0) {
            int action = motionEvent.getAction();
            if (action == 9 || action == 7 || action == 10) {
                if (dispatchHoverEvent(motionEvent)) {
                    return true;
                }
            } else if (dispatchGenericPointerEvent(motionEvent)) {
                return true;
            }
        } else if (dispatchGenericFocusedEvent(motionEvent)) {
            return true;
        }
        if (dispatchGenericMotionEventInternal(motionEvent)) {
            return true;
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 != null) {
            inputEventConsistencyVerifier2.onUnhandledEvent(motionEvent, 0);
        }
        return false;
    }

    public boolean dispatchGenericPointerEvent(MotionEvent motionEvent) {
        return false;
    }

    public void dispatchGetDisplayList() {
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || listenerInfo.mOnHoverListener == null || (this.mViewFlags & 32) != 0 || !listenerInfo.mOnHoverListener.onHover(this, motionEvent)) {
            return onHoverEvent(motionEvent);
        }
        return true;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onKeyEvent(keyEvent, 0);
        }
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo != null && listenerInfo.mOnKeyListener != null && (this.mViewFlags & 32) == 0 && listenerInfo.mOnKeyListener.onKey(this, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (keyEvent.dispatch(this, attachInfo != null ? attachInfo.mKeyDispatchState : null, this)) {
            return true;
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 != null) {
            inputEventConsistencyVerifier2.onUnhandledEvent(keyEvent, 0);
        }
        return false;
    }

    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        return onKeyPreIme(keyEvent.getKeyCode(), keyEvent);
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return onKeyShortcut(keyEvent.getKeyCode(), keyEvent);
    }

    public final boolean dispatchPointerEvent(MotionEvent motionEvent) {
        return motionEvent.isTouchEvent() ? dispatchTouchEvent(motionEvent) : dispatchGenericMotionEvent(motionEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        return accessibilityDelegate != null ? accessibilityDelegate.dispatchPopulateAccessibilityEvent(this, accessibilityEvent) : dispatchPopulateAccessibilityEventInternal(accessibilityEvent);
    }

    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return false;
    }

    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable;
        int i2 = this.mID;
        if (i2 == -1 || (parcelable = sparseArray.get(i2)) == null) {
            return;
        }
        this.mPrivateFlags &= -131073;
        onRestoreInstanceState(parcelable);
        if ((this.mPrivateFlags & 131072) == 0) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        if (this.mID == -1 || (this.mViewFlags & 65536) != 0) {
            return;
        }
        this.mPrivateFlags &= -131073;
        Parcelable parcelableOnSaveInstanceState = onSaveInstanceState();
        if ((this.mPrivateFlags & 131072) == 0) {
            throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
        }
        if (parcelableOnSaveInstanceState != null) {
            sparseArray.put(this.mID, parcelableOnSaveInstanceState);
        }
    }

    public void dispatchScreenStateChanged(int i2) {
        onScreenStateChanged(i2);
    }

    public void dispatchSetActivated(boolean z2) {
    }

    public void dispatchSetPressed(boolean z2) {
    }

    public void dispatchSetSelected(boolean z2) {
    }

    public void dispatchStartTemporaryDetach() {
        clearDisplayList();
        onStartTemporaryDetach();
    }

    public void dispatchSystemUiVisibilityChanged(int i2) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || listenerInfo.mOnSystemUiVisibilityChangeListener == null) {
            return;
        }
        listenerInfo.mOnSystemUiVisibilityChangeListener.onSystemUiVisibilityChange(i2 & 65535);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ListenerInfo listenerInfo;
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onTouchEvent(motionEvent, 0);
        }
        if (onFilterTouchEventForSecurity(motionEvent) && (((listenerInfo = this.mListenerInfo) != null && listenerInfo.mOnTouchListener != null && (this.mViewFlags & 32) == 0 && listenerInfo.mOnTouchListener.onTouch(this, motionEvent)) || onTouchEvent(motionEvent))) {
            return true;
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 != null) {
            inputEventConsistencyVerifier2.onUnhandledEvent(motionEvent, 0);
        }
        return false;
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onTrackballEvent(motionEvent, 0);
        }
        return onTrackballEvent(motionEvent);
    }

    public boolean dispatchUnhandledMove(View view, int i2) {
        return false;
    }

    public void dispatchVisibilityChanged(View view, int i2) {
        onVisibilityChanged(view, i2);
    }

    public void dispatchWindowFocusChanged(boolean z2) {
        onWindowFocusChanged(z2);
    }

    public void dispatchWindowSystemUiVisiblityChanged(int i2) {
        onWindowSystemUiVisibilityChanged(i2);
    }

    public void dispatchWindowVisibilityChanged(int i2) {
        onWindowVisibilityChanged(i2);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0172  */
    /* JADX WARN: Code duplicated, block: B:109:0x017e  */
    /* JADX WARN: Code duplicated, block: B:113:0x0185  */
    /* JADX WARN: Code duplicated, block: B:116:0x018d  */
    /* JADX WARN: Code duplicated, block: B:117:0x0199 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x019b  */
    /* JADX WARN: Code duplicated, block: B:120:0x01a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:125:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:126:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:140:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:142:0x01fe A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:145:0x0209 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:146:0x020b  */
    /* JADX WARN: Code duplicated, block: B:147:0x020e  */
    /* JADX WARN: Code duplicated, block: B:149:0x0212 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:150:0x0214 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:151:0x0216  */
    /* JADX WARN: Code duplicated, block: B:152:0x0222  */
    /* JADX WARN: Code duplicated, block: B:154:0x0241  */
    /* JADX WARN: Code duplicated, block: B:157:0x024f  */
    /* JADX WARN: Code duplicated, block: B:158:0x0256  */
    /* JADX WARN: Code duplicated, block: B:160:0x025c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:165:0x0277  */
    /* JADX WARN: Code duplicated, block: B:168:0x027e  */
    /* JADX WARN: Code duplicated, block: B:169:0x0289  */
    /* JADX WARN: Code duplicated, block: B:171:0x028c  */
    /* JADX WARN: Code duplicated, block: B:172:0x0292  */
    /* JADX WARN: Code duplicated, block: B:175:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:177:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:179:0x02af A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:180:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:183:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:184:0x02c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:185:0x02c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:186:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:187:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:189:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:190:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:192:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:206:0x034a  */
    /* JADX WARN: Code duplicated, block: B:209:0x034f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:214:0x0363  */
    /* JADX WARN: Code duplicated, block: B:217:0x036d  */
    /* JADX WARN: Code duplicated, block: B:219:0x0370 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:230:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:233:0x03ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:234:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:236:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:237:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:238:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:240:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:242:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:244:0x03f2  */
    /* JADX WARN: Code duplicated, block: B:246:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:249:0x0407  */
    /* JADX WARN: Code duplicated, block: B:250:0x0414  */
    /* JADX WARN: Code duplicated, block: B:252:0x0418  */
    /* JADX WARN: Code duplicated, block: B:254:0x0427  */
    /* JADX WARN: Code duplicated, block: B:256:0x0438  */
    /* JADX WARN: Code duplicated, block: B:259:0x0441  */
    /* JADX WARN: Code duplicated, block: B:262:0x0448 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:264:0x044c  */
    /* JADX WARN: Code duplicated, block: B:269:0x045a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    /* JADX WARN: Code duplicated, block: B:31:0x0077  */
    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:66:0x0100  */
    /* JADX WARN: Code duplicated, block: B:68:0x0108  */
    /* JADX WARN: Code duplicated, block: B:69:0x010a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0115 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0117 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x0119  */
    /* JADX WARN: Code duplicated, block: B:76:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x0124 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x0126  */
    /* JADX WARN: Code duplicated, block: B:83:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x0133  */
    /* JADX WARN: Code duplicated, block: B:85:0x0138  */
    /* JADX WARN: Code duplicated, block: B:86:0x0140  */
    /* JADX WARN: Code duplicated, block: B:88:0x0147  */
    /* JADX WARN: Code duplicated, block: B:92:0x014e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0158  */
    /* JADX WARN: Code duplicated, block: B:95:0x015c  */
    /* JADX WARN: Code duplicated, block: B:97:0x015f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0168  */
    /* JADX WARN: Instruction removed from duplicated block: B:177:0x02aa, please report this as an issue */
    public boolean draw(Canvas canvas, ViewGroup viewGroup, long j2) {
        boolean z2;
        boolean z3;
        Animation animation;
        DisplayList displayList;
        Animation animation2;
        Transformation childTransformation;
        boolean zWillChangeTransformationMatrix;
        boolean z4;
        DisplayList displayList2;
        boolean z5;
        Bitmap drawingCache;
        int i2;
        boolean zCanHaveDisplayList;
        boolean z6;
        DisplayList displayList3;
        int i3;
        int i4;
        boolean z7;
        boolean z8;
        int iSave;
        int i5;
        float alpha;
        int i6;
        int i7;
        float f2;
        int i8;
        float alpha2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z9;
        int i15;
        boolean z10;
        boolean z11;
        DisplayList displayList4;
        boolean z12;
        ViewGroup viewGroup2;
        int i16;
        int i17;
        Paint paint;
        Animation animation3;
        int i18;
        int i19;
        boolean z13;
        AttachInfo attachInfo = this.mAttachInfo;
        boolean z14 = attachInfo != null && attachInfo.mHardwareAccelerated;
        boolean zHasIdentityMatrix = hasIdentityMatrix();
        int i20 = viewGroup.mGroupFlags;
        if ((i20 & 256) == 256) {
            viewGroup.getChildTransformation().clear();
            viewGroup.mGroupFlags &= -257;
        }
        int layerType = getLayerType();
        boolean zIsHardwareAccelerated = canvas.isHardwareAccelerated();
        if ((32768 & i20) != 0 || (i20 & 16384) != 0) {
            AttachInfo attachInfo2 = this.mAttachInfo;
            if (attachInfo2 != null) {
                z3 = attachInfo2.mScalingRequired;
                z2 = true;
            } else {
                z2 = true;
            }
            animation = getAnimation();
            if (animation != null) {
                displayList = null;
                animation2 = animation;
                boolean zDrawAnimation = drawAnimation(viewGroup, j2, animation, z3);
                zWillChangeTransformationMatrix = animation2.willChangeTransformationMatrix();
                if (zWillChangeTransformationMatrix) {
                    this.mPrivateFlags3 |= 1;
                }
                z4 = zDrawAnimation;
                childTransformation = viewGroup.getChildTransformation();
            } else {
                displayList = null;
                animation2 = animation;
                if ((this.mPrivateFlags3 & 1) == 1 && (displayList2 = this.mDisplayList) != null) {
                    displayList2.setAnimationMatrix(null);
                    this.mPrivateFlags3 &= -2;
                }
                if (!z14 || (i20 & 2048) == 0) {
                    childTransformation = null;
                    zWillChangeTransformationMatrix = false;
                } else {
                    Transformation childTransformation2 = viewGroup.getChildTransformation();
                    if (viewGroup.getChildStaticTransformation(this, childTransformation2)) {
                        int transformationType = childTransformation2.getTransformationType();
                        Transformation transformation = transformationType != 0 ? childTransformation2 : null;
                        zWillChangeTransformationMatrix = (transformationType & 2) != 0;
                        childTransformation = transformation;
                    } else {
                        childTransformation = null;
                        zWillChangeTransformationMatrix = false;
                    }
                }
                z4 = false;
            }
            z5 = zWillChangeTransformationMatrix | (!zHasIdentityMatrix);
            this.mPrivateFlags |= 32;
            if (z5 && (i20 & GLES10.GL_EXP2) == 1 && canvas.quickReject(this.mLeft, this.mTop, this.mRight, this.mBottom, Canvas.EdgeType.BW) && (this.mPrivateFlags & 64) == 0) {
                this.mPrivateFlags2 |= 268435456;
                return z4;
            }
            this.mPrivateFlags2 &= -268435457;
            if (zIsHardwareAccelerated) {
                i19 = this.mPrivateFlags;
                if ((i19 & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                this.mRecreateDisplayList = z13;
                this.mPrivateFlags = i19 & Integer.MAX_VALUE;
            }
            if (z2) {
                if (zIsHardwareAccelerated) {
                    if (layerType != 0) {
                        zCanHaveDisplayList = canHaveDisplayList();
                    } else if (layerType != 1) {
                        if (layerType == 2 && z14) {
                            zCanHaveDisplayList = canHaveDisplayList();
                        }
                        drawingCache = displayList;
                    } else if (z14) {
                        zCanHaveDisplayList = canHaveDisplayList();
                    } else {
                        buildDrawingCache(true);
                        drawingCache = getDrawingCache(true);
                    }
                    drawingCache = displayList;
                    i2 = layerType;
                } else {
                    if (layerType != 0) {
                        buildDrawingCache(true);
                        layerType = 1;
                    }
                    drawingCache = getDrawingCache(true);
                }
                i2 = layerType;
                zCanHaveDisplayList = false;
            } else {
                drawingCache = displayList;
                i2 = layerType;
                zCanHaveDisplayList = false;
            }
            z6 = z14 & zCanHaveDisplayList;
            if (z6) {
                displayList3 = getDisplayList();
                if (!displayList3.isValid()) {
                    displayList3 = displayList;
                    zCanHaveDisplayList = false;
                    z6 = false;
                }
            } else {
                displayList3 = displayList;
            }
            if (zCanHaveDisplayList) {
                i3 = 0;
                i4 = 0;
            } else {
                computeScroll();
                i3 = this.mScrollX;
                i4 = this.mScrollY;
            }
            if (drawingCache != null || zCanHaveDisplayList) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (drawingCache == null || zCanHaveDisplayList || i2 == 2) {
                z8 = false;
            } else {
                z8 = true;
            }
            iSave = (z6 || childTransformation != null) ? canvas.save() : -1;
            if (z8) {
                canvas.translate(this.mLeft - i3, this.mTop - i4);
            } else {
                if (!z6) {
                    canvas.translate(this.mLeft, this.mTop);
                }
                if (z3) {
                    if (z6) {
                        iSave = canvas.save();
                    }
                    float f3 = 1.0f / this.mAttachInfo.mApplicationScale;
                    canvas.scale(f3, f3);
                }
            }
            i5 = iSave;
            if (z6) {
                alpha = 1.0f;
            } else {
                alpha = getAlpha() * getTransitionAlpha();
            }
            if (childTransformation == null || alpha < 1.0f || !hasIdentityMatrix() || (this.mPrivateFlags3 & 2) == 2) {
                if (childTransformation == null || !zHasIdentityMatrix) {
                    if (z8) {
                        i6 = -i3;
                        i7 = -i4;
                    } else {
                        i6 = 0;
                        i7 = 0;
                    }
                    if (childTransformation != null) {
                        if (z5) {
                            if (z6) {
                                displayList3.setAnimationMatrix(childTransformation.getMatrix());
                            } else {
                                canvas.translate(-i6, -i7);
                                canvas.concat(childTransformation.getMatrix());
                                canvas.translate(i6, i7);
                            }
                            i8 = 256;
                            viewGroup.mGroupFlags |= 256;
                        } else {
                            i4 = i4;
                            i5 = i5;
                            i8 = 256;
                        }
                        alpha2 = childTransformation.getAlpha();
                        if (alpha2 < 1.0f) {
                            alpha *= alpha2;
                            viewGroup.mGroupFlags |= i8;
                        }
                    } else {
                        i4 = i4;
                        i5 = i5;
                    }
                    if (!zHasIdentityMatrix && !z6) {
                        canvas.translate(-i6, -i7);
                        canvas.concat(getMatrix());
                        canvas.translate(i6, i7);
                    }
                    f2 = alpha;
                } else {
                    f2 = alpha;
                    i4 = i4;
                    i5 = i5;
                }
                if (f2 >= 1.0f) {
                    i9 = 2;
                    if ((this.mPrivateFlags3 & 2) != 2) {
                        i11 = 262144;
                    }
                    alpha = f2;
                } else {
                    i9 = 2;
                }
                if (f2 < 1.0f) {
                    this.mPrivateFlags3 |= i9;
                } else {
                    this.mPrivateFlags3 &= -3;
                }
                viewGroup.mGroupFlags |= 256;
                if (z7) {
                    i10 = (int) (f2 * 255.0f);
                    if (onSetAlpha(i10)) {
                        i11 = 262144;
                        this.mPrivateFlags |= 262144;
                    } else {
                        i12 = ((i20 & 1) == 0 || i2 != 0) ? 20 : 4;
                        if (z6) {
                            displayList3.setAlpha(getAlpha() * f2 * getTransitionAlpha());
                        } else if (i2 == 0) {
                            if (zCanHaveDisplayList) {
                                i13 = 0;
                            } else {
                                i13 = i3;
                            }
                            if (zCanHaveDisplayList) {
                                i14 = 0;
                            } else {
                                i14 = i4;
                            }
                            i11 = 262144;
                            canvas.saveLayerAlpha(i13, i14, (i13 + this.mRight) - this.mLeft, (i14 + this.mBottom) - this.mTop, i10, i12);
                        }
                        i11 = 262144;
                    }
                } else {
                    i11 = 262144;
                }
                alpha = f2;
            } else {
                if ((this.mPrivateFlags & 262144) == 262144) {
                    onSetAlpha(255);
                    this.mPrivateFlags &= -262145;
                }
                displayList3 = displayList3;
                i11 = 262144;
                i4 = i4;
                i20 = i20;
                i5 = i5;
            }
            z9 = true;
            if ((i20 & 1) != 1 && !z6 && drawingCache == null) {
                if (z8) {
                    i15 = i4;
                    canvas.clipRect(i3, i15, (this.mRight - this.mLeft) + i3, i15 + (this.mBottom - this.mTop));
                } else {
                    i15 = i4;
                    if (!z3 || drawingCache == null) {
                        z10 = false;
                        canvas.clipRect(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
                    } else {
                        z10 = false;
                        canvas.clipRect(0, 0, drawingCache.getWidth(), drawingCache.getHeight());
                    }
                }
                if (z6 && zCanHaveDisplayList) {
                    DisplayList displayList5 = getDisplayList();
                    if (displayList5.isValid()) {
                        z11 = zCanHaveDisplayList;
                        displayList4 = displayList5;
                    } else {
                        z11 = z10;
                        displayList4 = null;
                    }
                } else {
                    z11 = zCanHaveDisplayList;
                    displayList4 = displayList3;
                }
                if (z7) {
                    if (i2 != 2 && !z6) {
                        HardwareLayer hardwareLayer = getHardwareLayer();
                        if (hardwareLayer == null || !hardwareLayer.isValid()) {
                            if (z11) {
                                i3 = z10;
                            }
                            if (z11) {
                                i15 = z10;
                            }
                            canvas.saveLayer(i3, i15, (i3 + this.mRight) - this.mLeft, (i15 + this.mBottom) - this.mTop, this.mLayerPaint, 20);
                        } else {
                            this.mLayerPaint.setAlpha((int) (alpha * 255.0f));
                            ((HardwareCanvas) canvas).drawHardwareLayer(hardwareLayer, 0.0f, 0.0f, this.mLayerPaint);
                            z10 = z10;
                            z9 = true;
                        }
                        if (!z9) {
                            if (z11) {
                                this.mPrivateFlags &= -6291457;
                                ((HardwareCanvas) canvas).drawDisplayList(displayList4, null, i20);
                            } else {
                                i18 = this.mPrivateFlags;
                                if ((i18 & 128) == 128) {
                                    this.mPrivateFlags = i18 & (-6291457);
                                    dispatchDraw(canvas);
                                } else {
                                    draw(canvas);
                                }
                            }
                        }
                        z12 = z9;
                        i16 = i11;
                        i17 = 255;
                        viewGroup2 = viewGroup;
                    }
                    if (!z9) {
                        if (z11) {
                            i18 = this.mPrivateFlags;
                            if ((i18 & 128) == 128) {
                                this.mPrivateFlags = i18 & (-6291457);
                                dispatchDraw(canvas);
                            } else {
                                draw(canvas);
                            }
                        } else {
                            this.mPrivateFlags &= -6291457;
                            ((HardwareCanvas) canvas).drawDisplayList(displayList4, null, i20);
                        }
                    }
                    z12 = z9;
                    i16 = i11;
                    i17 = 255;
                    viewGroup2 = viewGroup;
                } else {
                    z10 = z10;
                    z12 = true;
                    if (drawingCache != null) {
                        this.mPrivateFlags &= -6291457;
                        if (i2 == 0) {
                            viewGroup2 = viewGroup;
                            i16 = i11;
                            paint = viewGroup2.mCachePaint;
                            if (paint == null) {
                                paint = new Paint();
                                paint.setDither(z10);
                                viewGroup2.mCachePaint = paint;
                            }
                            if (alpha < 1.0f) {
                                paint.setAlpha((int) (alpha * 255.0f));
                                viewGroup2.mGroupFlags |= 4096;
                            } else if ((i20 & 4096) != 0) {
                                i17 = 255;
                                paint.setAlpha(255);
                                viewGroup2.mGroupFlags &= -4097;
                            }
                            i17 = 255;
                        } else {
                            viewGroup2 = viewGroup;
                            i16 = i11;
                            i17 = 255;
                            paint = this.mLayerPaint;
                            paint.setAlpha((int) (alpha * 255.0f));
                        }
                        canvas.drawBitmap(drawingCache, 0.0f, 0.0f, paint);
                    } else {
                        viewGroup2 = viewGroup;
                        i16 = i11;
                        i17 = 255;
                    }
                }
                if (i5 >= 0) {
                    canvas.restoreToCount(i5);
                }
                animation3 = animation2;
                if (animation3 != null && !z4) {
                    if (!zIsHardwareAccelerated && !animation3.getFillAfter()) {
                        onSetAlpha(i17);
                    }
                    viewGroup2.finishAnimatingView(this, animation3);
                }
                if (z4 && zIsHardwareAccelerated && animation3.hasAlpha() && (this.mPrivateFlags & i16) == i16) {
                    invalidate(z12);
                }
                this.mRecreateDisplayList = z10;
                return z4;
            }
            i15 = i4;
            z10 = false;
            if (z6) {
                z11 = zCanHaveDisplayList;
                displayList4 = displayList3;
            } else {
                z11 = zCanHaveDisplayList;
                displayList4 = displayList3;
            }
            if (z7) {
                z9 = i2 != 2 ? z10 : z10;
                if (!z9) {
                    if (z11) {
                        i18 = this.mPrivateFlags;
                        if ((i18 & 128) == 128) {
                            this.mPrivateFlags = i18 & (-6291457);
                            dispatchDraw(canvas);
                        } else {
                            draw(canvas);
                        }
                    } else {
                        this.mPrivateFlags &= -6291457;
                        ((HardwareCanvas) canvas).drawDisplayList(displayList4, null, i20);
                    }
                }
                z12 = z9;
                i16 = i11;
                i17 = 255;
                viewGroup2 = viewGroup;
            } else {
                z10 = z10;
                z12 = true;
                if (drawingCache != null) {
                    this.mPrivateFlags &= -6291457;
                    if (i2 == 0) {
                        viewGroup2 = viewGroup;
                        i16 = i11;
                        paint = viewGroup2.mCachePaint;
                        if (paint == null) {
                            paint = new Paint();
                            paint.setDither(z10);
                            viewGroup2.mCachePaint = paint;
                        }
                        if (alpha < 1.0f) {
                            paint.setAlpha((int) (alpha * 255.0f));
                            viewGroup2.mGroupFlags |= 4096;
                        } else if ((i20 & 4096) != 0) {
                            i17 = 255;
                            paint.setAlpha(255);
                            viewGroup2.mGroupFlags &= -4097;
                        }
                        i17 = 255;
                    } else {
                        viewGroup2 = viewGroup;
                        i16 = i11;
                        i17 = 255;
                        paint = this.mLayerPaint;
                        paint.setAlpha((int) (alpha * 255.0f));
                    }
                    canvas.drawBitmap(drawingCache, 0.0f, 0.0f, paint);
                } else {
                    viewGroup2 = viewGroup;
                    i16 = i11;
                    i17 = 255;
                }
            }
            if (i5 >= 0) {
                canvas.restoreToCount(i5);
            }
            animation3 = animation2;
            if (animation3 != null) {
                if (!zIsHardwareAccelerated) {
                    onSetAlpha(i17);
                }
                viewGroup2.finishAnimatingView(this, animation3);
            }
            if (z4) {
                invalidate(z12);
            }
            this.mRecreateDisplayList = z10;
            return z4;
        }
        z2 = layerType != 0 || zIsHardwareAccelerated;
        z3 = false;
        animation = getAnimation();
        if (animation != null) {
            displayList = null;
            animation2 = animation;
            boolean zDrawAnimation2 = drawAnimation(viewGroup, j2, animation, z3);
            zWillChangeTransformationMatrix = animation2.willChangeTransformationMatrix();
            if (zWillChangeTransformationMatrix) {
                this.mPrivateFlags3 |= 1;
            }
            z4 = zDrawAnimation2;
            childTransformation = viewGroup.getChildTransformation();
        } else {
            displayList = null;
            animation2 = animation;
            if ((this.mPrivateFlags3 & 1) == 1) {
                displayList2.setAnimationMatrix(null);
                this.mPrivateFlags3 &= -2;
            }
            if (z14) {
                childTransformation = null;
                zWillChangeTransformationMatrix = false;
            } else {
                childTransformation = null;
                zWillChangeTransformationMatrix = false;
            }
            z4 = false;
        }
        z5 = zWillChangeTransformationMatrix | (!zHasIdentityMatrix);
        this.mPrivateFlags |= 32;
        if (z5) {
        }
        this.mPrivateFlags2 &= -268435457;
        if (zIsHardwareAccelerated) {
            i19 = this.mPrivateFlags;
            if ((i19 & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
                z13 = true;
            } else {
                z13 = false;
            }
            this.mRecreateDisplayList = z13;
            this.mPrivateFlags = i19 & Integer.MAX_VALUE;
        }
        if (z2) {
            drawingCache = displayList;
            i2 = layerType;
            zCanHaveDisplayList = false;
        } else {
            if (zIsHardwareAccelerated) {
                if (layerType != 0) {
                    buildDrawingCache(true);
                    layerType = 1;
                }
                drawingCache = getDrawingCache(true);
            } else {
                if (layerType != 0) {
                    zCanHaveDisplayList = canHaveDisplayList();
                } else if (layerType != 1) {
                    if (layerType == 2) {
                        zCanHaveDisplayList = canHaveDisplayList();
                    }
                    drawingCache = displayList;
                } else if (z14) {
                    zCanHaveDisplayList = canHaveDisplayList();
                } else {
                    buildDrawingCache(true);
                    drawingCache = getDrawingCache(true);
                }
                drawingCache = displayList;
                i2 = layerType;
            }
            i2 = layerType;
            zCanHaveDisplayList = false;
        }
        z6 = z14 & zCanHaveDisplayList;
        if (z6) {
            displayList3 = getDisplayList();
            if (!displayList3.isValid()) {
                displayList3 = displayList;
                zCanHaveDisplayList = false;
                z6 = false;
            }
        } else {
            displayList3 = displayList;
        }
        if (zCanHaveDisplayList) {
            computeScroll();
            i3 = this.mScrollX;
            i4 = this.mScrollY;
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (drawingCache != null) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (drawingCache == null) {
            z8 = false;
        } else {
            z8 = false;
        }
        if (z6) {
        }
        if (z8) {
            canvas.translate(this.mLeft - i3, this.mTop - i4);
        } else {
            if (!z6) {
                canvas.translate(this.mLeft, this.mTop);
            }
            if (z3) {
                if (z6) {
                    iSave = canvas.save();
                }
                float f4 = 1.0f / this.mAttachInfo.mApplicationScale;
                canvas.scale(f4, f4);
            }
        }
        i5 = iSave;
        if (z6) {
            alpha = 1.0f;
        } else {
            alpha = getAlpha() * getTransitionAlpha();
        }
        if (childTransformation == null) {
            if (childTransformation == null) {
                if (z8) {
                    i6 = -i3;
                    i7 = -i4;
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (childTransformation != null) {
                    if (z5) {
                        if (z6) {
                            displayList3.setAnimationMatrix(childTransformation.getMatrix());
                        } else {
                            canvas.translate(-i6, -i7);
                            canvas.concat(childTransformation.getMatrix());
                            canvas.translate(i6, i7);
                        }
                        i8 = 256;
                        viewGroup.mGroupFlags |= 256;
                    } else {
                        i4 = i4;
                        i5 = i5;
                        i8 = 256;
                    }
                    alpha2 = childTransformation.getAlpha();
                    if (alpha2 < 1.0f) {
                        alpha *= alpha2;
                        viewGroup.mGroupFlags |= i8;
                    }
                } else {
                    i4 = i4;
                    i5 = i5;
                }
                if (!zHasIdentityMatrix) {
                    canvas.translate(-i6, -i7);
                    canvas.concat(getMatrix());
                    canvas.translate(i6, i7);
                }
                f2 = alpha;
            } else {
                if (z8) {
                    i6 = -i3;
                    i7 = -i4;
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (childTransformation != null) {
                    if (z5) {
                        if (z6) {
                            displayList3.setAnimationMatrix(childTransformation.getMatrix());
                        } else {
                            canvas.translate(-i6, -i7);
                            canvas.concat(childTransformation.getMatrix());
                            canvas.translate(i6, i7);
                        }
                        i8 = 256;
                        viewGroup.mGroupFlags |= 256;
                    } else {
                        i4 = i4;
                        i5 = i5;
                        i8 = 256;
                    }
                    alpha2 = childTransformation.getAlpha();
                    if (alpha2 < 1.0f) {
                        alpha *= alpha2;
                        viewGroup.mGroupFlags |= i8;
                    }
                } else {
                    i4 = i4;
                    i5 = i5;
                }
                if (!zHasIdentityMatrix) {
                    canvas.translate(-i6, -i7);
                    canvas.concat(getMatrix());
                    canvas.translate(i6, i7);
                }
                f2 = alpha;
            }
            if (f2 >= 1.0f) {
                i9 = 2;
                if ((this.mPrivateFlags3 & 2) != 2) {
                    i11 = 262144;
                }
                alpha = f2;
            } else {
                i9 = 2;
            }
            if (f2 < 1.0f) {
                this.mPrivateFlags3 |= i9;
            } else {
                this.mPrivateFlags3 &= -3;
            }
            viewGroup.mGroupFlags |= 256;
            if (z7) {
                i10 = (int) (f2 * 255.0f);
                if (onSetAlpha(i10)) {
                    i12 = ((i20 & 1) == 0 || i2 != 0) ? 20 : 4;
                    if (z6) {
                        displayList3.setAlpha(getAlpha() * f2 * getTransitionAlpha());
                    } else if (i2 == 0) {
                        if (zCanHaveDisplayList) {
                            i13 = 0;
                        } else {
                            i13 = i3;
                        }
                        if (zCanHaveDisplayList) {
                            i14 = 0;
                        } else {
                            i14 = i4;
                        }
                        i11 = 262144;
                        canvas.saveLayerAlpha(i13, i14, (i13 + this.mRight) - this.mLeft, (i14 + this.mBottom) - this.mTop, i10, i12);
                    }
                    i11 = 262144;
                } else {
                    i11 = 262144;
                    this.mPrivateFlags |= 262144;
                }
            } else {
                i11 = 262144;
            }
            alpha = f2;
        } else {
            if (childTransformation == null) {
                if (z8) {
                    i6 = -i3;
                    i7 = -i4;
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (childTransformation != null) {
                    if (z5) {
                        if (z6) {
                            displayList3.setAnimationMatrix(childTransformation.getMatrix());
                        } else {
                            canvas.translate(-i6, -i7);
                            canvas.concat(childTransformation.getMatrix());
                            canvas.translate(i6, i7);
                        }
                        i8 = 256;
                        viewGroup.mGroupFlags |= 256;
                    } else {
                        i4 = i4;
                        i5 = i5;
                        i8 = 256;
                    }
                    alpha2 = childTransformation.getAlpha();
                    if (alpha2 < 1.0f) {
                        alpha *= alpha2;
                        viewGroup.mGroupFlags |= i8;
                    }
                } else {
                    i4 = i4;
                    i5 = i5;
                }
                if (!zHasIdentityMatrix) {
                    canvas.translate(-i6, -i7);
                    canvas.concat(getMatrix());
                    canvas.translate(i6, i7);
                }
                f2 = alpha;
            } else {
                if (z8) {
                    i6 = -i3;
                    i7 = -i4;
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (childTransformation != null) {
                    if (z5) {
                        if (z6) {
                            displayList3.setAnimationMatrix(childTransformation.getMatrix());
                        } else {
                            canvas.translate(-i6, -i7);
                            canvas.concat(childTransformation.getMatrix());
                            canvas.translate(i6, i7);
                        }
                        i8 = 256;
                        viewGroup.mGroupFlags |= 256;
                    } else {
                        i4 = i4;
                        i5 = i5;
                        i8 = 256;
                    }
                    alpha2 = childTransformation.getAlpha();
                    if (alpha2 < 1.0f) {
                        alpha *= alpha2;
                        viewGroup.mGroupFlags |= i8;
                    }
                } else {
                    i4 = i4;
                    i5 = i5;
                }
                if (!zHasIdentityMatrix) {
                    canvas.translate(-i6, -i7);
                    canvas.concat(getMatrix());
                    canvas.translate(i6, i7);
                }
                f2 = alpha;
            }
            if (f2 >= 1.0f) {
                i9 = 2;
                if ((this.mPrivateFlags3 & 2) != 2) {
                    i11 = 262144;
                }
                alpha = f2;
            } else {
                i9 = 2;
            }
            if (f2 < 1.0f) {
                this.mPrivateFlags3 |= i9;
            } else {
                this.mPrivateFlags3 &= -3;
            }
            viewGroup.mGroupFlags |= 256;
            if (z7) {
                i10 = (int) (f2 * 255.0f);
                if (onSetAlpha(i10)) {
                    i12 = ((i20 & 1) == 0 || i2 != 0) ? 20 : 4;
                    if (z6) {
                        displayList3.setAlpha(getAlpha() * f2 * getTransitionAlpha());
                    } else if (i2 == 0) {
                        if (zCanHaveDisplayList) {
                            i13 = 0;
                        } else {
                            i13 = i3;
                        }
                        if (zCanHaveDisplayList) {
                            i14 = 0;
                        } else {
                            i14 = i4;
                        }
                        i11 = 262144;
                        canvas.saveLayerAlpha(i13, i14, (i13 + this.mRight) - this.mLeft, (i14 + this.mBottom) - this.mTop, i10, i12);
                    }
                    i11 = 262144;
                } else {
                    i11 = 262144;
                    this.mPrivateFlags |= 262144;
                }
            } else {
                i11 = 262144;
            }
            alpha = f2;
        }
        z9 = true;
        if ((i20 & 1) != 1) {
            i15 = i4;
            z10 = false;
        } else {
            i15 = i4;
            z10 = false;
        }
        if (z6) {
            z11 = zCanHaveDisplayList;
            displayList4 = displayList3;
        } else {
            z11 = zCanHaveDisplayList;
            displayList4 = displayList3;
        }
        if (z7) {
            if (i2 != 2) {
            }
            if (!z9) {
                if (z11) {
                    i18 = this.mPrivateFlags;
                    if ((i18 & 128) == 128) {
                        this.mPrivateFlags = i18 & (-6291457);
                        dispatchDraw(canvas);
                    } else {
                        draw(canvas);
                    }
                } else {
                    this.mPrivateFlags &= -6291457;
                    ((HardwareCanvas) canvas).drawDisplayList(displayList4, null, i20);
                }
            }
            z12 = z9;
            i16 = i11;
            i17 = 255;
            viewGroup2 = viewGroup;
        } else {
            z10 = z10;
            z12 = true;
            if (drawingCache != null) {
                this.mPrivateFlags &= -6291457;
                if (i2 == 0) {
                    viewGroup2 = viewGroup;
                    i16 = i11;
                    paint = viewGroup2.mCachePaint;
                    if (paint == null) {
                        paint = new Paint();
                        paint.setDither(z10);
                        viewGroup2.mCachePaint = paint;
                    }
                    if (alpha < 1.0f) {
                        paint.setAlpha((int) (alpha * 255.0f));
                        viewGroup2.mGroupFlags |= 4096;
                    } else if ((i20 & 4096) != 0) {
                        i17 = 255;
                        paint.setAlpha(255);
                        viewGroup2.mGroupFlags &= -4097;
                    }
                    i17 = 255;
                } else {
                    viewGroup2 = viewGroup;
                    i16 = i11;
                    i17 = 255;
                    paint = this.mLayerPaint;
                    paint.setAlpha((int) (alpha * 255.0f));
                }
                canvas.drawBitmap(drawingCache, 0.0f, 0.0f, paint);
            } else {
                viewGroup2 = viewGroup;
                i16 = i11;
                i17 = 255;
            }
        }
        if (i5 >= 0) {
            canvas.restoreToCount(i5);
        }
        animation3 = animation2;
        if (animation3 != null) {
            if (!zIsHardwareAccelerated) {
                onSetAlpha(i17);
            }
            viewGroup2.finishAnimatingView(this, animation3);
        }
        if (z4) {
            invalidate(z12);
        }
        this.mRecreateDisplayList = z10;
        return z4;
    }

    public void drawableStateChanged() {
        Drawable drawable = this.mBackground;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public void ensureTransformationInfo() {
        if (this.mTransformationInfo == null) {
            this.mTransformationInfo = new TransformationInfo();
        }
    }

    public boolean executeHardwareAction(Runnable runnable) {
        HardwareRenderer hardwareRenderer;
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || (hardwareRenderer = attachInfo.mHardwareRenderer) == null) {
            return false;
        }
        return hardwareRenderer.safelyRun(runnable);
    }

    public View findFocus() {
        if ((this.mPrivateFlags & 2) != 0) {
            return this;
        }
        return null;
    }

    public View findUserSetNextFocus(View view, int i2) {
        int i3;
        if (i2 == 1) {
            final int i4 = this.mID;
            if (i4 == -1) {
                return null;
            }
            return view.findViewByPredicateInsideOut(this, new k<View>() { // from class: android.view.View.2
                @Override // u.k
                public boolean apply(View view2) {
                    return view2.mNextFocusForwardId == i4;
                }
            });
        }
        if (i2 == 2) {
            int i5 = this.mNextFocusForwardId;
            if (i5 == -1) {
                return null;
            }
            return findViewInsideOutShouldExist(view, i5);
        }
        if (i2 == 17) {
            int i6 = this.mNextFocusLeftId;
            if (i6 == -1) {
                return null;
            }
            return findViewInsideOutShouldExist(view, i6);
        }
        if (i2 == 33) {
            int i7 = this.mNextFocusUpId;
            if (i7 == -1) {
                return null;
            }
            return findViewInsideOutShouldExist(view, i7);
        }
        if (i2 != 66) {
            if (i2 == 130 && (i3 = this.mNextFocusDownId) != -1) {
                return findViewInsideOutShouldExist(view, i3);
            }
            return null;
        }
        int i8 = this.mNextFocusRightId;
        if (i8 == -1) {
            return null;
        }
        return findViewInsideOutShouldExist(view, i8);
    }

    public final View findViewByAccessibilityId(int i2) {
        if (i2 < 0) {
            return null;
        }
        return findViewByAccessibilityIdTraversal(i2);
    }

    public View findViewByAccessibilityIdTraversal(int i2) {
        if (getAccessibilityViewId() == i2) {
            return this;
        }
        return null;
    }

    public final View findViewById(int i2) {
        if (i2 < 0) {
            return null;
        }
        return findViewTraversal(i2);
    }

    public final View findViewByPredicate(k<View> kVar) {
        return findViewByPredicateTraversal(kVar, null);
    }

    public final View findViewByPredicateInsideOut(View view, k<View> kVar) {
        View viewFindViewByPredicateTraversal;
        View view2 = null;
        while (true) {
            viewFindViewByPredicateTraversal = view.findViewByPredicateTraversal(kVar, view2);
            if (viewFindViewByPredicateTraversal != null || view == this) {
                break;
            }
            Object parent = view.getParent();
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            View view3 = (View) parent;
            view2 = view;
            view = view3;
        }
        return viewFindViewByPredicateTraversal;
    }

    public View findViewByPredicateTraversal(k<View> kVar, View view) {
        if (kVar.apply(this)) {
            return this;
        }
        return null;
    }

    public View findViewTraversal(int i2) {
        if (i2 == this.mID) {
            return this;
        }
        return null;
    }

    public final View findViewWithTag(Object obj) {
        if (obj == null) {
            return null;
        }
        return findViewWithTagTraversal(obj);
    }

    public View findViewWithTagTraversal(Object obj) {
        if (obj == null || !obj.equals(this.mTag)) {
            return null;
        }
        return this;
    }

    public void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i2) {
        CharSequence charSequence2;
        if (getAccessibilityNodeProvider() != null) {
            if ((i2 & 4) != 0) {
                arrayList.add(this);
            }
        } else {
            if ((i2 & 2) == 0 || charSequence == null || charSequence.length() <= 0 || (charSequence2 = this.mContentDescription) == null || charSequence2.length() <= 0) {
                return;
            }
            if (this.mContentDescription.toString().toLowerCase().contains(charSequence.toString().toLowerCase())) {
                arrayList.add(this);
            }
        }
    }

    public boolean fitSystemWindows(Rect rect) {
        if ((this.mViewFlags & 2) != 2) {
            return false;
        }
        this.mUserPaddingStart = Integer.MIN_VALUE;
        this.mUserPaddingEnd = Integer.MIN_VALUE;
        ThreadLocal<Rect> threadLocal = sThreadLocal;
        Rect rect2 = threadLocal.get();
        if (rect2 == null) {
            rect2 = new Rect();
            threadLocal.set(rect2);
        }
        boolean zComputeFitSystemWindows = computeFitSystemWindows(rect, rect2);
        int i2 = rect2.left;
        this.mUserPaddingLeftInitial = i2;
        int i3 = rect2.right;
        this.mUserPaddingRightInitial = i3;
        internalSetPadding(i2, rect2.top, i3, rect2.bottom);
        return zComputeFitSystemWindows;
    }

    public boolean fitsSystemWindows() {
        return getFitsSystemWindows();
    }

    public View focusSearch(int i2) {
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            return viewParent.focusSearch(this, i2);
        }
        return null;
    }

    public void forceLayout() {
        LongSparseLongArray longSparseLongArray = this.mMeasureCache;
        if (longSparseLongArray != null) {
            longSparseLongArray.clear();
        }
        int i2 = this.mPrivateFlags | 4096;
        this.mPrivateFlags = i2;
        this.mPrivateFlags = i2 | Integer.MIN_VALUE;
    }

    public boolean gatherTransparentRegion(Region region) {
        Drawable drawable;
        AttachInfo attachInfo = this.mAttachInfo;
        if (region != null && attachInfo != null) {
            int i2 = this.mPrivateFlags;
            if ((i2 & 128) == 0) {
                int[] iArr = attachInfo.mTransparentLocation;
                getLocationInWindow(iArr);
                region.op(iArr[0], iArr[1], (iArr[0] + this.mRight) - this.mLeft, (iArr[1] + this.mBottom) - this.mTop, Region.Op.DIFFERENCE);
            } else if ((i2 & 256) != 0 && (drawable = this.mBackground) != null) {
                applyDrawableToTransparentRegion(drawable, region);
            }
        }
        return true;
    }

    public AccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public int getAccessibilityLiveRegion() {
        return (this.mPrivateFlags2 & 25165824) >> 23;
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        if (accessibilityDelegate != null) {
            return accessibilityDelegate.getAccessibilityNodeProvider(this);
        }
        return null;
    }

    public int getAccessibilitySelectionEnd() {
        return getAccessibilitySelectionStart();
    }

    public int getAccessibilitySelectionStart() {
        return this.mAccessibilityCursorPosition;
    }

    public int getAccessibilityViewId() {
        if (this.mAccessibilityViewId == -1) {
            int i2 = sNextAccessibilityViewId;
            sNextAccessibilityViewId = i2 + 1;
            this.mAccessibilityViewId = i2;
        }
        return this.mAccessibilityViewId;
    }

    public int getAccessibilityWindowId() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mAccessibilityWindowId;
        }
        return -1;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getAlpha() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mAlpha;
        }
        return 1.0f;
    }

    public Animation getAnimation() {
        return this.mCurrentAnimation;
    }

    public IBinder getApplicationWindowToken() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return null;
        }
        IBinder iBinder = attachInfo.mPanelParentWindowToken;
        return iBinder == null ? attachInfo.mWindowToken : iBinder;
    }

    public Drawable getBackground() {
        return this.mBackground;
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public int getBaseline() {
        return -1;
    }

    @ViewDebug.CapturedViewProperty
    public final int getBottom() {
        return this.mBottom;
    }

    public float getBottomFadingEdgeStrength() {
        return computeVerticalScrollOffset() + computeVerticalScrollExtent() < computeVerticalScrollRange() ? 1.0f : 0.0f;
    }

    public int getBottomPaddingOffset() {
        return 0;
    }

    public void getBoundsOnScreen(Rect rect) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return;
        }
        RectF rectF = attachInfo.mTmpTransformRect;
        rectF.set(0.0f, 0.0f, this.mRight - this.mLeft, this.mBottom - this.mTop);
        if (!hasIdentityMatrix()) {
            getMatrix().mapRect(rectF);
        }
        rectF.offset(this.mLeft, this.mTop);
        Object obj = this.mParent;
        while (obj instanceof View) {
            View view = (View) obj;
            rectF.offset(-view.mScrollX, -view.mScrollY);
            if (!view.hasIdentityMatrix()) {
                view.getMatrix().mapRect(rectF);
            }
            rectF.offset(view.mLeft, view.mTop);
            obj = view.mParent;
        }
        if (obj instanceof ViewRootImpl) {
            rectF.offset(0.0f, -((ViewRootImpl) obj).mCurScrollY);
        }
        AttachInfo attachInfo2 = this.mAttachInfo;
        rectF.offset(attachInfo2.mWindowLeft, attachInfo2.mWindowTop);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public float getCameraDistance() {
        ensureTransformationInfo();
        float f2 = this.mResources.getDisplayMetrics().densityDpi;
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mCamera == null) {
            transformationInfo.mCamera = new Camera();
            transformationInfo.matrix3D = new Matrix();
        }
        return -(transformationInfo.mCamera.getLocationZ() * f2);
    }

    public Rect getClipBounds() {
        if (this.mClipBounds != null) {
            return new Rect(this.mClipBounds);
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = Context.ACCESSIBILITY_SERVICE)
    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    @ViewDebug.CapturedViewProperty
    public final Context getContext() {
        return this.mContext;
    }

    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return null;
    }

    public Display getDisplay() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mDisplay;
        }
        return null;
    }

    public final int[] getDrawableState() {
        int[] iArr = this.mDrawableState;
        if (iArr != null && (this.mPrivateFlags & 1024) == 0) {
            return iArr;
        }
        int[] iArrOnCreateDrawableState = onCreateDrawableState(0);
        this.mDrawableState = iArrOnCreateDrawableState;
        this.mPrivateFlags &= -1025;
        return iArrOnCreateDrawableState;
    }

    public Bitmap getDrawingCache() {
        return getDrawingCache(false);
    }

    public int getDrawingCacheBackgroundColor() {
        return this.mDrawingCacheBackgroundColor;
    }

    public int getDrawingCacheQuality() {
        return this.mViewFlags & DRAWING_CACHE_QUALITY_MASK;
    }

    public void getDrawingRect(Rect rect) {
        int i2 = this.mScrollX;
        rect.left = i2;
        int i3 = this.mScrollY;
        rect.top = i3;
        rect.right = i2 + (this.mRight - this.mLeft);
        rect.bottom = i3 + (this.mBottom - this.mTop);
    }

    public long getDrawingTime() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mDrawingTime;
        }
        return 0L;
    }

    public int getFadeHeight(boolean z2) {
        int topPaddingOffset = this.mPaddingTop;
        if (z2) {
            topPaddingOffset += getTopPaddingOffset();
        }
        return ((this.mBottom - this.mTop) - this.mPaddingBottom) - topPaddingOffset;
    }

    public int getFadeTop(boolean z2) {
        int i2 = this.mPaddingTop;
        return z2 ? i2 + getTopPaddingOffset() : i2;
    }

    @ViewDebug.ExportedProperty
    public boolean getFilterTouchesWhenObscured() {
        return (this.mViewFlags & 1024) != 0;
    }

    public boolean getFitsSystemWindows() {
        return (this.mViewFlags & 2) == 2;
    }

    public ArrayList<View> getFocusables(int i2) {
        ArrayList<View> arrayList = new ArrayList<>(24);
        addFocusables(arrayList, i2);
        return arrayList;
    }

    public void getFocusedRect(Rect rect) {
        getDrawingRect(rect);
    }

    public boolean getGlobalVisibleRect(Rect rect, Point point) {
        int i2 = this.mRight - this.mLeft;
        int i3 = this.mBottom - this.mTop;
        if (i2 <= 0 || i3 <= 0) {
            return false;
        }
        rect.set(0, 0, i2, i3);
        if (point != null) {
            point.set(-this.mScrollX, -this.mScrollY);
        }
        ViewParent viewParent = this.mParent;
        return viewParent == null || viewParent.getChildVisibleRect(this, rect, point);
    }

    public Handler getHandler() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mHandler;
        }
        return null;
    }

    public HardwareLayer getHardwareLayer() {
        HardwareRenderer hardwareRenderer;
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || (hardwareRenderer = attachInfo.mHardwareRenderer) == null || !hardwareRenderer.isEnabled() || !this.mAttachInfo.mHardwareRenderer.validate()) {
            return null;
        }
        int i2 = this.mRight - this.mLeft;
        int i3 = this.mBottom - this.mTop;
        if (i2 != 0 && i3 != 0) {
            if ((this.mPrivateFlags & 32768) == 0 || this.mHardwareLayer == null) {
                HardwareLayer hardwareLayer = this.mHardwareLayer;
                if (hardwareLayer == null) {
                    this.mHardwareLayer = this.mAttachInfo.mHardwareRenderer.createHardwareLayer(i2, i3, isOpaque());
                    this.mLocalDirtyRect.set(0, 0, i2, i3);
                } else {
                    if ((hardwareLayer.getWidth() != i2 || this.mHardwareLayer.getHeight() != i3) && this.mHardwareLayer.resize(i2, i3)) {
                        this.mLocalDirtyRect.set(0, 0, i2, i3);
                    }
                    computeOpaqueFlags();
                    boolean zIsOpaque = isOpaque();
                    if (this.mHardwareLayer.isValid() && this.mHardwareLayer.isOpaque() != zIsOpaque) {
                        this.mHardwareLayer.setOpaque(zIsOpaque);
                        this.mLocalDirtyRect.set(0, 0, i2, i3);
                    }
                }
                if (!this.mHardwareLayer.isValid()) {
                    return null;
                }
                this.mHardwareLayer.setLayerPaint(this.mLayerPaint);
                HardwareLayer hardwareLayer2 = this.mHardwareLayer;
                hardwareLayer2.redrawLater(getHardwareLayerDisplayList(hardwareLayer2), this.mLocalDirtyRect);
                ViewRootImpl viewRootImpl = getViewRootImpl();
                if (viewRootImpl != null) {
                    viewRootImpl.pushHardwareLayerUpdate(this.mHardwareLayer);
                }
                this.mLocalDirtyRect.setEmpty();
            }
            return this.mHardwareLayer;
        }
        return null;
    }

    public HardwareRenderer getHardwareRenderer() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mHardwareRenderer;
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public final int getHeight() {
        return this.mBottom - this.mTop;
    }

    public void getHitRect(Rect rect) {
        AttachInfo attachInfo;
        updateMatrix();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo == null || transformationInfo.mMatrixIsIdentity || (attachInfo = this.mAttachInfo) == null) {
            rect.set(this.mLeft, this.mTop, this.mRight, this.mBottom);
            return;
        }
        RectF rectF = attachInfo.mTmpTransformRect;
        rectF.set(0.0f, 0.0f, getWidth(), getHeight());
        transformationInfo.mMatrix.mapRect(rectF);
        int i2 = (int) rectF.left;
        int i3 = this.mLeft;
        int i4 = (int) rectF.top;
        int i5 = this.mTop;
        rect.set(i2 + i3, i4 + i5, ((int) rectF.right) + i3, ((int) rectF.bottom) + i5);
    }

    public int getHorizontalFadingEdgeLength() {
        ScrollabilityCache scrollabilityCache;
        if (!isHorizontalFadingEdgeEnabled() || (scrollabilityCache = this.mScrollCache) == null) {
            return 0;
        }
        return scrollabilityCache.fadingEdgeLength;
    }

    public float getHorizontalScrollFactor() {
        return getVerticalScrollFactor();
    }

    public int getHorizontalScrollbarHeight() {
        ScrollBarDrawable scrollBarDrawable;
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache == null || (scrollBarDrawable = scrollabilityCache.scrollBar) == null) {
            return 0;
        }
        int size = scrollBarDrawable.getSize(false);
        return size <= 0 ? scrollabilityCache.scrollBarSize : size;
    }

    @ViewDebug.CapturedViewProperty
    public int getId() {
        return this.mID;
    }

    @ViewDebug.ExportedProperty(category = Context.ACCESSIBILITY_SERVICE, mapping = {@ViewDebug.IntToString(from = 0, to = "auto"), @ViewDebug.IntToString(from = 1, to = "yes"), @ViewDebug.IntToString(from = 2, to = "no"), @ViewDebug.IntToString(from = 4, to = "noHideDescendants")})
    public int getImportantForAccessibility() {
        return (this.mPrivateFlags2 & PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK) >> 20;
    }

    public final Matrix getInverseMatrix() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo == null) {
            return Matrix.IDENTITY_MATRIX;
        }
        updateMatrix();
        if (transformationInfo.mInverseMatrixDirty) {
            if (transformationInfo.mInverseMatrix == null) {
                transformationInfo.mInverseMatrix = new Matrix();
            }
            transformationInfo.mMatrix.invert(transformationInfo.mInverseMatrix);
            transformationInfo.mInverseMatrixDirty = false;
        }
        return transformationInfo.mInverseMatrix;
    }

    public CharSequence getIterableTextForAccessibility() {
        return getContentDescription();
    }

    public AccessibilityIterators.TextSegmentIterator getIteratorForGranularity(int i2) {
        CharSequence iterableTextForAccessibility;
        if (i2 == 1) {
            CharSequence iterableTextForAccessibility2 = getIterableTextForAccessibility();
            if (iterableTextForAccessibility2 == null || iterableTextForAccessibility2.length() <= 0) {
                return null;
            }
            AccessibilityIterators.CharacterTextSegmentIterator characterTextSegmentIterator = AccessibilityIterators.CharacterTextSegmentIterator.getInstance(this.mContext.getResources().getConfiguration().locale);
            characterTextSegmentIterator.initialize(iterableTextForAccessibility2.toString());
            return characterTextSegmentIterator;
        }
        if (i2 != 2) {
            if (i2 != 8 || (iterableTextForAccessibility = getIterableTextForAccessibility()) == null || iterableTextForAccessibility.length() <= 0) {
                return null;
            }
            AccessibilityIterators.ParagraphTextSegmentIterator paragraphTextSegmentIterator = AccessibilityIterators.ParagraphTextSegmentIterator.getInstance();
            paragraphTextSegmentIterator.initialize(iterableTextForAccessibility.toString());
            return paragraphTextSegmentIterator;
        }
        CharSequence iterableTextForAccessibility3 = getIterableTextForAccessibility();
        if (iterableTextForAccessibility3 == null || iterableTextForAccessibility3.length() <= 0) {
            return null;
        }
        AccessibilityIterators.WordTextSegmentIterator wordTextSegmentIterator = AccessibilityIterators.WordTextSegmentIterator.getInstance(this.mContext.getResources().getConfiguration().locale);
        wordTextSegmentIterator.initialize(iterableTextForAccessibility3.toString());
        return wordTextSegmentIterator;
    }

    public boolean getKeepScreenOn() {
        return (this.mViewFlags & 67108864) != 0;
    }

    public KeyEvent.DispatcherState getKeyDispatcherState() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mKeyDispatchState;
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = Context.ACCESSIBILITY_SERVICE)
    public int getLabelFor() {
        return this.mLabelForId;
    }

    public int getLayerType() {
        return this.mLayerType;
    }

    @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = 0, to = "RESOLVED_DIRECTION_LTR"), @ViewDebug.IntToString(from = 1, to = "RESOLVED_DIRECTION_RTL")})
    public int getLayoutDirection() {
        if (getContext().getApplicationInfo().targetSdkVersion >= 17) {
            return (this.mPrivateFlags2 & 16) == 16 ? 1 : 0;
        }
        this.mPrivateFlags2 |= 32;
        return 0;
    }

    @ViewDebug.ExportedProperty(deepExport = true, prefix = "layout_")
    public ViewGroup.LayoutParams getLayoutParams() {
        return this.mLayoutParams;
    }

    @ViewDebug.CapturedViewProperty
    public final int getLeft() {
        return this.mLeft;
    }

    public float getLeftFadingEdgeStrength() {
        return computeHorizontalScrollOffset() > 0 ? 1.0f : 0.0f;
    }

    public int getLeftPaddingOffset() {
        return 0;
    }

    public ListenerInfo getListenerInfo() {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo != null) {
            return listenerInfo;
        }
        ListenerInfo listenerInfo2 = new ListenerInfo();
        this.mListenerInfo = listenerInfo2;
        return listenerInfo2;
    }

    public final boolean getLocalVisibleRect(Rect rect) {
        AttachInfo attachInfo = this.mAttachInfo;
        Point point = attachInfo != null ? attachInfo.mPoint : new Point();
        if (!getGlobalVisibleRect(rect, point)) {
            return false;
        }
        rect.offset(-point.f137x, -point.f138y);
        return true;
    }

    public void getLocationInWindow(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            throw new IllegalArgumentException("location must be an array of two integers");
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            iArr[1] = 0;
            iArr[0] = 0;
            return;
        }
        float[] fArr = attachInfo.mTmpTransformLocation;
        fArr[1] = 0.0f;
        fArr[0] = 0.0f;
        if (!hasIdentityMatrix()) {
            getMatrix().mapPoints(fArr);
        }
        fArr[0] = fArr[0] + this.mLeft;
        fArr[1] = fArr[1] + this.mTop;
        Object obj = this.mParent;
        while (obj instanceof View) {
            View view = (View) obj;
            fArr[0] = fArr[0] - view.mScrollX;
            fArr[1] = fArr[1] - view.mScrollY;
            if (!view.hasIdentityMatrix()) {
                view.getMatrix().mapPoints(fArr);
            }
            fArr[0] = fArr[0] + view.mLeft;
            fArr[1] = fArr[1] + view.mTop;
            obj = view.mParent;
        }
        if (obj instanceof ViewRootImpl) {
            fArr[1] = fArr[1] - ((ViewRootImpl) obj).mCurScrollY;
        }
        iArr[0] = (int) (fArr[0] + 0.5f);
        iArr[1] = (int) (fArr[1] + 0.5f);
    }

    public void getLocationOnScreen(int[] iArr) {
        getLocationInWindow(iArr);
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            iArr[0] = iArr[0] + attachInfo.mWindowLeft;
            iArr[1] = iArr[1] + attachInfo.mWindowTop;
        }
    }

    public Matrix getMatrix() {
        if (this.mTransformationInfo == null) {
            return Matrix.IDENTITY_MATRIX;
        }
        updateMatrix();
        return this.mTransformationInfo.mMatrix;
    }

    public final int getMeasuredHeight() {
        return this.mMeasuredHeight & 16777215;
    }

    public final int getMeasuredHeightAndState() {
        return this.mMeasuredHeight;
    }

    public final int getMeasuredState() {
        return (this.mMeasuredWidth & (-16777216)) | ((this.mMeasuredHeight >> 16) & (-256));
    }

    public final int getMeasuredWidth() {
        return this.mMeasuredWidth & 16777215;
    }

    public final int getMeasuredWidthAndState() {
        return this.mMeasuredWidth;
    }

    public int getMinimumHeight() {
        return this.mMinHeight;
    }

    public int getMinimumWidth() {
        return this.mMinWidth;
    }

    public int getNextFocusDownId() {
        return this.mNextFocusDownId;
    }

    public int getNextFocusForwardId() {
        return this.mNextFocusForwardId;
    }

    public int getNextFocusLeftId() {
        return this.mNextFocusLeftId;
    }

    public int getNextFocusRightId() {
        return this.mNextFocusRightId;
    }

    public int getNextFocusUpId() {
        return this.mNextFocusUpId;
    }

    public OnFocusChangeListener getOnFocusChangeListener() {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo != null) {
            return listenerInfo.mOnFocusChangeListener;
        }
        return null;
    }

    public Insets getOpticalInsets() {
        if (this.mLayoutInsets == null) {
            this.mLayoutInsets = computeOpticalInsets();
        }
        return this.mLayoutInsets;
    }

    public int getOverScrollMode() {
        return this.mOverScrollMode;
    }

    public ViewOverlay getOverlay() {
        if (this.mOverlay == null) {
            this.mOverlay = new ViewOverlay(this.mContext, this);
        }
        return this.mOverlay;
    }

    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    public int getPaddingEnd() {
        if (!isPaddingResolved()) {
            resolvePadding();
        }
        return getLayoutDirection() == 1 ? this.mPaddingLeft : this.mPaddingRight;
    }

    public int getPaddingLeft() {
        if (!isPaddingResolved()) {
            resolvePadding();
        }
        return this.mPaddingLeft;
    }

    public int getPaddingRight() {
        if (!isPaddingResolved()) {
            resolvePadding();
        }
        return this.mPaddingRight;
    }

    public int getPaddingStart() {
        if (!isPaddingResolved()) {
            resolvePadding();
        }
        return getLayoutDirection() == 1 ? this.mPaddingRight : this.mPaddingLeft;
    }

    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    public final ViewParent getParent() {
        return this.mParent;
    }

    public ViewParent getParentForAccessibility() {
        Object obj = this.mParent;
        if (obj instanceof View) {
            return ((View) obj).includeForAccessibility() ? this.mParent : this.mParent.getParentForAccessibility();
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getPivotX() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mPivotX;
        }
        return 0.0f;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getPivotY() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mPivotY;
        }
        return 0.0f;
    }

    @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = 0, to = "LTR"), @ViewDebug.IntToString(from = 1, to = "RTL"), @ViewDebug.IntToString(from = 2, to = "INHERIT"), @ViewDebug.IntToString(from = 3, to = "LOCALE")})
    public int getRawLayoutDirection() {
        return (this.mPrivateFlags2 & 12) >> 2;
    }

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT, mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "GRAVITY"), @ViewDebug.IntToString(from = 2, to = "TEXT_START"), @ViewDebug.IntToString(from = 3, to = "TEXT_END"), @ViewDebug.IntToString(from = 4, to = "CENTER"), @ViewDebug.IntToString(from = 5, to = "VIEW_START"), @ViewDebug.IntToString(from = 6, to = "VIEW_END")})
    public int getRawTextAlignment() {
        return (this.mPrivateFlags2 & PFLAG2_TEXT_ALIGNMENT_MASK) >> 13;
    }

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT, mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "FIRST_STRONG"), @ViewDebug.IntToString(from = 2, to = "ANY_RTL"), @ViewDebug.IntToString(from = 3, to = "LTR"), @ViewDebug.IntToString(from = 4, to = "RTL"), @ViewDebug.IntToString(from = 5, to = "LOCALE")})
    public int getRawTextDirection() {
        return (this.mPrivateFlags2 & 448) >> 6;
    }

    public Resources getResources() {
        return this.mResources;
    }

    @ViewDebug.CapturedViewProperty
    public final int getRight() {
        return this.mRight;
    }

    public float getRightFadingEdgeStrength() {
        return computeHorizontalScrollOffset() + computeHorizontalScrollExtent() < computeHorizontalScrollRange() ? 1.0f : 0.0f;
    }

    public int getRightPaddingOffset() {
        return 0;
    }

    public View getRootView() {
        View view;
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && (view = attachInfo.mRootView) != null) {
            return view;
        }
        View view2 = this;
        while (true) {
            Object obj = view2.mParent;
            if (obj == null || !(obj instanceof View)) {
                break;
            }
            view2 = (View) obj;
        }
        return view2;
    }

    public IWindowSession getRootWindowSession() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mSession;
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotation() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mRotation;
        }
        return 0.0f;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotationX() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mRotationX;
        }
        return 0.0f;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotationY() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mRotationY;
        }
        return 0.0f;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getScaleX() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mScaleX;
        }
        return 1.0f;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getScaleY() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mScaleY;
        }
        return 1.0f;
    }

    public int getScrollBarDefaultDelayBeforeFade() {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        return scrollabilityCache == null ? ViewConfiguration.getScrollDefaultDelay() : scrollabilityCache.scrollBarDefaultDelayBeforeFade;
    }

    public int getScrollBarFadeDuration() {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        return scrollabilityCache == null ? ViewConfiguration.getScrollBarFadeDuration() : scrollabilityCache.scrollBarFadeDuration;
    }

    public int getScrollBarSize() {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        return scrollabilityCache == null ? ViewConfiguration.get(this.mContext).getScaledScrollBarSize() : scrollabilityCache.scrollBarSize;
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "INSIDE_OVERLAY"), @ViewDebug.IntToString(from = 16777216, to = "INSIDE_INSET"), @ViewDebug.IntToString(from = 33554432, to = "OUTSIDE_OVERLAY"), @ViewDebug.IntToString(from = 50331648, to = "OUTSIDE_INSET")})
    public int getScrollBarStyle() {
        return this.mViewFlags & 50331648;
    }

    public final int getScrollX() {
        return this.mScrollX;
    }

    public final int getScrollY() {
        return this.mScrollY;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public int getSolidColor() {
        return 0;
    }

    public int getSuggestedMinimumHeight() {
        Drawable drawable = this.mBackground;
        return drawable == null ? this.mMinHeight : Math.max(this.mMinHeight, drawable.getMinimumHeight());
    }

    public int getSuggestedMinimumWidth() {
        Drawable drawable = this.mBackground;
        return drawable == null ? this.mMinWidth : Math.max(this.mMinWidth, drawable.getMinimumWidth());
    }

    public int getSystemUiVisibility() {
        return this.mSystemUiVisibility;
    }

    @ViewDebug.ExportedProperty
    public Object getTag() {
        return this.mTag;
    }

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT, mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "GRAVITY"), @ViewDebug.IntToString(from = 2, to = "TEXT_START"), @ViewDebug.IntToString(from = 3, to = "TEXT_END"), @ViewDebug.IntToString(from = 4, to = "CENTER"), @ViewDebug.IntToString(from = 5, to = "VIEW_START"), @ViewDebug.IntToString(from = 6, to = "VIEW_END")})
    public int getTextAlignment() {
        return (this.mPrivateFlags2 & PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK) >> 17;
    }

    @ViewDebug.ExportedProperty(category = ContactsContract.StreamItemsColumns.TEXT, mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "FIRST_STRONG"), @ViewDebug.IntToString(from = 2, to = "ANY_RTL"), @ViewDebug.IntToString(from = 3, to = "LTR"), @ViewDebug.IntToString(from = 4, to = "RTL"), @ViewDebug.IntToString(from = 5, to = "LOCALE")})
    public int getTextDirection() {
        return (this.mPrivateFlags2 & PFLAG2_TEXT_DIRECTION_RESOLVED_MASK) >> 10;
    }

    @ViewDebug.CapturedViewProperty
    public final int getTop() {
        return this.mTop;
    }

    public float getTopFadingEdgeStrength() {
        return computeVerticalScrollOffset() > 0 ? 1.0f : 0.0f;
    }

    public int getTopPaddingOffset() {
        return 0;
    }

    public TouchDelegate getTouchDelegate() {
        return this.mTouchDelegate;
    }

    public ArrayList<View> getTouchables() {
        ArrayList<View> arrayList = new ArrayList<>();
        addTouchables(arrayList);
        return arrayList;
    }

    public float getTransitionAlpha() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mTransitionAlpha;
        }
        return 1.0f;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationX() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mTranslationX;
        }
        return 0.0f;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationY() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mTranslationY;
        }
        return 0.0f;
    }

    public int getVerticalFadingEdgeLength() {
        ScrollabilityCache scrollabilityCache;
        if (!isVerticalFadingEdgeEnabled() || (scrollabilityCache = this.mScrollCache) == null) {
            return 0;
        }
        return scrollabilityCache.fadingEdgeLength;
    }

    public float getVerticalScrollFactor() {
        if (this.mVerticalScrollFactor == 0.0f) {
            TypedValue typedValue = new TypedValue();
            if (!this.mContext.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.mVerticalScrollFactor = typedValue.getDimension(this.mContext.getResources().getDisplayMetrics());
        }
        return this.mVerticalScrollFactor;
    }

    public int getVerticalScrollbarPosition() {
        return this.mVerticalScrollbarPosition;
    }

    public int getVerticalScrollbarWidth() {
        ScrollBarDrawable scrollBarDrawable;
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache == null || (scrollBarDrawable = scrollabilityCache.scrollBar) == null) {
            return 0;
        }
        int size = scrollBarDrawable.getSize(true);
        return size <= 0 ? scrollabilityCache.scrollBarSize : size;
    }

    public ViewRootImpl getViewRootImpl() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mViewRootImpl;
        }
        return null;
    }

    public ViewTreeObserver getViewTreeObserver() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mTreeObserver;
        }
        if (this.mFloatingTreeObserver == null) {
            this.mFloatingTreeObserver = new ViewTreeObserver();
        }
        return this.mFloatingTreeObserver;
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "VISIBLE"), @ViewDebug.IntToString(from = 4, to = "INVISIBLE"), @ViewDebug.IntToString(from = 8, to = "GONE")})
    public int getVisibility() {
        return this.mViewFlags & 12;
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public final int getWidth() {
        return this.mRight - this.mLeft;
    }

    public IWindow getWindow() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mWindow;
        }
        return null;
    }

    public int getWindowAttachCount() {
        return this.mWindowAttachCount;
    }

    public WindowId getWindowId() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return null;
        }
        if (attachInfo.mWindowId == null) {
            try {
                attachInfo.mIWindowId = attachInfo.mSession.getWindowId(attachInfo.mWindowToken);
                this.mAttachInfo.mWindowId = new WindowId(this.mAttachInfo.mIWindowId);
            } catch (RemoteException unused) {
            }
        }
        return this.mAttachInfo.mWindowId;
    }

    public IWindowSession getWindowSession() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mSession;
        }
        return null;
    }

    public int getWindowSystemUiVisibility() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mSystemUiVisibility;
        }
        return 0;
    }

    public IBinder getWindowToken() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mWindowToken;
        }
        return null;
    }

    public int getWindowVisibility() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mWindowVisibility;
        }
        return 8;
    }

    public void getWindowVisibleDisplayFrame(Rect rect) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            DisplayManagerGlobal.getInstance().getRealDisplay(0).getRectSize(rect);
            return;
        }
        try {
            attachInfo.mSession.getDisplayFrame(attachInfo.mWindow, rect);
            Rect rect2 = this.mAttachInfo.mVisibleInsets;
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right -= rect2.right;
            rect.bottom -= rect2.bottom;
        } catch (RemoteException unused) {
        }
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getX() {
        float f2 = this.mLeft;
        TransformationInfo transformationInfo = this.mTransformationInfo;
        return f2 + (transformationInfo != null ? transformationInfo.mTranslationX : 0.0f);
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getY() {
        float f2 = this.mTop;
        TransformationInfo transformationInfo = this.mTransformationInfo;
        return f2 + (transformationInfo != null ? transformationInfo.mTranslationY : 0.0f);
    }

    public void hackTurnOffWindowResizeAnim(boolean z2) {
        this.mAttachInfo.mTurnOffWindowResizeAnim = z2;
    }

    public void handleFocusGainInternal(int i2, Rect rect) {
        int i3 = this.mPrivateFlags;
        if ((i3 & 2) == 0) {
            this.mPrivateFlags = i3 | 2;
            View viewFindFocus = this.mAttachInfo != null ? getRootView().findFocus() : null;
            ViewParent viewParent = this.mParent;
            if (viewParent != null) {
                viewParent.requestChildFocus(this, this);
            }
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null) {
                attachInfo.mTreeObserver.dispatchOnGlobalFocusChange(viewFindFocus, this);
            }
            onFocusChanged(true, i2, rect);
            refreshDrawableState();
        }
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean hasFocus() {
        return (this.mPrivateFlags & 2) != 0;
    }

    public boolean hasFocusable() {
        return (this.mViewFlags & 12) == 0 && isFocusable();
    }

    public boolean hasHoveredChild() {
        return false;
    }

    public final boolean hasIdentityMatrix() {
        if (this.mTransformationInfo == null) {
            return true;
        }
        updateMatrix();
        return this.mTransformationInfo.mMatrixIsIdentity;
    }

    public boolean hasOnClickListeners() {
        ListenerInfo listenerInfo = this.mListenerInfo;
        return (listenerInfo == null || listenerInfo.mOnClickListener == null) ? false : true;
    }

    public boolean hasOpaqueScrollbars() {
        return (this.mPrivateFlags & 16777216) == 16777216;
    }

    public boolean hasOverlappingRendering() {
        return true;
    }

    public boolean hasStaticLayer() {
        return true;
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public boolean hasTransientState() {
        return (this.mPrivateFlags2 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
    }

    public boolean hasWindowFocus() {
        AttachInfo attachInfo = this.mAttachInfo;
        return attachInfo != null && attachInfo.mHasWindowFocus;
    }

    public boolean includeForAccessibility() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return (attachInfo.mAccessibilityFetchFlags & 8) != 0 || isImportantForAccessibility();
        }
        return false;
    }

    public void initializeFadingEdge(TypedArray typedArray) {
        initScrollCache();
        this.mScrollCache.fadingEdgeLength = typedArray.getDimensionPixelSize(24, ViewConfiguration.get(this.mContext).getScaledFadingEdgeLength());
    }

    public void initializeScrollbars(TypedArray typedArray) {
        initScrollCache();
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache.scrollBar == null) {
            scrollabilityCache.scrollBar = new ScrollBarDrawable();
        }
        boolean z2 = typedArray.getBoolean(44, true);
        if (!z2) {
            scrollabilityCache.state = 1;
        }
        scrollabilityCache.fadeScrollBars = z2;
        scrollabilityCache.scrollBarFadeDuration = typedArray.getInt(42, ViewConfiguration.getScrollBarFadeDuration());
        scrollabilityCache.scrollBarDefaultDelayBeforeFade = typedArray.getInt(43, ViewConfiguration.getScrollDefaultDelay());
        scrollabilityCache.scrollBarSize = typedArray.getDimensionPixelSize(0, ViewConfiguration.get(this.mContext).getScaledScrollBarSize());
        scrollabilityCache.scrollBar.setHorizontalTrackDrawable(typedArray.getDrawable(3));
        Drawable drawable = typedArray.getDrawable(1);
        if (drawable != null) {
            scrollabilityCache.scrollBar.setHorizontalThumbDrawable(drawable);
        }
        if (typedArray.getBoolean(5, false)) {
            scrollabilityCache.scrollBar.setAlwaysDrawHorizontalTrack(true);
        }
        Drawable drawable2 = typedArray.getDrawable(4);
        scrollabilityCache.scrollBar.setVerticalTrackDrawable(drawable2);
        Drawable drawable3 = typedArray.getDrawable(2);
        if (drawable3 != null) {
            scrollabilityCache.scrollBar.setVerticalThumbDrawable(drawable3);
        }
        if (typedArray.getBoolean(6, false)) {
            scrollabilityCache.scrollBar.setAlwaysDrawVerticalTrack(true);
        }
        int layoutDirection = getLayoutDirection();
        if (drawable2 != null) {
            drawable2.setLayoutDirection(layoutDirection);
        }
        if (drawable3 != null) {
            drawable3.setLayoutDirection(layoutDirection);
        }
        resolvePadding();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0028  */
    /* JADX WARN: Code duplicated, block: B:17:0x002a  */
    public void internalSetPadding(int i2, int i3, int i4, int i5) {
        this.mUserPaddingLeft = i2;
        this.mUserPaddingRight = i4;
        this.mUserPaddingBottom = i5;
        int i6 = this.mViewFlags;
        boolean z2 = false;
        boolean z3 = true;
        if ((i6 & 768) != 0) {
            if ((i6 & 512) != 0) {
                int verticalScrollbarWidth = (i6 & 16777216) == 0 ? 0 : getVerticalScrollbarWidth();
                int i7 = this.mVerticalScrollbarPosition;
                if (i7 != 0) {
                    if (i7 == 1) {
                        i2 += verticalScrollbarWidth;
                    } else if (i7 == 2) {
                        i4 += verticalScrollbarWidth;
                    }
                } else if (isLayoutRtl()) {
                    i2 += verticalScrollbarWidth;
                } else {
                    i4 += verticalScrollbarWidth;
                }
            }
            if ((i6 & 256) != 0) {
                i5 += (i6 & 16777216) == 0 ? 0 : getHorizontalScrollbarHeight();
            }
        }
        if (this.mPaddingLeft != i2) {
            this.mPaddingLeft = i2;
            z2 = true;
        }
        if (this.mPaddingTop != i3) {
            this.mPaddingTop = i3;
            z2 = true;
        }
        if (this.mPaddingRight != i4) {
            this.mPaddingRight = i4;
            z2 = true;
        }
        if (this.mPaddingBottom != i5) {
            this.mPaddingBottom = i5;
        } else {
            z3 = z2;
        }
        if (z3) {
            requestLayout();
        }
    }

    public void invalidate(Rect rect) {
        if (skipInvalidate()) {
            return;
        }
        int i2 = this.mPrivateFlags;
        if ((i2 & 48) == 48 || (i2 & 32768) == 32768 || (i2 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            int i3 = i2 & (-32769);
            this.mPrivateFlags = i3;
            int i4 = i3 | Integer.MIN_VALUE;
            this.mPrivateFlags = i4;
            this.mPrivateFlags = i4 | 2097152;
            ViewParent viewParent = this.mParent;
            AttachInfo attachInfo = this.mAttachInfo;
            if (viewParent == null || attachInfo == null) {
                return;
            }
            int i5 = this.mScrollX;
            int i6 = this.mScrollY;
            Rect rect2 = attachInfo.mTmpInvalRect;
            rect2.set(rect.left - i5, rect.top - i6, rect.right - i5, rect.bottom - i6);
            this.mParent.invalidateChild(this, rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (verifyDrawable(drawable)) {
            Rect bounds = drawable.getBounds();
            int i2 = this.mScrollX;
            int i3 = this.mScrollY;
            invalidate(bounds.left + i2, bounds.top + i3, bounds.right + i2, bounds.bottom + i3);
        }
    }

    public void invalidateInheritedLayoutMode(int i2) {
    }

    public void invalidateParentCaches() {
        Object obj = this.mParent;
        if (obj instanceof View) {
            ((View) obj).mPrivateFlags |= Integer.MIN_VALUE;
        }
    }

    public void invalidateParentIfNeeded() {
        if (isHardwareAccelerated()) {
            Object obj = this.mParent;
            if (obj instanceof View) {
                ((View) obj).invalidate(true);
            }
        }
    }

    public void invalidateViewProperty(boolean z2, boolean z3) {
        if (this.mDisplayList == null || (this.mPrivateFlags & 64) == 64) {
            if (z2) {
                invalidateParentCaches();
            }
            if (z3) {
                this.mPrivateFlags |= 32;
            }
            invalidate(false);
            return;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (this.mParent == null || attachInfo == null) {
            return;
        }
        Rect rect = attachInfo.mTmpInvalRect;
        rect.set(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
        ViewParent viewParent = this.mParent;
        if (viewParent instanceof ViewGroup) {
            ((ViewGroup) viewParent).invalidateChildFast(this, rect);
        } else {
            viewParent.invalidateChild(this, rect);
        }
    }

    public boolean isAccessibilityFocused() {
        return (this.mPrivateFlags2 & 67108864) != 0;
    }

    public boolean isAccessibilitySelectionExtendable() {
        return false;
    }

    public boolean isActionableForAccessibility() {
        return isClickable() || isLongClickable() || isFocusable();
    }

    @ViewDebug.ExportedProperty
    public boolean isActivated() {
        return (this.mPrivateFlags & 1073741824) != 0;
    }

    public boolean isAttachedToWindow() {
        return this.mAttachInfo != null;
    }

    @ViewDebug.ExportedProperty
    public boolean isClickable() {
        return (this.mViewFlags & 16384) == 16384;
    }

    public boolean isDirty() {
        return (this.mPrivateFlags & 6291456) != 0;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isDrawingCacheEnabled() {
        return (this.mViewFlags & 32768) == 32768;
    }

    public boolean isDuplicateParentStateEnabled() {
        return (this.mViewFlags & 4194304) == 4194304;
    }

    @ViewDebug.ExportedProperty
    public boolean isEnabled() {
        return (this.mViewFlags & 32) == 0;
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isFocusable() {
        return 1 == (this.mViewFlags & 1);
    }

    @ViewDebug.ExportedProperty
    public final boolean isFocusableInTouchMode() {
        return 262144 == (this.mViewFlags & 262144);
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean isFocused() {
        return (this.mPrivateFlags & 2) != 0;
    }

    @ViewDebug.ExportedProperty
    public boolean isHapticFeedbackEnabled() {
        return 268435456 == (this.mViewFlags & 268435456);
    }

    public boolean isHardwareAccelerated() {
        AttachInfo attachInfo = this.mAttachInfo;
        return attachInfo != null && attachInfo.mHardwareAccelerated;
    }

    public boolean isHorizontalFadingEdgeEnabled() {
        return (this.mViewFlags & 4096) == 4096;
    }

    public boolean isHorizontalScrollBarEnabled() {
        return (this.mViewFlags & 256) == 256;
    }

    @ViewDebug.ExportedProperty
    public boolean isHovered() {
        return (this.mPrivateFlags & 268435456) != 0;
    }

    public boolean isImportantForAccessibility() {
        int i2 = (this.mPrivateFlags2 & PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK) >> 20;
        if (i2 == 2 || i2 == 4) {
            return false;
        }
        for (ViewParent parent = this.mParent; parent instanceof View; parent = parent.getParent()) {
            if (((View) parent).getImportantForAccessibility() == 4) {
                return false;
            }
        }
        return i2 == 1 || isActionableForAccessibility() || hasListenersForAccessibility() || getAccessibilityNodeProvider() != null || getAccessibilityLiveRegion() != 0;
    }

    public boolean isInEditMode() {
        return false;
    }

    public boolean isInLayout() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        return viewRootImpl != null && viewRootImpl.isInLayout();
    }

    public boolean isInScrollingContainer() {
        for (ViewParent parent = getParent(); parent != null && (parent instanceof ViewGroup); parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    @ViewDebug.ExportedProperty
    public boolean isInTouchMode() {
        AttachInfo attachInfo = this.mAttachInfo;
        return attachInfo != null ? attachInfo.mInTouchMode : ViewRootImpl.isInTouchMode();
    }

    public boolean isLaidOut() {
        return (this.mPrivateFlags3 & 4) == 4;
    }

    public boolean isLayoutDirectionInherited() {
        return getRawLayoutDirection() == 2;
    }

    public boolean isLayoutDirectionResolved() {
        return (this.mPrivateFlags2 & 32) == 32;
    }

    public boolean isLayoutRequested() {
        return (this.mPrivateFlags & 4096) == 4096;
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    public boolean isLongClickable() {
        return (this.mViewFlags & 2097152) == 2097152;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isOpaque() {
        return (this.mPrivateFlags & 25165824) == 25165824 && getFinalAlpha() >= 1.0f;
    }

    public boolean isPaddingOffsetRequired() {
        return false;
    }

    public boolean isPaddingRelative() {
        return (this.mUserPaddingStart == Integer.MIN_VALUE && this.mUserPaddingEnd == Integer.MIN_VALUE) ? false : true;
    }

    public boolean isPaddingResolved() {
        return (this.mPrivateFlags2 & 536870912) == 536870912;
    }

    public boolean isPressed() {
        return (this.mPrivateFlags & 16384) == 16384;
    }

    public boolean isRootNamespace() {
        return (this.mPrivateFlags & 8) != 0;
    }

    public boolean isSaveEnabled() {
        return (this.mViewFlags & 65536) != 65536;
    }

    public boolean isSaveFromParentEnabled() {
        return (this.mViewFlags & 536870912) != 536870912;
    }

    public boolean isScrollContainer() {
        return (this.mPrivateFlags & 1048576) != 0;
    }

    public boolean isScrollbarFadingEnabled() {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        return scrollabilityCache != null && scrollabilityCache.fadeScrollBars;
    }

    @ViewDebug.ExportedProperty
    public boolean isSelected() {
        return (this.mPrivateFlags & 4) != 0;
    }

    public boolean isShown() {
        Object obj;
        View view = this;
        while ((view.mViewFlags & 12) == 0 && (obj = view.mParent) != null) {
            if (!(obj instanceof View)) {
                return true;
            }
            view = (View) obj;
        }
        return false;
    }

    @ViewDebug.ExportedProperty
    public boolean isSoundEffectsEnabled() {
        return 134217728 == (this.mViewFlags & 134217728);
    }

    public boolean isTextAlignmentInherited() {
        return getRawTextAlignment() == 0;
    }

    public boolean isTextAlignmentResolved() {
        return (this.mPrivateFlags2 & 65536) == 65536;
    }

    public boolean isTextDirectionInherited() {
        return getRawTextDirection() == 0;
    }

    public boolean isTextDirectionResolved() {
        return (this.mPrivateFlags2 & 512) == 512;
    }

    public boolean isVerticalFadingEdgeEnabled() {
        return (this.mViewFlags & 8192) == 8192;
    }

    public boolean isVerticalScrollBarEnabled() {
        return (this.mViewFlags & 512) == 512;
    }

    public boolean isVerticalScrollBarHidden() {
        return false;
    }

    public boolean isVisibleToUser() {
        return isVisibleToUser(null);
    }

    public void jumpDrawablesToCurrentState() {
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public void layout(int i2, int i3, int i4, int i5) {
        if ((this.mPrivateFlags3 & 8) != 0) {
            onMeasure(this.mOldWidthMeasureSpec, this.mOldHeightMeasureSpec);
            this.mPrivateFlags3 &= -9;
        }
        int i6 = this.mLeft;
        int i7 = this.mTop;
        int i8 = this.mBottom;
        int i9 = this.mRight;
        boolean opticalFrame = isLayoutModeOptical(this.mParent) ? setOpticalFrame(i2, i3, i4, i5) : setFrame(i2, i3, i4, i5);
        if (opticalFrame || (this.mPrivateFlags & 8192) == 8192) {
            onLayout(opticalFrame, i2, i3, i4, i5);
            this.mPrivateFlags &= -8193;
            ListenerInfo listenerInfo = this.mListenerInfo;
            if (listenerInfo != null && listenerInfo.mOnLayoutChangeListeners != null) {
                ArrayList arrayList = (ArrayList) listenerInfo.mOnLayoutChangeListeners.clone();
                int i10 = 0;
                for (int size = arrayList.size(); i10 < size; size = size) {
                    ((OnLayoutChangeListener) arrayList.get(i10)).onLayoutChange(this, i2, i3, i4, i5, i6, i7, i9, i8);
                    i10++;
                }
            }
        }
        this.mPrivateFlags &= -4097;
        this.mPrivateFlags3 |= 4;
    }

    public void makeOptionalFitsSystemWindows() {
        setFlags(2048, 2048);
    }

    public final void measure(int i2, int i3) {
        boolean zIsLayoutModeOptical = isLayoutModeOptical(this);
        if (zIsLayoutModeOptical != isLayoutModeOptical(this.mParent)) {
            Insets opticalInsets = getOpticalInsets();
            int i4 = opticalInsets.left + opticalInsets.right;
            int i5 = opticalInsets.top + opticalInsets.bottom;
            if (zIsLayoutModeOptical) {
                i4 = -i4;
            }
            i2 = MeasureSpec.adjust(i2, i4);
            if (zIsLayoutModeOptical) {
                i5 = -i5;
            }
            i3 = MeasureSpec.adjust(i3, i5);
        }
        long j2 = (((long) i2) << 32) | (((long) i3) & ExpandableListView.PACKED_POSITION_VALUE_NULL);
        if (this.mMeasureCache == null) {
            this.mMeasureCache = new LongSparseLongArray(2);
        }
        int i6 = this.mPrivateFlags;
        if ((i6 & 4096) == 4096 || i2 != this.mOldWidthMeasureSpec || i3 != this.mOldHeightMeasureSpec) {
            this.mPrivateFlags = i6 & (-2049);
            resolveRtlPropertiesIfNeeded();
            int iIndexOfKey = (this.mPrivateFlags & 4096) == 4096 ? -1 : this.mMeasureCache.indexOfKey(j2);
            if (iIndexOfKey < 0 || sIgnoreMeasureCache) {
                onMeasure(i2, i3);
                this.mPrivateFlags3 &= -9;
            } else {
                long jValueAt = this.mMeasureCache.valueAt(iIndexOfKey);
                setMeasuredDimension((int) (jValueAt >> 32), (int) jValueAt);
                this.mPrivateFlags3 |= 8;
            }
            int i7 = this.mPrivateFlags;
            if ((i7 & 2048) != 2048) {
                throw new IllegalStateException("onMeasure() did not set the measured dimension by calling setMeasuredDimension()");
            }
            this.mPrivateFlags = i7 | 8192;
        }
        this.mOldWidthMeasureSpec = i2;
        this.mOldHeightMeasureSpec = i3;
        this.mMeasureCache.put(j2, (((long) this.mMeasuredWidth) << 32) | (((long) this.mMeasuredHeight) & ExpandableListView.PACKED_POSITION_VALUE_NULL));
    }

    public void needGlobalAttributesUpdate(boolean z2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mRecomputeGlobalAttributes) {
            return;
        }
        if (z2 || attachInfo.mKeepScreenOn || attachInfo.mSystemUiVisibility != 0 || attachInfo.mHasSystemUiListeners) {
            attachInfo.mRecomputeGlobalAttributes = true;
        }
    }

    public void notifyGlobalFocusCleared(View view) {
        AttachInfo attachInfo;
        if (view == null || (attachInfo = this.mAttachInfo) == null) {
            return;
        }
        attachInfo.mTreeObserver.dispatchOnGlobalFocusChange(view, null);
    }

    public void notifySubtreeAccessibilityStateChangedIfNeeded() {
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            int i2 = this.mPrivateFlags2;
            if ((i2 & 134217728) == 0) {
                this.mPrivateFlags2 = i2 | 134217728;
                ViewParent viewParent = this.mParent;
                if (viewParent != null) {
                    try {
                        viewParent.notifySubtreeAccessibilityStateChanged(this, this, 1);
                    } catch (AbstractMethodError e2) {
                        Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                    }
                }
            }
        }
    }

    public void notifyViewAccessibilityStateChangedIfNeeded(int i2) {
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            if (this.mSendViewStateChangedAccessibilityEvent == null) {
                this.mSendViewStateChangedAccessibilityEvent = new SendViewStateChangedAccessibilityEvent();
            }
            this.mSendViewStateChangedAccessibilityEvent.runOrPost(i2);
        }
    }

    public void offsetLeftAndRight(int i2) {
        AttachInfo attachInfo;
        int i3;
        int i4;
        if (i2 != 0) {
            updateMatrix();
            TransformationInfo transformationInfo = this.mTransformationInfo;
            boolean z2 = transformationInfo == null || transformationInfo.mMatrixIsIdentity;
            if (z2 && this.mDisplayList == null) {
                ViewParent viewParent = this.mParent;
                if (viewParent != null && (attachInfo = this.mAttachInfo) != null) {
                    Rect rect = attachInfo.mTmpInvalRect;
                    if (i2 < 0) {
                        i3 = this.mLeft + i2;
                        i4 = this.mRight;
                    } else {
                        i3 = this.mLeft;
                        i4 = this.mRight + i2;
                    }
                    rect.set(0, 0, i4 - i3, this.mBottom - this.mTop);
                    viewParent.invalidateChild(this, rect);
                }
            } else {
                invalidateViewProperty(false, false);
            }
            this.mLeft += i2;
            this.mRight += i2;
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.offsetLeftAndRight(i2);
                invalidateViewProperty(false, false);
            } else {
                if (!z2) {
                    invalidateViewProperty(false, true);
                }
                invalidateParentIfNeeded();
            }
        }
    }

    public void offsetTopAndBottom(int i2) {
        AttachInfo attachInfo;
        int i3;
        int i4;
        int i5;
        if (i2 != 0) {
            updateMatrix();
            TransformationInfo transformationInfo = this.mTransformationInfo;
            boolean z2 = transformationInfo == null || transformationInfo.mMatrixIsIdentity;
            if (z2 && this.mDisplayList == null) {
                ViewParent viewParent = this.mParent;
                if (viewParent != null && (attachInfo = this.mAttachInfo) != null) {
                    Rect rect = attachInfo.mTmpInvalRect;
                    if (i2 < 0) {
                        i3 = this.mTop + i2;
                        i4 = this.mBottom;
                        i5 = i2;
                    } else {
                        i3 = this.mTop;
                        i4 = this.mBottom + i2;
                        i5 = 0;
                    }
                    rect.set(0, i5, this.mRight - this.mLeft, i4 - i3);
                    viewParent.invalidateChild(this, rect);
                }
            } else {
                invalidateViewProperty(false, false);
            }
            this.mTop += i2;
            this.mBottom += i2;
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.offsetTopAndBottom(i2);
                invalidateViewProperty(false, false);
            } else {
                if (!z2) {
                    invalidateViewProperty(false, true);
                }
                invalidateParentIfNeeded();
            }
        }
    }

    public void onAnimationEnd() {
        this.mPrivateFlags &= -65537;
    }

    public void onAnimationStart() {
        this.mPrivateFlags |= 65536;
    }

    public void onAttachedToWindow() {
        if ((this.mPrivateFlags & 512) != 0) {
            this.mParent.requestTransparentRegion(this);
        }
        if ((this.mPrivateFlags & 134217728) != 0) {
            initialAwakenScrollBars();
            this.mPrivateFlags &= -134217729;
        }
        this.mPrivateFlags3 &= -5;
        jumpDrawablesToCurrentState();
        resetSubtreeAccessibilityStateChanged();
        if (isFocused()) {
            InputMethodManager.peekInstance().focusIn(this);
        }
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.clearDirty();
        }
    }

    public void onCancelPendingInputEvents() {
        removePerformClickCallback();
        cancelLongPress();
        this.mPrivateFlags3 |= 16;
    }

    public boolean onCheckIsTextEditor() {
        return false;
    }

    public void onCloseSystemDialogs(String str) {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onCreateContextMenu(ContextMenu contextMenu) {
    }

    public int[] onCreateDrawableState(int i2) {
        int i3 = this.mViewFlags;
        if ((i3 & 4194304) == 4194304) {
            Object obj = this.mParent;
            if (obj instanceof View) {
                return ((View) obj).onCreateDrawableState(i2);
            }
        }
        int i4 = this.mPrivateFlags;
        int i5 = (i4 & 16384) != 0 ? 16 : 0;
        if ((i3 & 32) == 0) {
            i5 |= 8;
        }
        if (isFocused()) {
            i5 |= 4;
        }
        if ((i4 & 4) != 0) {
            i5 |= 2;
        }
        if (hasWindowFocus()) {
            i5 |= 1;
        }
        if ((1073741824 & i4) != 0) {
            i5 |= 32;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && attachInfo.mHardwareAccelerationRequested && HardwareRenderer.isAvailable()) {
            i5 |= 64;
        }
        if ((268435456 & i4) != 0) {
            i5 |= 128;
        }
        int i6 = this.mPrivateFlags2;
        if ((i6 & 1) != 0) {
            i5 |= 256;
        }
        if ((i6 & 2) != 0) {
            i5 |= 512;
        }
        int[] iArr = VIEW_STATE_SETS[i5];
        if (i2 == 0) {
            return iArr;
        }
        if (iArr == null) {
            return new int[i2];
        }
        int[] iArr2 = new int[iArr.length + i2];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return null;
    }

    public void onDetachedFromWindow() {
        this.mPrivateFlags &= -67108865;
        this.mPrivateFlags3 &= -5;
        removeUnsetPressCallback();
        removeLongPressCallback();
        removePerformClickCallback();
        removeSendViewScrolledAccessibilityEventCallback();
        destroyDrawingCache();
        destroyLayer(false);
        cleanupDraw();
        this.mCurrentAnimation = null;
    }

    public void onDisplayHint(int i2) {
    }

    public boolean onDragEvent(DragEvent dragEvent) {
        return false;
    }

    public void onDraw(Canvas canvas) {
    }

    public void onDrawHorizontalScrollBar(Canvas canvas, Drawable drawable, int i2, int i3, int i4, int i5) {
        drawable.setBounds(i2, i3, i4, i5);
        drawable.draw(canvas);
    }

    public final void onDrawScrollBars(Canvas canvas) {
        int i2;
        boolean z2;
        int i3;
        int i4;
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache == null || (i2 = scrollabilityCache.state) == 0) {
            return;
        }
        if (i2 == 2) {
            if (scrollabilityCache.interpolatorValues == null) {
                scrollabilityCache.interpolatorValues = new float[1];
            }
            float[] fArr = scrollabilityCache.interpolatorValues;
            if (scrollabilityCache.scrollBarInterpolator.timeToValues(fArr) == Interpolator.Result.FREEZE_END) {
                scrollabilityCache.state = 0;
            } else {
                scrollabilityCache.scrollBar.setAlpha(Math.round(fArr[0]));
            }
            z2 = true;
        } else {
            scrollabilityCache.scrollBar.setAlpha(255);
            z2 = false;
        }
        int i5 = this.mViewFlags;
        boolean z3 = (i5 & 256) == 256;
        boolean z4 = (i5 & 512) == 512 && !isVerticalScrollBarHidden();
        if (z4 || z3) {
            int i6 = this.mRight - this.mLeft;
            int i7 = this.mBottom - this.mTop;
            ScrollBarDrawable scrollBarDrawable = scrollabilityCache.scrollBar;
            int i8 = this.mScrollX;
            int i9 = this.mScrollY;
            int i10 = (i5 & 33554432) == 0 ? -1 : 0;
            if (z3) {
                int size = scrollBarDrawable.getSize(false);
                if (size <= 0) {
                    size = scrollabilityCache.scrollBarSize;
                }
                scrollBarDrawable.setParameters(computeHorizontalScrollRange(), computeHorizontalScrollOffset(), computeHorizontalScrollExtent(), false);
                int verticalScrollbarWidth = z4 ? getVerticalScrollbarWidth() : 0;
                int i11 = ((i9 + i7) - size) - (this.mUserPaddingBottom & i10);
                int i12 = i8 + (this.mPaddingLeft & i10);
                int i13 = ((i8 + i6) - (this.mUserPaddingRight & i10)) - verticalScrollbarWidth;
                int i14 = i11 + size;
                i3 = i9;
                i4 = i8;
                onDrawHorizontalScrollBar(canvas, scrollBarDrawable, i12, i11, i13, i14);
                if (z2) {
                    invalidate(i12, i11, i13, i14);
                }
            } else {
                i3 = i9;
                i4 = i8;
            }
            if (z4) {
                int size2 = scrollBarDrawable.getSize(true);
                if (size2 <= 0) {
                    size2 = scrollabilityCache.scrollBarSize;
                }
                scrollBarDrawable.setParameters(computeVerticalScrollRange(), computeVerticalScrollOffset(), computeVerticalScrollExtent(), true);
                int i15 = this.mVerticalScrollbarPosition;
                if (i15 == 0) {
                    i15 = isLayoutRtl() ? 1 : 2;
                }
                int i16 = i15 != 1 ? ((i4 + i6) - size2) - (this.mUserPaddingRight & i10) : i4 + (this.mUserPaddingLeft & i10);
                int i17 = i3 + (this.mPaddingTop & i10);
                int i18 = i16 + size2;
                int i19 = (i3 + i7) - (this.mUserPaddingBottom & i10);
                onDrawVerticalScrollBar(canvas, scrollBarDrawable, i16, i17, i18, i19);
                if (z2) {
                    invalidate(i16, i17, i18, i19);
                }
            }
        }
    }

    public void onDrawVerticalScrollBar(Canvas canvas, Drawable drawable, int i2, int i3, int i4, int i5) {
        drawable.setBounds(i2, i3, i4, i5);
        drawable.draw(canvas);
    }

    public boolean onFilterTouchEventForSecurity(MotionEvent motionEvent) {
        return (this.mViewFlags & 1024) == 0 || (motionEvent.getFlags() & 1) == 0;
    }

    public void onFinishInflate() {
    }

    public void onFinishTemporaryDetach() {
    }

    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        AttachInfo attachInfo;
        OnFocusChangeListener onFocusChangeListener;
        AttachInfo attachInfo2;
        if (z2) {
            sendAccessibilityEvent(8);
        } else {
            notifyViewAccessibilityStateChangedIfNeeded(0);
        }
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (!z2) {
            if (isPressed()) {
                setPressed(false);
            }
            if (inputMethodManagerPeekInstance != null && (attachInfo2 = this.mAttachInfo) != null && attachInfo2.mHasWindowFocus) {
                inputMethodManagerPeekInstance.focusOut(this);
            }
            onFocusLost();
        } else if (inputMethodManagerPeekInstance != null && (attachInfo = this.mAttachInfo) != null && attachInfo.mHasWindowFocus) {
            inputMethodManagerPeekInstance.focusIn(this);
        }
        invalidate(true);
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo != null && (onFocusChangeListener = listenerInfo.mOnFocusChangeListener) != null) {
            onFocusChangeListener.onFocusChange(this, z2);
        }
        AttachInfo attachInfo3 = this.mAttachInfo;
        if (attachInfo3 != null) {
            attachInfo3.mKeyDispatchState.reset(this);
        }
    }

    public void onFocusLost() {
        resetPressedState();
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onHoverChanged(boolean z2) {
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.mSendingHoverAccessibilityEvents) {
            if (actionMasked == 10 || (actionMasked == 2 && !pointInView(motionEvent.getX(), motionEvent.getY()))) {
                this.mSendingHoverAccessibilityEvents = false;
                sendAccessibilityHoverEvent(256);
                AttachInfo attachInfo = this.mAttachInfo;
                if (attachInfo != null && !attachInfo.mHasWindowFocus) {
                    getViewRootImpl().setAccessibilityFocus(null, null);
                }
            }
        } else if ((actionMasked == 9 || actionMasked == 7) && !hasHoveredChild() && pointInView(motionEvent.getX(), motionEvent.getY())) {
            sendAccessibilityHoverEvent(128);
            this.mSendingHoverAccessibilityEvents = true;
        }
        if (!isHoverable()) {
            return false;
        }
        if (actionMasked == 9) {
            setHovered(true);
        } else if (actionMasked == 10) {
            setHovered(false);
        }
        dispatchGenericMotionEventInternal(motionEvent);
        return true;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        if (accessibilityDelegate != null) {
            accessibilityDelegate.onInitializeAccessibilityEvent(this, accessibilityEvent);
        } else {
            onInitializeAccessibilityEventInternal(accessibilityEvent);
        }
    }

    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        CharSequence iterableTextForAccessibility;
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(View.class.getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setEnabled(isEnabled());
        accessibilityEvent.setContentDescription(this.mContentDescription);
        int eventType = accessibilityEvent.getEventType();
        if (eventType != 8) {
            if (eventType == 8192 && (iterableTextForAccessibility = getIterableTextForAccessibility()) != null && iterableTextForAccessibility.length() > 0) {
                accessibilityEvent.setFromIndex(getAccessibilitySelectionStart());
                accessibilityEvent.setToIndex(getAccessibilitySelectionEnd());
                accessibilityEvent.setItemCount(iterableTextForAccessibility.length());
                return;
            }
            return;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        ArrayList<View> arrayList = attachInfo != null ? attachInfo.mTempArrayList : new ArrayList<>();
        getRootView().addFocusables(arrayList, 2, 0);
        accessibilityEvent.setItemCount(arrayList.size());
        accessibilityEvent.setCurrentItemIndex(arrayList.indexOf(this));
        if (this.mAttachInfo != null) {
            arrayList.clear();
        }
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        if (accessibilityDelegate != null) {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(this, accessibilityNodeInfo);
        } else {
            onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        }
    }

    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        Rect rect = this.mAttachInfo.mTmpInvalRect;
        getDrawingRect(rect);
        accessibilityNodeInfo.setBoundsInParent(rect);
        getBoundsOnScreen(rect);
        accessibilityNodeInfo.setBoundsInScreen(rect);
        Object parentForAccessibility = getParentForAccessibility();
        if (parentForAccessibility instanceof View) {
            accessibilityNodeInfo.setParent((View) parentForAccessibility);
        }
        if (this.mID != -1) {
            View rootView = getRootView();
            if (rootView == null) {
                rootView = this;
            }
            View viewFindLabelForView = rootView.findLabelForView(this, this.mID);
            if (viewFindLabelForView != null) {
                accessibilityNodeInfo.setLabeledBy(viewFindLabelForView);
            }
            if ((this.mAttachInfo.mAccessibilityFetchFlags & 16) != 0 && Resources.resourceHasPackage(this.mID)) {
                try {
                    accessibilityNodeInfo.setViewIdResourceName(getResources().getResourceName(this.mID));
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.mLabelForId != -1) {
            View rootView2 = getRootView();
            if (rootView2 == null) {
                rootView2 = this;
            }
            View viewFindViewInsideOutShouldExist = rootView2.findViewInsideOutShouldExist(this, this.mLabelForId);
            if (viewFindViewInsideOutShouldExist != null) {
                accessibilityNodeInfo.setLabelFor(viewFindViewInsideOutShouldExist);
            }
        }
        accessibilityNodeInfo.setVisibleToUser(isVisibleToUser());
        accessibilityNodeInfo.setPackageName(this.mContext.getPackageName());
        accessibilityNodeInfo.setClassName(View.class.getName());
        accessibilityNodeInfo.setContentDescription(getContentDescription());
        accessibilityNodeInfo.setEnabled(isEnabled());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setFocusable(isFocusable());
        accessibilityNodeInfo.setFocused(isFocused());
        accessibilityNodeInfo.setAccessibilityFocused(isAccessibilityFocused());
        accessibilityNodeInfo.setSelected(isSelected());
        accessibilityNodeInfo.setLongClickable(isLongClickable());
        accessibilityNodeInfo.setLiveRegion(getAccessibilityLiveRegion());
        accessibilityNodeInfo.addAction(4);
        accessibilityNodeInfo.addAction(8);
        if (isFocusable()) {
            if (isFocused()) {
                accessibilityNodeInfo.addAction(2);
            } else {
                accessibilityNodeInfo.addAction(1);
            }
        }
        if (isAccessibilityFocused()) {
            accessibilityNodeInfo.addAction(128);
        } else {
            accessibilityNodeInfo.addAction(64);
        }
        if (isClickable() && isEnabled()) {
            accessibilityNodeInfo.addAction(16);
        }
        if (isLongClickable() && isEnabled()) {
            accessibilityNodeInfo.addAction(32);
        }
        CharSequence iterableTextForAccessibility = getIterableTextForAccessibility();
        if (iterableTextForAccessibility == null || iterableTextForAccessibility.length() <= 0) {
            return;
        }
        accessibilityNodeInfo.setTextSelection(getAccessibilitySelectionStart(), getAccessibilitySelectionEnd());
        accessibilityNodeInfo.addAction(131072);
        accessibilityNodeInfo.addAction(256);
        accessibilityNodeInfo.addAction(512);
        accessibilityNodeInfo.setMovementGranularities(11);
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (KeyEvent.isConfirmKey(i2)) {
            int i3 = this.mViewFlags;
            if ((i3 & 32) == 32) {
                return true;
            }
            if (((i3 & 16384) == 16384 || (i3 & 2097152) == 2097152) && keyEvent.getRepeatCount() == 0) {
                setPressed(true);
                checkForLongClick(0);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (KeyEvent.isConfirmKey(i2)) {
            int i3 = this.mViewFlags;
            if ((i3 & 32) == 32) {
                return true;
            }
            if ((i3 & 16384) == 16384 && isPressed()) {
                setPressed(false);
                if (!this.mHasPerformedLongPress) {
                    removeLongPressCallback();
                    return performClick();
                }
            }
        }
        return false;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
    }

    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), i2), getDefaultSize(getSuggestedMinimumHeight(), i3));
    }

    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        if (accessibilityDelegate != null) {
            accessibilityDelegate.onPopulateAccessibilityEvent(this, accessibilityEvent);
        } else {
            onPopulateAccessibilityEventInternal(accessibilityEvent);
        }
    }

    public void onPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
    }

    public void onResolveDrawables(int i2) {
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mPrivateFlags |= 131072;
        if (parcelable == AbsSavedState.EMPTY_STATE || parcelable == null) {
            return;
        }
        throw new IllegalArgumentException("Wrong state class, expecting View State but received " + parcelable.getClass().toString() + " instead. This usually happens when two views of different type have the same id in the same hierarchy. This view's id is " + ViewDebug.resolveId(this.mContext, getId()) + ". Make sure other views do not use the same id.");
    }

    public void onRtlPropertiesChanged(int i2) {
    }

    public Parcelable onSaveInstanceState() {
        this.mPrivateFlags |= 131072;
        return AbsSavedState.EMPTY_STATE;
    }

    public void onScreenStateChanged(int i2) {
    }

    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            postSendViewScrolledAccessibilityEventCallback();
        }
        this.mBackgroundSizeChanged = true;
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewScrollChanged = true;
        }
    }

    public boolean onSetAlpha(int i2) {
        return false;
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
    }

    public void onStartTemporaryDetach() {
        removeUnsetPressCallback();
        this.mPrivateFlags |= 67108864;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i2 = this.mViewFlags;
        boolean zRequestFocus = false;
        if ((i2 & 32) == 32) {
            if (motionEvent.getAction() == 1 && (this.mPrivateFlags & 16384) != 0) {
                setPressed(false);
            }
            return (i2 & 16384) == 16384 || (i2 & 2097152) == 2097152;
        }
        TouchDelegate touchDelegate = this.mTouchDelegate;
        if (touchDelegate != null && touchDelegate.onTouchEvent(motionEvent)) {
            return true;
        }
        if ((i2 & 16384) != 16384 && (i2 & 2097152) != 2097152) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mHasPerformedLongPress = false;
            if (!performButtonActionOnTouchDown(motionEvent)) {
                if (isInScrollingContainer()) {
                    this.mPrivateFlags |= 33554432;
                    if (this.mPendingCheckForTap == null) {
                        this.mPendingCheckForTap = new CheckForTap();
                    }
                    postDelayed(this.mPendingCheckForTap, ViewConfiguration.getTapTimeout());
                } else {
                    setPressed(true);
                    checkForLongClick(0);
                }
            }
        } else if (action == 1) {
            int i3 = this.mPrivateFlags;
            boolean z2 = (i3 & 33554432) != 0;
            if ((i3 & 16384) != 0 || z2) {
                if (isFocusable() && isFocusableInTouchMode() && !isFocused()) {
                    zRequestFocus = requestFocus();
                }
                if (z2) {
                    setPressed(true);
                }
                if (!this.mHasPerformedLongPress) {
                    removeLongPressCallback();
                    if (!zRequestFocus) {
                        if (this.mPerformClick == null) {
                            this.mPerformClick = new PerformClick();
                        }
                        if (!post(this.mPerformClick)) {
                            performClick();
                        }
                    }
                }
                if (this.mUnsetPressedState == null) {
                    this.mUnsetPressedState = new UnsetPressedState();
                }
                if (z2) {
                    postDelayed(this.mUnsetPressedState, ViewConfiguration.getPressedStateDuration());
                } else if (!post(this.mUnsetPressedState)) {
                    this.mUnsetPressedState.run();
                }
                removeTapCallback();
            }
        } else if (action == 2) {
            if (!pointInView((int) motionEvent.getX(), (int) motionEvent.getY(), this.mTouchSlop)) {
                removeTapCallback();
                if ((this.mPrivateFlags & 16384) != 0) {
                    removeLongPressCallback();
                    setPressed(false);
                }
            }
        } else if (action == 3) {
            setPressed(false);
            removeTapCallback();
            removeLongPressCallback();
        }
        return true;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onVisibilityChanged(View view, int i2) {
        if (i2 == 0) {
            if (this.mAttachInfo != null) {
                initialAwakenScrollBars();
            } else {
                this.mPrivateFlags |= 134217728;
            }
        }
    }

    public void onWindowFocusChanged(boolean z2) {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (!z2) {
            if (isPressed()) {
                setPressed(false);
            }
            if (inputMethodManagerPeekInstance != null && (this.mPrivateFlags & 2) != 0) {
                inputMethodManagerPeekInstance.focusOut(this);
            }
            removeLongPressCallback();
            removeTapCallback();
            onFocusLost();
        } else if (inputMethodManagerPeekInstance != null && (this.mPrivateFlags & 2) != 0) {
            inputMethodManagerPeekInstance.focusIn(this);
        }
        refreshDrawableState();
    }

    public void onWindowSystemUiVisibilityChanged(int i2) {
    }

    public void onWindowVisibilityChanged(int i2) {
        if (i2 == 0) {
            initialAwakenScrollBars();
        }
    }

    public void outputDirtyFlags(String str, boolean z2, int i2) {
        Log.d(VIEW_LOG_TAG, str + this + "             DIRTY(" + (this.mPrivateFlags & 6291456) + ") DRAWN(" + (this.mPrivateFlags & 32) + ") CACHE_VALID(" + (this.mPrivateFlags & 32768) + ") INVALIDATED(" + (this.mPrivateFlags & Integer.MIN_VALUE) + ")");
        if (z2) {
            this.mPrivateFlags &= i2;
        }
        if (this instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) this;
            int childCount = viewGroup.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                viewGroup.getChildAt(i3).outputDirtyFlags(str + "  ", z2, i2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x004a  */
    /* JADX WARN: Code duplicated, block: B:38:0x004d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x004f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0051  */
    /* JADX WARN: Code duplicated, block: B:43:0x0057 A[ADDED_TO_REGION] */
    public boolean overScrollBy(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z2) {
        boolean z3;
        boolean z4;
        int i10 = this.mOverScrollMode;
        boolean z5 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z6 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z7 = i10 == 0 || (i10 == 1 && z5);
        boolean z8 = i10 == 0 || (i10 == 1 && z6);
        int i11 = i4 + i2;
        if (!z7) {
            i8 = 0;
        }
        int i12 = i5 + i3;
        if (!z8) {
            i9 = 0;
        }
        int i13 = -i8;
        int i14 = i8 + i6;
        int i15 = -i9;
        int i16 = i9 + i7;
        if (i11 <= i14) {
            if (i11 < i13) {
                i11 = i13;
            } else {
                z3 = false;
            }
            if (i12 > i16) {
                if (i12 < i15) {
                    i12 = i15;
                } else {
                    z4 = false;
                }
                onOverScrolled(i11, i12, z3, z4);
                return !z3 || z4;
            }
            i12 = i16;
            z4 = true;
            onOverScrolled(i11, i12, z3, z4);
            if (z3) {
            }
        }
        i11 = i14;
        z3 = true;
        if (i12 > i16) {
            if (i12 < i15) {
                i12 = i15;
            } else {
                z4 = false;
            }
            onOverScrolled(i11, i12, z3, z4);
            if (z3) {
            }
        }
        i12 = i16;
        z4 = true;
        onOverScrolled(i11, i12, z3, z4);
        if (z3) {
        }
    }

    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        return accessibilityDelegate != null ? accessibilityDelegate.performAccessibilityAction(this, i2, bundle) : performAccessibilityActionInternal(i2, bundle);
    }

    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 4) {
                    if (i2 != 8) {
                        if (i2 != 16) {
                            if (i2 != 32) {
                                if (i2 != 64) {
                                    if (i2 != 128) {
                                        if (i2 != 256) {
                                            if (i2 != 512) {
                                                if (i2 != 131072 || getIterableTextForAccessibility() == null) {
                                                    return false;
                                                }
                                                int i3 = bundle != null ? bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_SELECTION_START_INT, -1) : -1;
                                                int i4 = bundle != null ? bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_SELECTION_END_INT, -1) : -1;
                                                if ((getAccessibilitySelectionStart() != i3 || getAccessibilitySelectionEnd() != i4) && i3 == i4) {
                                                    setAccessibilitySelection(i3, i4);
                                                    notifyViewAccessibilityStateChangedIfNeeded(0);
                                                    return true;
                                                }
                                            } else if (bundle != null) {
                                                return traverseAtGranularity(bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT), false, bundle.getBoolean(AccessibilityNodeInfo.ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN));
                                            }
                                        } else if (bundle != null) {
                                            return traverseAtGranularity(bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT), true, bundle.getBoolean(AccessibilityNodeInfo.ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN));
                                        }
                                    } else if (isAccessibilityFocused()) {
                                        clearAccessibilityFocus();
                                        return true;
                                    }
                                } else if (!isAccessibilityFocused()) {
                                    return requestAccessibilityFocus();
                                }
                            } else if (isLongClickable()) {
                                performLongClick();
                                return true;
                            }
                        } else if (isClickable()) {
                            performClick();
                            return true;
                        }
                    } else if (isSelected()) {
                        setSelected(false);
                        return !isSelected();
                    }
                } else if (!isSelected()) {
                    setSelected(true);
                    return isSelected();
                }
            } else if (hasFocus()) {
                clearFocus();
                return !isFocused();
            }
        } else if (!hasFocus()) {
            getViewRootImpl().ensureTouchMode(false);
            return requestFocus();
        }
        return false;
    }

    public boolean performButtonActionOnTouchDown(MotionEvent motionEvent) {
        return (motionEvent.getButtonState() & 2) != 0 && showContextMenu(motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
    }

    public boolean performClick() {
        sendAccessibilityEvent(1);
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || listenerInfo.mOnClickListener == null) {
            return false;
        }
        playSoundEffect(0);
        listenerInfo.mOnClickListener.onClick(this);
        return true;
    }

    public void performCollectViewAttributes(AttachInfo attachInfo, int i2) {
        if ((i2 & 12) == 0) {
            if ((this.mViewFlags & 67108864) == 67108864) {
                attachInfo.mKeepScreenOn = true;
            }
            attachInfo.mSystemUiVisibility |= this.mSystemUiVisibility;
            ListenerInfo listenerInfo = this.mListenerInfo;
            if (listenerInfo == null || listenerInfo.mOnSystemUiVisibilityChangeListener == null) {
                return;
            }
            attachInfo.mHasSystemUiListeners = true;
        }
    }

    public boolean performHapticFeedback(int i2) {
        return performHapticFeedback(i2, 0);
    }

    public boolean performLongClick() {
        OnLongClickListener onLongClickListener;
        sendAccessibilityEvent(2);
        ListenerInfo listenerInfo = this.mListenerInfo;
        boolean zOnLongClick = (listenerInfo == null || (onLongClickListener = listenerInfo.mOnLongClickListener) == null) ? false : onLongClickListener.onLongClick(this);
        if (!zOnLongClick) {
            zOnLongClick = showContextMenu();
        }
        if (zOnLongClick) {
            performHapticFeedback(0);
        }
        return zOnLongClick;
    }

    public void playSoundEffect(int i2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mRootCallbacks == null || !isSoundEffectsEnabled()) {
            return;
        }
        this.mAttachInfo.mRootCallbacks.playSoundEffect(i2);
    }

    public final boolean pointInView(float f2, float f3) {
        return f2 >= 0.0f && f2 < ((float) (this.mRight - this.mLeft)) && f3 >= 0.0f && f3 < ((float) (this.mBottom - this.mTop));
    }

    public boolean post(Runnable runnable) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mHandler.post(runnable);
        }
        ViewRootImpl.getRunQueue().post(runnable);
        return true;
    }

    public boolean postDelayed(Runnable runnable, long j2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mHandler.postDelayed(runnable, j2);
        }
        ViewRootImpl.getRunQueue().postDelayed(runnable, j2);
        return true;
    }

    public void postInvalidate() {
        postInvalidateDelayed(0L);
    }

    public void postInvalidateDelayed(long j2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.dispatchInvalidateDelayed(this, j2);
        }
    }

    public void postInvalidateOnAnimation() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.dispatchInvalidateOnAnimation(this);
        }
    }

    public void postOnAnimation(Runnable runnable) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.mChoreographer.postCallback(1, runnable, null);
        } else {
            ViewRootImpl.getRunQueue().post(runnable);
        }
    }

    public void postOnAnimationDelayed(Runnable runnable, long j2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.mChoreographer.postCallbackDelayed(1, runnable, null, j2);
        } else {
            ViewRootImpl.getRunQueue().postDelayed(runnable, j2);
        }
    }

    public void recomputePadding() {
        internalSetPadding(this.mUserPaddingLeft, this.mPaddingTop, this.mUserPaddingRight, this.mUserPaddingBottom);
    }

    public void refreshDrawableState() {
        this.mPrivateFlags |= 1024;
        drawableStateChanged();
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.childDrawableStateChanged(this);
        }
    }

    public boolean removeCallbacks(Runnable runnable) {
        if (runnable != null) {
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null) {
                attachInfo.mHandler.removeCallbacks(runnable);
                attachInfo.mViewRootImpl.mChoreographer.removeCallbacks(1, runnable, null);
            } else {
                ViewRootImpl.getRunQueue().removeCallbacks(runnable);
            }
        }
        return true;
    }

    public void removeOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || listenerInfo.mOnAttachStateChangeListeners == null) {
            return;
        }
        listenerInfo.mOnAttachStateChangeListeners.remove(onAttachStateChangeListener);
    }

    public void removeOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || listenerInfo.mOnLayoutChangeListeners == null) {
            return;
        }
        listenerInfo.mOnLayoutChangeListeners.remove(onLayoutChangeListener);
    }

    public boolean requestAccessibilityFocus() {
        AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mContext);
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (this.mViewFlags & 12) != 0) {
            return false;
        }
        int i2 = this.mPrivateFlags2;
        if ((i2 & 67108864) == 0) {
            this.mPrivateFlags2 = i2 | 67108864;
            ViewRootImpl viewRootImpl = getViewRootImpl();
            if (viewRootImpl != null) {
                viewRootImpl.setAccessibilityFocus(this, null);
            }
            invalidate();
            sendAccessibilityEvent(32768);
            return true;
        }
        return false;
    }

    public void requestFitSystemWindows() {
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.requestFitSystemWindows();
        }
    }

    public final boolean requestFocus() {
        return requestFocus(130);
    }

    public final boolean requestFocusFromTouch() {
        ViewRootImpl viewRootImpl;
        if (isInTouchMode() && (viewRootImpl = getViewRootImpl()) != null) {
            viewRootImpl.ensureTouchMode(false);
        }
        return requestFocus(130);
    }

    public void requestLayout() {
        LongSparseLongArray longSparseLongArray = this.mMeasureCache;
        if (longSparseLongArray != null) {
            longSparseLongArray.clear();
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && attachInfo.mViewRequestingLayout == null) {
            ViewRootImpl viewRootImpl = getViewRootImpl();
            if (viewRootImpl != null && viewRootImpl.isInLayout() && !viewRootImpl.requestLayoutDuringLayout(this)) {
                return;
            } else {
                this.mAttachInfo.mViewRequestingLayout = this;
            }
        }
        int i2 = this.mPrivateFlags | 4096;
        this.mPrivateFlags = i2;
        this.mPrivateFlags = i2 | Integer.MIN_VALUE;
        ViewParent viewParent = this.mParent;
        if (viewParent != null && !viewParent.isLayoutRequested()) {
            this.mParent.requestLayout();
        }
        AttachInfo attachInfo2 = this.mAttachInfo;
        if (attachInfo2 == null || attachInfo2.mViewRequestingLayout != this) {
            return;
        }
        attachInfo2.mViewRequestingLayout = null;
    }

    public boolean requestRectangleOnScreen(Rect rect) {
        return requestRectangleOnScreen(rect, false);
    }

    public void resetPaddingToInitialValues() {
        if (isRtlCompatibilityMode()) {
            this.mPaddingLeft = this.mUserPaddingLeftInitial;
            this.mPaddingRight = this.mUserPaddingRightInitial;
            return;
        }
        if (isLayoutRtl()) {
            int i2 = this.mUserPaddingEnd;
            if (i2 < 0) {
                i2 = this.mUserPaddingLeftInitial;
            }
            this.mPaddingLeft = i2;
            int i3 = this.mUserPaddingStart;
            if (i3 < 0) {
                i3 = this.mUserPaddingRightInitial;
            }
            this.mPaddingRight = i3;
            return;
        }
        int i4 = this.mUserPaddingStart;
        if (i4 < 0) {
            i4 = this.mUserPaddingLeftInitial;
        }
        this.mPaddingLeft = i4;
        int i5 = this.mUserPaddingEnd;
        if (i5 < 0) {
            i5 = this.mUserPaddingRightInitial;
        }
        this.mPaddingRight = i5;
    }

    public void resetResolvedDrawables() {
        this.mPrivateFlags2 &= -1073741825;
    }

    public void resetResolvedLayoutDirection() {
        this.mPrivateFlags2 &= -49;
    }

    public void resetResolvedPadding() {
        this.mPrivateFlags2 &= -536870913;
    }

    public void resetResolvedTextAlignment() {
        int i2 = this.mPrivateFlags2 & (-983041);
        this.mPrivateFlags2 = i2;
        this.mPrivateFlags2 = i2 | 131072;
    }

    public void resetResolvedTextDirection() {
        int i2 = this.mPrivateFlags2 & (-7681);
        this.mPrivateFlags2 = i2;
        this.mPrivateFlags2 = i2 | 1024;
    }

    public void resetRtlProperties() {
        resetResolvedLayoutDirection();
        resetResolvedTextDirection();
        resetResolvedTextAlignment();
        resetResolvedPadding();
        resetResolvedDrawables();
    }

    public void resetSubtreeAccessibilityStateChanged() {
        this.mPrivateFlags2 &= -134217729;
    }

    public void resolveDrawables() {
        if (isLayoutDirectionResolved() || getRawLayoutDirection() != 2) {
            int layoutDirection = isLayoutDirectionResolved() ? getLayoutDirection() : getRawLayoutDirection();
            Drawable drawable = this.mBackground;
            if (drawable != null) {
                drawable.setLayoutDirection(layoutDirection);
            }
            this.mPrivateFlags2 |= 1073741824;
            onResolveDrawables(layoutDirection);
        }
    }

    public boolean resolveLayoutDirection() {
        this.mPrivateFlags2 &= -49;
        if (hasRtlSupport()) {
            int i2 = this.mPrivateFlags2;
            int i3 = (i2 & 12) >> 2;
            if (i3 == 1) {
                this.mPrivateFlags2 = i2 | 16;
            } else if (i3 != 2) {
                if (i3 == 3 && 1 == TextUtils.getLayoutDirectionFromLocale(Locale.getDefault())) {
                    this.mPrivateFlags2 |= 16;
                }
            } else {
                if (!canResolveLayoutDirection()) {
                    return false;
                }
                try {
                    if (!this.mParent.isLayoutDirectionResolved()) {
                        return false;
                    }
                    if (this.mParent.getLayoutDirection() == 1) {
                        this.mPrivateFlags2 |= 16;
                    }
                } catch (AbstractMethodError e2) {
                    Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                }
            }
        }
        this.mPrivateFlags2 |= 32;
        return true;
    }

    public void resolveLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.mLayoutParams;
        if (layoutParams != null) {
            layoutParams.resolveLayoutDirection(getLayoutDirection());
        }
    }

    public void resolvePadding() {
        int layoutDirection = getLayoutDirection();
        if (!isRtlCompatibilityMode()) {
            if (this.mBackground != null && (!this.mLeftPaddingDefined || !this.mRightPaddingDefined)) {
                ThreadLocal<Rect> threadLocal = sThreadLocal;
                Rect rect = threadLocal.get();
                if (rect == null) {
                    rect = new Rect();
                    threadLocal.set(rect);
                }
                this.mBackground.getPadding(rect);
                if (!this.mLeftPaddingDefined) {
                    this.mUserPaddingLeftInitial = rect.left;
                }
                if (!this.mRightPaddingDefined) {
                    this.mUserPaddingRightInitial = rect.right;
                }
            }
            if (layoutDirection != 1) {
                int i2 = this.mUserPaddingStart;
                if (i2 != Integer.MIN_VALUE) {
                    this.mUserPaddingLeft = i2;
                } else {
                    this.mUserPaddingLeft = this.mUserPaddingLeftInitial;
                }
                int i3 = this.mUserPaddingEnd;
                if (i3 != Integer.MIN_VALUE) {
                    this.mUserPaddingRight = i3;
                } else {
                    this.mUserPaddingRight = this.mUserPaddingRightInitial;
                }
            } else {
                int i4 = this.mUserPaddingStart;
                if (i4 != Integer.MIN_VALUE) {
                    this.mUserPaddingRight = i4;
                } else {
                    this.mUserPaddingRight = this.mUserPaddingRightInitial;
                }
                int i5 = this.mUserPaddingEnd;
                if (i5 != Integer.MIN_VALUE) {
                    this.mUserPaddingLeft = i5;
                } else {
                    this.mUserPaddingLeft = this.mUserPaddingLeftInitial;
                }
            }
            int i6 = this.mUserPaddingBottom;
            if (i6 < 0) {
                i6 = this.mPaddingBottom;
            }
            this.mUserPaddingBottom = i6;
        }
        internalSetPadding(this.mUserPaddingLeft, this.mPaddingTop, this.mUserPaddingRight, this.mUserPaddingBottom);
        onRtlPropertiesChanged(layoutDirection);
        this.mPrivateFlags2 |= 536870912;
    }

    public boolean resolveRtlPropertiesIfNeeded() {
        if (!needRtlPropertiesResolution()) {
            return false;
        }
        if (!isLayoutDirectionResolved()) {
            resolveLayoutDirection();
            resolveLayoutParams();
        }
        if (!isTextDirectionResolved()) {
            resolveTextDirection();
        }
        if (!isTextAlignmentResolved()) {
            resolveTextAlignment();
        }
        if (!isDrawablesResolved()) {
            resolveDrawables();
        }
        if (!isPaddingResolved()) {
            resolvePadding();
        }
        onRtlPropertiesChanged(getLayoutDirection());
        return true;
    }

    public boolean resolveTextAlignment() {
        int textAlignment;
        this.mPrivateFlags2 &= -983041;
        if (hasRtlSupport()) {
            int rawTextAlignment = getRawTextAlignment();
            switch (rawTextAlignment) {
                case 0:
                    if (!canResolveTextAlignment()) {
                        this.mPrivateFlags2 |= 131072;
                        return false;
                    }
                    try {
                        if (!this.mParent.isTextAlignmentResolved()) {
                            this.mPrivateFlags2 |= 131072;
                            return false;
                        }
                        try {
                            textAlignment = this.mParent.getTextAlignment();
                        } catch (AbstractMethodError e2) {
                            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                            textAlignment = 1;
                        }
                        switch (textAlignment) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.mPrivateFlags2 = (textAlignment << 17) | this.mPrivateFlags2;
                                break;
                            default:
                                this.mPrivateFlags2 |= 131072;
                                break;
                        }
                    } catch (AbstractMethodError e3) {
                        Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e3);
                        this.mPrivateFlags2 = this.mPrivateFlags2 | Menu.CATEGORY_SECONDARY;
                        return true;
                    }
                    break;
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    this.mPrivateFlags2 |= rawTextAlignment << 17;
                    break;
                default:
                    this.mPrivateFlags2 |= 131072;
                    break;
            }
        } else {
            this.mPrivateFlags2 |= 131072;
        }
        this.mPrivateFlags2 |= 65536;
        return true;
    }

    public boolean resolveTextDirection() {
        int textDirection;
        this.mPrivateFlags2 &= -7681;
        if (hasRtlSupport()) {
            int rawTextDirection = getRawTextDirection();
            if (rawTextDirection != 0) {
                if (rawTextDirection == 1 || rawTextDirection == 2 || rawTextDirection == 3 || rawTextDirection == 4 || rawTextDirection == 5) {
                    this.mPrivateFlags2 |= rawTextDirection << 10;
                } else {
                    this.mPrivateFlags2 |= 1024;
                }
            } else {
                if (!canResolveTextDirection()) {
                    this.mPrivateFlags2 |= 1024;
                    return false;
                }
                try {
                    if (!this.mParent.isTextDirectionResolved()) {
                        this.mPrivateFlags2 |= 1024;
                        return false;
                    }
                    try {
                        textDirection = this.mParent.getTextDirection();
                    } catch (AbstractMethodError e2) {
                        Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                        textDirection = 3;
                    }
                    if (textDirection == 1 || textDirection == 2 || textDirection == 3 || textDirection == 4 || textDirection == 5) {
                        this.mPrivateFlags2 = (textDirection << 10) | this.mPrivateFlags2;
                    } else {
                        this.mPrivateFlags2 |= 1024;
                    }
                } catch (AbstractMethodError e3) {
                    Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e3);
                    this.mPrivateFlags2 = this.mPrivateFlags2 | 1536;
                    return true;
                }
            }
        } else {
            this.mPrivateFlags2 |= 1024;
        }
        this.mPrivateFlags2 |= 512;
        return true;
    }

    public void restoreHierarchyState(SparseArray<Parcelable> sparseArray) {
        dispatchRestoreInstanceState(sparseArray);
    }

    public boolean rootViewRequestFocus() {
        View rootView = getRootView();
        return rootView != null && rootView.requestFocus();
    }

    public void saveHierarchyState(SparseArray<Parcelable> sparseArray) {
        dispatchSaveInstanceState(sparseArray);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (!verifyDrawable(drawable) || runnable == null) {
            return;
        }
        long jUptimeMillis = j2 - SystemClock.uptimeMillis();
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.mChoreographer.postCallbackDelayed(1, runnable, drawable, Choreographer.subtractFrameDelay(jUptimeMillis));
        } else {
            ViewRootImpl.getRunQueue().postDelayed(runnable, jUptimeMillis);
        }
    }

    public void scrollBy(int i2, int i3) {
        scrollTo(this.mScrollX + i2, this.mScrollY + i3);
    }

    public void scrollTo(int i2, int i3) {
        int i4 = this.mScrollX;
        if (i4 == i2 && this.mScrollY == i3) {
            return;
        }
        int i5 = this.mScrollY;
        this.mScrollX = i2;
        this.mScrollY = i3;
        invalidateParentCaches();
        onScrollChanged(this.mScrollX, this.mScrollY, i4, i5);
        if (awakenScrollBars()) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i2) {
        if (includeForAccessibility()) {
            AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.sendAccessibilityEvent(this, i2);
            } else {
                sendAccessibilityEventInternal(i2);
            }
        }
    }

    public void sendAccessibilityEventInternal(int i2) {
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            sendAccessibilityEventUnchecked(AccessibilityEvent.obtain(i2));
        }
    }

    @Override // android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        if (accessibilityDelegate != null) {
            accessibilityDelegate.sendAccessibilityEventUnchecked(this, accessibilityEvent);
        } else {
            sendAccessibilityEventUncheckedInternal(accessibilityEvent);
        }
    }

    public void sendAccessibilityEventUncheckedInternal(AccessibilityEvent accessibilityEvent) {
        if (isShown()) {
            onInitializeAccessibilityEvent(accessibilityEvent);
            if ((accessibilityEvent.getEventType() & POPULATING_ACCESSIBILITY_EVENT_TYPES) != 0) {
                dispatchPopulateAccessibilityEvent(accessibilityEvent);
            }
            getParent().requestSendAccessibilityEvent(this, accessibilityEvent);
        }
    }

    public void setAccessibilityDelegate(AccessibilityDelegate accessibilityDelegate) {
        this.mAccessibilityDelegate = accessibilityDelegate;
    }

    public void setAccessibilityLiveRegion(int i2) {
        if (i2 != getAccessibilityLiveRegion()) {
            int i3 = this.mPrivateFlags2 & (-25165825);
            this.mPrivateFlags2 = i3;
            this.mPrivateFlags2 = ((i2 << 23) & 25165824) | i3;
            notifyViewAccessibilityStateChangedIfNeeded(0);
        }
    }

    public void setAccessibilitySelection(int i2, int i3) {
        if (i2 == i3 && i3 == this.mAccessibilityCursorPosition) {
            return;
        }
        if (i2 < 0 || i2 != i3 || i3 > getIterableTextForAccessibility().length()) {
            this.mAccessibilityCursorPosition = -1;
        } else {
            this.mAccessibilityCursorPosition = i2;
        }
        sendAccessibilityEvent(8192);
    }

    public void setActivated(boolean z2) {
        int i2 = this.mPrivateFlags;
        if (((i2 & 1073741824) != 0) != z2) {
            this.mPrivateFlags = (i2 & (-1073741825)) | (z2 ? 1073741824 : 0);
            invalidate(true);
            refreshDrawableState();
            dispatchSetActivated(z2);
        }
    }

    public void setAlpha(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mAlpha != f2) {
            transformationInfo.mAlpha = f2;
            if (onSetAlpha((int) (f2 * 255.0f))) {
                this.mPrivateFlags |= 262144;
                invalidateParentCaches();
                invalidate(true);
            } else {
                this.mPrivateFlags &= -262145;
                invalidateViewProperty(true, false);
                DisplayList displayList = this.mDisplayList;
                if (displayList != null) {
                    displayList.setAlpha(getFinalAlpha());
                }
            }
        }
    }

    public boolean setAlphaNoInvalidation(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mAlpha == f2) {
            return false;
        }
        transformationInfo.mAlpha = f2;
        if (onSetAlpha((int) (f2 * 255.0f))) {
            this.mPrivateFlags |= 262144;
            return true;
        }
        this.mPrivateFlags &= -262145;
        DisplayList displayList = this.mDisplayList;
        if (displayList == null) {
            return false;
        }
        displayList.setAlpha(getFinalAlpha());
        return false;
    }

    public void setAnimation(Animation animation) {
        this.mCurrentAnimation = animation;
        if (animation != null) {
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null && !attachInfo.mScreenOn && animation.getStartTime() == -1) {
                animation.setStartTime(AnimationUtils.currentAnimationTimeMillis());
            }
            animation.reset();
        }
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @RemotableViewMethod
    public void setBackgroundColor(int i2) {
        Drawable drawable = this.mBackground;
        if (!(drawable instanceof ColorDrawable)) {
            setBackground(new ColorDrawable(i2));
            return;
        }
        ((ColorDrawable) drawable.mutate()).setColor(i2);
        computeOpaqueFlags();
        this.mBackgroundResource = 0;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00c8  */
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        boolean z2;
        computeOpaqueFlags();
        Drawable drawable2 = this.mBackground;
        if (drawable == drawable2) {
            return;
        }
        this.mBackgroundResource = 0;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mBackground);
        }
        if (drawable != null) {
            ThreadLocal<Rect> threadLocal = sThreadLocal;
            Rect rect = threadLocal.get();
            if (rect == null) {
                rect = new Rect();
                threadLocal.set(rect);
            }
            resetResolvedDrawables();
            drawable.setLayoutDirection(getLayoutDirection());
            if (drawable.getPadding(rect)) {
                resetResolvedPadding();
                if (drawable.getLayoutDirection() != 1) {
                    int i2 = rect.left;
                    this.mUserPaddingLeftInitial = i2;
                    int i3 = rect.right;
                    this.mUserPaddingRightInitial = i3;
                    internalSetPadding(i2, rect.top, i3, rect.bottom);
                } else {
                    int i4 = rect.right;
                    this.mUserPaddingLeftInitial = i4;
                    int i5 = rect.left;
                    this.mUserPaddingRightInitial = i5;
                    internalSetPadding(i4, rect.top, i5, rect.bottom);
                }
                this.mLeftPaddingDefined = false;
                this.mRightPaddingDefined = false;
            }
            Drawable drawable3 = this.mBackground;
            z2 = (drawable3 != null && drawable3.getMinimumHeight() == drawable.getMinimumHeight() && this.mBackground.getMinimumWidth() == drawable.getMinimumWidth()) ? false : true;
            drawable.setCallback(this);
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            drawable.setVisible(getVisibility() == 0, false);
            this.mBackground = drawable;
            int i6 = this.mPrivateFlags;
            if ((i6 & 128) != 0) {
                int i7 = i6 & (-129);
                this.mPrivateFlags = i7;
                this.mPrivateFlags = i7 | 256;
            }
            computeOpaqueFlags();
            if (z2) {
                requestLayout();
            }
            this.mBackgroundSizeChanged = true;
            invalidate(true);
        }
        this.mBackground = null;
        int i8 = this.mPrivateFlags;
        if ((i8 & 256) != 0) {
            int i9 = i8 & (-257);
            this.mPrivateFlags = i9;
            this.mPrivateFlags = i9 | 128;
        }
        z2 = true;
        computeOpaqueFlags();
        if (z2) {
            requestLayout();
        }
        this.mBackgroundSizeChanged = true;
        invalidate(true);
    }

    @RemotableViewMethod
    public void setBackgroundResource(int i2) {
        if (i2 == 0 || i2 != this.mBackgroundResource) {
            setBackground(i2 != 0 ? this.mResources.getDrawable(i2) : null);
            this.mBackgroundResource = i2;
        }
    }

    public final void setBottom(int i2) {
        if (i2 != this.mBottom) {
            updateMatrix();
            TransformationInfo transformationInfo = this.mTransformationInfo;
            boolean z2 = transformationInfo == null || transformationInfo.mMatrixIsIdentity;
            if (!z2) {
                invalidate(true);
            } else if (this.mAttachInfo != null) {
                int i3 = this.mBottom;
                if (i2 >= i3) {
                    i3 = i2;
                }
                invalidate(0, 0, this.mRight - this.mLeft, i3 - this.mTop);
            }
            int i4 = this.mRight - this.mLeft;
            int i5 = this.mBottom - this.mTop;
            this.mBottom = i2;
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setBottom(i2);
            }
            sizeChange(i4, this.mBottom - this.mTop, i4, i5);
            if (!z2) {
                int i6 = this.mPrivateFlags;
                if ((536870912 & i6) == 0) {
                    this.mTransformationInfo.mMatrixDirty = true;
                }
                this.mPrivateFlags = i6 | 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            invalidateParentIfNeeded();
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setCameraDistance(float f2) {
        invalidateViewProperty(true, false);
        ensureTransformationInfo();
        float f3 = this.mResources.getDisplayMetrics().densityDpi;
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mCamera == null) {
            transformationInfo.mCamera = new Camera();
            transformationInfo.matrix3D = new Matrix();
        }
        transformationInfo.mCamera.setLocation(0.0f, 0.0f, (-Math.abs(f2)) / f3);
        transformationInfo.mMatrixDirty = true;
        invalidateViewProperty(false, false);
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.setCameraDistance((-Math.abs(f2)) / f3);
        }
        if ((this.mPrivateFlags2 & 268435456) == 268435456) {
            invalidateParentIfNeeded();
        }
    }

    public void setClickable(boolean z2) {
        setFlags(z2 ? 16384 : 0, 16384);
    }

    public void setClipBounds(Rect rect) {
        if (rect == null) {
            if (this.mClipBounds != null) {
                invalidate();
                this.mClipBounds = null;
                return;
            }
            return;
        }
        if (rect.equals(this.mClipBounds)) {
            return;
        }
        Rect rect2 = this.mClipBounds;
        if (rect2 == null) {
            invalidate();
            this.mClipBounds = new Rect(rect);
        } else {
            invalidate(Math.min(rect2.left, rect.left), Math.min(this.mClipBounds.top, rect.top), Math.max(this.mClipBounds.right, rect.right), Math.max(this.mClipBounds.bottom, rect.bottom));
            this.mClipBounds.set(rect);
        }
    }

    @RemotableViewMethod
    public void setContentDescription(CharSequence charSequence) {
        CharSequence charSequence2 = this.mContentDescription;
        if (charSequence2 == null) {
            if (charSequence == null) {
                return;
            }
        } else if (charSequence2.equals(charSequence)) {
            return;
        }
        this.mContentDescription = charSequence;
        if (!(charSequence != null && charSequence.length() > 0) || getImportantForAccessibility() != 0) {
            notifyViewAccessibilityStateChangedIfNeeded(4);
        } else {
            setImportantForAccessibility(1);
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void setDisabledSystemUiVisibility(int i2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mDisabledSystemUiVisibility == i2) {
            return;
        }
        attachInfo.mDisabledSystemUiVisibility = i2;
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            viewParent.recomputeViewAttributes(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0060  */
    public void setDisplayListProperties(DisplayList displayList) {
        float alpha;
        int transformationType;
        if (displayList != null) {
            displayList.setLeftTopRightBottom(this.mLeft, this.mTop, this.mRight, this.mBottom);
            displayList.setHasOverlappingRendering(hasOverlappingRendering());
            ViewParent viewParent = this.mParent;
            if (viewParent instanceof ViewGroup) {
                displayList.setClipToBounds((((ViewGroup) viewParent).mGroupFlags & 1) != 0);
            }
            ViewParent viewParent2 = this.mParent;
            if (!(viewParent2 instanceof ViewGroup) || (((ViewGroup) viewParent2).mGroupFlags & 2048) == 0) {
                alpha = 1.0f;
            } else {
                ViewGroup viewGroup = (ViewGroup) viewParent2;
                Transformation childTransformation = viewGroup.getChildTransformation();
                if (!viewGroup.getChildStaticTransformation(this, childTransformation) || (transformationType = childTransformation.getTransformationType()) == 0) {
                    alpha = 1.0f;
                } else {
                    alpha = (transformationType & 1) != 0 ? childTransformation.getAlpha() : 1.0f;
                    if ((transformationType & 2) != 0) {
                        displayList.setMatrix(childTransformation.getMatrix());
                    }
                }
            }
            if (this.mTransformationInfo == null) {
                if (alpha < 1.0f) {
                    displayList.setAlpha(alpha);
                    return;
                }
                return;
            }
            float finalAlpha = alpha * getFinalAlpha();
            float f2 = (finalAlpha >= 1.0f || !onSetAlpha((int) (255.0f * finalAlpha))) ? finalAlpha : 1.0f;
            TransformationInfo transformationInfo = this.mTransformationInfo;
            displayList.setTransformationInfo(f2, transformationInfo.mTranslationX, transformationInfo.mTranslationY, transformationInfo.mRotation, transformationInfo.mRotationX, transformationInfo.mRotationY, transformationInfo.mScaleX, transformationInfo.mScaleY);
            if (this.mTransformationInfo.mCamera == null) {
                this.mTransformationInfo.mCamera = new Camera();
                this.mTransformationInfo.matrix3D = new Matrix();
            }
            displayList.setCameraDistance(this.mTransformationInfo.mCamera.getLocationZ());
            if ((this.mPrivateFlags & 536870912) == 536870912) {
                displayList.setPivotX(getPivotX());
                displayList.setPivotY(getPivotY());
            }
        }
    }

    public void setDrawingCacheBackgroundColor(int i2) {
        if (i2 != this.mDrawingCacheBackgroundColor) {
            this.mDrawingCacheBackgroundColor = i2;
            this.mPrivateFlags &= -32769;
        }
    }

    public void setDrawingCacheEnabled(boolean z2) {
        this.mCachingFailed = false;
        setFlags(z2 ? 32768 : 0, 32768);
    }

    public void setDrawingCacheQuality(int i2) {
        setFlags(i2, DRAWING_CACHE_QUALITY_MASK);
    }

    public void setDuplicateParentStateEnabled(boolean z2) {
        setFlags(z2 ? 4194304 : 0, 4194304);
    }

    @RemotableViewMethod
    public void setEnabled(boolean z2) {
        if (z2 == isEnabled()) {
            return;
        }
        setFlags(z2 ? 0 : 32, 32);
        refreshDrawableState();
        invalidate(true);
        if (z2) {
            return;
        }
        cancelPendingInputEvents();
    }

    public void setFadingEdgeLength(int i2) {
        initScrollCache();
        this.mScrollCache.fadingEdgeLength = i2;
    }

    public void setFilterTouchesWhenObscured(boolean z2) {
        setFlags(z2 ? 1024 : 0, 1024);
    }

    public void setFitsSystemWindows(boolean z2) {
        setFlags(z2 ? 2 : 0, 2);
    }

    public void setFlags(int i2, int i3) {
        ViewParent viewParent;
        AttachInfo attachInfo;
        ViewParent viewParent2;
        boolean zIsEnabled = AccessibilityManager.getInstance(this.mContext).isEnabled();
        boolean z2 = zIsEnabled && includeForAccessibility();
        int i4 = this.mViewFlags;
        int i5 = (i3 & i2) | ((~i3) & i4);
        this.mViewFlags = i5;
        int i6 = i5 ^ i4;
        if (i6 == 0) {
            return;
        }
        int i7 = this.mPrivateFlags;
        int i8 = i6 & 1;
        if (i8 != 0 && (i7 & 16) != 0) {
            int i9 = i4 & 1;
            if (i9 == 1 && (i7 & 2) != 0) {
                clearFocus();
            } else if (i9 == 0 && (i7 & 2) == 0 && (viewParent2 = this.mParent) != null) {
                viewParent2.focusableViewAvailable(this);
            }
        }
        int i10 = i2 & 12;
        if (i10 == 0 && (i6 & 12) != 0) {
            this.mPrivateFlags |= 32;
            invalidate(true);
            needGlobalAttributesUpdate(true);
            ViewParent viewParent3 = this.mParent;
            if (viewParent3 != null && this.mBottom > this.mTop && this.mRight > this.mLeft) {
                viewParent3.focusableViewAvailable(this);
            }
        }
        if ((i6 & 8) != 0) {
            needGlobalAttributesUpdate(false);
            requestLayout();
            if ((this.mViewFlags & 12) == 8) {
                if (hasFocus()) {
                    clearFocus();
                }
                clearAccessibilityFocus();
                destroyDrawingCache();
                Object obj = this.mParent;
                if (obj instanceof View) {
                    ((View) obj).invalidate(true);
                }
                this.mPrivateFlags |= 32;
            }
            AttachInfo attachInfo2 = this.mAttachInfo;
            if (attachInfo2 != null) {
                attachInfo2.mViewVisibilityChanged = true;
            }
        }
        if ((i6 & 4) != 0) {
            needGlobalAttributesUpdate(false);
            this.mPrivateFlags |= 32;
            if ((this.mViewFlags & 12) == 4 && getRootView() != this) {
                if (hasFocus()) {
                    clearFocus();
                }
                clearAccessibilityFocus();
            }
            AttachInfo attachInfo3 = this.mAttachInfo;
            if (attachInfo3 != null) {
                attachInfo3.mViewVisibilityChanged = true;
            }
        }
        int i11 = i6 & 12;
        if (i11 != 0) {
            if (i10 != 0) {
                cleanupDraw();
            }
            ViewParent viewParent4 = this.mParent;
            if (viewParent4 instanceof ViewGroup) {
                ((ViewGroup) viewParent4).onChildVisibilityChanged(this, i11, i10);
                ((View) this.mParent).invalidate(true);
            } else if (viewParent4 != null) {
                viewParent4.invalidateChild(this, null);
            }
            dispatchVisibilityChanged(this, i10);
        }
        if ((131072 & i6) != 0) {
            destroyDrawingCache();
        }
        if ((32768 & i6) != 0) {
            destroyDrawingCache();
            this.mPrivateFlags &= -32769;
            invalidateParentCaches();
        }
        if ((1572864 & i6) != 0) {
            destroyDrawingCache();
            this.mPrivateFlags &= -32769;
        }
        if ((i6 & 128) != 0) {
            if ((this.mViewFlags & 128) == 0) {
                this.mPrivateFlags &= -129;
            } else if (this.mBackground != null) {
                int i12 = this.mPrivateFlags & (-129);
                this.mPrivateFlags = i12;
                this.mPrivateFlags = i12 | 256;
            } else {
                this.mPrivateFlags |= 128;
            }
            requestLayout();
            invalidate(true);
        }
        if ((67108864 & i6) != 0 && (viewParent = this.mParent) != null && (attachInfo = this.mAttachInfo) != null && !attachInfo.mRecomputeGlobalAttributes) {
            viewParent.recomputeViewAttributes(this);
        }
        if (zIsEnabled) {
            if (i8 == 0 && i11 == 0 && (i6 & 16384) == 0 && (2097152 & i6) == 0) {
                if ((i6 & 32) != 0) {
                    notifyViewAccessibilityStateChangedIfNeeded(0);
                }
            } else if (z2 != includeForAccessibility()) {
                notifySubtreeAccessibilityStateChangedIfNeeded();
            } else {
                notifyViewAccessibilityStateChangedIfNeeded(0);
            }
        }
    }

    public void setFocusable(boolean z2) {
        if (!z2) {
            setFlags(0, 262144);
        }
        setFlags(z2 ? 1 : 0, 1);
    }

    public void setFocusableInTouchMode(boolean z2) {
        setFlags(z2 ? 262144 : 0, 262144);
        if (z2) {
            setFlags(1, 1);
        }
    }

    public boolean setFrame(int i2, int i3, int i4, int i5) {
        TransformationInfo transformationInfo;
        int i6 = this.mLeft;
        if (i6 == i2 && this.mRight == i4 && this.mTop == i3 && this.mBottom == i5) {
            return false;
        }
        int i7 = this.mPrivateFlags & 32;
        int i8 = this.mRight - i6;
        int i9 = this.mBottom - this.mTop;
        int i10 = i4 - i2;
        int i11 = i5 - i3;
        boolean z2 = (i10 == i8 && i11 == i9) ? false : true;
        invalidate(z2);
        this.mLeft = i2;
        this.mTop = i3;
        this.mRight = i4;
        this.mBottom = i5;
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.setLeftTopRightBottom(i2, i3, i4, i5);
        }
        int i12 = this.mPrivateFlags | 16;
        this.mPrivateFlags = i12;
        if (z2) {
            if ((i12 & 536870912) == 0 && (transformationInfo = this.mTransformationInfo) != null) {
                transformationInfo.mMatrixDirty = true;
            }
            sizeChange(i10, i11, i8, i9);
        }
        if ((this.mViewFlags & 12) == 0) {
            this.mPrivateFlags |= 32;
            invalidate(z2);
            invalidateParentCaches();
        }
        this.mPrivateFlags |= i7;
        this.mBackgroundSizeChanged = true;
        notifySubtreeAccessibilityStateChangedIfNeeded();
        return true;
    }

    public void setHapticFeedbackEnabled(boolean z2) {
        setFlags(z2 ? 268435456 : 0, 268435456);
    }

    public void setHasTransientState(boolean z2) {
        int i2 = this.mTransientStateCount;
        int i3 = z2 ? i2 + 1 : i2 - 1;
        this.mTransientStateCount = i3;
        if (i3 < 0) {
            this.mTransientStateCount = 0;
            Log.e(VIEW_LOG_TAG, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls");
            return;
        }
        if (!(z2 && i3 == 1) && (z2 || i3 != 0)) {
            return;
        }
        this.mPrivateFlags2 = (this.mPrivateFlags2 & Integer.MAX_VALUE) | (z2 ? Integer.MIN_VALUE : 0);
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            try {
                viewParent.childHasTransientStateChanged(this, z2);
            } catch (AbstractMethodError e2) {
                Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e2);
            }
        }
    }

    public void setHorizontalFadingEdgeEnabled(boolean z2) {
        if (isHorizontalFadingEdgeEnabled() != z2) {
            if (z2) {
                initScrollCache();
            }
            this.mViewFlags ^= 4096;
        }
    }

    public void setHorizontalScrollBarEnabled(boolean z2) {
        if (isHorizontalScrollBarEnabled() != z2) {
            this.mViewFlags ^= 256;
            computeOpaqueFlags();
            resolvePadding();
        }
    }

    public void setHovered(boolean z2) {
        if (z2) {
            int i2 = this.mPrivateFlags;
            if ((i2 & 268435456) == 0) {
                this.mPrivateFlags = i2 | 268435456;
                refreshDrawableState();
                onHoverChanged(true);
                return;
            }
            return;
        }
        int i3 = this.mPrivateFlags;
        if ((268435456 & i3) != 0) {
            this.mPrivateFlags = i3 & (-268435457);
            refreshDrawableState();
            onHoverChanged(false);
        }
    }

    public void setId(int i2) {
        this.mID = i2;
        if (i2 != -1 || this.mLabelForId == -1) {
            return;
        }
        this.mID = generateViewId();
    }

    public void setImportantForAccessibility(int i2) {
        int importantForAccessibility = getImportantForAccessibility();
        if (i2 != importantForAccessibility) {
            boolean z2 = importantForAccessibility == 0 || i2 == 0;
            boolean z3 = z2 && includeForAccessibility();
            int i3 = this.mPrivateFlags2 & (-7340033);
            this.mPrivateFlags2 = i3;
            this.mPrivateFlags2 = ((i2 << 20) & PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK) | i3;
            if (z2 && z3 == includeForAccessibility()) {
                notifyViewAccessibilityStateChangedIfNeeded(0);
            } else {
                notifySubtreeAccessibilityStateChangedIfNeeded();
            }
        }
    }

    public void setIsRootNamespace(boolean z2) {
        if (z2) {
            this.mPrivateFlags |= 8;
        } else {
            this.mPrivateFlags &= -9;
        }
    }

    public void setKeepScreenOn(boolean z2) {
        setFlags(z2 ? 67108864 : 0, 67108864);
    }

    @RemotableViewMethod
    public void setLabelFor(int i2) {
        this.mLabelForId = i2;
        if (i2 == -1 || this.mID != -1) {
            return;
        }
        this.mID = generateViewId();
    }

    public void setLayerPaint(Paint paint) {
        int layerType = getLayerType();
        if (layerType != 0) {
            this.mLayerPaint = paint == null ? new Paint() : paint;
            if (layerType != 2) {
                invalidate();
                return;
            }
            HardwareLayer hardwareLayer = getHardwareLayer();
            if (hardwareLayer != null) {
                hardwareLayer.setLayerPaint(paint);
            }
            invalidateViewProperty(false, false);
        }
    }

    public void setLayerType(int i2, Paint paint) {
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException("Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE");
        }
        int i3 = this.mLayerType;
        if (i2 == i3) {
            if (i2 == 0 || paint == this.mLayerPaint) {
                return;
            }
            if (paint == null) {
                paint = new Paint();
            }
            this.mLayerPaint = paint;
            invalidateParentCaches();
            invalidate(true);
            return;
        }
        if (i3 == 1) {
            destroyDrawingCache();
        } else if (i3 == 2) {
            destroyLayer(false);
            destroyDrawingCache();
        }
        this.mLayerType = i2;
        boolean z2 = i2 == 0;
        if (z2) {
            paint = null;
        } else if (paint == null) {
            paint = new Paint();
        }
        this.mLayerPaint = paint;
        this.mLocalDirtyRect = z2 ? null : new Rect();
        invalidateParentCaches();
        invalidate(true);
    }

    @RemotableViewMethod
    public void setLayoutDirection(int i2) {
        if (getRawLayoutDirection() != i2) {
            this.mPrivateFlags2 &= -13;
            resetRtlProperties();
            this.mPrivateFlags2 = ((i2 << 2) & 12) | this.mPrivateFlags2;
            resolveRtlPropertiesIfNeeded();
            requestLayout();
            invalidate(true);
        }
    }

    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        Objects.requireNonNull(layoutParams, "Layout parameters cannot be null");
        this.mLayoutParams = layoutParams;
        resolveLayoutParams();
        ViewParent viewParent = this.mParent;
        if (viewParent instanceof ViewGroup) {
            ((ViewGroup) viewParent).onSetLayoutParams(this, layoutParams);
        }
        requestLayout();
    }

    public final void setLeft(int i2) {
        int i3;
        int i4;
        if (i2 != this.mLeft) {
            updateMatrix();
            TransformationInfo transformationInfo = this.mTransformationInfo;
            boolean z2 = transformationInfo == null || transformationInfo.mMatrixIsIdentity;
            if (!z2) {
                invalidate(true);
            } else if (this.mAttachInfo != null) {
                int i5 = this.mLeft;
                if (i2 < i5) {
                    i4 = i2 - i5;
                    i3 = i2;
                } else {
                    i3 = i5;
                    i4 = 0;
                }
                invalidate(i4, 0, this.mRight - i3, this.mBottom - this.mTop);
            }
            int i6 = this.mRight - this.mLeft;
            int i7 = this.mBottom - this.mTop;
            this.mLeft = i2;
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setLeft(i2);
            }
            sizeChange(this.mRight - this.mLeft, i7, i6, i7);
            if (!z2) {
                int i8 = this.mPrivateFlags;
                if ((536870912 & i8) == 0) {
                    this.mTransformationInfo.mMatrixDirty = true;
                }
                this.mPrivateFlags = i8 | 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            invalidateParentIfNeeded();
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setLongClickable(boolean z2) {
        setFlags(z2 ? 2097152 : 0, 2097152);
    }

    public final void setMeasuredDimension(int i2, int i3) {
        boolean zIsLayoutModeOptical = isLayoutModeOptical(this);
        if (zIsLayoutModeOptical != isLayoutModeOptical(this.mParent)) {
            Insets opticalInsets = getOpticalInsets();
            int i4 = opticalInsets.left + opticalInsets.right;
            int i5 = opticalInsets.top + opticalInsets.bottom;
            if (!zIsLayoutModeOptical) {
                i4 = -i4;
            }
            i2 += i4;
            if (!zIsLayoutModeOptical) {
                i5 = -i5;
            }
            i3 += i5;
        }
        this.mMeasuredWidth = i2;
        this.mMeasuredHeight = i3;
        this.mPrivateFlags |= 2048;
    }

    public void setMinimumHeight(int i2) {
        this.mMinHeight = i2;
        requestLayout();
    }

    public void setMinimumWidth(int i2) {
        this.mMinWidth = i2;
        requestLayout();
    }

    public void setNextFocusDownId(int i2) {
        this.mNextFocusDownId = i2;
    }

    public void setNextFocusForwardId(int i2) {
        this.mNextFocusForwardId = i2;
    }

    public void setNextFocusLeftId(int i2) {
        this.mNextFocusLeftId = i2;
    }

    public void setNextFocusRightId(int i2) {
        this.mNextFocusRightId = i2;
    }

    public void setNextFocusUpId(int i2) {
        this.mNextFocusUpId = i2;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        if (!isClickable()) {
            setClickable(true);
        }
        getListenerInfo().mOnClickListener = onClickListener;
    }

    public void setOnCreateContextMenuListener(OnCreateContextMenuListener onCreateContextMenuListener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        getListenerInfo().mOnCreateContextMenuListener = onCreateContextMenuListener;
    }

    public void setOnDragListener(OnDragListener onDragListener) {
        getListenerInfo().mOnDragListener = onDragListener;
    }

    public void setOnFocusChangeListener(OnFocusChangeListener onFocusChangeListener) {
        getListenerInfo().mOnFocusChangeListener = onFocusChangeListener;
    }

    public void setOnGenericMotionListener(OnGenericMotionListener onGenericMotionListener) {
        getListenerInfo().mOnGenericMotionListener = onGenericMotionListener;
    }

    public void setOnHoverListener(OnHoverListener onHoverListener) {
        getListenerInfo().mOnHoverListener = onHoverListener;
    }

    public void setOnKeyListener(OnKeyListener onKeyListener) {
        getListenerInfo().mOnKeyListener = onKeyListener;
    }

    public void setOnLongClickListener(OnLongClickListener onLongClickListener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        getListenerInfo().mOnLongClickListener = onLongClickListener;
    }

    public void setOnSystemUiVisibilityChangeListener(OnSystemUiVisibilityChangeListener onSystemUiVisibilityChangeListener) {
        AttachInfo attachInfo;
        getListenerInfo().mOnSystemUiVisibilityChangeListener = onSystemUiVisibilityChangeListener;
        ViewParent viewParent = this.mParent;
        if (viewParent == null || (attachInfo = this.mAttachInfo) == null || attachInfo.mRecomputeGlobalAttributes) {
            return;
        }
        viewParent.recomputeViewAttributes(this);
    }

    public void setOnTouchListener(OnTouchListener onTouchListener) {
        getListenerInfo().mOnTouchListener = onTouchListener;
    }

    public void setOverScrollMode(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            this.mOverScrollMode = i2;
            return;
        }
        throw new IllegalArgumentException("Invalid overscroll mode " + i2);
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        resetResolvedPadding();
        this.mUserPaddingStart = Integer.MIN_VALUE;
        this.mUserPaddingEnd = Integer.MIN_VALUE;
        this.mUserPaddingLeftInitial = i2;
        this.mUserPaddingRightInitial = i4;
        this.mLeftPaddingDefined = true;
        this.mRightPaddingDefined = true;
        internalSetPadding(i2, i3, i4, i5);
    }

    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        resetResolvedPadding();
        this.mUserPaddingStart = i2;
        this.mUserPaddingEnd = i4;
        this.mLeftPaddingDefined = true;
        this.mRightPaddingDefined = true;
        if (getLayoutDirection() != 1) {
            this.mUserPaddingLeftInitial = i2;
            this.mUserPaddingRightInitial = i4;
            internalSetPadding(i2, i3, i4, i5);
        } else {
            this.mUserPaddingLeftInitial = i4;
            this.mUserPaddingRightInitial = i2;
            internalSetPadding(i4, i3, i2, i5);
        }
    }

    public void setPivotX(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        int i2 = this.mPrivateFlags;
        boolean z2 = (i2 & 536870912) == 536870912;
        if (transformationInfo.mPivotX == f2 && z2) {
            return;
        }
        this.mPrivateFlags = i2 | 536870912;
        invalidateViewProperty(true, false);
        transformationInfo.mPivotX = f2;
        transformationInfo.mMatrixDirty = true;
        invalidateViewProperty(false, true);
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.setPivotX(f2);
        }
        if ((this.mPrivateFlags2 & 268435456) == 268435456) {
            invalidateParentIfNeeded();
        }
    }

    public void setPivotY(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        int i2 = this.mPrivateFlags;
        boolean z2 = (i2 & 536870912) == 536870912;
        if (transformationInfo.mPivotY == f2 && z2) {
            return;
        }
        this.mPrivateFlags = i2 | 536870912;
        invalidateViewProperty(true, false);
        transformationInfo.mPivotY = f2;
        transformationInfo.mMatrixDirty = true;
        invalidateViewProperty(false, true);
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.setPivotY(f2);
        }
        if ((this.mPrivateFlags2 & 268435456) == 268435456) {
            invalidateParentIfNeeded();
        }
    }

    public void setPressed(boolean z2) {
        int i2 = this.mPrivateFlags;
        boolean z3 = z2 != ((i2 & 16384) == 16384);
        if (z2) {
            this.mPrivateFlags = i2 | 16384;
        } else {
            this.mPrivateFlags = i2 & (-16385);
        }
        if (z3) {
            refreshDrawableState();
        }
        dispatchSetPressed(z2);
    }

    public final void setRight(int i2) {
        if (i2 != this.mRight) {
            updateMatrix();
            TransformationInfo transformationInfo = this.mTransformationInfo;
            boolean z2 = transformationInfo == null || transformationInfo.mMatrixIsIdentity;
            if (!z2) {
                invalidate(true);
            } else if (this.mAttachInfo != null) {
                int i3 = this.mRight;
                if (i2 >= i3) {
                    i3 = i2;
                }
                invalidate(0, 0, i3 - this.mLeft, this.mBottom - this.mTop);
            }
            int i4 = this.mRight - this.mLeft;
            int i5 = this.mBottom - this.mTop;
            this.mRight = i2;
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setRight(i2);
            }
            sizeChange(this.mRight - this.mLeft, i5, i4, i5);
            if (!z2) {
                int i6 = this.mPrivateFlags;
                if ((536870912 & i6) == 0) {
                    this.mTransformationInfo.mMatrixDirty = true;
                }
                this.mPrivateFlags = i6 | 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            invalidateParentIfNeeded();
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setRotation(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mRotation != f2) {
            invalidateViewProperty(true, false);
            transformationInfo.mRotation = f2;
            transformationInfo.mMatrixDirty = true;
            invalidateViewProperty(false, true);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setRotation(f2);
            }
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setRotationX(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mRotationX != f2) {
            invalidateViewProperty(true, false);
            transformationInfo.mRotationX = f2;
            transformationInfo.mMatrixDirty = true;
            invalidateViewProperty(false, true);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setRotationX(f2);
            }
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setRotationY(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mRotationY != f2) {
            invalidateViewProperty(true, false);
            transformationInfo.mRotationY = f2;
            transformationInfo.mMatrixDirty = true;
            invalidateViewProperty(false, true);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setRotationY(f2);
            }
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setSaveEnabled(boolean z2) {
        setFlags(z2 ? 0 : 65536, 65536);
    }

    public void setSaveFromParentEnabled(boolean z2) {
        setFlags(z2 ? 0 : 536870912, 536870912);
    }

    public void setScaleX(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mScaleX != f2) {
            invalidateViewProperty(true, false);
            transformationInfo.mScaleX = f2;
            transformationInfo.mMatrixDirty = true;
            invalidateViewProperty(false, true);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setScaleX(f2);
            }
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setScaleY(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mScaleY != f2) {
            invalidateViewProperty(true, false);
            transformationInfo.mScaleY = f2;
            transformationInfo.mMatrixDirty = true;
            invalidateViewProperty(false, true);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setScaleY(f2);
            }
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setScrollBarDefaultDelayBeforeFade(int i2) {
        getScrollCache().scrollBarDefaultDelayBeforeFade = i2;
    }

    public void setScrollBarFadeDuration(int i2) {
        getScrollCache().scrollBarFadeDuration = i2;
    }

    public void setScrollBarSize(int i2) {
        getScrollCache().scrollBarSize = i2;
    }

    public void setScrollBarStyle(int i2) {
        int i3 = this.mViewFlags;
        if (i2 != (i3 & 50331648)) {
            this.mViewFlags = (i2 & 50331648) | (i3 & (-50331649));
            computeOpaqueFlags();
            resolvePadding();
        }
    }

    public void setScrollContainer(boolean z2) {
        if (!z2) {
            if ((this.mPrivateFlags & 1048576) != 0) {
                this.mAttachInfo.mScrollContainers.remove(this);
            }
            this.mPrivateFlags &= -1572865;
        } else {
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null && (this.mPrivateFlags & 1048576) == 0) {
                attachInfo.mScrollContainers.add(this);
                this.mPrivateFlags |= 1048576;
            }
            this.mPrivateFlags |= 524288;
        }
    }

    public void setScrollX(int i2) {
        scrollTo(i2, this.mScrollY);
    }

    public void setScrollY(int i2) {
        scrollTo(this.mScrollX, i2);
    }

    public void setScrollbarFadingEnabled(boolean z2) {
        initScrollCache();
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        scrollabilityCache.fadeScrollBars = z2;
        if (z2) {
            scrollabilityCache.state = 0;
        } else {
            scrollabilityCache.state = 1;
        }
    }

    public void setSelected(boolean z2) {
        int i2 = this.mPrivateFlags;
        if (((i2 & 4) != 0) != z2) {
            this.mPrivateFlags = (i2 & (-5)) | (z2 ? 4 : 0);
            if (!z2) {
                resetPressedState();
            }
            invalidate(true);
            refreshDrawableState();
            dispatchSetSelected(z2);
            notifyViewAccessibilityStateChangedIfNeeded(0);
        }
    }

    public void setSoundEffectsEnabled(boolean z2) {
        setFlags(z2 ? 134217728 : 0, 134217728);
    }

    public void setSystemUiVisibility(int i2) {
        AttachInfo attachInfo;
        if (i2 != this.mSystemUiVisibility) {
            this.mSystemUiVisibility = i2;
            ViewParent viewParent = this.mParent;
            if (viewParent == null || (attachInfo = this.mAttachInfo) == null || attachInfo.mRecomputeGlobalAttributes) {
                return;
            }
            viewParent.recomputeViewAttributes(this);
        }
    }

    public void setTag(Object obj) {
        this.mTag = obj;
    }

    public void setTagInternal(int i2, Object obj) {
        if ((i2 >>> 24) != 1) {
            throw new IllegalArgumentException("The key must be a framework-specific resource id.");
        }
        setKeyedTag(i2, obj);
    }

    public void setTextAlignment(int i2) {
        if (i2 != getRawTextAlignment()) {
            this.mPrivateFlags2 &= -57345;
            resetResolvedTextAlignment();
            this.mPrivateFlags2 = ((i2 << 13) & PFLAG2_TEXT_ALIGNMENT_MASK) | this.mPrivateFlags2;
            resolveTextAlignment();
            onRtlPropertiesChanged(getLayoutDirection());
            requestLayout();
            invalidate(true);
        }
    }

    public void setTextDirection(int i2) {
        if (getRawTextDirection() != i2) {
            this.mPrivateFlags2 &= -449;
            resetResolvedTextDirection();
            this.mPrivateFlags2 = ((i2 << 6) & 448) | this.mPrivateFlags2;
            resolveTextDirection();
            onRtlPropertiesChanged(getLayoutDirection());
            requestLayout();
            invalidate(true);
        }
    }

    public final void setTop(int i2) {
        int i3;
        int i4;
        if (i2 != this.mTop) {
            updateMatrix();
            TransformationInfo transformationInfo = this.mTransformationInfo;
            boolean z2 = transformationInfo == null || transformationInfo.mMatrixIsIdentity;
            if (!z2) {
                invalidate(true);
            } else if (this.mAttachInfo != null) {
                int i5 = this.mTop;
                if (i2 < i5) {
                    i4 = i2 - i5;
                    i3 = i2;
                } else {
                    i3 = i5;
                    i4 = 0;
                }
                invalidate(0, i4, this.mRight - this.mLeft, this.mBottom - i3);
            }
            int i6 = this.mRight - this.mLeft;
            int i7 = this.mBottom - this.mTop;
            this.mTop = i2;
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setTop(i2);
            }
            sizeChange(i6, this.mBottom - this.mTop, i6, i7);
            if (!z2) {
                int i8 = this.mPrivateFlags;
                if ((536870912 & i8) == 0) {
                    this.mTransformationInfo.mMatrixDirty = true;
                }
                this.mPrivateFlags = i8 | 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            invalidateParentIfNeeded();
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setTouchDelegate(TouchDelegate touchDelegate) {
        this.mTouchDelegate = touchDelegate;
    }

    public void setTransitionAlpha(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mTransitionAlpha != f2) {
            transformationInfo.mTransitionAlpha = f2;
            this.mPrivateFlags &= -262145;
            invalidateViewProperty(true, false);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setAlpha(getFinalAlpha());
            }
        }
    }

    public void setTranslationX(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mTranslationX != f2) {
            invalidateViewProperty(true, false);
            transformationInfo.mTranslationX = f2;
            transformationInfo.mMatrixDirty = true;
            invalidateViewProperty(false, true);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setTranslationX(f2);
            }
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setTranslationY(float f2) {
        ensureTransformationInfo();
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo.mTranslationY != f2) {
            invalidateViewProperty(true, false);
            transformationInfo.mTranslationY = f2;
            transformationInfo.mMatrixDirty = true;
            invalidateViewProperty(false, true);
            DisplayList displayList = this.mDisplayList;
            if (displayList != null) {
                displayList.setTranslationY(f2);
            }
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setVerticalFadingEdgeEnabled(boolean z2) {
        if (isVerticalFadingEdgeEnabled() != z2) {
            if (z2) {
                initScrollCache();
            }
            this.mViewFlags ^= 8192;
        }
    }

    public void setVerticalScrollBarEnabled(boolean z2) {
        if (isVerticalScrollBarEnabled() != z2) {
            this.mViewFlags ^= 512;
            computeOpaqueFlags();
            resolvePadding();
        }
    }

    public void setVerticalScrollbarPosition(int i2) {
        if (this.mVerticalScrollbarPosition != i2) {
            this.mVerticalScrollbarPosition = i2;
            computeOpaqueFlags();
            resolvePadding();
        }
    }

    @RemotableViewMethod
    public void setVisibility(int i2) {
        setFlags(i2, 12);
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.setVisible(i2 == 0, false);
        }
    }

    public void setWillNotCacheDrawing(boolean z2) {
        setFlags(z2 ? 131072 : 0, 131072);
    }

    public void setWillNotDraw(boolean z2) {
        setFlags(z2 ? 128 : 0, 128);
    }

    public void setX(float f2) {
        setTranslationX(f2 - this.mLeft);
    }

    public void setY(float f2) {
        setTranslationY(f2 - this.mTop);
    }

    public boolean showContextMenu() {
        return getParent().showContextMenuForChild(this);
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        ViewParent parent = getParent();
        if (parent == null) {
            return null;
        }
        return parent.startActionModeForChild(this, callback);
    }

    public void startAnimation(Animation animation) {
        animation.setStartTime(-1L);
        setAnimation(animation);
        invalidateParentCaches();
        invalidate(true);
    }

    public final boolean startDrag(ClipData clipData, DragShadowBuilder dragShadowBuilder, Object obj, int i2) {
        Point point = new Point();
        Point point2 = new Point();
        dragShadowBuilder.onProvideShadowMetrics(point, point2);
        if (point.f137x < 0 || point.f138y < 0 || point2.f137x < 0 || point2.f138y < 0) {
            throw new IllegalStateException("Drag shadow dimensions must not be negative");
        }
        Surface surface = new Surface();
        try {
            AttachInfo attachInfo = this.mAttachInfo;
            IBinder iBinderPrepareDrag = attachInfo.mSession.prepareDrag(attachInfo.mWindow, i2, point.f137x, point.f138y, surface);
            if (iBinderPrepareDrag == null) {
                return false;
            }
            Canvas canvasLockCanvas = surface.lockCanvas(null);
            try {
                canvasLockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                dragShadowBuilder.onDrawShadow(canvasLockCanvas);
                surface.unlockCanvasAndPost(canvasLockCanvas);
                ViewRootImpl viewRootImpl = getViewRootImpl();
                viewRootImpl.setLocalDragState(obj);
                viewRootImpl.getLastTouchPoint(point);
                AttachInfo attachInfo2 = this.mAttachInfo;
                boolean zPerformDrag = attachInfo2.mSession.performDrag(attachInfo2.mWindow, iBinderPrepareDrag, point.f137x, point.f138y, point2.f137x, point2.f138y, clipData);
                surface.release();
                return zPerformDrag;
            } catch (Throwable th) {
                surface.unlockCanvasAndPost(canvasLockCanvas);
                throw th;
            }
        } catch (Exception e2) {
            Log.e(VIEW_LOG_TAG, "Unable to initiate drag", e2);
            surface.destroy();
            return false;
        }
    }

    public boolean toGlobalMotionEvent(MotionEvent motionEvent) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return false;
        }
        transformMotionEventToGlobal(motionEvent);
        motionEvent.offsetLocation(attachInfo.mWindowLeft, attachInfo.mWindowTop);
        return true;
    }

    public boolean toLocalMotionEvent(MotionEvent motionEvent) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return false;
        }
        motionEvent.offsetLocation(-attachInfo.mWindowLeft, -attachInfo.mWindowTop);
        transformMotionEventToLocal(motionEvent);
        return true;
    }

    public String toString() {
        String resourcePackageName;
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(CharArrayBuffers.uppercaseAddon);
        int i2 = this.mViewFlags & 12;
        if (i2 == 0) {
            sb.append('V');
        } else if (i2 == 4) {
            sb.append('I');
        } else if (i2 != 8) {
            sb.append('.');
        } else {
            sb.append('G');
        }
        sb.append((this.mViewFlags & 1) == 1 ? 'F' : '.');
        sb.append((this.mViewFlags & 32) == 0 ? DateFormat.DAY : '.');
        sb.append((this.mViewFlags & 128) == 128 ? '.' : 'D');
        sb.append((this.mViewFlags & 256) != 0 ? 'H' : '.');
        sb.append((this.mViewFlags & 512) == 0 ? '.' : 'V');
        sb.append((this.mViewFlags & 16384) != 0 ? 'C' : '.');
        sb.append((this.mViewFlags & 2097152) != 0 ? DateFormat.STANDALONE_MONTH : '.');
        sb.append(CharArrayBuffers.uppercaseAddon);
        sb.append((this.mPrivateFlags & 8) != 0 ? 'R' : '.');
        sb.append((this.mPrivateFlags & 2) == 0 ? '.' : 'F');
        sb.append((this.mPrivateFlags & 4) != 0 ? 'S' : '.');
        int i3 = this.mPrivateFlags;
        if ((33554432 & i3) != 0) {
            sb.append('p');
        } else {
            sb.append((i3 & 16384) != 0 ? 'P' : '.');
        }
        sb.append((this.mPrivateFlags & 268435456) == 0 ? '.' : 'H');
        sb.append((this.mPrivateFlags & 1073741824) != 0 ? DateFormat.CAPITAL_AM_PM : '.');
        sb.append((this.mPrivateFlags & Integer.MIN_VALUE) == 0 ? '.' : 'I');
        sb.append((this.mPrivateFlags & 6291456) != 0 ? 'D' : '.');
        sb.append(CharArrayBuffers.uppercaseAddon);
        sb.append(this.mLeft);
        sb.append(PhoneNumberUtils.PAUSE);
        sb.append(this.mTop);
        sb.append('-');
        sb.append(this.mRight);
        sb.append(PhoneNumberUtils.PAUSE);
        sb.append(this.mBottom);
        int id = getId();
        if (id != -1) {
            sb.append(" #");
            sb.append(Integer.toHexString(id));
            Resources resources = this.mResources;
            if (id != 0 && resources != null) {
                int i4 = (-16777216) & id;
                if (i4 == 16777216) {
                    resourcePackageName = "android";
                } else if (i4 != 2130706432) {
                    try {
                        resourcePackageName = resources.getResourcePackageName(id);
                    } catch (Resources.NotFoundException unused) {
                    }
                } else {
                    resourcePackageName = "app";
                }
                String resourceTypeName = resources.getResourceTypeName(id);
                String resourceEntryName = resources.getResourceEntryName(id);
                sb.append(" ");
                sb.append(resourcePackageName);
                sb.append(":");
                sb.append(resourceTypeName);
                sb.append("/");
                sb.append(resourceEntryName);
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public void transformRect(Rect rect) {
        if (getMatrix().isIdentity()) {
            return;
        }
        RectF rectF = this.mAttachInfo.mTmpTransformRect;
        rectF.set(rect);
        getMatrix().mapRect(rectF);
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public void unFocus() {
        clearFocusInternal(false, false);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (!verifyDrawable(drawable) || runnable == null) {
            return;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.mChoreographer.removeCallbacks(1, runnable, drawable);
        } else {
            ViewRootImpl.getRunQueue().removeCallbacks(runnable);
        }
    }

    public boolean updateLocalSystemUiVisibility(int i2, int i3) {
        int i4 = this.mSystemUiVisibility;
        int i5 = (i2 & i3) | ((~i3) & i4);
        if (i5 == i4) {
            return false;
        }
        setSystemUiVisibility(i5);
        return true;
    }

    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mBackground;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean willNotCacheDrawing() {
        return (this.mViewFlags & 131072) == 131072;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean willNotDraw() {
        return (this.mViewFlags & 128) == 128;
    }

    public static class DragShadowBuilder {
        private final WeakReference<View> mView;

        public DragShadowBuilder(View view) {
            this.mView = new WeakReference<>(view);
        }

        public final View getView() {
            return this.mView.get();
        }

        public void onDrawShadow(Canvas canvas) {
            View view = this.mView.get();
            if (view != null) {
                view.draw(canvas);
            } else {
                Log.e(View.VIEW_LOG_TAG, "Asked to draw drag shadow but no view");
            }
        }

        public void onProvideShadowMetrics(Point point, Point point2) {
            View view = this.mView.get();
            if (view == null) {
                Log.e(View.VIEW_LOG_TAG, "Asked for drag thumb metrics but no view");
            } else {
                point.set(view.getWidth(), view.getHeight());
                point2.set(point.f137x / 2, point.f138y / 2);
            }
        }

        public DragShadowBuilder() {
            this.mView = new WeakReference<>(null);
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (arrayList != null && isFocusable()) {
            if ((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    public boolean awakenScrollBars(int i2) {
        return awakenScrollBars(i2, true);
    }

    public void buildDrawingCache(boolean z2) {
        Canvas canvas;
        if ((this.mPrivateFlags & 32768) != 0) {
            if (z2) {
                if (this.mDrawingCache != null) {
                    return;
                }
            } else if (this.mUnscaledDrawingCache != null) {
                return;
            }
        }
        this.mCachingFailed = false;
        int i2 = this.mRight - this.mLeft;
        int i3 = this.mBottom - this.mTop;
        AttachInfo attachInfo = this.mAttachInfo;
        boolean z3 = true;
        boolean z4 = attachInfo != null && attachInfo.mScalingRequired;
        if (z2 && z4) {
            float f2 = attachInfo.mApplicationScale;
            i2 = (int) ((i2 * f2) + 0.5f);
            i3 = (int) ((i3 * f2) + 0.5f);
        }
        int i4 = this.mDrawingCacheBackgroundColor;
        boolean z5 = i4 != 0 || isOpaque();
        boolean z6 = attachInfo != null && attachInfo.mUse32BitDrawingCache;
        long j2 = i2 * i3 * ((!z5 || z6) ? 4 : 2);
        long scaledMaximumDrawingCacheSize = ViewConfiguration.get(this.mContext).getScaledMaximumDrawingCacheSize();
        if (i2 <= 0 || i3 <= 0 || j2 > scaledMaximumDrawingCacheSize) {
            if (i2 > 0 && i3 > 0) {
                Log.w(VIEW_LOG_TAG, "View too large to fit into drawing cache, needs " + j2 + " bytes, only " + scaledMaximumDrawingCacheSize + " available");
            }
            destroyDrawingCache();
            this.mCachingFailed = true;
            return;
        }
        Bitmap bitmapCreateBitmap = z2 ? this.mDrawingCache : this.mUnscaledDrawingCache;
        if (bitmapCreateBitmap == null || bitmapCreateBitmap.getWidth() != i2 || bitmapCreateBitmap.getHeight() != i3) {
            Bitmap.Config config = (z5 && !z6) ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
            if (bitmapCreateBitmap != null) {
                bitmapCreateBitmap.recycle();
            }
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(this.mResources.getDisplayMetrics(), i2, i3, config);
                bitmapCreateBitmap.setDensity(getResources().getDisplayMetrics().densityDpi);
                if (z2) {
                    this.mDrawingCache = bitmapCreateBitmap;
                } else {
                    this.mUnscaledDrawingCache = bitmapCreateBitmap;
                }
                if (z5 && z6) {
                    bitmapCreateBitmap.setHasAlpha(false);
                }
                z3 = i4 != 0;
            } catch (OutOfMemoryError unused) {
                if (z2) {
                    this.mDrawingCache = null;
                } else {
                    this.mUnscaledDrawingCache = null;
                }
                this.mCachingFailed = true;
                return;
            }
        }
        if (attachInfo != null) {
            canvas = attachInfo.mCanvas;
            if (canvas == null) {
                canvas = new Canvas();
            }
            canvas.setBitmap(bitmapCreateBitmap);
            attachInfo.mCanvas = null;
        } else {
            canvas = new Canvas(bitmapCreateBitmap);
        }
        if (z3) {
            bitmapCreateBitmap.eraseColor(i4);
        }
        computeScroll();
        int iSave = canvas.save();
        if (z2 && z4) {
            float f3 = attachInfo.mApplicationScale;
            canvas.scale(f3, f3);
        }
        canvas.translate(-this.mScrollX, -this.mScrollY);
        int i5 = this.mPrivateFlags | 32;
        this.mPrivateFlags = i5;
        AttachInfo attachInfo2 = this.mAttachInfo;
        if (attachInfo2 == null || !attachInfo2.mHardwareAccelerated || this.mLayerType != 0) {
            this.mPrivateFlags = 32768 | i5;
        }
        int i6 = this.mPrivateFlags;
        if ((i6 & 128) == 128) {
            this.mPrivateFlags = i6 & (-6291457);
            dispatchDraw(canvas);
            ViewOverlay viewOverlay = this.mOverlay;
            if (viewOverlay != null && !viewOverlay.isEmpty()) {
                this.mOverlay.getOverlayView().draw(canvas);
            }
        } else {
            draw(canvas);
        }
        canvas.restoreToCount(iSave);
        canvas.setBitmap(null);
        if (attachInfo != null) {
            attachInfo.mCanvas = canvas;
        }
    }

    public void debug(int i2) {
        String strDebug;
        String str = debugIndent(i2 - 1) + "+ " + this;
        int id = getId();
        if (id != -1) {
            str = str + " (id=" + id + ")";
        }
        Object tag = getTag();
        if (tag != null) {
            str = str + " (tag=" + tag + ")";
        }
        Log.d(VIEW_LOG_TAG, str);
        if ((this.mPrivateFlags & 2) != 0) {
            Log.d(VIEW_LOG_TAG, debugIndent(i2) + " FOCUSED");
        }
        Log.d(VIEW_LOG_TAG, debugIndent(i2) + "frame={" + this.mLeft + ", " + this.mTop + ", " + this.mRight + ", " + this.mBottom + "} scroll={" + this.mScrollX + ", " + this.mScrollY + "} ");
        if (this.mPaddingLeft != 0 || this.mPaddingTop != 0 || this.mPaddingRight != 0 || this.mPaddingBottom != 0) {
            Log.d(VIEW_LOG_TAG, debugIndent(i2) + "padding={" + this.mPaddingLeft + ", " + this.mPaddingTop + ", " + this.mPaddingRight + ", " + this.mPaddingBottom + "}");
        }
        Log.d(VIEW_LOG_TAG, debugIndent(i2) + "mMeasureWidth=" + this.mMeasuredWidth + " mMeasureHeight=" + this.mMeasuredHeight);
        String strDebugIndent = debugIndent(i2);
        ViewGroup.LayoutParams layoutParams = this.mLayoutParams;
        if (layoutParams == null) {
            strDebug = strDebugIndent + "BAD! no layout params";
        } else {
            strDebug = layoutParams.debug(strDebugIndent);
        }
        Log.d(VIEW_LOG_TAG, strDebug);
        Log.d(VIEW_LOG_TAG, ((debugIndent(i2) + "flags={") + printFlags(this.mViewFlags)) + "}");
        Log.d(VIEW_LOG_TAG, ((debugIndent(i2) + "privateFlags={") + printPrivateFlags(this.mPrivateFlags)) + "}");
    }

    public Bitmap getDrawingCache(boolean z2) {
        int i2 = this.mViewFlags;
        if ((i2 & 131072) == 131072) {
            return null;
        }
        if ((i2 & 32768) == 32768) {
            buildDrawingCache(z2);
        }
        return z2 ? this.mDrawingCache : this.mUnscaledDrawingCache;
    }

    public Object getTag(int i2) {
        SparseArray<Object> sparseArray = this.mKeyedTags;
        if (sparseArray != null) {
            return sparseArray.get(i2);
        }
        return null;
    }

    public boolean isVisibleToUser(Rect rect) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mWindowVisibility != 0) {
            return false;
        }
        Object obj = this;
        while (obj instanceof View) {
            View view = (View) obj;
            if (view.getAlpha() <= 0.0f || view.getTransitionAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            obj = view.mParent;
        }
        AttachInfo attachInfo2 = this.mAttachInfo;
        Rect rect2 = attachInfo2.mTmpInvalRect;
        Point point = attachInfo2.mPoint;
        if (!getGlobalVisibleRect(rect2, point)) {
            return false;
        }
        if (rect == null) {
            return true;
        }
        rect2.offset(-point.f137x, -point.f138y);
        return rect.intersect(rect2);
    }

    public boolean performHapticFeedback(int i2, int i3) {
        if (this.mAttachInfo == null) {
            return false;
        }
        if ((i3 & 1) != 0 || isHapticFeedbackEnabled()) {
            return this.mAttachInfo.mRootCallbacks.performHapticFeedback(i2, (i3 & 2) != 0);
        }
        return false;
    }

    public boolean pointInView(float f2, float f3, float f4) {
        float f5 = -f4;
        return f2 >= f5 && f3 >= f5 && f2 < ((float) (this.mRight - this.mLeft)) + f4 && f3 < ((float) (this.mBottom - this.mTop)) + f4;
    }

    public void postInvalidate(int i2, int i3, int i4, int i5) {
        postInvalidateDelayed(0L, i2, i3, i4, i5);
    }

    public final boolean requestFocus(int i2) {
        return requestFocus(i2, null);
    }

    public boolean requestRectangleOnScreen(Rect rect, boolean z2) {
        boolean zRequestChildRectangleOnScreen = false;
        if (this.mParent == null) {
            return false;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        RectF rectF = attachInfo != null ? attachInfo.mTmpTransformRect : new RectF();
        rectF.set(rect);
        ViewParent parent = this.mParent;
        View view = this;
        while (parent != null) {
            rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            zRequestChildRectangleOnScreen |= parent.requestChildRectangleOnScreen(view, rect, z2);
            if (!view.hasIdentityMatrix()) {
                view.getMatrix().mapRect(rectF);
            }
            rectF.offset(view.mLeft, view.mTop);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
            rectF.offset(-view.getScrollX(), -view.getScrollY());
            parent = view.getParent();
        }
        return zRequestChildRectangleOnScreen;
    }

    public void setTag(int i2, Object obj) {
        if ((i2 >>> 24) < 2) {
            throw new IllegalArgumentException("The key must be an application-specific resource id.");
        }
        setKeyedTag(i2, obj);
    }

    public boolean showContextMenu(float f2, float f3, int i2) {
        return showContextMenu();
    }

    public boolean awakenScrollBars(int i2, boolean z2) {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache == null || !scrollabilityCache.fadeScrollBars) {
            return false;
        }
        if (scrollabilityCache.scrollBar == null) {
            scrollabilityCache.scrollBar = new ScrollBarDrawable();
        }
        if (!isHorizontalScrollBarEnabled() && !isVerticalScrollBarEnabled()) {
            return false;
        }
        if (z2) {
            postInvalidateOnAnimation();
        }
        if (scrollabilityCache.state == 0) {
            i2 = Math.max(750, i2);
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() + ((long) i2);
        scrollabilityCache.fadeStartTime = jCurrentAnimationTimeMillis;
        scrollabilityCache.state = 1;
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mHandler.removeCallbacks(scrollabilityCache);
            this.mAttachInfo.mHandler.postAtTime(scrollabilityCache, jCurrentAnimationTimeMillis);
        }
        return true;
    }

    public void postInvalidateDelayed(long j2, int i2, int i3, int i4, int i5) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            AttachInfo.InvalidateInfo invalidateInfoObtain = AttachInfo.InvalidateInfo.obtain();
            invalidateInfoObtain.target = this;
            invalidateInfoObtain.left = i2;
            invalidateInfoObtain.top = i3;
            invalidateInfoObtain.right = i4;
            invalidateInfoObtain.bottom = i5;
            attachInfo.mViewRootImpl.dispatchInvalidateRectDelayed(invalidateInfoObtain, j2);
        }
    }

    public void postInvalidateOnAnimation(int i2, int i3, int i4, int i5) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            AttachInfo.InvalidateInfo invalidateInfoObtain = AttachInfo.InvalidateInfo.obtain();
            invalidateInfoObtain.target = this;
            invalidateInfoObtain.left = i2;
            invalidateInfoObtain.top = i3;
            invalidateInfoObtain.right = i4;
            invalidateInfoObtain.bottom = i5;
            attachInfo.mViewRootImpl.dispatchInvalidateRectOnAnimation(invalidateInfoObtain);
        }
    }

    public boolean requestFocus(int i2, Rect rect) {
        return requestFocusNoSearch(i2, rect);
    }

    public void unscheduleDrawable(Drawable drawable) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || drawable == null) {
            return;
        }
        attachInfo.mViewRootImpl.mChoreographer.removeCallbacks(1, null, drawable);
    }

    public final boolean getGlobalVisibleRect(Rect rect) {
        return getGlobalVisibleRect(rect, null);
    }

    public void invalidate(int i2, int i3, int i4, int i5) {
        if (skipInvalidate()) {
            return;
        }
        int i6 = this.mPrivateFlags;
        if ((i6 & 48) == 48 || (i6 & 32768) == 32768 || (i6 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            int i7 = i6 & (-32769);
            this.mPrivateFlags = i7;
            int i8 = i7 | Integer.MIN_VALUE;
            this.mPrivateFlags = i8;
            this.mPrivateFlags = i8 | 2097152;
            ViewParent viewParent = this.mParent;
            AttachInfo attachInfo = this.mAttachInfo;
            if (viewParent == null || attachInfo == null || i2 >= i4 || i3 >= i5) {
                return;
            }
            int i9 = this.mScrollX;
            int i10 = this.mScrollY;
            Rect rect = attachInfo.mTmpInvalRect;
            rect.set(i2 - i9, i3 - i10, i4 - i9, i5 - i10);
            viewParent.invalidateChild(this, rect);
        }
    }

    public void invalidate() {
        invalidate(true);
    }

    public void invalidate(boolean z2) {
        if (skipInvalidate()) {
            return;
        }
        int i2 = this.mPrivateFlags;
        if ((i2 & 48) == 48 || !((!z2 || (i2 & 32768) != 32768) && (i2 & Integer.MIN_VALUE) == Integer.MIN_VALUE && isOpaque() == this.mLastIsOpaque)) {
            this.mLastIsOpaque = isOpaque();
            int i3 = this.mPrivateFlags & (-33);
            this.mPrivateFlags = i3;
            int i4 = i3 | 2097152;
            this.mPrivateFlags = i4;
            if (z2) {
                int i5 = i4 | Integer.MIN_VALUE;
                this.mPrivateFlags = i5;
                this.mPrivateFlags = i5 & (-32769);
            }
            AttachInfo attachInfo = this.mAttachInfo;
            ViewParent viewParent = this.mParent;
            if (viewParent == null || attachInfo == null) {
                return;
            }
            Rect rect = attachInfo.mTmpInvalRect;
            rect.set(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            viewParent.invalidateChild(this, rect);
        }
    }

    public DisplayList getDisplayList() {
        DisplayList displayList = getDisplayList(this.mDisplayList, false);
        this.mDisplayList = displayList;
        return displayList;
    }

    public View(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:127:0x0379 A[PHI: r7 r9 r27 r28 r39
  0x0379: PHI (r7v70 int) = 
  (r7v3 int)
  (r7v5 int)
  (r7v6 int)
  (r7v15 int)
  (r7v17 int)
  (r7v18 int)
  (r7v20 int)
  (r7v22 int)
  (r7v23 int)
  (r7v24 int)
  (r7v25 int)
  (r7v26 int)
  (r7v27 int)
  (r7v28 int)
  (r7v29 int)
  (r7v31 int)
  (r7v32 int)
  (r7v33 int)
  (r7v35 int)
  (r7v36 int)
  (r7v37 int)
  (r7v38 int)
  (r7v42 int)
  (r7v43 int)
  (r7v45 int)
  (r7v47 int)
  (r7v47 int)
  (r7v48 int)
  (r7v64 int)
  (r7v71 int)
 binds: [B:124:0x036f, B:122:0x035c, B:121:0x0351, B:111:0x02e8, B:107:0x02d8, B:104:0x02c5, B:101:0x02b5, B:98:0x02a4, B:99:0x02a6, B:91:0x0288, B:89:0x0276, B:88:0x026a, B:87:0x025e, B:86:0x0252, B:84:0x024b, B:81:0x023d, B:78:0x022f, B:75:0x021c, B:72:0x020e, B:70:0x01fa, B:69:0x01ee, B:67:0x01e4, B:64:0x01d6, B:62:0x01ca, B:57:0x01b3, B:52:0x0197, B:53:0x0199, B:48:0x017c, B:94:0x0290, B:7:0x0060] A[DONT_GENERATE, DONT_INLINE]
  0x0379: PHI (r9v60 int) = 
  (r9v3 int)
  (r9v4 int)
  (r9v5 int)
  (r9v14 int)
  (r9v15 int)
  (r9v16 int)
  (r9v17 int)
  (r9v18 int)
  (r9v19 int)
  (r9v20 int)
  (r9v21 int)
  (r9v22 int)
  (r9v23 int)
  (r9v24 int)
  (r9v25 int)
  (r9v26 int)
  (r9v27 int)
  (r9v28 int)
  (r9v29 int)
  (r9v30 int)
  (r9v31 int)
  (r9v32 int)
  (r9v34 int)
  (r9v35 int)
  (r9v37 int)
  (r9v38 int)
  (r9v38 int)
  (r9v39 int)
  (r9v52 int)
  (r9v61 int)
 binds: [B:124:0x036f, B:122:0x035c, B:121:0x0351, B:111:0x02e8, B:107:0x02d8, B:104:0x02c5, B:101:0x02b5, B:98:0x02a4, B:99:0x02a6, B:91:0x0288, B:89:0x0276, B:88:0x026a, B:87:0x025e, B:86:0x0252, B:84:0x024b, B:81:0x023d, B:78:0x022f, B:75:0x021c, B:72:0x020e, B:70:0x01fa, B:69:0x01ee, B:67:0x01e4, B:64:0x01d6, B:62:0x01ca, B:57:0x01b3, B:52:0x0197, B:53:0x0199, B:48:0x017c, B:94:0x0290, B:7:0x0060] A[DONT_GENERATE, DONT_INLINE]
  0x0379: PHI (r27v4 boolean) = 
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v2 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
  (r27v1 boolean)
 binds: [B:124:0x036f, B:122:0x035c, B:121:0x0351, B:111:0x02e8, B:107:0x02d8, B:104:0x02c5, B:101:0x02b5, B:98:0x02a4, B:99:0x02a6, B:91:0x0288, B:89:0x0276, B:88:0x026a, B:87:0x025e, B:86:0x0252, B:84:0x024b, B:81:0x023d, B:78:0x022f, B:75:0x021c, B:72:0x020e, B:70:0x01fa, B:69:0x01ee, B:67:0x01e4, B:64:0x01d6, B:62:0x01ca, B:57:0x01b3, B:52:0x0197, B:53:0x0199, B:48:0x017c, B:94:0x0290, B:7:0x0060] A[DONT_GENERATE, DONT_INLINE]
  0x0379: PHI (r28v5 int) = 
  (r28v2 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
  (r28v1 int)
 binds: [B:124:0x036f, B:122:0x035c, B:121:0x0351, B:111:0x02e8, B:107:0x02d8, B:104:0x02c5, B:101:0x02b5, B:98:0x02a4, B:99:0x02a6, B:91:0x0288, B:89:0x0276, B:88:0x026a, B:87:0x025e, B:86:0x0252, B:84:0x024b, B:81:0x023d, B:78:0x022f, B:75:0x021c, B:72:0x020e, B:70:0x01fa, B:69:0x01ee, B:67:0x01e4, B:64:0x01d6, B:62:0x01ca, B:57:0x01b3, B:52:0x0197, B:53:0x0199, B:48:0x017c, B:94:0x0290, B:7:0x0060] A[DONT_GENERATE, DONT_INLINE]
  0x0379: PHI (r39v4 boolean) = 
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v2 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
  (r39v1 boolean)
 binds: [B:124:0x036f, B:122:0x035c, B:121:0x0351, B:111:0x02e8, B:107:0x02d8, B:104:0x02c5, B:101:0x02b5, B:98:0x02a4, B:99:0x02a6, B:91:0x0288, B:89:0x0276, B:88:0x026a, B:87:0x025e, B:86:0x0252, B:84:0x024b, B:81:0x023d, B:78:0x022f, B:75:0x021c, B:72:0x020e, B:70:0x01fa, B:69:0x01ee, B:67:0x01e4, B:64:0x01d6, B:62:0x01ca, B:57:0x01b3, B:52:0x0197, B:53:0x0199, B:48:0x017c, B:94:0x0290, B:7:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0060  */
    /* JADX WARN: Code duplicated, block: B:95:0x0292  */
    public View(Context context, AttributeSet attributeSet, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        this(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.View, i2, 0);
        int i10 = this.mOverScrollMode;
        int i11 = context.getApplicationInfo().targetSdkVersion;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        Paint paint = null;
        int i12 = Integer.MIN_VALUE;
        int i13 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i14 = 0;
        int i15 = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int i16 = 0;
        int dimensionPixelOffset = 0;
        int dimensionPixelOffset2 = 0;
        boolean z7 = false;
        boolean z8 = false;
        Drawable drawable = null;
        int dimensionPixelSize = Integer.MIN_VALUE;
        int dimensionPixelSize2 = Integer.MIN_VALUE;
        int i17 = -1;
        int i18 = -1;
        int i19 = -1;
        int dimensionPixelSize3 = -1;
        int dimensionPixelSize4 = -1;
        float dimensionPixelOffset3 = 0.0f;
        float dimensionPixelOffset4 = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 1.0f;
        float f6 = 1.0f;
        while (i13 < indexCount) {
            int index = typedArrayObtainStyledAttributes.getIndex(i13);
            switch (index) {
                case 7:
                    i5 = i14;
                    i6 = i15;
                    i16 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i16 != 0) {
                        i7 = 50331648;
                        i5 |= i16 & 50331648;
                        i15 = i6 | i7;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 8:
                    i5 = i14;
                    i6 = i15;
                    this.mID = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 9:
                    i5 = i14;
                    i6 = i15;
                    this.mTag = typedArrayObtainStyledAttributes.getText(index);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 10:
                    i5 = i14;
                    dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 11:
                    i5 = i14;
                    dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 12:
                    i5 = i14;
                    drawable = typedArrayObtainStyledAttributes.getDrawable(index);
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 13:
                    i5 = i14;
                    int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    this.mUserPaddingLeftInitial = dimensionPixelSize5;
                    this.mUserPaddingRightInitial = dimensionPixelSize5;
                    z2 = true;
                    z3 = true;
                    i17 = dimensionPixelSize5;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 14:
                    i5 = i14;
                    int dimensionPixelSize6 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    this.mUserPaddingLeftInitial = dimensionPixelSize6;
                    z3 = true;
                    i18 = dimensionPixelSize6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 15:
                    i5 = i14;
                    dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 16:
                    i5 = i14;
                    int dimensionPixelSize7 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    this.mUserPaddingRightInitial = dimensionPixelSize7;
                    z2 = true;
                    i19 = dimensionPixelSize7;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 17:
                    i5 = i14;
                    dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 18:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i5 |= 1;
                        i15 = i6 | 1;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 19:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i7 = 262145;
                        i5 |= i7;
                        i15 = i6 | i7;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 20:
                    i5 = i14;
                    i6 = i15;
                    int i20 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i20 != 0) {
                        i5 |= VISIBILITY_FLAGS[i20];
                        i15 = i6 | 12;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 21:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i5 |= 2;
                        i15 = i6 | 2;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 22:
                    i5 = i14;
                    i6 = i15;
                    int i21 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i21 != 0) {
                        i5 |= i21;
                        i6 |= 768;
                        z6 = true;
                    }
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 23:
                    i5 = i14;
                    i6 = i15;
                    if (i11 < 14) {
                        i9 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        if (i9 != 0) {
                            i5 |= i9;
                            i8 = i6 | 12288;
                            initializeFadingEdge(typedArrayObtainStyledAttributes);
                            i15 = i8;
                        }
                        i13++;
                        i14 = i5;
                        paint = null;
                        i12 = Integer.MIN_VALUE;
                    }
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 24:
                case 42:
                case 43:
                case 44:
                default:
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 25:
                    i5 = i14;
                    i6 = i15;
                    this.mNextFocusLeftId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 26:
                    i5 = i14;
                    i6 = i15;
                    this.mNextFocusRightId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 27:
                    i5 = i14;
                    i6 = i15;
                    this.mNextFocusUpId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 28:
                    i5 = i14;
                    i6 = i15;
                    this.mNextFocusDownId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 29:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i5 |= 16384;
                        i8 = i6 | 16384;
                        i15 = i8;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 30:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i7 = 2097152;
                        i5 |= i7;
                        i15 = i6 | i7;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 31:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, true)) {
                        i15 = i6;
                    } else {
                        i7 = 65536;
                        i5 |= i7;
                        i15 = i6 | i7;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 32:
                    i5 = i14;
                    i6 = i15;
                    int i22 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i22 != 0) {
                        i5 |= DRAWING_CACHE_QUALITY_FLAGS[i22];
                        i7 = DRAWING_CACHE_QUALITY_MASK;
                        i15 = i6 | i7;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 33:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i7 = 4194304;
                        i5 |= i7;
                        i15 = i6 | i7;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 34:
                    i5 = i14;
                    i6 = i15;
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 35:
                    i5 = i14;
                    i6 = i15;
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 36:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, true)) {
                        i15 = i6;
                    } else {
                        i5 &= -134217729;
                        i7 = 134217728;
                        i15 = i6 | i7;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 37:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i7 = 67108864;
                        i5 |= i7;
                        i15 = i6 | i7;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 38:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        setScrollContainer(true);
                    }
                    z8 = true;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 39:
                    i5 = i14;
                    i6 = i15;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, true)) {
                        i15 = i6;
                    } else {
                        i5 &= -268435457;
                        i7 = 268435456;
                        i15 = i6 | i7;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 40:
                    i5 = i14;
                    i6 = i15;
                    if (!context.isRestricted()) {
                        final String string = typedArrayObtainStyledAttributes.getString(index);
                        if (string != null) {
                            setOnClickListener(new OnClickListener() { // from class: android.view.View.1
                                private Method mHandler;

                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    String str;
                                    if (this.mHandler == null) {
                                        try {
                                            this.mHandler = View.this.getContext().getClass().getMethod(string, View.class);
                                        } catch (NoSuchMethodException e2) {
                                            int id = View.this.getId();
                                            if (id == -1) {
                                                str = ProxyProperties.LOCAL_EXCL_LIST;
                                            } else {
                                                str = " with id '" + View.this.getContext().getResources().getResourceEntryName(id) + "'";
                                            }
                                            throw new IllegalStateException("Could not find a method " + string + "(View) in the activity " + View.this.getContext().getClass() + " for onClick handler on view " + View.this.getClass() + str, e2);
                                        }
                                    }
                                    try {
                                        this.mHandler.invoke(View.this.getContext(), View.this);
                                    } catch (IllegalAccessException e3) {
                                        throw new IllegalStateException("Could not execute non public method of the activity", e3);
                                    } catch (InvocationTargetException e4) {
                                        throw new IllegalStateException("Could not execute method of the activity", e4);
                                    }
                                }
                            });
                        }
                        i15 = i6;
                        i13++;
                        i14 = i5;
                        paint = null;
                        i12 = Integer.MIN_VALUE;
                    } else {
                        throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                    }
                    break;
                case 41:
                    i5 = i14;
                    i6 = i15;
                    setContentDescription(typedArrayObtainStyledAttributes.getString(index));
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 45:
                    i5 = i14;
                    i10 = typedArrayObtainStyledAttributes.getInt(index, 1);
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 46:
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i5 = i14 | 1024;
                        i15 |= 1024;
                    } else {
                        i5 = i14;
                        i6 = i15;
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 47:
                    setAlpha(typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 48:
                    setPivotX(typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 49:
                    setPivotY(typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0));
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 50:
                    dimensionPixelOffset3 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    z7 = true;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 51:
                    dimensionPixelOffset4 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    z7 = true;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 52:
                    f5 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    z7 = true;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 53:
                    f6 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    z7 = true;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 54:
                    f2 = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    z7 = true;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 55:
                    f3 = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    z7 = true;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 56:
                    f4 = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    z7 = true;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 57:
                    this.mVerticalScrollbarPosition = typedArrayObtainStyledAttributes.getInt(index, 0);
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 58:
                    this.mNextFocusForwardId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 59:
                    setLayerType(typedArrayObtainStyledAttributes.getInt(index, 0), paint);
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 60:
                    i5 = i14;
                    i6 = i15;
                    i9 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i9 != 0) {
                        i5 |= i9;
                        i8 = i6 | 12288;
                        initializeFadingEdge(typedArrayObtainStyledAttributes);
                        i15 = i8;
                    } else {
                        i15 = i6;
                    }
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 61:
                    setImportantForAccessibility(typedArrayObtainStyledAttributes.getInt(index, 0));
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 62:
                    this.mPrivateFlags2 &= -449;
                    int i23 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    if (i23 != -1) {
                        this.mPrivateFlags2 = PFLAG2_TEXT_DIRECTION_FLAGS[i23] | this.mPrivateFlags2;
                    }
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 63:
                    this.mPrivateFlags2 &= -57345;
                    this.mPrivateFlags2 = PFLAG2_TEXT_ALIGNMENT_FLAGS[typedArrayObtainStyledAttributes.getInt(index, 1)] | this.mPrivateFlags2;
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 64:
                    this.mPrivateFlags2 &= -61;
                    int i24 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    this.mPrivateFlags2 = ((i24 != -1 ? LAYOUT_DIRECTION_FLAGS[i24] : 2) << 2) | this.mPrivateFlags2;
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 65:
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, i12);
                    z4 = dimensionPixelSize != i12;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 66:
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, i12);
                    z5 = dimensionPixelSize2 != i12;
                    i5 = i14;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 67:
                    setLabelFor(typedArrayObtainStyledAttributes.getResourceId(index, -1));
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
                case 68:
                    setAccessibilityLiveRegion(typedArrayObtainStyledAttributes.getInt(index, 0));
                    i5 = i14;
                    i6 = i15;
                    i15 = i6;
                    i13++;
                    i14 = i5;
                    paint = null;
                    i12 = Integer.MIN_VALUE;
                    break;
            }
        }
        int i25 = i14;
        int i26 = i15;
        setOverScrollMode(i10);
        this.mUserPaddingStart = dimensionPixelSize;
        this.mUserPaddingEnd = dimensionPixelSize2;
        if (drawable != null) {
            setBackground(drawable);
        }
        this.mLeftPaddingDefined = z3;
        this.mRightPaddingDefined = z2;
        int i27 = i17;
        if (i27 >= 0) {
            this.mUserPaddingLeftInitial = i27;
            this.mUserPaddingRightInitial = i27;
            i3 = i27;
            i4 = i3;
            dimensionPixelSize4 = i4;
        } else {
            i27 = i18;
            i3 = i19;
            i4 = dimensionPixelSize3;
        }
        if (isRtlCompatibilityMode()) {
            dimensionPixelSize = (this.mLeftPaddingDefined || !z4) ? i27 : dimensionPixelSize;
            this.mUserPaddingLeftInitial = dimensionPixelSize < 0 ? this.mUserPaddingLeftInitial : dimensionPixelSize;
            dimensionPixelSize2 = (this.mRightPaddingDefined || !z5) ? i3 : dimensionPixelSize2;
            this.mUserPaddingRightInitial = dimensionPixelSize2 < 0 ? this.mUserPaddingRightInitial : dimensionPixelSize2;
        } else {
            boolean z9 = z4 || z5;
            if (this.mLeftPaddingDefined && !z9) {
                this.mUserPaddingLeftInitial = i27;
            }
            if (this.mRightPaddingDefined && !z9) {
                this.mUserPaddingRightInitial = i3;
            }
        }
        internalSetPadding(this.mUserPaddingLeftInitial, i4 >= 0 ? i4 : this.mPaddingTop, this.mUserPaddingRightInitial, dimensionPixelSize4 >= 0 ? dimensionPixelSize4 : this.mPaddingBottom);
        if (i26 != 0) {
            setFlags(i25, i26);
        }
        if (z6) {
            initializeScrollbars(typedArrayObtainStyledAttributes);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i16 != 0) {
            recomputePadding();
        }
        int i28 = dimensionPixelOffset;
        int i29 = dimensionPixelOffset2;
        if (i28 != 0 || i29 != 0) {
            scrollTo(i28, i29);
        }
        if (z7) {
            setTranslationX(dimensionPixelOffset3);
            setTranslationY(dimensionPixelOffset4);
            setRotation(f2);
            setRotationX(f3);
            setRotationY(f4);
            setScaleX(f5);
            setScaleY(f6);
        }
        if (!z8 && (i25 & 512) != 0) {
            setScrollContainer(true);
        }
        computeOpaqueFlags();
    }

    public void draw(Canvas canvas) {
        float f2;
        float f3;
        boolean z2;
        boolean z3;
        float f4;
        float f5;
        boolean z4;
        boolean z5;
        int i2;
        Drawable drawable;
        AttachInfo attachInfo;
        Rect rect = this.mClipBounds;
        if (rect != null) {
            canvas.clipRect(rect);
        }
        int i3 = this.mPrivateFlags;
        boolean z6 = (6291456 & i3) == 4194304 && ((attachInfo = this.mAttachInfo) == null || !attachInfo.mIgnoreDirtyState);
        this.mPrivateFlags = (i3 & (-6291457)) | 32;
        if (!z6 && (drawable = this.mBackground) != null) {
            int i4 = this.mScrollX;
            int i5 = this.mScrollY;
            if (this.mBackgroundSizeChanged) {
                drawable.setBounds(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
                this.mBackgroundSizeChanged = false;
            }
            if ((i4 | i5) == 0) {
                drawable.draw(canvas);
            } else {
                canvas.translate(i4, i5);
                drawable.draw(canvas);
                canvas.translate(-i4, -i5);
            }
        }
        int i6 = this.mViewFlags;
        boolean z7 = (i6 & 4096) != 0;
        boolean z8 = (i6 & 8192) != 0;
        if (!z8 && !z7) {
            if (!z6) {
                onDraw(canvas);
            }
            dispatchDraw(canvas);
            onDrawScrollBars(canvas);
            ViewOverlay viewOverlay = this.mOverlay;
            if (viewOverlay == null || viewOverlay.isEmpty()) {
                return;
            }
            this.mOverlay.getOverlayView().dispatchDraw(canvas);
            return;
        }
        int leftPaddingOffset = this.mPaddingLeft;
        boolean zIsPaddingOffsetRequired = isPaddingOffsetRequired();
        if (zIsPaddingOffsetRequired) {
            leftPaddingOffset += getLeftPaddingOffset();
        }
        int i7 = this.mScrollX + leftPaddingOffset;
        int rightPaddingOffset = (((this.mRight + i7) - this.mLeft) - this.mPaddingRight) - leftPaddingOffset;
        int fadeTop = getFadeTop(zIsPaddingOffsetRequired) + this.mScrollY;
        int fadeHeight = getFadeHeight(zIsPaddingOffsetRequired) + fadeTop;
        if (zIsPaddingOffsetRequired) {
            rightPaddingOffset += getRightPaddingOffset();
            fadeHeight += getBottomPaddingOffset();
        }
        int i8 = fadeHeight;
        int i9 = rightPaddingOffset;
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        float f6 = scrollabilityCache.fadingEdgeLength;
        int i10 = (int) f6;
        if (z8 && fadeTop + i10 > i8 - i10) {
            i10 = (i8 - fadeTop) / 2;
        }
        if (z7 && i7 + i10 > i9 - i10) {
            i10 = (i9 - i7) / 2;
        }
        int i11 = i10;
        float f7 = 1.0f;
        if (z8) {
            float fMax = Math.max(0.0f, Math.min(1.0f, getTopFadingEdgeStrength()));
            boolean z9 = fMax * f6 > 1.0f;
            float fMax2 = Math.max(0.0f, Math.min(1.0f, getBottomFadingEdgeStrength()));
            f3 = fMax2;
            z2 = z9;
            z3 = fMax2 * f6 > 1.0f;
            f2 = fMax;
        } else {
            f2 = 0.0f;
            f3 = 0.0f;
            z2 = false;
            z3 = false;
        }
        if (z7) {
            float fMax3 = Math.max(0.0f, Math.min(1.0f, getLeftFadingEdgeStrength()));
            boolean z10 = fMax3 * f6 > 1.0f;
            float fMax4 = Math.max(0.0f, Math.min(1.0f, getRightFadingEdgeStrength()));
            f4 = fMax3;
            z4 = z10;
            f5 = fMax4;
            z5 = fMax4 * f6 > 1.0f;
        } else {
            f4 = 0.0f;
            f5 = 0.0f;
            z4 = false;
            z5 = false;
        }
        int saveCount = canvas.getSaveCount();
        int solidColor = getSolidColor();
        if (solidColor == 0) {
            if (z2) {
                i2 = saveCount;
                canvas.saveLayer(i7, fadeTop, i9, fadeTop + i11, null, 4);
            } else {
                i2 = saveCount;
            }
            if (z3) {
                canvas.saveLayer(i7, i8 - i11, i9, i8, null, 4);
            }
            if (z4) {
                canvas.saveLayer(i7, fadeTop, i7 + i11, i8, null, 4);
            }
            if (z5) {
                canvas.saveLayer(i9 - i11, fadeTop, i9, i8, null, 4);
            }
        } else {
            i2 = saveCount;
            f7 = 1.0f;
            scrollabilityCache.setFadeColor(solidColor);
        }
        if (!z6) {
            onDraw(canvas);
        }
        dispatchDraw(canvas);
        Paint paint = scrollabilityCache.paint;
        Matrix matrix = scrollabilityCache.matrix;
        Shader shader = scrollabilityCache.shader;
        if (z2) {
            matrix.setScale(f7, f6 * f2);
            float f8 = i7;
            float f9 = fadeTop;
            matrix.postTranslate(f8, f9);
            shader.setLocalMatrix(matrix);
            canvas.drawRect(f8, f9, i9, fadeTop + i11, paint);
        }
        if (z3) {
            matrix.setScale(f7, f6 * f3);
            matrix.postRotate(180.0f);
            float f10 = i7;
            float f11 = i8;
            matrix.postTranslate(f10, f11);
            shader.setLocalMatrix(matrix);
            canvas.drawRect(f10, i8 - i11, i9, f11, paint);
        }
        if (z4) {
            matrix.setScale(f7, f6 * f4);
            matrix.postRotate(-90.0f);
            float f12 = i7;
            float f13 = fadeTop;
            matrix.postTranslate(f12, f13);
            shader.setLocalMatrix(matrix);
            canvas.drawRect(f12, f13, i7 + i11, i8, paint);
        }
        if (z5) {
            matrix.setScale(f7, f6 * f5);
            matrix.postRotate(90.0f);
            float f14 = i9;
            float f15 = fadeTop;
            matrix.postTranslate(f14, f15);
            shader.setLocalMatrix(matrix);
            canvas.drawRect(i9 - i11, f15, f14, i8, paint);
        }
        canvas.restoreToCount(i2);
        onDrawScrollBars(canvas);
        ViewOverlay viewOverlay2 = this.mOverlay;
        if (viewOverlay2 == null || viewOverlay2.isEmpty()) {
            return;
        }
        this.mOverlay.getOverlayView().dispatchDraw(canvas);
    }

    public View() {
        this.mCurrentAnimation = null;
        this.mRecreateDisplayList = false;
        this.mID = -1;
        this.mAccessibilityViewId = -1;
        this.mAccessibilityCursorPosition = -1;
        this.mTransientStateCount = 0;
        this.mClipBounds = null;
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mLabelForId = -1;
        this.mLeftPaddingDefined = false;
        this.mRightPaddingDefined = false;
        this.mOldWidthMeasureSpec = Integer.MIN_VALUE;
        this.mOldHeightMeasureSpec = Integer.MIN_VALUE;
        this.mDrawableState = null;
        this.mNextFocusLeftId = -1;
        this.mNextFocusRightId = -1;
        this.mNextFocusUpId = -1;
        this.mNextFocusDownId = -1;
        this.mNextFocusForwardId = -1;
        this.mPendingCheckForTap = null;
        this.mTouchDelegate = null;
        this.mDrawingCacheBackgroundColor = 0;
        this.mAnimator = null;
        this.mLayerType = 0;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mResources = null;
    }
}
