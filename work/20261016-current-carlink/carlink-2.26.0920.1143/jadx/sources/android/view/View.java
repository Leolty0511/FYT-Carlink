package android.view;

import android.animation.AnimatorInflater;
import android.animation.StateListAnimator;
import android.app.Instrumentation;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Interpolator;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
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
import android.media.TtmlUtils;
import android.net.wifi.WifiEnterpriseConfig;
import android.opengl.GLES10;
import android.os.BatteryStats;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.SettingsStringUtil;
import android.security.keystore.KeyProperties;
import android.service.notification.ZenModeConfig;
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
import android.util.StateSet;
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
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.ScrollBarDrawable;
import androidx.constraintlayout.motion.widget.Key;
import com.android.internal.R;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.view.TooltipPopup;
import com.android.internal.view.menu.MenuBuilder;
import com.android.internal.widget.ScrollBarUtils;
import com.google.android.collect.Lists;
import com.google.android.collect.Maps;
import com.google.android.material.badge.BadgeDrawable;
import com.google.common.base.Ascii;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class View implements Drawable.Callback, KeyEvent.Callback, AccessibilityEventSource {
    public static final int ACCESSIBILITY_CURSOR_POSITION_UNDEFINED = -1;
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    static final int ACCESSIBILITY_LIVE_REGION_DEFAULT = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    static final int ALL_RTL_PROPERTIES_RESOLVED = 1610678816;
    public static final int AUTOFILL_FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 1;
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DATE = "creditCardExpirationDate";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DAY = "creditCardExpirationDay";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_MONTH = "creditCardExpirationMonth";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_YEAR = "creditCardExpirationYear";
    public static final String AUTOFILL_HINT_CREDIT_CARD_NUMBER = "creditCardNumber";
    public static final String AUTOFILL_HINT_CREDIT_CARD_SECURITY_CODE = "creditCardSecurityCode";
    public static final String AUTOFILL_HINT_EMAIL_ADDRESS = "emailAddress";
    public static final String AUTOFILL_HINT_NAME = "name";
    public static final String AUTOFILL_HINT_PASSWORD = "password";
    public static final String AUTOFILL_HINT_PHONE = "phone";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS = "postalAddress";
    public static final String AUTOFILL_HINT_POSTAL_CODE = "postalCode";
    public static final String AUTOFILL_HINT_USERNAME = "username";
    public static final int AUTOFILL_TYPE_DATE = 4;
    public static final int AUTOFILL_TYPE_LIST = 3;
    public static final int AUTOFILL_TYPE_NONE = 0;
    public static final int AUTOFILL_TYPE_TEXT = 1;
    public static final int AUTOFILL_TYPE_TOGGLE = 2;
    static final int CLICKABLE = 16384;
    static final int CONTEXT_CLICKABLE = 8388608;
    private static final boolean DBG = false;
    static final int DEBUG_CORNERS_SIZE_DIP = 8;
    public static boolean DEBUG_DRAW = false;
    public static final String DEBUG_LAYOUT_PROPERTY = "debug.layout";
    static final int DISABLED = 32;
    public static final int DRAG_FLAG_GLOBAL = 256;
    public static final int DRAG_FLAG_GLOBAL_PERSISTABLE_URI_PERMISSION = 64;
    public static final int DRAG_FLAG_GLOBAL_PREFIX_URI_PERMISSION = 128;
    public static final int DRAG_FLAG_GLOBAL_URI_READ = 1;
    public static final int DRAG_FLAG_GLOBAL_URI_WRITE = 2;
    public static final int DRAG_FLAG_OPAQUE = 512;
    static final int DRAG_MASK = 3;
    static final int DRAWING_CACHE_ENABLED = 32768;
    public static final int DRAWING_CACHE_QUALITY_AUTO = 0;
    public static final int DRAWING_CACHE_QUALITY_HIGH = 1048576;
    public static final int DRAWING_CACHE_QUALITY_LOW = 524288;
    static final int DRAWING_CACHE_QUALITY_MASK = 1572864;
    static final int DRAW_MASK = 128;
    static final int DUPLICATE_PARENT_STATE = 4194304;
    static final int ENABLED = 0;
    static final int ENABLED_MASK = 32;
    static final int FADING_EDGE_HORIZONTAL = 4096;
    static final int FADING_EDGE_MASK = 12288;
    static final int FADING_EDGE_NONE = 0;
    static final int FADING_EDGE_VERTICAL = 8192;
    static final int FILTER_TOUCHES_WHEN_OBSCURED = 1024;
    public static final int FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS = 4;
    public static final int FIND_VIEWS_WITH_CONTENT_DESCRIPTION = 2;
    public static final int FIND_VIEWS_WITH_TEXT = 1;
    private static final int FITS_SYSTEM_WINDOWS = 2;
    public static final int FOCUSABLE = 1;
    public static final int FOCUSABLES_ALL = 0;
    public static final int FOCUSABLES_TOUCH_MODE = 1;
    public static final int FOCUSABLE_AUTO = 16;
    static final int FOCUSABLE_IN_TOUCH_MODE = 262144;
    private static final int FOCUSABLE_MASK = 17;
    public static final int FOCUS_BACKWARD = 1;
    public static final int FOCUS_DOWN = 130;
    public static final int FOCUS_FORWARD = 2;
    public static final int FOCUS_LEFT = 17;
    public static final int FOCUS_RIGHT = 66;
    public static final int FOCUS_UP = 33;
    public static final int GONE = 8;
    public static final int HAPTIC_FEEDBACK_ENABLED = 268435456;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    static final int IMPORTANT_FOR_ACCESSIBILITY_DEFAULT = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int IMPORTANT_FOR_AUTOFILL_AUTO = 0;
    public static final int IMPORTANT_FOR_AUTOFILL_NO = 2;
    public static final int IMPORTANT_FOR_AUTOFILL_NO_EXCLUDE_DESCENDANTS = 8;
    public static final int IMPORTANT_FOR_AUTOFILL_YES = 1;
    public static final int IMPORTANT_FOR_AUTOFILL_YES_EXCLUDE_DESCENDANTS = 4;
    public static final int INVISIBLE = 4;
    public static final int KEEP_SCREEN_ON = 67108864;
    public static final int LAST_APP_AUTOFILL_ID = 1073741823;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    private static final int LAYOUT_DIRECTION_DEFAULT = 2;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    static final int LAYOUT_DIRECTION_RESOLVED_DEFAULT = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int LAYOUT_DIRECTION_UNDEFINED = -1;
    static final int LONG_CLICKABLE = 2097152;
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    public static final int MEASURED_SIZE_MASK = 16777215;
    public static final int MEASURED_STATE_MASK = -16777216;
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    public static final int NAVIGATION_BAR_TRANSIENT = 134217728;
    public static final int NAVIGATION_BAR_TRANSLUCENT = Integer.MIN_VALUE;
    public static final int NAVIGATION_BAR_TRANSPARENT = 32768;
    public static final int NAVIGATION_BAR_UNHIDE = 536870912;
    public static final int NOT_FOCUSABLE = 0;
    public static final int NO_ID = -1;
    static final int OPTIONAL_FITS_SYSTEM_WINDOWS = 2048;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;
    static final int PARENT_SAVE_DISABLED = 536870912;
    static final int PARENT_SAVE_DISABLED_MASK = 536870912;
    static final int PFLAG2_ACCESSIBILITY_FOCUSED = 67108864;
    static final int PFLAG2_ACCESSIBILITY_LIVE_REGION_MASK = 25165824;
    static final int PFLAG2_ACCESSIBILITY_LIVE_REGION_SHIFT = 23;
    static final int PFLAG2_DRAG_CAN_ACCEPT = 1;
    static final int PFLAG2_DRAG_HOVERED = 2;
    static final int PFLAG2_DRAWABLE_RESOLVED = 1073741824;
    static final int PFLAG2_HAS_TRANSIENT_STATE = Integer.MIN_VALUE;
    static final int PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK = 7340032;
    static final int PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_SHIFT = 20;
    static final int PFLAG2_LAYOUT_DIRECTION_MASK = 12;
    static final int PFLAG2_LAYOUT_DIRECTION_MASK_SHIFT = 2;
    static final int PFLAG2_LAYOUT_DIRECTION_RESOLVED = 32;
    static final int PFLAG2_LAYOUT_DIRECTION_RESOLVED_MASK = 48;
    static final int PFLAG2_LAYOUT_DIRECTION_RESOLVED_RTL = 16;
    static final int PFLAG2_PADDING_RESOLVED = 536870912;
    static final int PFLAG2_SUBTREE_ACCESSIBILITY_STATE_CHANGED = 134217728;
    static final int PFLAG2_TEXT_ALIGNMENT_MASK = 57344;
    static final int PFLAG2_TEXT_ALIGNMENT_MASK_SHIFT = 13;
    static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED = 65536;
    private static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED_DEFAULT = 131072;
    static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK = 917504;
    static final int PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT = 17;
    static final int PFLAG2_TEXT_DIRECTION_MASK = 448;
    static final int PFLAG2_TEXT_DIRECTION_MASK_SHIFT = 6;
    static final int PFLAG2_TEXT_DIRECTION_RESOLVED = 512;
    static final int PFLAG2_TEXT_DIRECTION_RESOLVED_DEFAULT = 1024;
    static final int PFLAG2_TEXT_DIRECTION_RESOLVED_MASK = 7168;
    static final int PFLAG2_TEXT_DIRECTION_RESOLVED_MASK_SHIFT = 10;
    static final int PFLAG2_VIEW_QUICK_REJECTED = 268435456;
    static final int PFLAG3_APPLYING_INSETS = 32;
    static final int PFLAG3_ASSIST_BLOCKED = 16384;
    static final int PFLAG3_CALLED_SUPER = 16;
    private static final int PFLAG3_CLUSTER = 32768;
    private static final int PFLAG3_FINGER_DOWN = 131072;
    static final int PFLAG3_FITTING_SYSTEM_WINDOWS = 64;
    private static final int PFLAG3_FOCUSED_BY_DEFAULT = 262144;
    private static final int PFLAG3_HAS_OVERLAPPING_RENDERING_FORCED = 16777216;
    static final int PFLAG3_IMPORTANT_FOR_AUTOFILL_MASK = 7864320;
    static final int PFLAG3_IMPORTANT_FOR_AUTOFILL_SHIFT = 19;
    private static final int PFLAG3_IS_AUTOFILLED = 65536;
    static final int PFLAG3_IS_LAID_OUT = 4;
    static final int PFLAG3_MEASURE_NEEDED_BEFORE_LAYOUT = 8;
    static final int PFLAG3_NESTED_SCROLLING_ENABLED = 128;
    static final int PFLAG3_NOTIFY_AUTOFILL_ENTER_ON_LAYOUT = 134217728;
    private static final int PFLAG3_NO_REVEAL_ON_FOCUS = 67108864;
    private static final int PFLAG3_OVERLAPPING_RENDERING_FORCED_VALUE = 8388608;
    static final int PFLAG3_SCROLL_INDICATOR_BOTTOM = 512;
    static final int PFLAG3_SCROLL_INDICATOR_END = 8192;
    static final int PFLAG3_SCROLL_INDICATOR_LEFT = 1024;
    static final int PFLAG3_SCROLL_INDICATOR_RIGHT = 2048;
    static final int PFLAG3_SCROLL_INDICATOR_START = 4096;
    static final int PFLAG3_SCROLL_INDICATOR_TOP = 256;
    static final int PFLAG3_TEMPORARY_DETACH = 33554432;
    static final int PFLAG3_VIEW_IS_ANIMATING_ALPHA = 2;
    static final int PFLAG3_VIEW_IS_ANIMATING_TRANSFORM = 1;
    static final int PFLAG_ACTIVATED = 1073741824;
    static final int PFLAG_ALPHA_SET = 262144;
    static final int PFLAG_ANIMATION_STARTED = 65536;
    private static final int PFLAG_AWAKEN_SCROLL_BARS_ON_ATTACH = 134217728;
    static final int PFLAG_CANCEL_NEXT_UP_EVENT = 67108864;
    static final int PFLAG_DIRTY = 2097152;
    static final int PFLAG_DIRTY_MASK = 6291456;
    static final int PFLAG_DIRTY_OPAQUE = 4194304;
    private static final int PFLAG_DOES_NOTHING_REUSE_PLEASE = 536870912;
    static final int PFLAG_DRAWABLE_STATE_DIRTY = 1024;
    static final int PFLAG_DRAWING_CACHE_VALID = 32768;
    static final int PFLAG_DRAWN = 32;
    static final int PFLAG_DRAW_ANIMATION = 64;
    static final int PFLAG_FOCUSED = 2;
    static final int PFLAG_FORCE_LAYOUT = 4096;
    static final int PFLAG_HAS_BOUNDS = 16;
    private static final int PFLAG_HOVERED = 268435456;
    static final int PFLAG_INVALIDATED = Integer.MIN_VALUE;
    static final int PFLAG_IS_ROOT_NAMESPACE = 8;
    static final int PFLAG_LAYOUT_REQUIRED = 8192;
    static final int PFLAG_MEASURED_DIMENSION_SET = 2048;
    static final int PFLAG_OPAQUE_BACKGROUND = 8388608;
    static final int PFLAG_OPAQUE_MASK = 25165824;
    static final int PFLAG_OPAQUE_SCROLLBARS = 16777216;
    private static final int PFLAG_PREPRESSED = 33554432;
    private static final int PFLAG_PRESSED = 16384;
    static final int PFLAG_REQUEST_TRANSPARENT_REGIONS = 512;
    private static final int PFLAG_SAVE_STATE_CALLED = 131072;
    static final int PFLAG_SCROLL_CONTAINER = 524288;
    static final int PFLAG_SCROLL_CONTAINER_ADDED = 1048576;
    static final int PFLAG_SELECTED = 4;
    static final int PFLAG_SKIP_DRAW = 128;
    static final int PFLAG_WANTS_FOCUS = 1;
    private static final int POPULATING_ACCESSIBILITY_EVENT_TYPES = 172479;
    private static final String PROPERTY_PROFILE_DISPATCHINPUT = "persist.sys.dispatch_input";
    private static final int PROVIDER_BACKGROUND = 0;
    private static final int PROVIDER_BOUNDS = 2;
    private static final int PROVIDER_NONE = 1;
    private static final int PROVIDER_PADDED_BOUNDS = 3;
    public static final int PUBLIC_STATUS_BAR_VISIBILITY_MASK = 16375;
    static final int SAVE_DISABLED = 65536;
    static final int SAVE_DISABLED_MASK = 65536;
    public static final int SCREEN_STATE_OFF = 0;
    public static final int SCREEN_STATE_ON = 1;
    static final int SCROLLBARS_HORIZONTAL = 256;
    static final int SCROLLBARS_INSET_MASK = 16777216;
    public static final int SCROLLBARS_INSIDE_INSET = 16777216;
    public static final int SCROLLBARS_INSIDE_OVERLAY = 0;
    static final int SCROLLBARS_MASK = 768;
    static final int SCROLLBARS_NONE = 0;
    public static final int SCROLLBARS_OUTSIDE_INSET = 50331648;
    static final int SCROLLBARS_OUTSIDE_MASK = 33554432;
    public static final int SCROLLBARS_OUTSIDE_OVERLAY = 33554432;
    static final int SCROLLBARS_STYLE_MASK = 50331648;
    static final int SCROLLBARS_VERTICAL = 512;
    public static final int SCROLLBAR_POSITION_DEFAULT = 0;
    public static final int SCROLLBAR_POSITION_LEFT = 1;
    public static final int SCROLLBAR_POSITION_RIGHT = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    static final int SCROLL_INDICATORS_NONE = 0;
    static final int SCROLL_INDICATORS_PFLAG3_MASK = 16128;
    static final int SCROLL_INDICATORS_TO_PFLAGS3_LSHIFT = 8;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
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

    @Deprecated
    public static final int STATUS_BAR_HIDDEN = 1;
    public static final int STATUS_BAR_TRANSIENT = 67108864;
    public static final int STATUS_BAR_TRANSLUCENT = 1073741824;
    public static final int STATUS_BAR_TRANSPARENT = 8;
    public static final int STATUS_BAR_UNHIDE = 268435456;

    @Deprecated
    public static final int STATUS_BAR_VISIBLE = 0;
    public static final int SYSTEM_UI_CLEARABLE_FLAGS = 7;
    public static final int SYSTEM_UI_FLAG_FULLSCREEN = 4;
    public static final int SYSTEM_UI_FLAG_HIDE_NAVIGATION = 2;
    public static final int SYSTEM_UI_FLAG_IMMERSIVE = 2048;
    public static final int SYSTEM_UI_FLAG_IMMERSIVE_STICKY = 4096;
    public static final int SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN = 1024;
    public static final int SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION = 512;
    public static final int SYSTEM_UI_FLAG_LAYOUT_STABLE = 256;
    public static final int SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR = 16;
    public static final int SYSTEM_UI_FLAG_LIGHT_STATUS_BAR = 8192;
    public static final int SYSTEM_UI_FLAG_LOW_PROFILE = 1;
    public static final int SYSTEM_UI_FLAG_VISIBLE = 0;
    public static final int SYSTEM_UI_LAYOUT_FLAGS = 1536;
    private static final int SYSTEM_UI_RESERVED_LEGACY1 = 16384;
    private static final int SYSTEM_UI_RESERVED_LEGACY2 = 65536;
    public static final int SYSTEM_UI_TRANSPARENT = 32776;
    public static final int TEXT_ALIGNMENT_CENTER = 4;
    private static final int TEXT_ALIGNMENT_DEFAULT = 1;
    public static final int TEXT_ALIGNMENT_GRAVITY = 1;
    public static final int TEXT_ALIGNMENT_INHERIT = 0;
    static final int TEXT_ALIGNMENT_RESOLVED_DEFAULT = 1;
    public static final int TEXT_ALIGNMENT_TEXT_END = 3;
    public static final int TEXT_ALIGNMENT_TEXT_START = 2;
    public static final int TEXT_ALIGNMENT_VIEW_END = 6;
    public static final int TEXT_ALIGNMENT_VIEW_START = 5;
    public static final int TEXT_DIRECTION_ANY_RTL = 2;
    private static final int TEXT_DIRECTION_DEFAULT = 0;
    public static final int TEXT_DIRECTION_FIRST_STRONG = 1;
    public static final int TEXT_DIRECTION_FIRST_STRONG_LTR = 6;
    public static final int TEXT_DIRECTION_FIRST_STRONG_RTL = 7;
    public static final int TEXT_DIRECTION_INHERIT = 0;
    public static final int TEXT_DIRECTION_LOCALE = 5;
    public static final int TEXT_DIRECTION_LTR = 3;
    static final int TEXT_DIRECTION_RESOLVED_DEFAULT = 1;
    public static final int TEXT_DIRECTION_RTL = 4;
    static final int TOOLTIP = 1073741824;
    private static final int UNDEFINED_PADDING = Integer.MIN_VALUE;
    protected static final String VIEW_LOG_TAG = "View";
    static final int VISIBILITY_MASK = 12;
    public static final int VISIBLE = 0;
    static final int WILL_NOT_CACHE_DRAWING = 131072;
    static final int WILL_NOT_DRAW = 128;
    private static SparseArray<String> mAttributeMap = null;
    public static boolean mDebugViewAttributes = false;
    private static boolean sAlwaysRemeasureExactly = false;
    private static boolean sAutoFocusableOffUIThreadWontNotifyParents = false;
    static boolean sCascadedDragDrop = false;
    private static boolean sCompatibilityDone = false;
    private static boolean sDebugDispatchInput = false;
    private static Paint sDebugPaint = null;
    static boolean sHasFocusableExcludeAutoFocusable = false;
    private static boolean sIgnoreMeasureCache = false;
    private static boolean sLayoutParamsAlwaysChanged = false;
    private static int sNextAccessibilityViewId = 0;
    protected static boolean sPreserveMarginParamsInLayoutParamConversion = false;
    static boolean sTextureViewIgnoresDrawableSetters = false;
    private static boolean sUseBrokenMakeMeasureSpec = false;
    private static boolean sUseDefaultFocusHighlight = false;
    static boolean sUseZeroUnspecifiedMeasureSpec = false;
    private int mAccessibilityCursorPosition;
    AccessibilityDelegate mAccessibilityDelegate;
    private int mAccessibilityTraversalAfterId;
    private int mAccessibilityTraversalBeforeId;
    private int mAccessibilityViewId;
    private ViewPropertyAnimator mAnimator;
    AttachInfo mAttachInfo;

    @ViewDebug.ExportedProperty(category = "attributes", hasAdjacentMapping = true)
    public String[] mAttributes;
    private String[] mAutofillHints;
    private AutofillId mAutofillId;
    private int mAutofillViewId;

    @ViewDebug.ExportedProperty(deepExport = true, prefix = "bg_")
    private Drawable mBackground;
    private RenderNode mBackgroundRenderNode;
    private int mBackgroundResource;
    private boolean mBackgroundSizeChanged;
    private TintInfo mBackgroundTint;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    protected int mBottom;
    public boolean mCachingFailed;
    Rect mClipBounds;
    private CharSequence mContentDescription;

    @ViewDebug.ExportedProperty(deepExport = true)
    protected Context mContext;
    protected Animation mCurrentAnimation;
    private Drawable mDefaultFocusHighlight;
    private Drawable mDefaultFocusHighlightCache;
    boolean mDefaultFocusHighlightEnabled;
    private boolean mDefaultFocusHighlightSizeChanged;
    private int[] mDrawableState;
    private Bitmap mDrawingCache;
    private int mDrawingCacheBackgroundColor;
    private ViewTreeObserver mFloatingTreeObserver;

    @ViewDebug.ExportedProperty(deepExport = true, prefix = "fg_")
    private ForegroundInfo mForegroundInfo;
    private ArrayList<FrameMetricsObserver> mFrameMetricsObservers;
    GhostView mGhostView;
    private boolean mHasPerformedLongPress;

    @ViewDebug.ExportedProperty(resolveId = true)
    int mID;
    private boolean mIgnoreNextUpEvent;
    private boolean mInContextButtonPress;
    protected final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    private SparseArray<Object> mKeyedTags;
    private int mLabelForId;
    private boolean mLastIsOpaque;
    Paint mLayerPaint;

    @ViewDebug.ExportedProperty(category = "drawing", mapping = {@ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 1, to = "SOFTWARE"), @ViewDebug.IntToString(from = 2, to = "HARDWARE")})
    int mLayerType;
    private Insets mLayoutInsets;
    protected ViewGroup.LayoutParams mLayoutParams;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    protected int mLeft;
    private boolean mLeftPaddingDefined;
    ListenerInfo mListenerInfo;
    private float mLongClickX;
    private float mLongClickY;
    private MatchIdPredicate mMatchIdPredicate;
    private MatchLabelForPredicate mMatchLabelForPredicate;
    private LongSparseLongArray mMeasureCache;

    @ViewDebug.ExportedProperty(category = "measurement")
    int mMeasuredHeight;

    @ViewDebug.ExportedProperty(category = "measurement")
    int mMeasuredWidth;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mMinHeight;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mMinWidth;
    private ViewParent mNestedScrollingParent;
    int mNextClusterForwardId;
    private int mNextFocusDownId;
    int mNextFocusForwardId;
    private int mNextFocusLeftId;
    private int mNextFocusRightId;
    private int mNextFocusUpId;
    int mOldHeightMeasureSpec;
    int mOldWidthMeasureSpec;
    ViewOutlineProvider mOutlineProvider;
    private int mOverScrollMode;
    ViewOverlay mOverlay;

    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingBottom;

    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingLeft;

    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingRight;

    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingTop;
    protected ViewParent mParent;
    private CheckForLongPress mPendingCheckForLongPress;
    private CheckForTap mPendingCheckForTap;
    private PerformClick mPerformClick;
    private PointerIcon mPointerIcon;

    @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 4096, mask = 4096, name = "FORCE_LAYOUT"), @ViewDebug.FlagToString(equals = 8192, mask = 8192, name = "LAYOUT_REQUIRED"), @ViewDebug.FlagToString(equals = 32768, mask = 32768, name = "DRAWING_CACHE_INVALID", outputIf = false), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "DRAWN", outputIf = true), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "NOT_DRAWN", outputIf = false), @ViewDebug.FlagToString(equals = 4194304, mask = 6291456, name = "DIRTY_OPAQUE"), @ViewDebug.FlagToString(equals = 2097152, mask = 6291456, name = "DIRTY")}, formatToHexString = true)
    public int mPrivateFlags;
    int mPrivateFlags2;
    int mPrivateFlags3;
    boolean mRecreateDisplayList;
    final RenderNode mRenderNode;
    private final Resources mResources;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    protected int mRight;
    private boolean mRightPaddingDefined;
    private RoundScrollbarRenderer mRoundScrollbarRenderer;
    private HandlerActionQueue mRunQueue;
    private ScrollabilityCache mScrollCache;
    private Drawable mScrollIndicatorDrawable;

    @ViewDebug.ExportedProperty(category = "scrolling")
    protected int mScrollX;

    @ViewDebug.ExportedProperty(category = "scrolling")
    protected int mScrollY;
    private SendViewScrolledAccessibilityEvent mSendViewScrolledAccessibilityEvent;
    private boolean mSendingHoverAccessibilityEvents;
    String mStartActivityRequestWho;
    private StateListAnimator mStateListAnimator;

    @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 1, mask = 1, name = "SYSTEM_UI_FLAG_LOW_PROFILE", outputIf = true), @ViewDebug.FlagToString(equals = 2, mask = 2, name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION", outputIf = true), @ViewDebug.FlagToString(equals = 0, mask = PUBLIC_STATUS_BAR_VISIBILITY_MASK, name = "SYSTEM_UI_FLAG_VISIBLE", outputIf = true)}, formatToHexString = true)
    int mSystemUiVisibility;
    protected Object mTag;
    private int[] mTempNestedScrollConsumed;
    TooltipInfo mTooltipInfo;

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    protected int mTop;
    private TouchDelegate mTouchDelegate;
    private int mTouchSlop;
    public TransformationInfo mTransformationInfo;
    int mTransientStateCount;
    private String mTransitionName;
    private Bitmap mUnscaledDrawingCache;
    private UnsetPressedState mUnsetPressedState;

    @ViewDebug.ExportedProperty(category = "padding")
    protected int mUserPaddingBottom;

    @ViewDebug.ExportedProperty(category = "padding")
    int mUserPaddingEnd;

    @ViewDebug.ExportedProperty(category = "padding")
    protected int mUserPaddingLeft;
    int mUserPaddingLeftInitial;

    @ViewDebug.ExportedProperty(category = "padding")
    protected int mUserPaddingRight;
    int mUserPaddingRightInitial;

    @ViewDebug.ExportedProperty(category = "padding")
    int mUserPaddingStart;
    private float mVerticalScrollFactor;
    private int mVerticalScrollbarPosition;

    @ViewDebug.ExportedProperty(formatToHexString = true)
    int mViewFlags;
    private Handler mVisibilityChangeForAutofillHandler;
    int mWindowAttachCount;
    private static final int[] AUTOFILL_HIGHLIGHT_ATTR = {16844136};
    private static final int[] VISIBILITY_FLAGS = {0, 4, 8};
    private static final int[] DRAWING_CACHE_QUALITY_FLAGS = {0, 524288, 1048576};
    protected static final int[] EMPTY_STATE_SET = StateSet.get(0);
    protected static final int[] WINDOW_FOCUSED_STATE_SET = StateSet.get(1);
    protected static final int[] SELECTED_STATE_SET = StateSet.get(2);
    protected static final int[] SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(3);
    protected static final int[] FOCUSED_STATE_SET = StateSet.get(4);
    protected static final int[] FOCUSED_WINDOW_FOCUSED_STATE_SET = StateSet.get(5);
    protected static final int[] FOCUSED_SELECTED_STATE_SET = StateSet.get(6);
    protected static final int[] FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(7);
    protected static final int[] ENABLED_STATE_SET = StateSet.get(8);
    protected static final int[] ENABLED_WINDOW_FOCUSED_STATE_SET = StateSet.get(9);
    protected static final int[] ENABLED_SELECTED_STATE_SET = StateSet.get(10);
    protected static final int[] ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(11);
    protected static final int[] ENABLED_FOCUSED_STATE_SET = StateSet.get(12);
    protected static final int[] ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = StateSet.get(13);
    protected static final int[] ENABLED_FOCUSED_SELECTED_STATE_SET = StateSet.get(14);
    protected static final int[] ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(15);
    protected static final int[] PRESSED_STATE_SET = StateSet.get(16);
    protected static final int[] PRESSED_WINDOW_FOCUSED_STATE_SET = StateSet.get(17);
    protected static final int[] PRESSED_SELECTED_STATE_SET = StateSet.get(18);
    protected static final int[] PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(19);
    protected static final int[] PRESSED_FOCUSED_STATE_SET = StateSet.get(20);
    protected static final int[] PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET = StateSet.get(21);
    protected static final int[] PRESSED_FOCUSED_SELECTED_STATE_SET = StateSet.get(22);
    protected static final int[] PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(23);
    protected static final int[] PRESSED_ENABLED_STATE_SET = StateSet.get(24);
    protected static final int[] PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET = StateSet.get(25);
    protected static final int[] PRESSED_ENABLED_SELECTED_STATE_SET = StateSet.get(26);
    protected static final int[] PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(27);
    protected static final int[] PRESSED_ENABLED_FOCUSED_STATE_SET = StateSet.get(28);
    protected static final int[] PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = StateSet.get(29);
    protected static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET = StateSet.get(30);
    protected static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = StateSet.get(31);
    static final int DEBUG_CORNERS_COLOR = Color.rgb(63, 127, 255);
    static final ThreadLocal<Rect> sThreadLocal = new ThreadLocal<>();
    private static final int[] LAYOUT_DIRECTION_FLAGS = {0, 1, 2, 3};
    private static final int[] PFLAG2_TEXT_DIRECTION_FLAGS = {0, 64, 128, 192, 256, 320, MetricsProto.MetricsEvent.ACTION_SHOW_SETTINGS_SUGGESTION, 448};
    private static final int[] PFLAG2_TEXT_ALIGNMENT_FLAGS = {0, 8192, 16384, 24576, 32768, 40960, 49152};
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);
    public static final Property<View, Float> ALPHA = new FloatProperty<View>("alpha") { // from class: android.view.View.2
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getAlpha());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setAlpha(f2);
        }
    };
    public static final Property<View, Float> TRANSLATION_X = new FloatProperty<View>("translationX") { // from class: android.view.View.3
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getTranslationX());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setTranslationX(f2);
        }
    };
    public static final Property<View, Float> TRANSLATION_Y = new FloatProperty<View>("translationY") { // from class: android.view.View.4
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getTranslationY());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setTranslationY(f2);
        }
    };
    public static final Property<View, Float> TRANSLATION_Z = new FloatProperty<View>("translationZ") { // from class: android.view.View.5
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getTranslationZ());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setTranslationZ(f2);
        }
    };
    public static final Property<View, Float> X = new FloatProperty<View>("x") { // from class: android.view.View.6
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getX());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setX(f2);
        }
    };
    public static final Property<View, Float> Y = new FloatProperty<View>("y") { // from class: android.view.View.7
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getY());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setY(f2);
        }
    };
    public static final Property<View, Float> Z = new FloatProperty<View>("z") { // from class: android.view.View.8
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getZ());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setZ(f2);
        }
    };
    public static final Property<View, Float> ROTATION = new FloatProperty<View>(Key.ROTATION) { // from class: android.view.View.9
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getRotation());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setRotation(f2);
        }
    };
    public static final Property<View, Float> ROTATION_X = new FloatProperty<View>("rotationX") { // from class: android.view.View.10
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getRotationX());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setRotationX(f2);
        }
    };
    public static final Property<View, Float> ROTATION_Y = new FloatProperty<View>("rotationY") { // from class: android.view.View.11
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getRotationY());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setRotationY(f2);
        }
    };
    public static final Property<View, Float> SCALE_X = new FloatProperty<View>("scaleX") { // from class: android.view.View.12
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getScaleX());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setScaleX(f2);
        }
    };
    public static final Property<View, Float> SCALE_Y = new FloatProperty<View>("scaleY") { // from class: android.view.View.13
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getScaleY());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float f2) {
            view.setScaleY(f2);
        }
    };

    public static class AccessibilityDelegate {
        public void addExtraDataToAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            view.addExtraDataToAccessibilityNodeInfo(accessibilityNodeInfo, str, bundle);
        }

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

    public static final class AttachInfo {
        int mAccessibilityFetchFlags;
        Drawable mAccessibilityFocusDrawable;
        boolean mAlwaysConsumeNavBar;
        float mApplicationScale;
        Drawable mAutofilledDrawable;
        Canvas mCanvas;
        int mDisabledSystemUiVisibility;
        Display mDisplay;
        public Surface mDragSurface;
        IBinder mDragToken;
        long mDrawingTime;
        List<View> mEmptyPartialLayoutViews;
        boolean mForceReportNewAttributes;
        final Handler mHandler;
        boolean mHandlingPointerEvent;
        boolean mHardwareAccelerated;
        boolean mHardwareAccelerationRequested;
        boolean mHasNonEmptyGivenInternalInsets;
        boolean mHasSystemUiListeners;
        boolean mHasWindowFocus;
        boolean mHighContrastText;
        IWindowId mIWindowId;
        boolean mIgnoreDirtyState;
        boolean mInTouchMode;
        boolean mKeepScreenOn;
        boolean mNeedsUpdateLightCenter;
        boolean mOverscanRequested;
        IBinder mPanelParentWindowToken;
        List<RenderNode> mPendingAnimatingRenderNodes;
        boolean mRecomputeGlobalAttributes;
        final Callbacks mRootCallbacks;
        View mRootView;
        boolean mScalingRequired;
        final IWindowSession mSession;
        int mSystemUiVisibility;
        ThreadedRenderer mThreadedRenderer;
        View mTooltipHost;
        final ViewTreeObserver mTreeObserver;
        boolean mUnbufferedDispatchRequested;
        boolean mUse32BitDrawingCache;
        View mViewRequestingLayout;
        final ViewRootImpl mViewRootImpl;
        boolean mViewScrollChanged;
        boolean mViewVisibilityChanged;
        final IWindow mWindow;
        WindowId mWindowId;
        int mWindowLeft;
        final IBinder mWindowToken;
        int mWindowTop;
        int mWindowVisibility;
        int mDisplayState = 0;
        final Rect mOverscanInsets = new Rect();
        final Rect mContentInsets = new Rect();
        final Rect mVisibleInsets = new Rect();
        final Rect mStableInsets = new Rect();
        final Rect mOutsets = new Rect();
        final ViewTreeObserver.InternalInsetsInfo mGivenInternalInsets = new ViewTreeObserver.InternalInsetsInfo();
        final ArrayList<View> mScrollContainers = new ArrayList<>();
        final KeyEvent.DispatcherState mKeyDispatchState = new KeyEvent.DispatcherState();
        boolean mSetIgnoreDirtyState = false;
        int mGlobalSystemUiVisibility = -1;
        final int[] mTransparentLocation = new int[2];
        final int[] mInvalidateChildLocation = new int[2];
        final int[] mTmpLocation = new int[2];
        final float[] mTmpTransformLocation = new float[2];
        final Rect mTmpInvalRect = new Rect();
        final RectF mTmpTransformRect = new RectF();
        final RectF mTmpTransformRect1 = new RectF();
        final List<RectF> mTmpRectList = new ArrayList();
        final Matrix mTmpMatrix = new Matrix();
        final Transformation mTmpTransformation = new Transformation();
        final Outline mTmpOutline = new Outline();
        final ArrayList<View> mTempArrayList = new ArrayList<>(24);
        int mAccessibilityWindowId = -1;
        boolean mDebugLayout = SystemProperties.getBoolean(View.DEBUG_LAYOUT_PROPERTY, false);
        final Point mPoint = new Point();
        List<View> mPartialLayoutViews = new ArrayList();

        public interface Callbacks {
            boolean performHapticFeedback(int i2, boolean z2);

            void playSoundEffect(int i2);
        }

        public static class InvalidateInfo {
            private static final int POOL_LIMIT = 10;
            private static final Pools.SynchronizedPool<InvalidateInfo> sPool = new Pools.SynchronizedPool<>(10);
            int bottom;
            int left;
            int right;
            View target;
            int top;

            public static InvalidateInfo obtain() {
                InvalidateInfo invalidateInfoAcquire = sPool.acquire();
                return invalidateInfoAcquire != null ? invalidateInfoAcquire : new InvalidateInfo();
            }

            public void recycle() {
                this.target = null;
                sPool.release(this);
            }
        }

        public AttachInfo(IWindowSession iWindowSession, IWindow iWindow, Display display, ViewRootImpl viewRootImpl, Handler handler, Callbacks callbacks, Context context) {
            this.mSession = iWindowSession;
            this.mWindow = iWindow;
            this.mWindowToken = iWindow.asBinder();
            this.mDisplay = display;
            this.mViewRootImpl = viewRootImpl;
            this.mHandler = handler;
            this.mRootCallbacks = callbacks;
            this.mTreeObserver = new ViewTreeObserver(context);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AutofillFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AutofillImportance {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface AutofillType {
    }

    public static class BaseSavedState extends AbsSavedState {
        static final int AUTOFILL_ID = 4;
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new Parcelable.ClassLoaderCreator<BaseSavedState>() { // from class: android.view.View.BaseSavedState.1
            @Override // android.os.Parcelable.Creator
            public BaseSavedState[] newArray(int i2) {
                return new BaseSavedState[i2];
            }

            @Override // android.os.Parcelable.Creator
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public BaseSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new BaseSavedState(parcel, classLoader);
            }
        };
        static final int IS_AUTOFILLED = 2;
        static final int START_ACTIVITY_REQUESTED_WHO_SAVED = 1;
        int mAutofillViewId;
        boolean mIsAutofilled;
        int mSavedData;
        String mStartActivityRequestWhoSaved;

        public BaseSavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.mSavedData);
            parcel.writeString(this.mStartActivityRequestWhoSaved);
            parcel.writeBoolean(this.mIsAutofilled);
            parcel.writeInt(this.mAutofillViewId);
        }

        public BaseSavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mSavedData = parcel.readInt();
            this.mStartActivityRequestWhoSaved = parcel.readString();
            this.mIsAutofilled = parcel.readBoolean();
            this.mAutofillViewId = parcel.readInt();
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public final class CheckForLongPress implements Runnable {
        private boolean mOriginalPressedState;
        private int mOriginalWindowAttachCount;
        private float mX;
        private float mY;

        private CheckForLongPress() {
        }

        public void rememberPressedState() {
            this.mOriginalPressedState = View.this.isPressed();
        }

        public void rememberWindowAttachCount() {
            this.mOriginalWindowAttachCount = View.this.mWindowAttachCount;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mOriginalPressedState == View.this.isPressed()) {
                View view = View.this;
                if (view.mParent != null && this.mOriginalWindowAttachCount == view.mWindowAttachCount && view.performLongClick(this.mX, this.mY)) {
                    View.this.mHasPerformedLongPress = true;
                }
            }
        }

        public void setAnchor(float f2, float f3) {
            this.mX = f2;
            this.mY = f3;
        }
    }

    public final class CheckForTap implements Runnable {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float f209x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public float f210y;

        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = View.this;
            view.mPrivateFlags &= -33554433;
            view.setPressed(true, this.f209x, this.f210y);
            View.this.checkForLongClick(ViewConfiguration.getTapTimeout(), this.f209x, this.f210y);
        }
    }

    public static class DeclaredOnClickListener implements OnClickListener {
        private final View mHostView;
        private final String mMethodName;
        private Context mResolvedContext;
        private Method mResolvedMethod;

        public DeclaredOnClickListener(View view, String str) {
            this.mHostView = view;
            this.mMethodName = str;
        }

        private void resolveMethod(Context context, String str) {
            String str2;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.mMethodName, View.class)) != null) {
                        this.mResolvedMethod = method;
                        this.mResolvedContext = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.mHostView.getId();
            if (id == -1) {
                str2 = "";
            } else {
                str2 = " with id '" + this.mHostView.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.mMethodName + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.mHostView.getClass() + str2);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.mResolvedMethod == null) {
                resolveMethod(this.mHostView.getContext(), this.mMethodName);
            }
            try {
                this.mResolvedMethod.invoke(this.mResolvedContext, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DrawingCacheQuality {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FindViewFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Focusable {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FocusableMode {
    }

    public static class ForegroundInfo {
        private boolean mBoundsChanged;
        private Drawable mDrawable;
        private int mGravity;
        private boolean mInsidePadding;
        private final Rect mOverlayBounds;
        private final Rect mSelfBounds;
        private TintInfo mTintInfo;

        private ForegroundInfo() {
            this.mGravity = 119;
            this.mInsidePadding = true;
            this.mBoundsChanged = true;
            this.mSelfBounds = new Rect();
            this.mOverlayBounds = new Rect();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LayoutDir {
    }

    public static class ListenerInfo {
        OnApplyWindowInsetsListener mOnApplyWindowInsetsListener;
        private CopyOnWriteArrayList<OnAttachStateChangeListener> mOnAttachStateChangeListeners;
        OnCapturedPointerListener mOnCapturedPointerListener;
        public OnClickListener mOnClickListener;
        protected OnContextClickListener mOnContextClickListener;
        protected OnCreateContextMenuListener mOnCreateContextMenuListener;
        private OnDragListener mOnDragListener;
        protected OnFocusChangeListener mOnFocusChangeListener;
        private OnGenericMotionListener mOnGenericMotionListener;
        private OnHoverListener mOnHoverListener;
        private OnKeyListener mOnKeyListener;
        private ArrayList<OnLayoutChangeListener> mOnLayoutChangeListeners;
        protected OnLongClickListener mOnLongClickListener;
        protected OnScrollChangeListener mOnScrollChangeListener;
        private OnSystemUiVisibilityChangeListener mOnSystemUiVisibilityChangeListener;
        private OnTouchListener mOnTouchListener;
    }

    public static class MatchIdPredicate implements Predicate<View> {
        public int mId;

        private MatchIdPredicate() {
        }

        @Override // java.util.function.Predicate
        public boolean test(View view) {
            return view.mID == this.mId;
        }
    }

    public static class MatchLabelForPredicate implements Predicate<View> {
        private int mLabeledId;

        private MatchLabelForPredicate() {
        }

        @Override // java.util.function.Predicate
        public boolean test(View view) {
            return view.mLabelForId == this.mLabeledId;
        }
    }

    public static class MeasureSpec {
        public static final int AT_MOST = Integer.MIN_VALUE;
        public static final int EXACTLY = 1073741824;
        private static final int MODE_MASK = -1073741824;
        private static final int MODE_SHIFT = 30;
        public static final int UNSPECIFIED = 0;

        @Retention(RetentionPolicy.SOURCE)
        public @interface MeasureSpecMode {
        }

        public static int adjust(int i2, int i3) {
            int mode = getMode(i2);
            int size = getSize(i2);
            int i4 = 0;
            if (mode == 0) {
                return makeMeasureSpec(size, 0);
            }
            int i5 = size + i3;
            if (i5 < 0) {
                StringBuilder sbS = android.accessibilityservice.c.s("MeasureSpec.adjust: new size would be negative! (", i5, ") spec: ");
                sbS.append(toString(i2));
                sbS.append(" delta: ");
                sbS.append(i3);
                Log.e(View.VIEW_LOG_TAG, sbS.toString());
            } else {
                i4 = i5;
            }
            return makeMeasureSpec(i4, mode);
        }

        public static int getMode(int i2) {
            return i2 & (-1073741824);
        }

        public static int getSize(int i2) {
            return i2 & View.LAST_APP_AUTOFILL_ID;
        }

        public static int makeMeasureSpec(int i2, int i3) {
            return View.sUseBrokenMakeMeasureSpec ? i2 + i3 : (i2 & View.LAST_APP_AUTOFILL_ID) | (i3 & (-1073741824));
        }

        public static int makeSafeMeasureSpec(int i2, int i3) {
            if (View.sUseZeroUnspecifiedMeasureSpec && i3 == 0) {
                return 0;
            }
            return makeMeasureSpec(i2, i3);
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
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            sb.append(size);
            return sb.toString();
        }
    }

    public interface OnApplyWindowInsetsListener {
        WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets);
    }

    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    public interface OnCapturedPointerListener {
        boolean onCapturedPointer(View view, MotionEvent motionEvent);
    }

    public interface OnClickListener {
        void onClick(View view);
    }

    public interface OnContextClickListener {
        boolean onContextClick(View view);
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

    public interface OnScrollChangeListener {
        void onScrollChange(View view, int i2, int i3, int i4, int i5);
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

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResolvedLayoutDir {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollBarStyle {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollIndicators {
    }

    public static class ScrollabilityCache implements Runnable {
        public static final int DRAGGING_HORIZONTAL_SCROLL_BAR = 2;
        public static final int DRAGGING_VERTICAL_SCROLL_BAR = 1;
        public static final int FADING = 2;
        public static final int NOT_DRAGGING = 0;
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
        public int scrollBarMinTouchTarget;
        public int scrollBarSize;
        public Shader shader;
        public final Interpolator scrollBarInterpolator = new Interpolator(1, 2);
        public int state = 0;
        public final Rect mScrollBarBounds = new Rect();
        public final Rect mScrollBarTouchBounds = new Rect();
        public int mScrollBarDraggingState = 0;
        public float mScrollBarDraggingPos = 0.0f;
        public int scrollBarDefaultDelayBeforeFade = ViewConfiguration.getScrollDefaultDelay();
        public int scrollBarFadeDuration = ViewConfiguration.getScrollBarFadeDuration();

        public ScrollabilityCache(ViewConfiguration viewConfiguration, View view) {
            this.fadingEdgeLength = viewConfiguration.getScaledFadingEdgeLength();
            this.scrollBarSize = viewConfiguration.getScaledScrollBarSize();
            this.scrollBarMinTouchTarget = viewConfiguration.getScaledMinScrollbarTouchTarget();
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

    @Retention(RetentionPolicy.SOURCE)
    public @interface TextAlignment {
    }

    public static class TintInfo {
        boolean mHasTintList;
        boolean mHasTintMode;
        ColorStateList mTintList;
        PorterDuff.Mode mTintMode;
    }

    public static class TooltipInfo {
        int mAnchorX;
        int mAnchorY;
        Runnable mHideTooltipRunnable;
        Runnable mShowTooltipRunnable;
        boolean mTooltipFromLongClick;
        TooltipPopup mTooltipPopup;
        CharSequence mTooltipText;

        private TooltipInfo() {
        }
    }

    public static class TransformationInfo {
        private Matrix mInverseMatrix;
        private final Matrix mMatrix = new Matrix();

        @ViewDebug.ExportedProperty
        float mAlpha = 1.0f;
        float mTransitionAlpha = 1.0f;
    }

    public final class UnsetPressedState implements Runnable {
        private UnsetPressedState() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View.this.setPressed(false);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Visibility {
    }

    public static class VisibilityChangeForAutofillHandler extends Handler {
        private final AutofillManager mAfm;
        private final View mView;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AutofillManager autofillManager = this.mAfm;
            View view = this.mView;
            autofillManager.notifyViewVisibilityChanged(view, view.isShown());
        }

        private VisibilityChangeForAutofillHandler(AutofillManager autofillManager, View view) {
            this.mAfm = autofillManager;
            this.mView = view;
        }
    }

    public View(Context context) {
        this.mCurrentAnimation = null;
        this.mRecreateDisplayList = false;
        this.mID = -1;
        this.mAutofillViewId = -1;
        this.mAccessibilityViewId = -1;
        this.mAccessibilityCursorPosition = -1;
        this.mTag = null;
        this.mTransientStateCount = 0;
        this.mClipBounds = null;
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mLabelForId = -1;
        this.mAccessibilityTraversalBeforeId = -1;
        this.mAccessibilityTraversalAfterId = -1;
        this.mLeftPaddingDefined = false;
        this.mRightPaddingDefined = false;
        this.mOldWidthMeasureSpec = Integer.MIN_VALUE;
        this.mOldHeightMeasureSpec = Integer.MIN_VALUE;
        this.mLongClickX = Float.NaN;
        this.mLongClickY = Float.NaN;
        this.mDrawableState = null;
        this.mOutlineProvider = ViewOutlineProvider.BACKGROUND;
        this.mNextFocusLeftId = -1;
        this.mNextFocusRightId = -1;
        this.mNextFocusUpId = -1;
        this.mNextFocusDownId = -1;
        this.mNextFocusForwardId = -1;
        this.mNextClusterForwardId = -1;
        this.mDefaultFocusHighlightEnabled = true;
        this.mPendingCheckForTap = null;
        this.mTouchDelegate = null;
        this.mDrawingCacheBackgroundColor = 0;
        this.mAnimator = null;
        this.mLayerType = 0;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mContext = context;
        this.mResources = context != null ? context.getResources() : null;
        this.mViewFlags = 402653200;
        this.mPrivateFlags2 = 140296;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setOverScrollMode(1);
        this.mUserPaddingStart = Integer.MIN_VALUE;
        this.mUserPaddingEnd = Integer.MIN_VALUE;
        this.mRenderNode = RenderNode.create(getClass().getName(), this);
        if (!sCompatibilityDone && context != null) {
            int i2 = context.getApplicationInfo().targetSdkVersion;
            sUseBrokenMakeMeasureSpec = i2 <= 17;
            sIgnoreMeasureCache = i2 < 19;
            Canvas.sCompatibilityRestore = i2 < 23;
            Canvas.sCompatibilitySetBitmap = i2 < 26;
            sUseZeroUnspecifiedMeasureSpec = i2 < 23;
            sAlwaysRemeasureExactly = i2 <= 23;
            sLayoutParamsAlwaysChanged = i2 <= 23;
            sTextureViewIgnoresDrawableSetters = i2 <= 23;
            sPreserveMarginParamsInLayoutParamConversion = i2 >= 24;
            sCascadedDragDrop = i2 < 24;
            sHasFocusableExcludeAutoFocusable = i2 < 26;
            sAutoFocusableOffUIThreadWontNotifyParents = i2 < 26;
            sUseDefaultFocusHighlight = context.getResources().getBoolean(R.bool.config_useDefaultFocusHighlight);
            sCompatibilityDone = true;
        }
        sDebugDispatchInput = SystemProperties.getBoolean(PROPERTY_PROFILE_DISPATCHINPUT, false);
    }

    private void applyBackgroundTint() {
        TintInfo tintInfo;
        Drawable drawable = this.mBackground;
        if (drawable == null || (tintInfo = this.mBackgroundTint) == null) {
            return;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            Drawable drawableMutate = drawable.mutate();
            this.mBackground = drawableMutate;
            if (tintInfo.mHasTintList) {
                drawableMutate.setTintList(tintInfo.mTintList);
            }
            if (tintInfo.mHasTintMode) {
                this.mBackground.setTintMode(tintInfo.mTintMode);
            }
            if (this.mBackground.isStateful()) {
                this.mBackground.setState(getDrawableState());
            }
        }
    }

    private void applyForegroundTint() {
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo == null || foregroundInfo.mDrawable == null || this.mForegroundInfo.mTintInfo == null) {
            return;
        }
        TintInfo tintInfo = this.mForegroundInfo.mTintInfo;
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            ForegroundInfo foregroundInfo2 = this.mForegroundInfo;
            foregroundInfo2.mDrawable = foregroundInfo2.mDrawable.mutate();
            if (tintInfo.mHasTintList) {
                this.mForegroundInfo.mDrawable.setTintList(tintInfo.mTintList);
            }
            if (tintInfo.mHasTintMode) {
                this.mForegroundInfo.mDrawable.setTintMode(tintInfo.mTintMode);
            }
            if (this.mForegroundInfo.mDrawable.isStateful()) {
                this.mForegroundInfo.mDrawable.setState(getDrawableState());
            }
        }
    }

    private boolean applyLegacyAnimation(ViewGroup viewGroup, long j2, Animation animation, boolean z2) {
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

    private void buildDrawingCacheImpl(boolean z2) {
        Canvas canvas;
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
                Log.w(VIEW_LOG_TAG, getClass().getSimpleName() + " not displayed because it is too large to fit into a software layer (or drawing cache), needs " + j2 + " bytes, only " + scaledMaximumDrawingCacheSize + " available");
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
            this.mPrivateFlags = i5 | 32768;
        }
        int i6 = this.mPrivateFlags;
        if ((i6 & 128) == 128) {
            this.mPrivateFlags = i6 & (-6291457);
            dispatchDraw(canvas);
            drawAutofilledHighlight(canvas);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForLongClick(int i2, float f2, float f3) {
        int i3 = this.mViewFlags;
        if ((i3 & 2097152) == 2097152 || (i3 & 1073741824) == 1073741824) {
            this.mHasPerformedLongPress = false;
            if (this.mPendingCheckForLongPress == null) {
                this.mPendingCheckForLongPress = new CheckForLongPress();
            }
            this.mPendingCheckForLongPress.setAnchor(f2, f3);
            this.mPendingCheckForLongPress.rememberWindowAttachCount();
            this.mPendingCheckForLongPress.rememberPressedState();
            postDelayed(this.mPendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - i2);
        }
    }

    private void cleanupDraw() {
        resetDisplayList();
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.cancelInvalidate(this);
        }
    }

    public static int combineMeasuredStates(int i2, int i3) {
        return i2 | i3;
    }

    private final void debugDrawFocus(Canvas canvas) {
        if (isFocused()) {
            int iDipsToPixels = dipsToPixels(8);
            int i2 = this.mScrollX;
            int i3 = (this.mRight + i2) - this.mLeft;
            int i4 = this.mScrollY;
            int i5 = (this.mBottom + i4) - this.mTop;
            Paint debugPaint = getDebugPaint();
            debugPaint.setColor(DEBUG_CORNERS_COLOR);
            debugPaint.setStyle(Paint.Style.FILL);
            float f2 = i2;
            float f3 = i4;
            float f4 = i2 + iDipsToPixels;
            float f5 = i4 + iDipsToPixels;
            canvas.drawRect(f2, f3, f4, f5, debugPaint);
            float f6 = i3 - iDipsToPixels;
            float f7 = i3;
            canvas.drawRect(f6, f3, f7, f5, debugPaint);
            float f8 = i5 - iDipsToPixels;
            float f9 = i5;
            canvas.drawRect(f2, f8, f4, f9, debugPaint);
            canvas.drawRect(f6, f8, f7, f9, debugPaint);
            debugPaint.setStyle(Paint.Style.STROKE);
            canvas.drawLine(f2, f3, f7, f9, debugPaint);
            canvas.drawLine(f2, f9, f7, f3, debugPaint);
        }
    }

    public static String debugIndent(int i2) {
        int i3 = (i2 * 2) + 3;
        StringBuilder sb = new StringBuilder(i3 * 2);
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append("  ");
        }
        return sb.toString();
    }

    private boolean dispatchGenericMotionEventInternal(MotionEvent motionEvent) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if ((listenerInfo != null && listenerInfo.mOnGenericMotionListener != null && (this.mViewFlags & 32) == 0 && listenerInfo.mOnGenericMotionListener.onGenericMotion(this, motionEvent)) || onGenericMotionEvent(motionEvent)) {
            return true;
        }
        int actionButton = motionEvent.getActionButton();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 11) {
            if (actionMasked == 12 && this.mInContextButtonPress && (actionButton == 32 || actionButton == 2)) {
                this.mInContextButtonPress = false;
                this.mIgnoreNextUpEvent = true;
            }
        } else if (isContextClickable() && !this.mInContextButtonPress && !this.mHasPerformedLongPress && ((actionButton == 32 || actionButton == 2) && performContextClick(motionEvent.getX(), motionEvent.getY()))) {
            this.mInContextButtonPress = true;
            setPressed(true, motionEvent.getX(), motionEvent.getY());
            removeTapCallback();
            removeLongPressCallback();
            return true;
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier != null) {
            inputEventConsistencyVerifier.onUnhandledEvent(motionEvent, 0);
        }
        return false;
    }

    private void dispatchProvideStructureForAssistOrAutofill(ViewStructure viewStructure, boolean z2, int i2) {
        if (z2) {
            viewStructure.setAutofillId(getAutofillId());
            onProvideAutofillStructure(viewStructure, i2);
            onProvideAutofillVirtualStructure(viewStructure, i2);
        } else if (isAssistBlocked()) {
            viewStructure.setClassName(getAccessibilityClassName().toString());
            viewStructure.setAssistBlocked(true);
        } else {
            onProvideStructure(viewStructure);
            onProvideVirtualStructure(viewStructure);
        }
    }

    private void drawAutofilledHighlight(Canvas canvas) {
        Drawable autofilledDrawable;
        if (!isAutofilled() || (autofilledDrawable = getAutofilledDrawable()) == null) {
            return;
        }
        autofilledDrawable.setBounds(0, 0, getWidth(), getHeight());
        autofilledDrawable.draw(canvas);
    }

    private void drawBackground(Canvas canvas) {
        AttachInfo attachInfo;
        Drawable drawable = this.mBackground;
        if (drawable == null) {
            return;
        }
        setBackgroundBounds();
        if (canvas.isHardwareAccelerated() && (attachInfo = this.mAttachInfo) != null && attachInfo.mThreadedRenderer != null) {
            RenderNode drawableRenderNode = getDrawableRenderNode(drawable, this.mBackgroundRenderNode);
            this.mBackgroundRenderNode = drawableRenderNode;
            if (drawableRenderNode != null && drawableRenderNode.isValid()) {
                setBackgroundRenderNodeProperties(drawableRenderNode);
                ((DisplayListCanvas) canvas).drawRenderNode(drawableRenderNode);
                return;
            }
        }
        int i2 = this.mScrollX;
        int i3 = this.mScrollY;
        if ((i2 | i3) == 0) {
            drawable.draw(canvas);
            return;
        }
        canvas.translate(i2, i3);
        drawable.draw(canvas);
        canvas.translate(-i2, -i3);
    }

    private void drawDefaultFocusHighlight(Canvas canvas) {
        Drawable drawable = this.mDefaultFocusHighlight;
        if (drawable != null) {
            if (this.mDefaultFocusHighlightSizeChanged) {
                this.mDefaultFocusHighlightSizeChanged = false;
                int i2 = this.mScrollX;
                int i3 = (this.mRight + i2) - this.mLeft;
                int i4 = this.mScrollY;
                drawable.setBounds(i2, i4, i3, (this.mBottom + i4) - this.mTop);
            }
            this.mDefaultFocusHighlight.draw(canvas);
        }
    }

    private static void dumpFlag(HashMap<String, String> map, String str, int i2) {
        String strReplace = String.format("%32s", Integer.toBinaryString(i2)).replace('0', ' ');
        int iIndexOf = str.indexOf(95);
        StringBuilder sb = new StringBuilder();
        sb.append(iIndexOf > 0 ? str.substring(0, iIndexOf) : str);
        sb.append(strReplace);
        sb.append(str);
        map.put(sb.toString(), strReplace + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str);
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

    private View findAccessibilityFocusHost(boolean z2) {
        ViewRootImpl viewRootImpl;
        View accessibilityFocusedHost;
        if (isAccessibilityFocusedViewOrHost()) {
            return this;
        }
        if (!z2 || (viewRootImpl = getViewRootImpl()) == null || (accessibilityFocusedHost = viewRootImpl.getAccessibilityFocusedHost()) == null || !ViewRootImpl.isViewDescendantOf(accessibilityFocusedHost, this)) {
            return null;
        }
        return accessibilityFocusedHost;
    }

    private FrameMetricsObserver findFrameMetricsObserver(Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener) {
        for (int i2 = 0; i2 < this.mFrameMetricsObservers.size(); i2++) {
            FrameMetricsObserver frameMetricsObserver = this.mFrameMetricsObservers.get(i2);
            if (frameMetricsObserver.mListener == onFrameMetricsAvailableListener) {
                return frameMetricsObserver;
            }
        }
        return null;
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
            android.app.m.A("couldn't find view with id ", i2, VIEW_LOG_TAG);
        }
        return viewFindViewByPredicateInsideOut;
    }

    private boolean fitSystemWindowsInt(Rect rect) {
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

    private static SparseArray<String> getAttributeMap() {
        if (mAttributeMap == null) {
            mAttributeMap = new SparseArray<>();
        }
        return mAttributeMap;
    }

    private AutofillManager getAutofillManager() {
        return (AutofillManager) this.mContext.getSystemService(AutofillManager.class);
    }

    private Drawable getAutofilledDrawable() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return null;
        }
        if (attachInfo.mAutofilledDrawable == null) {
            Context context = getRootView().getContext();
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(AUTOFILL_HIGHLIGHT_ATTR);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            this.mAttachInfo.mAutofilledDrawable = context.getDrawable(resourceId);
            typedArrayObtainStyledAttributes.recycle();
        }
        return this.mAttachInfo.mAutofilledDrawable;
    }

    static Paint getDebugPaint() {
        if (sDebugPaint == null) {
            Paint paint = new Paint();
            sDebugPaint = paint;
            paint.setAntiAlias(false);
        }
        return sDebugPaint;
    }

    private Drawable getDefaultFocusHighlightDrawable() {
        Context context;
        if (this.mDefaultFocusHighlightCache == null && (context = this.mContext) != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{16843534});
            this.mDefaultFocusHighlightCache = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
        }
        return this.mDefaultFocusHighlightCache;
    }

    public static int getDefaultSize(int i2, int i3) {
        int mode = MeasureSpec.getMode(i3);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? MeasureSpec.getSize(i3) : i2;
    }

    private RenderNode getDrawableRenderNode(Drawable drawable, RenderNode renderNode) {
        if (renderNode == null) {
            renderNode = RenderNode.create(drawable.getClass().getName(), this);
        }
        Rect bounds = drawable.getBounds();
        DisplayListCanvas displayListCanvasStart = renderNode.start(bounds.width(), bounds.height());
        displayListCanvasStart.translate(-bounds.left, -bounds.top);
        try {
            drawable.draw(displayListCanvasStart);
            renderNode.end(displayListCanvasStart);
            renderNode.setLeftTopRightBottom(bounds.left, bounds.top, bounds.right, bounds.bottom);
            renderNode.setProjectBackwards(drawable.isProjected());
            renderNode.setProjectionReceiver(true);
            renderNode.setClipToBounds(false);
            return renderNode;
        } catch (Throwable th) {
            renderNode.end(displayListCanvasStart);
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

    private int getFocusableAttribute(TypedArray typedArray) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(19, typedValue)) {
            return 16;
        }
        if (typedValue.type == 18) {
            return typedValue.data == 0 ? 0 : 1;
        }
        return typedValue.data;
    }

    private void getHorizontalScrollBarBounds(Rect rect, Rect rect2) {
        if (rect == null) {
            rect = rect2;
        }
        if (rect == null) {
            return;
        }
        int i2 = (this.mViewFlags & 33554432) == 0 ? -1 : 0;
        boolean z2 = isVerticalScrollBarEnabled() && !isVerticalScrollBarHidden();
        int horizontalScrollbarHeight = getHorizontalScrollbarHeight();
        int verticalScrollbarWidth = z2 ? getVerticalScrollbarWidth() : 0;
        int i3 = this.mRight - this.mLeft;
        int i4 = this.mBottom - this.mTop;
        int i5 = ((this.mScrollY + i4) - horizontalScrollbarHeight) - (this.mUserPaddingBottom & i2);
        rect.top = i5;
        int i6 = this.mScrollX;
        rect.left = (this.mPaddingLeft & i2) + i6;
        rect.right = ((i6 + i3) - (i2 & this.mUserPaddingRight)) - verticalScrollbarWidth;
        rect.bottom = i5 + horizontalScrollbarHeight;
        if (rect2 == null) {
            return;
        }
        if (rect2 != rect) {
            rect2.set(rect);
        }
        int i7 = this.mScrollCache.scrollBarMinTouchTarget;
        if (rect2.height() < i7) {
            int iMin = Math.min(rect2.bottom + ((i7 - rect2.height()) / 2), this.mScrollY + i4);
            rect2.bottom = iMin;
            rect2.top = iMin - i7;
        }
        if (rect2.width() < i7) {
            int iWidth = rect2.left - ((i7 - rect2.width()) / 2);
            rect2.left = iWidth;
            rect2.right = iWidth + i7;
        }
    }

    private View getProjectionReceiver() {
        for (ViewParent parent = getParent(); parent != null && (parent instanceof View); parent = parent.getParent()) {
            View view = (View) parent;
            if (view.isProjectionReceiver()) {
                return view;
            }
        }
        return null;
    }

    private void getRoundVerticalScrollBarBounds(Rect rect) {
        int i2 = this.mRight - this.mLeft;
        int i3 = this.mBottom - this.mTop;
        int i4 = this.mScrollX;
        rect.left = i4;
        int i5 = this.mScrollY;
        rect.top = i5;
        rect.right = i4 + i2;
        rect.bottom = i5 + i3;
    }

    private HandlerActionQueue getRunQueue() {
        if (this.mRunQueue == null) {
            this.mRunQueue = new HandlerActionQueue();
        }
        return this.mRunQueue;
    }

    private ScrollabilityCache getScrollCache() {
        initScrollCache();
        return this.mScrollCache;
    }

    private void getStraightVerticalScrollBarBounds(Rect rect, Rect rect2) {
        if (rect == null) {
            rect = rect2;
        }
        if (rect == null) {
            return;
        }
        int i2 = (this.mViewFlags & 33554432) == 0 ? -1 : 0;
        int verticalScrollbarWidth = getVerticalScrollbarWidth();
        int i3 = this.mVerticalScrollbarPosition;
        if (i3 == 0) {
            i3 = isLayoutRtl() ? 1 : 2;
        }
        int i4 = this.mRight - this.mLeft;
        int i5 = this.mBottom - this.mTop;
        if (i3 != 1) {
            rect.left = ((this.mScrollX + i4) - verticalScrollbarWidth) - (this.mUserPaddingRight & i2);
        } else {
            rect.left = this.mScrollX + (this.mUserPaddingLeft & i2);
        }
        int i6 = this.mScrollY;
        rect.top = (this.mPaddingTop & i2) + i6;
        rect.right = rect.left + verticalScrollbarWidth;
        rect.bottom = (i6 + i5) - (i2 & this.mUserPaddingBottom);
        if (rect2 == null) {
            return;
        }
        if (rect2 != rect) {
            rect2.set(rect);
        }
        int i7 = this.mScrollCache.scrollBarMinTouchTarget;
        if (rect2.width() < i7) {
            int iWidth = (i7 - rect2.width()) / 2;
            if (i3 == 2) {
                int iMin = Math.min(rect2.right + iWidth, this.mScrollX + i4);
                rect2.right = iMin;
                rect2.left = iMin - i7;
            } else {
                int iMax = Math.max(rect2.left + iWidth, this.mScrollX);
                rect2.left = iMax;
                rect2.right = iMax + i7;
            }
        }
        if (rect2.height() < i7) {
            int iHeight = rect2.top - ((i7 - rect2.height()) / 2);
            rect2.top = iHeight;
            rect2.bottom = iHeight + i7;
        }
    }

    private void getVerticalScrollBarBounds(Rect rect, Rect rect2) {
        if (this.mRoundScrollbarRenderer == null) {
            getStraightVerticalScrollBarBounds(rect, rect2);
            return;
        }
        if (rect == null) {
            rect = rect2;
        }
        getRoundVerticalScrollBarBounds(rect);
    }

    private void handleTooltipUp() {
        TooltipInfo tooltipInfo = this.mTooltipInfo;
        if (tooltipInfo == null || tooltipInfo.mTooltipPopup == null) {
            return;
        }
        removeCallbacks(tooltipInfo.mHideTooltipRunnable);
        postDelayed(this.mTooltipInfo.mHideTooltipRunnable, ViewConfiguration.getLongPressTooltipHideTimeout());
    }

    private boolean hasAncestorThatBlocksDescendantFocus() {
        boolean zIsFocusableInTouchMode = isFocusableInTouchMode();
        ViewParent parent = this.mParent;
        while (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.getDescendantFocusability() == 393216) {
                return true;
            }
            if (!zIsFocusableInTouchMode && viewGroup.shouldBlockFocusForTouchscreen()) {
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

    private void initializeScrollIndicatorsInternal() {
        if (this.mScrollIndicatorDrawable == null) {
            this.mScrollIndicatorDrawable = this.mContext.getDrawable(R.drawable.scroll_indicator_material);
        }
    }

    private boolean isAutofillable() {
        return getAutofillType() != 0 && isImportantForAutofill() && getAutofillViewId() > 1073741823;
    }

    private boolean isHoverable() {
        int i2 = this.mViewFlags;
        if ((i2 & 32) == 32) {
            return false;
        }
        return (i2 & 16384) == 16384 || (i2 & 2097152) == 2097152 || (i2 & 8388608) == 8388608;
    }

    public static boolean isLayoutModeOptical(Object obj) {
        return (obj instanceof ViewGroup) && ((ViewGroup) obj).isLayoutModeOptical();
    }

    private boolean isOnHorizontalScrollbarThumb(float f2, float f3) {
        if (this.mScrollCache != null && isHorizontalScrollBarEnabled()) {
            float scrollX = f2 + getScrollX();
            float scrollY = f3 + getScrollY();
            ScrollabilityCache scrollabilityCache = this.mScrollCache;
            Rect rect = scrollabilityCache.mScrollBarBounds;
            Rect rect2 = scrollabilityCache.mScrollBarTouchBounds;
            getHorizontalScrollBarBounds(rect, rect2);
            int iComputeHorizontalScrollRange = computeHorizontalScrollRange();
            int iComputeHorizontalScrollOffset = computeHorizontalScrollOffset();
            int iComputeHorizontalScrollExtent = computeHorizontalScrollExtent();
            int thumbLength = ScrollBarUtils.getThumbLength(rect.width(), rect.height(), iComputeHorizontalScrollExtent, iComputeHorizontalScrollRange);
            int thumbOffset = rect.left + ScrollBarUtils.getThumbOffset(rect.width(), thumbLength, iComputeHorizontalScrollExtent, iComputeHorizontalScrollRange, iComputeHorizontalScrollOffset);
            int iMax = Math.max(this.mScrollCache.scrollBarMinTouchTarget - thumbLength, 0) / 2;
            if (scrollX >= thumbOffset - iMax && scrollX <= thumbOffset + thumbLength + iMax && scrollY >= rect2.top && scrollY <= rect2.bottom) {
                return true;
            }
        }
        return false;
    }

    private boolean isOnVerticalScrollbarThumb(float f2, float f3) {
        if (this.mScrollCache != null && isVerticalScrollBarEnabled() && !isVerticalScrollBarHidden()) {
            float scrollX = f2 + getScrollX();
            float scrollY = f3 + getScrollY();
            ScrollabilityCache scrollabilityCache = this.mScrollCache;
            Rect rect = scrollabilityCache.mScrollBarBounds;
            Rect rect2 = scrollabilityCache.mScrollBarTouchBounds;
            getVerticalScrollBarBounds(rect, rect2);
            int iComputeVerticalScrollRange = computeVerticalScrollRange();
            int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
            int iComputeVerticalScrollExtent = computeVerticalScrollExtent();
            int thumbLength = ScrollBarUtils.getThumbLength(rect.height(), rect.width(), iComputeVerticalScrollExtent, iComputeVerticalScrollRange);
            int thumbOffset = rect.top + ScrollBarUtils.getThumbOffset(rect.height(), thumbLength, iComputeVerticalScrollExtent, iComputeVerticalScrollRange, iComputeVerticalScrollOffset);
            int iMax = Math.max(this.mScrollCache.scrollBarMinTouchTarget - thumbLength, 0) / 2;
            if (scrollX >= rect2.left && scrollX <= rect2.right && scrollY >= thumbOffset - iMax && scrollY <= thumbOffset + thumbLength + iMax) {
                return true;
            }
        }
        return false;
    }

    private boolean isProjectionReceiver() {
        return this.mBackground != null;
    }

    private boolean isRtlCompatibilityMode() {
        return getContext().getApplicationInfo().targetSdkVersion < 17 || !hasRtlSupport();
    }

    private static boolean isViewIdGenerated(int i2) {
        return ((-16777216) & i2) == 0 && (i2 & 16777215) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$findUserSetNextKeyboardNavigationCluster$0(int i2, View view) {
        return view.mNextClusterForwardId == i2;
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
        return (this.mPrivateFlags2 & ALL_RTL_PROPERTIES_RESOLVED) != ALL_RTL_PROPERTIES_RESOLVED;
    }

    private void notifyEnterOrExitForAutoFillIfNeeded(boolean z2) {
        AutofillManager autofillManager;
        if (isAutofillable() && isAttachedToWindow() && (autofillManager = getAutofillManager()) != null) {
            if (!z2 || !hasWindowFocus() || !isFocused()) {
                if (hasWindowFocus() && isFocused()) {
                    return;
                }
                autofillManager.notifyViewExited(this);
                return;
            }
            if (!isLaidOut()) {
                this.mPrivateFlags3 |= 134217728;
            } else if (isVisibleToUser()) {
                autofillManager.notifyViewEntered(this);
            }
        }
    }

    private static int numViewsForAccessibility(View view) {
        if (view == null) {
            return 0;
        }
        if (view.includeForAccessibility()) {
            return 1;
        }
        if (view instanceof ViewGroup) {
            return ((ViewGroup) view).getNumChildrenForAccessibility();
        }
        return 0;
    }

    private void onDrawScrollIndicators(Canvas canvas) {
        Drawable drawable;
        if ((this.mPrivateFlags3 & SCROLL_INDICATORS_PFLAG3_MASK) == 0 || (drawable = this.mScrollIndicatorDrawable) == null) {
            return;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        Rect rect = this.mAttachInfo.mTmpInvalRect;
        getScrollIndicatorBounds(rect);
        if ((this.mPrivateFlags3 & 256) != 0 && canScrollVertically(-1)) {
            int i2 = rect.left;
            int i3 = rect.top;
            drawable.setBounds(i2, i3, rect.right, i3 + intrinsicHeight);
            drawable.draw(canvas);
        }
        if ((this.mPrivateFlags3 & 512) != 0 && canScrollVertically(1)) {
            int i4 = rect.left;
            int i5 = rect.bottom;
            drawable.setBounds(i4, i5 - intrinsicHeight, rect.right, i5);
            drawable.draw(canvas);
        }
        int i6 = 8192;
        int i7 = 4096;
        if (getLayoutDirection() != 1) {
            i7 = 8192;
            i6 = 4096;
        }
        if (((i6 | 1024) & this.mPrivateFlags3) != 0 && canScrollHorizontally(-1)) {
            int i8 = rect.left;
            drawable.setBounds(i8, rect.top, i8 + intrinsicWidth, rect.bottom);
            drawable.draw(canvas);
        }
        if (((i7 | 2048) & this.mPrivateFlags3) == 0 || !canScrollHorizontally(1)) {
            return;
        }
        int i9 = rect.right;
        drawable.setBounds(i9 - intrinsicWidth, rect.top, i9, rect.bottom);
        drawable.draw(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void onProvideStructureForAssistOrAutofill(ViewStructure viewStructure, boolean z2, int i2) {
        int i3;
        int autofillType;
        String resourcePackageName;
        String resourceEntryName;
        String resourceTypeName;
        int i4 = this.mID;
        if (i4 == -1 || isViewIdGenerated(i4)) {
            viewStructure.setId(i4, null, null, null);
        } else {
            try {
                Resources resources = getResources();
                resourceEntryName = resources.getResourceEntryName(i4);
                resourceTypeName = resources.getResourceTypeName(i4);
                resourcePackageName = resources.getResourcePackageName(i4);
            } catch (Resources.NotFoundException unused) {
                resourcePackageName = null;
                resourceEntryName = null;
                resourceTypeName = null;
            }
            viewStructure.setId(i4, resourcePackageName, resourceTypeName, resourceEntryName);
        }
        if (z2 && (autofillType = getAutofillType()) != 0) {
            viewStructure.setAutofillType(autofillType);
            viewStructure.setAutofillHints(getAutofillHints());
            viewStructure.setAutofillValue(getAutofillValue());
        }
        int i5 = 0;
        if (z2 && (i2 & 1) == 0) {
            Object parent = getParent();
            View view = parent instanceof View ? (View) parent : null;
            i3 = 0;
            while (view != null && !view.isImportantForAutofill()) {
                i5 += view.mLeft;
                i3 += view.mTop;
                Object parent2 = view.getParent();
                if (!(parent2 instanceof View)) {
                    break;
                } else {
                    view = (View) parent2;
                }
            }
        } else {
            i3 = 0;
        }
        int i6 = this.mLeft;
        int i7 = i5 + i6;
        int i8 = this.mTop;
        viewStructure.setDimens(i7, i3 + i8, this.mScrollX, this.mScrollY, this.mRight - i6, this.mBottom - i8);
        if (!z2) {
            if (!hasIdentityMatrix()) {
                viewStructure.setTransformation(getMatrix());
            }
            viewStructure.setElevation(getZ());
        }
        viewStructure.setVisibility(getVisibility());
        viewStructure.setEnabled(isEnabled());
        if (isClickable()) {
            viewStructure.setClickable(true);
        }
        if (isFocusable()) {
            viewStructure.setFocusable(true);
        }
        if (isFocused()) {
            viewStructure.setFocused(true);
        }
        if (isAccessibilityFocused()) {
            viewStructure.setAccessibilityFocused(true);
        }
        if (isSelected()) {
            viewStructure.setSelected(true);
        }
        if (isActivated()) {
            viewStructure.setActivated(true);
        }
        if (isLongClickable()) {
            viewStructure.setLongClickable(true);
        }
        if (this instanceof Checkable) {
            viewStructure.setCheckable(true);
            if (((Checkable) this).isChecked()) {
                viewStructure.setChecked(true);
            }
        }
        if (isOpaque()) {
            viewStructure.setOpaque(true);
        }
        if (isContextClickable()) {
            viewStructure.setContextClickable(true);
        }
        viewStructure.setClassName(getAccessibilityClassName().toString());
        viewStructure.setContentDescription(getContentDescription());
    }

    private boolean performLongClickInternal(float f2, float f3) {
        OnLongClickListener onLongClickListener;
        sendAccessibilityEvent(2);
        ListenerInfo listenerInfo = this.mListenerInfo;
        boolean zOnLongClick = (listenerInfo == null || (onLongClickListener = listenerInfo.mOnLongClickListener) == null) ? false : onLongClickListener.onLongClick(this);
        if (!zOnLongClick) {
            zOnLongClick = !Float.isNaN(f2) && !Float.isNaN(f3) ? showContextMenu(f2, f3) : showContextMenu();
        }
        if ((this.mViewFlags & 1073741824) == 1073741824 && !zOnLongClick) {
            zOnLongClick = showLongClickTooltip((int) f2, (int) f3);
        }
        if (zOnLongClick) {
            performHapticFeedback(0);
        }
        return zOnLongClick;
    }

    private void populateAccessibilityNodeInfoDrawingOrderInParent(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i2 = 0;
        if ((this.mPrivateFlags & 16) == 0) {
            accessibilityNodeInfo.setDrawingOrder(0);
            return;
        }
        ViewParent parentForAccessibility = getParentForAccessibility();
        View view = this;
        int iNumViewsForAccessibility = 1;
        while (view != parentForAccessibility) {
            Object parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                accessibilityNodeInfo.setDrawingOrder(i2);
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            int childCount = viewGroup.getChildCount();
            if (childCount > 1) {
                ArrayList<View> arrayListBuildOrderedChildList = viewGroup.buildOrderedChildList();
                if (arrayListBuildOrderedChildList != null) {
                    int iIndexOf = arrayListBuildOrderedChildList.indexOf(view);
                    for (int i3 = 0; i3 < iIndexOf; i3++) {
                        iNumViewsForAccessibility += numViewsForAccessibility(arrayListBuildOrderedChildList.get(i3));
                    }
                } else {
                    int iIndexOfChild = viewGroup.indexOfChild(view);
                    boolean zIsChildrenDrawingOrderEnabled = viewGroup.isChildrenDrawingOrderEnabled();
                    if (iIndexOfChild >= 0 && zIsChildrenDrawingOrderEnabled) {
                        iIndexOfChild = viewGroup.getChildDrawingOrder(childCount, iIndexOfChild);
                    }
                    int i4 = zIsChildrenDrawingOrderEnabled ? childCount : iIndexOfChild;
                    if (iIndexOfChild != 0) {
                        for (int i5 = 0; i5 < i4; i5++) {
                            if ((zIsChildrenDrawingOrderEnabled ? viewGroup.getChildDrawingOrder(childCount, i5) : i5) < iIndexOfChild) {
                                iNumViewsForAccessibility += numViewsForAccessibility(viewGroup.getChildAt(i5));
                            }
                        }
                    }
                }
            }
            view = (View) parent;
        }
        i2 = iNumViewsForAccessibility;
        accessibilityNodeInfo.setDrawingOrder(i2);
    }

    private void populateVirtualStructure(ViewStructure viewStructure, AccessibilityNodeProvider accessibilityNodeProvider, AccessibilityNodeInfo accessibilityNodeInfo) {
        viewStructure.setId(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo.getSourceNodeId()), null, null, null);
        Rect tempRect = viewStructure.getTempRect();
        accessibilityNodeInfo.getBoundsInParent(tempRect);
        viewStructure.setDimens(tempRect.left, tempRect.top, 0, 0, tempRect.width(), tempRect.height());
        viewStructure.setVisibility(0);
        viewStructure.setEnabled(accessibilityNodeInfo.isEnabled());
        if (accessibilityNodeInfo.isClickable()) {
            viewStructure.setClickable(true);
        }
        if (accessibilityNodeInfo.isFocusable()) {
            viewStructure.setFocusable(true);
        }
        if (accessibilityNodeInfo.isFocused()) {
            viewStructure.setFocused(true);
        }
        if (accessibilityNodeInfo.isAccessibilityFocused()) {
            viewStructure.setAccessibilityFocused(true);
        }
        if (accessibilityNodeInfo.isSelected()) {
            viewStructure.setSelected(true);
        }
        if (accessibilityNodeInfo.isLongClickable()) {
            viewStructure.setLongClickable(true);
        }
        if (accessibilityNodeInfo.isCheckable()) {
            viewStructure.setCheckable(true);
            if (accessibilityNodeInfo.isChecked()) {
                viewStructure.setChecked(true);
            }
        }
        if (accessibilityNodeInfo.isContextClickable()) {
            viewStructure.setContextClickable(true);
        }
        CharSequence className = accessibilityNodeInfo.getClassName();
        viewStructure.setClassName(className != null ? className.toString() : null);
        viewStructure.setContentDescription(accessibilityNodeInfo.getContentDescription());
        if (accessibilityNodeInfo.getText() != null || accessibilityNodeInfo.getError() != null) {
            viewStructure.setText(accessibilityNodeInfo.getText(), accessibilityNodeInfo.getTextSelectionStart(), accessibilityNodeInfo.getTextSelectionEnd());
        }
        int childCount = accessibilityNodeInfo.getChildCount();
        if (childCount > 0) {
            viewStructure.setChildCount(childCount);
            for (int i2 = 0; i2 < childCount; i2++) {
                AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo.getChildId(i2)));
                populateVirtualStructure(viewStructure.newChild(i2), accessibilityNodeProvider, accessibilityNodeInfoCreateAccessibilityNodeInfo);
                accessibilityNodeInfoCreateAccessibilityNodeInfo.recycle();
            }
        }
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
        String strD;
        char c = 1;
        if ((i2 & 1) == 1) {
            strD = "TAKES_FOCUS";
        } else {
            strD = "";
            c = 0;
        }
        int i3 = i2 & 12;
        if (i3 == 4) {
            if (c > 0) {
                strD = android.accessibilityservice.c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            return android.accessibilityservice.c.D(strD, "INVISIBLE");
        }
        if (i3 != 8) {
            return strD;
        }
        if (c > 0) {
            strD = android.accessibilityservice.c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        return android.accessibilityservice.c.D(strD, "GONE");
    }

    private static String printPrivateFlags(int i2) {
        String strD;
        int i3 = 1;
        if ((i2 & 1) == 1) {
            strD = "WANTS_FOCUS";
        } else {
            strD = "";
            i3 = 0;
        }
        if ((i2 & 2) == 2) {
            if (i3 > 0) {
                strD = android.accessibilityservice.c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            strD = android.accessibilityservice.c.D(strD, "FOCUSED");
            i3++;
        }
        if ((i2 & 4) == 4) {
            if (i3 > 0) {
                strD = android.accessibilityservice.c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            strD = android.accessibilityservice.c.D(strD, "SELECTED");
            i3++;
        }
        if ((i2 & 8) == 8) {
            if (i3 > 0) {
                strD = android.accessibilityservice.c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            strD = android.accessibilityservice.c.D(strD, "IS_ROOT_NAMESPACE");
            i3++;
        }
        if ((i2 & 16) == 16) {
            if (i3 > 0) {
                strD = android.accessibilityservice.c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            }
            strD = android.accessibilityservice.c.D(strD, "HAS_BOUNDS");
            i3++;
        }
        if ((i2 & 32) != 32) {
            return strD;
        }
        if (i3 > 0) {
            strD = android.accessibilityservice.c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        return android.accessibilityservice.c.D(strD, "DRAWN");
    }

    private void rebuildOutline() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return;
        }
        if (this.mOutlineProvider == null) {
            this.mRenderNode.setOutline(null);
            return;
        }
        Outline outline = attachInfo.mTmpOutline;
        outline.setEmpty();
        outline.setAlpha(1.0f);
        this.mOutlineProvider.getOutline(this, outline);
        this.mRenderNode.setOutline(outline);
    }

    private void registerPendingFrameMetricsObservers() {
        if (this.mFrameMetricsObservers != null) {
            ThreadedRenderer threadedRenderer = getThreadedRenderer();
            if (threadedRenderer == null) {
                Log.w(VIEW_LOG_TAG, "View not hardware-accelerated. Unable to observe frame stats");
                return;
            }
            Iterator<FrameMetricsObserver> it = this.mFrameMetricsObservers.iterator();
            while (it.hasNext()) {
                threadedRenderer.addFrameMetricsObserver(it.next());
            }
        }
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
        this.mRenderNode.discardDisplayList();
        RenderNode renderNode = this.mBackgroundRenderNode;
        if (renderNode != null) {
            renderNode.discardDisplayList();
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

    private void saveAttributeData(AttributeSet attributeSet, TypedArray typedArray) {
        int resourceId;
        int attributeCount = attributeSet == null ? 0 : attributeSet.getAttributeCount();
        int indexCount = typedArray.getIndexCount();
        String[] strArr = new String[(attributeCount + indexCount) * 2];
        int i2 = 0;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            strArr[i2] = attributeSet.getAttributeName(i3);
            strArr[i2 + 1] = attributeSet.getAttributeValue(i3);
            i2 += 2;
        }
        Resources resources = typedArray.getResources();
        SparseArray<String> attributeMap = getAttributeMap();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = typedArray.getIndex(i4);
            if (typedArray.hasValueOrEmpty(index) && (resourceId = typedArray.getResourceId(index, 0)) != 0) {
                String strD = attributeMap.get(resourceId);
                if (strD == null) {
                    try {
                        strD = resources.getResourceName(resourceId);
                    } catch (Resources.NotFoundException unused) {
                        strD = android.app.m.d(resourceId, new StringBuilder("0x"));
                    }
                    attributeMap.put(resourceId, strD);
                }
                strArr[i2] = strD;
                strArr[i2 + 1] = typedArray.getString(index);
                i2 += 2;
            }
        }
        String[] strArr2 = new String[i2];
        System.arraycopy(strArr, 0, strArr2, 0, i2);
        this.mAttributes = strArr2;
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

    private void setBackgroundRenderNodeProperties(RenderNode renderNode) {
        renderNode.setTranslationX(this.mScrollX);
        renderNode.setTranslationY(this.mScrollY);
    }

    private void setDefaultFocusHighlight(Drawable drawable) {
        ForegroundInfo foregroundInfo;
        this.mDefaultFocusHighlight = drawable;
        this.mDefaultFocusHighlightSizeChanged = true;
        if (drawable != null) {
            int i2 = this.mPrivateFlags;
            if ((i2 & 128) != 0) {
                this.mPrivateFlags = i2 & (-129);
            }
            drawable.setLayoutDirection(getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            if (isAttachedToWindow()) {
                drawable.setVisible(getWindowVisibility() == 0 && isShown(), false);
            }
            drawable.setCallback(this);
        } else if ((this.mViewFlags & 128) != 0 && this.mBackground == null && ((foregroundInfo = this.mForegroundInfo) == null || foregroundInfo.mDrawable == null)) {
            this.mPrivateFlags |= 128;
        }
        invalidate();
    }

    private void setKeyedTag(int i2, Object obj) {
        if (this.mKeyedTags == null) {
            this.mKeyedTags = new SparseArray<>(2);
        }
        this.mKeyedTags.put(i2, obj);
    }

    private void setMeasuredDimensionRaw(int i2, int i3) {
        this.mMeasuredWidth = i2;
        this.mMeasuredHeight = i3;
        this.mPrivateFlags |= 2048;
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

    private void setOutlineProviderFromAttribute(int i2) {
        if (i2 == 0) {
            setOutlineProvider(ViewOutlineProvider.BACKGROUND);
            return;
        }
        if (i2 == 1) {
            setOutlineProvider(null);
        } else if (i2 == 2) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        } else {
            if (i2 != 3) {
                return;
            }
            setOutlineProvider(ViewOutlineProvider.PADDED_BOUNDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPressed(boolean z2, float f2, float f3) {
        if (z2) {
            drawableHotspotChanged(f2, f3);
        }
        setPressed(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHoverTooltip() {
        TooltipInfo tooltipInfo = this.mTooltipInfo;
        showTooltip(tooltipInfo.mAnchorX, tooltipInfo.mAnchorY, false);
    }

    private boolean showLongClickTooltip(int i2, int i3) {
        removeCallbacks(this.mTooltipInfo.mShowTooltipRunnable);
        removeCallbacks(this.mTooltipInfo.mHideTooltipRunnable);
        return showTooltip(i2, i3, true);
    }

    private boolean showTooltip(int i2, int i3, boolean z2) {
        TooltipInfo tooltipInfo;
        if (this.mAttachInfo == null || (tooltipInfo = this.mTooltipInfo) == null || (this.mViewFlags & 32) != 0 || TextUtils.isEmpty(tooltipInfo.mTooltipText)) {
            return false;
        }
        hideTooltip();
        TooltipInfo tooltipInfo2 = this.mTooltipInfo;
        tooltipInfo2.mTooltipFromLongClick = z2;
        tooltipInfo2.mTooltipPopup = new TooltipPopup(getContext());
        boolean z3 = (this.mPrivateFlags3 & 131072) == 131072;
        TooltipInfo tooltipInfo3 = this.mTooltipInfo;
        tooltipInfo3.mTooltipPopup.show(this, i2, i3, z3, tooltipInfo3.mTooltipText);
        this.mAttachInfo.mTooltipHost = this;
        return true;
    }

    private void sizeChange(int i2, int i3, int i4, int i5) {
        onSizeChanged(i2, i3, i4, i5);
        ViewOverlay viewOverlay = this.mOverlay;
        if (viewOverlay != null) {
            viewOverlay.getOverlayView().setRight(i2);
            this.mOverlay.getOverlayView().setBottom(i3);
        }
        rebuildOutline();
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

    private void switchDefaultFocusHighlight() {
        if (isFocused()) {
            Drawable drawable = this.mBackground;
            ForegroundInfo foregroundInfo = this.mForegroundInfo;
            boolean zIsDefaultFocusHighlightNeeded = isDefaultFocusHighlightNeeded(drawable, foregroundInfo == null ? null : foregroundInfo.mDrawable);
            boolean z2 = this.mDefaultFocusHighlight != null;
            if (zIsDefaultFocusHighlightNeeded && !z2) {
                setDefaultFocusHighlight(getDefaultFocusHighlightDrawable());
            } else {
                if (zIsDefaultFocusHighlightNeeded || !z2) {
                    return;
                }
                setDefaultFocusHighlight(null);
            }
        }
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

    private void updateFocusedInCluster(View view, int i2) {
        View viewFindKeyboardNavigationCluster;
        if (view == null || (viewFindKeyboardNavigationCluster = view.findKeyboardNavigationCluster()) == findKeyboardNavigationCluster()) {
            return;
        }
        view.setFocusedInCluster(viewFindKeyboardNavigationCluster);
        ViewParent viewParent = view.mParent;
        if (viewParent instanceof ViewGroup) {
            if (i2 == 2 || i2 == 1) {
                ((ViewGroup) viewParent).clearFocusedInCluster(view);
            } else if ((view instanceof ViewGroup) && ((ViewGroup) view).getDescendantFocusability() == 262144 && ViewRootImpl.isViewDescendantOf(this, view)) {
                ((ViewGroup) view.mParent).clearFocusedInCluster(view);
            }
        }
    }

    public void addChildrenForAccessibility(ArrayList<View> arrayList) {
    }

    public void addExtraDataToAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
    }

    public void addFocusables(ArrayList<View> arrayList, int i2) {
        addFocusables(arrayList, i2, isInTouchMode() ? 1 : 0);
    }

    public void addFrameMetricsListener(Window window, Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, Handler handler) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            if (this.mFrameMetricsObservers == null) {
                this.mFrameMetricsObservers = new ArrayList<>();
            }
            this.mFrameMetricsObservers.add(new FrameMetricsObserver(window, handler.getLooper(), onFrameMetricsAvailableListener));
            return;
        }
        if (attachInfo.mThreadedRenderer == null) {
            Log.w(VIEW_LOG_TAG, "View not hardware-accelerated. Unable to observe frame stats");
            return;
        }
        if (this.mFrameMetricsObservers == null) {
            this.mFrameMetricsObservers = new ArrayList<>();
        }
        FrameMetricsObserver frameMetricsObserver = new FrameMetricsObserver(window, handler.getLooper(), onFrameMetricsAvailableListener);
        this.mFrameMetricsObservers.add(frameMetricsObserver);
        this.mAttachInfo.mThreadedRenderer.addFrameMetricsObserver(frameMetricsObserver);
    }

    public void addKeyboardNavigationClusters(Collection<View> collection, int i2) {
        if (isKeyboardNavigationCluster() && hasFocusable()) {
            collection.add(this);
        }
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
        if (((i2 & 16384) == 16384 || (i2 & 2097152) == 2097152 || (i2 & 8388608) == 8388608) && (i2 & 32) == 0) {
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

    public boolean areDrawablesResolved() {
        return (this.mPrivateFlags2 & 1073741824) == 1073741824;
    }

    public void assignParent(ViewParent viewParent) {
        if (this.mParent == null) {
            this.mParent = viewParent;
        } else {
            if (viewParent == null) {
                this.mParent = null;
                return;
            }
            throw new RuntimeException("view " + this + " being added, but it already has a parent");
        }
    }

    public void autofill(SparseArray<AutofillValue> sparseArray) {
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
        if (this.mLayerType == 0) {
            return;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            throw new IllegalStateException("This view must be attached to a window first");
        }
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        int i2 = this.mLayerType;
        if (i2 == 1) {
            buildDrawingCache(true);
            return;
        }
        if (i2 != 2) {
            return;
        }
        updateDisplayListIfDirty();
        if (attachInfo.mThreadedRenderer == null || !this.mRenderNode.isValid()) {
            return;
        }
        attachInfo.mThreadedRenderer.buildLayer(this.mRenderNode);
    }

    public final boolean callDragEventHandler(DragEvent dragEvent) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        boolean zOnDragEvent = (listenerInfo == null || listenerInfo.mOnDragListener == null || (this.mViewFlags & 32) != 0 || !listenerInfo.mOnDragListener.onDrag(this, dragEvent)) ? onDragEvent(dragEvent) : true;
        int i2 = dragEvent.mAction;
        if (i2 == 4) {
            this.mPrivateFlags2 &= -4;
            refreshDrawableState();
        } else if (i2 == 5) {
            this.mPrivateFlags2 |= 2;
            refreshDrawableState();
        } else if (i2 == 6) {
            this.mPrivateFlags2 &= -3;
            refreshDrawableState();
        }
        return zOnDragEvent;
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
        return (attachInfo == null || attachInfo.mThreadedRenderer == null) ? false : true;
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
            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
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
            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
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
            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
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

    public final void cancelDragAndDrop() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            Log.w(VIEW_LOG_TAG, "cancelDragAndDrop called on a detached view.");
            return;
        }
        IBinder iBinder = attachInfo.mDragToken;
        if (iBinder == null) {
            Log.e(VIEW_LOG_TAG, "No active drag to cancel");
            return;
        }
        try {
            attachInfo.mSession.cancelDragAndDrop(iBinder);
        } catch (Exception e2) {
            Log.e(VIEW_LOG_TAG, "Unable to cancel drag", e2);
        }
        this.mAttachInfo.mDragToken = null;
    }

    public void cancelLongPress() {
        removeLongPressCallback();
        removeTapCallback();
    }

    public final void cancelPendingInputEvents() {
        dispatchCancelPendingInputEvents();
    }

    public void captureTransitioningViews(List<View> list) {
        if (getVisibility() == 0) {
            list.add(this);
        }
    }

    public boolean checkInputConnectionProxy(View view) {
        return false;
    }

    public void clearAccessibilityFocus() {
        View accessibilityFocusedHost;
        clearAccessibilityFocusNoCallbacks(0);
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl == null || (accessibilityFocusedHost = viewRootImpl.getAccessibilityFocusedHost()) == null || !ViewRootImpl.isViewDescendantOf(accessibilityFocusedHost, this)) {
            return;
        }
        viewRootImpl.setAccessibilityFocus(null, null);
    }

    public void clearAccessibilityFocusNoCallbacks(int i2) {
        int i3 = this.mPrivateFlags2;
        if ((67108864 & i3) != 0) {
            this.mPrivateFlags2 = i3 & (-67108865);
            invalidate();
            if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(65536);
                accessibilityEventObtain.setAction(i2);
                AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
                if (accessibilityDelegate != null) {
                    accessibilityDelegate.sendAccessibilityEventUnchecked(this, accessibilityEventObtain);
                } else {
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
            }
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
        clearFocusInternal(null, true, true);
    }

    public void clearFocusInternal(View view, boolean z2, boolean z3) {
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

    public int combineVisibility(int i2, int i3) {
        return Math.max(i2, i3);
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

    public WindowInsets computeSystemWindowInsets(WindowInsets windowInsets, Rect rect) {
        AttachInfo attachInfo;
        if ((this.mViewFlags & 2048) == 0 || (attachInfo = this.mAttachInfo) == null || (attachInfo.mSystemUiVisibility & 1536) == 0) {
            rect.set(windowInsets.getSystemWindowInsets());
            return windowInsets.consumeSystemWindowInsets();
        }
        rect.set(0, 0, 0, 0);
        return windowInsets;
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
        MenuBuilder menuBuilder = (MenuBuilder) contextMenu;
        menuBuilder.setCurrentMenuInfo(contextMenuInfo);
        onCreateContextMenu(contextMenu);
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo != null && (onCreateContextMenuListener = listenerInfo.mOnCreateContextMenuListener) != null) {
            onCreateContextMenuListener.onCreateContextMenu(contextMenu, this, contextMenuInfo);
        }
        menuBuilder.setCurrentMenuInfo(null);
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
        boolean zIsHwBitmapsInSwModeEnabled = canvas.isHwBitmapsInSwModeEnabled();
        canvas.setHwBitmapsInSwModeEnabled(true);
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
            drawAutofilledHighlight(canvas);
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
        canvas.setHwBitmapsInSwModeEnabled(zIsHwBitmapsInSwModeEnabled);
        if (attachInfo != null) {
            attachInfo.mCanvas = canvas;
        }
        return bitmapCreateBitmap;
    }

    public void damageInParent() {
        ViewParent viewParent = this.mParent;
        if (viewParent == null || this.mAttachInfo == null) {
            return;
        }
        viewParent.onDescendantInvalidated(this, this);
    }

    public void debug() {
        debug(0);
    }

    public final boolean debugDraw() {
        AttachInfo attachInfo;
        return DEBUG_DRAW || ((attachInfo = this.mAttachInfo) != null && attachInfo.mDebugLayout);
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
        ViewOverlay viewOverlay = this.mOverlay;
        if (viewOverlay != null) {
            viewOverlay.getOverlayView().destroyHardwareResources();
        }
        GhostView ghostView = this.mGhostView;
        if (ghostView != null) {
            ghostView.destroyHardwareResources();
        }
    }

    public final int dipsToPixels(int i2) {
        return (int) ((i2 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public boolean dispatchActivityResult(String str, int i2, int i3, Intent intent) {
        String str2 = this.mStartActivityRequestWho;
        if (str2 == null || !str2.equals(str)) {
            return false;
        }
        onActivityResult(i2, i3, intent);
        this.mStartActivityRequestWho = null;
        return true;
    }

    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        OnApplyWindowInsetsListener onApplyWindowInsetsListener;
        try {
            this.mPrivateFlags3 |= 32;
            ListenerInfo listenerInfo = this.mListenerInfo;
            return (listenerInfo == null || (onApplyWindowInsetsListener = listenerInfo.mOnApplyWindowInsetsListener) == null) ? onApplyWindowInsets(windowInsets) : onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets);
        } finally {
            this.mPrivateFlags3 &= -33;
        }
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
        registerPendingFrameMetricsObservers();
        if ((this.mPrivateFlags & 524288) != 0) {
            this.mAttachInfo.mScrollContainers.add(this);
            this.mPrivateFlags |= 1048576;
        }
        HandlerActionQueue handlerActionQueue = this.mRunQueue;
        if (handlerActionQueue != null) {
            handlerActionQueue.executeActions(attachInfo.mHandler);
            this.mRunQueue = null;
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
            if (isShown()) {
                onVisibilityAggregated(i3 == 0);
            }
        }
        onVisibilityChanged(this, i2);
        if ((this.mPrivateFlags & 1024) != 0) {
            refreshDrawableState();
        }
        needGlobalAttributesUpdate(false);
        notifyEnterOrExitForAutoFillIfNeeded(true);
    }

    public void dispatchCancelPendingInputEvents() {
        this.mPrivateFlags3 &= -17;
        onCancelPendingInputEvents();
        if ((this.mPrivateFlags3 & 16) == 16) {
            return;
        }
        throw new SuperNotCalledException("View " + getClass().getSimpleName() + " did not call through to super.onCancelPendingInputEvents()");
    }

    public boolean dispatchCapturedPointerEvent(MotionEvent motionEvent) {
        OnCapturedPointerListener onCapturedPointerListener;
        if (!hasPointerCapture()) {
            return false;
        }
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || (onCapturedPointerListener = listenerInfo.mOnCapturedPointerListener) == null || !onCapturedPointerListener.onCapturedPointer(this, motionEvent)) {
            return onCapturedPointerEvent(motionEvent);
        }
        return true;
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
            if (isShown()) {
                onVisibilityAggregated(false);
            }
        }
        onDetachedFromWindow();
        onDetachedFromWindowInternal();
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (inputMethodManagerPeekInstance != null) {
            inputMethodManagerPeekInstance.onViewDetachedFromWindow(this);
        }
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
        notifyEnterOrExitForAutoFillIfNeeded(false);
    }

    public void dispatchDisplayHint(int i2) {
        onDisplayHint(i2);
    }

    public boolean dispatchDragEnterExitInPreN(DragEvent dragEvent) {
        return callDragEventHandler(dragEvent);
    }

    public boolean dispatchDragEvent(DragEvent dragEvent) {
        dragEvent.mEventHandlerWasCalled = true;
        int i2 = dragEvent.mAction;
        if (i2 == 2 || i2 == 3) {
            getViewRootImpl().setDragFocus(this, dragEvent);
        }
        return callDragEventHandler(dragEvent);
    }

    public void dispatchDraw(Canvas canvas) {
    }

    public void dispatchDrawableHotspotChanged(float f2, float f3) {
    }

    public void dispatchFinishTemporaryDetach() {
        this.mPrivateFlags3 &= -33554433;
        onFinishTemporaryDetach();
        if (hasWindowFocus() && hasFocus()) {
            InputMethodManager.getInstance().focusIn(this);
        }
        notifyEnterOrExitForAutoFillIfNeeded(true);
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
        if (sDebugDispatchInput) {
            Log.d(VIEW_LOG_TAG, "dispatchKeyEvent to the view: " + this + ", its enable state is(0 is enable) : " + (this.mViewFlags & 32) + " , event: " + keyEvent);
        }
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo != null && listenerInfo.mOnKeyListener != null && (this.mViewFlags & 32) == 0 && listenerInfo.mOnKeyListener.onKey(this, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        if (sDebugDispatchInput) {
            Log.d(VIEW_LOG_TAG, "We send to the view, but it will do futher dispatch(super).");
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

    public void dispatchMovedToDisplay(Display display, Configuration configuration) {
        AttachInfo attachInfo = this.mAttachInfo;
        attachInfo.mDisplay = display;
        attachInfo.mDisplayState = display.getState();
        onMovedToDisplay(display.getDisplayId(), configuration);
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        ViewParent viewParent;
        if (!isNestedScrollingEnabled() || (viewParent = this.mNestedScrollingParent) == null) {
            return false;
        }
        return viewParent.onNestedFling(this, f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        ViewParent viewParent;
        if (!isNestedScrollingEnabled() || (viewParent = this.mNestedScrollingParent) == null) {
            return false;
        }
        return viewParent.onNestedPreFling(this, f2, f3);
    }

    public boolean dispatchNestedPrePerformAccessibilityAction(int i2, Bundle bundle) {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent.onNestedPrePerformAccessibilityAction(this, i2, bundle)) {
                return true;
            }
        }
        return false;
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        int i4;
        int i5;
        if (!isNestedScrollingEnabled() || this.mNestedScrollingParent == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.mTempNestedScrollConsumed == null) {
                this.mTempNestedScrollConsumed = new int[2];
            }
            iArr = this.mTempNestedScrollConsumed;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        this.mNestedScrollingParent.onNestedPreScroll(this, i2, i3, iArr);
        if (iArr2 != null) {
            getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        int i6;
        int i7;
        if (isNestedScrollingEnabled() && this.mNestedScrollingParent != null) {
            if (i2 != 0 || i3 != 0 || i4 != 0 || i5 != 0) {
                if (iArr != null) {
                    getLocationInWindow(iArr);
                    i6 = iArr[0];
                    i7 = iArr[1];
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                this.mNestedScrollingParent.onNestedScroll(this, i2, i3, i4, i5);
                if (iArr != null) {
                    getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i6;
                    iArr[1] = iArr[1] - i7;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
        }
        return false;
    }

    public void dispatchPointerCaptureChanged(boolean z2) {
        onPointerCaptureChange(z2);
    }

    public final boolean dispatchPointerEvent(MotionEvent motionEvent) {
        if (sDebugDispatchInput) {
            Log.d(VIEW_LOG_TAG, "dispatchPointerEvent event is TouchEvent ? " + motionEvent.isTouchEvent() + " ,event: " + motionEvent);
        }
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

    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        dispatchProvideStructureForAssistOrAutofill(viewStructure, true, i2);
    }

    public void dispatchProvideStructure(ViewStructure viewStructure) {
        dispatchProvideStructureForAssistOrAutofill(viewStructure, false, 0);
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
        this.mPrivateFlags3 |= 33554432;
        notifyEnterOrExitForAutoFillIfNeeded(false);
        onStartTemporaryDetach();
    }

    public void dispatchSystemUiVisibilityChanged(int i2) {
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || listenerInfo.mOnSystemUiVisibilityChangeListener == null) {
            return;
        }
        listenerInfo.mOnSystemUiVisibilityChangeListener.onSystemUiVisibilityChange(i2 & PUBLIC_STATUS_BAR_VISIBILITY_MASK);
    }

    public boolean dispatchTooltipHoverEvent(MotionEvent motionEvent) {
        if (this.mTooltipInfo == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7) {
            int i2 = this.mViewFlags;
            if ((i2 & 1073741824) == 1073741824 && (i2 & 32) == 0) {
                TooltipInfo tooltipInfo = this.mTooltipInfo;
                if (!tooltipInfo.mTooltipFromLongClick) {
                    if (tooltipInfo.mTooltipPopup == null) {
                        tooltipInfo.mAnchorX = (int) motionEvent.getX();
                        this.mTooltipInfo.mAnchorY = (int) motionEvent.getY();
                        removeCallbacks(this.mTooltipInfo.mShowTooltipRunnable);
                        postDelayed(this.mTooltipInfo.mShowTooltipRunnable, ViewConfiguration.getHoverTooltipShowTimeout());
                    }
                    int hoverTooltipHideShortTimeout = (getWindowSystemUiVisibility() & 1) == 1 ? ViewConfiguration.getHoverTooltipHideShortTimeout() : ViewConfiguration.getHoverTooltipHideTimeout();
                    removeCallbacks(this.mTooltipInfo.mHideTooltipRunnable);
                    postDelayed(this.mTooltipInfo.mHideTooltipRunnable, hoverTooltipHideShortTimeout);
                }
                return true;
            }
        } else if (action == 10 && !this.mTooltipInfo.mTooltipFromLongClick) {
            hideTooltip();
        }
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        InputEventConsistencyVerifier inputEventConsistencyVerifier;
        if (motionEvent.isTargetAccessibilityFocus()) {
            if (!isAccessibilityFocusedViewOrHost()) {
                return false;
            }
            motionEvent.setTargetAccessibilityFocus(false);
        }
        InputEventConsistencyVerifier inputEventConsistencyVerifier2 = this.mInputEventConsistencyVerifier;
        if (inputEventConsistencyVerifier2 != null) {
            inputEventConsistencyVerifier2.onTouchEvent(motionEvent, 0);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            stopNestedScroll();
        }
        if (onFilterTouchEventForSecurity(motionEvent)) {
            z2 = (this.mViewFlags & 32) == 0 && handleScrollBarDragging(motionEvent);
            if (sDebugDispatchInput) {
                Log.d(VIEW_LOG_TAG, "dispatchTouchEvent to the view: " + this + ", its enable state is(0 is enable) : " + (this.mViewFlags & 32) + " , event: " + motionEvent);
            }
            ListenerInfo listenerInfo = this.mListenerInfo;
            if (listenerInfo != null && listenerInfo.mOnTouchListener != null && (this.mViewFlags & 32) == 0 && listenerInfo.mOnTouchListener.onTouch(this, motionEvent)) {
                if (sDebugDispatchInput) {
                    Log.d(VIEW_LOG_TAG, "dispatchTouchEvent to the view: " + this + ", which has listener, so we call its onTouch");
                }
                z2 = true;
            }
            if (!z2) {
                try {
                    if (onTouchEvent(motionEvent)) {
                        z2 = true;
                    }
                } catch (IllegalArgumentException e2) {
                    Log.d(VIEW_LOG_TAG, "this:" + this + " MotionEvent:" + motionEvent);
                    Log.d(VIEW_LOG_TAG, Log.getStackTraceString(e2));
                }
            }
        } else {
            z2 = false;
        }
        if (!z2 && (inputEventConsistencyVerifier = this.mInputEventConsistencyVerifier) != null) {
            inputEventConsistencyVerifier.onUnhandledEvent(motionEvent, 0);
        }
        if (actionMasked == 1 || actionMasked == 3 || (actionMasked == 0 && !z2)) {
            stopNestedScroll();
        }
        return z2;
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

    public boolean dispatchVisibilityAggregated(boolean z2) {
        boolean z3 = getVisibility() == 0;
        if (z3 || !z2) {
            onVisibilityAggregated(z2);
        }
        return z3 && z2;
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

    /* JADX WARN: Code duplicated, block: B:144:0x0235  */
    /* JADX WARN: Code duplicated, block: B:41:0x009b  */
    public boolean draw(Canvas canvas, ViewGroup viewGroup, long j2) {
        RenderNode renderNode;
        Animation animation;
        Transformation childTransformation;
        boolean z2;
        boolean z3;
        int i2;
        Bitmap drawingCache;
        int i3;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        Paint paint;
        boolean zIsHardwareAccelerated = canvas.isHardwareAccelerated();
        AttachInfo attachInfo = this.mAttachInfo;
        boolean z4 = attachInfo != null && attachInfo.mHardwareAccelerated && zIsHardwareAccelerated;
        boolean zHasIdentityMatrix = hasIdentityMatrix();
        int i8 = viewGroup.mGroupFlags;
        if ((i8 & 256) != 0) {
            viewGroup.getChildTransformation().clear();
            viewGroup.mGroupFlags &= -257;
        }
        AttachInfo attachInfo2 = this.mAttachInfo;
        boolean z5 = attachInfo2 != null && attachInfo2.mScalingRequired;
        Animation animation2 = getAnimation();
        if (animation2 != null) {
            renderNode = null;
            animation = animation2;
            boolean zApplyLegacyAnimation = applyLegacyAnimation(viewGroup, j2, animation2, z5);
            boolean zWillChangeTransformationMatrix = animation.willChangeTransformationMatrix();
            if (zWillChangeTransformationMatrix) {
                this.mPrivateFlags3 |= 1;
            }
            z3 = zApplyLegacyAnimation;
            z2 = zWillChangeTransformationMatrix;
            childTransformation = viewGroup.getChildTransformation();
        } else {
            renderNode = null;
            animation = animation2;
            if ((this.mPrivateFlags3 & 1) != 0) {
                this.mRenderNode.setAnimationMatrix(null);
                this.mPrivateFlags3 &= -2;
            }
            if (z4 || (i8 & 2048) == 0) {
                childTransformation = null;
                z2 = false;
            } else {
                Transformation childTransformation2 = viewGroup.getChildTransformation();
                if (viewGroup.getChildStaticTransformation(this, childTransformation2)) {
                    int transformationType = childTransformation2.getTransformationType();
                    Transformation transformation = transformationType != 0 ? childTransformation2 : null;
                    z2 = (transformationType & 2) != 0;
                    childTransformation = transformation;
                } else {
                    childTransformation = null;
                    z2 = false;
                }
            }
            z3 = false;
        }
        boolean z6 = z2 | (!zHasIdentityMatrix);
        this.mPrivateFlags |= 32;
        if (!z6 && (i8 & GLES10.GL_EXP2) == 1 && canvas.quickReject(this.mLeft, this.mTop, this.mRight, this.mBottom, Canvas.EdgeType.BW) && (this.mPrivateFlags & 64) == 0) {
            this.mPrivateFlags2 |= 268435456;
            return z3;
        }
        this.mPrivateFlags2 &= -268435457;
        if (zIsHardwareAccelerated) {
            int i9 = this.mPrivateFlags;
            this.mRecreateDisplayList = (Integer.MIN_VALUE & i9) != 0;
            this.mPrivateFlags = i9 & Integer.MAX_VALUE;
        }
        int layerType = getLayerType();
        if (layerType == 1 || !z4) {
            if (layerType != 0) {
                buildDrawingCache(true);
                layerType = 1;
            }
            i2 = layerType;
            drawingCache = getDrawingCache(true);
        } else {
            i2 = layerType;
            drawingCache = renderNode;
        }
        if (z4) {
            RenderNode renderNodeUpdateDisplayListIfDirty = updateDisplayListIfDirty();
            if (renderNodeUpdateDisplayListIfDirty.isValid()) {
                renderNode = renderNodeUpdateDisplayListIfDirty;
            } else {
                z4 = false;
            }
        }
        if (z4) {
            i3 = 0;
            i4 = 0;
        } else {
            computeScroll();
            i4 = this.mScrollX;
            i3 = this.mScrollY;
        }
        boolean z7 = (drawingCache == null || z4) ? false : true;
        boolean z8 = drawingCache == null && !z4;
        int iSave = (z4 && childTransformation == null) ? -1 : canvas.save();
        if (z8) {
            canvas.translate(this.mLeft - i4, this.mTop - i3);
        } else {
            if (!z4) {
                canvas.translate(this.mLeft, this.mTop);
            }
            if (z5) {
                if (z4) {
                    iSave = canvas.save();
                }
                float f3 = 1.0f / this.mAttachInfo.mApplicationScale;
                canvas.scale(f3, f3);
            }
        }
        int i10 = iSave;
        float transitionAlpha = z4 ? 1.0f : getTransitionAlpha() * getAlpha();
        if (childTransformation == null && transitionAlpha >= 1.0f && hasIdentityMatrix() && (this.mPrivateFlags3 & 2) == 0) {
            if ((this.mPrivateFlags & 262144) == 262144) {
                onSetAlpha(255);
                this.mPrivateFlags &= -262145;
            }
            i7 = i10;
            i4 = i4;
            drawingCache = drawingCache;
            zIsHardwareAccelerated = zIsHardwareAccelerated;
            i3 = i3;
        } else {
            if (childTransformation == null && zHasIdentityMatrix) {
                f2 = transitionAlpha;
                i10 = i10;
                drawingCache = drawingCache;
            } else {
                if (z8) {
                    i5 = -i4;
                    i6 = -i3;
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                if (childTransformation != null) {
                    if (z6) {
                        if (z4) {
                            renderNode.setAnimationMatrix(childTransformation.getMatrix());
                        } else {
                            canvas.translate(-i5, -i6);
                            canvas.concat(childTransformation.getMatrix());
                            canvas.translate(i5, i6);
                        }
                        viewGroup.mGroupFlags |= 256;
                    } else {
                        i10 = i10;
                        drawingCache = drawingCache;
                    }
                    float alpha = childTransformation.getAlpha();
                    if (alpha < 1.0f) {
                        transitionAlpha *= alpha;
                        viewGroup.mGroupFlags |= 256;
                    }
                } else {
                    i10 = i10;
                    drawingCache = drawingCache;
                }
                if (!zHasIdentityMatrix && !z4) {
                    canvas.translate(-i5, -i6);
                    canvas.concat(getMatrix());
                    canvas.translate(i5, i6);
                }
                f2 = transitionAlpha;
            }
            if (f2 < 1.0f || (this.mPrivateFlags3 & 2) != 0) {
                if (f2 < 1.0f) {
                    this.mPrivateFlags3 |= 2;
                } else {
                    this.mPrivateFlags3 &= -3;
                }
                viewGroup.mGroupFlags |= 256;
                if (z7) {
                    i7 = i10;
                } else {
                    int i11 = (int) (f2 * 255.0f);
                    if (onSetAlpha(i11)) {
                        i7 = i10;
                        this.mPrivateFlags |= 262144;
                    } else {
                        if (z4) {
                            renderNode.setAlpha(getTransitionAlpha() * getAlpha() * f2);
                        } else if (i2 == 0) {
                            i7 = i10;
                            canvas.saveLayerAlpha(i4, i3, getWidth() + i4, getHeight() + i3, i11);
                        }
                        i7 = i10;
                    }
                }
            } else {
                i7 = i10;
            }
            transitionAlpha = f2;
        }
        if (!z4) {
            if ((i8 & 1) != 0 && drawingCache == null) {
                if (z8) {
                    canvas.clipRect(i4, i3, getWidth() + i4, getHeight() + i3);
                } else if (!z5 || drawingCache == null) {
                    canvas.clipRect(0, 0, getWidth(), getHeight());
                } else {
                    canvas.clipRect(0, 0, drawingCache.getWidth(), drawingCache.getHeight());
                }
            }
            Rect rect = this.mClipBounds;
            if (rect != null) {
                canvas.clipRect(rect);
            }
        }
        if (z7) {
            if (drawingCache != null) {
                this.mPrivateFlags = (-6291457) & this.mPrivateFlags;
                if (i2 == 0 || (paint = this.mLayerPaint) == null) {
                    Paint paint2 = viewGroup.mCachePaint;
                    if (paint2 == null) {
                        paint2 = new Paint();
                        paint2.setDither(false);
                        viewGroup.mCachePaint = paint2;
                    }
                    paint2.setAlpha((int) (transitionAlpha * 255.0f));
                    canvas.drawBitmap(drawingCache, 0.0f, 0.0f, paint2);
                } else {
                    int alpha2 = paint.getAlpha();
                    if (transitionAlpha < 1.0f) {
                        this.mLayerPaint.setAlpha((int) (transitionAlpha * alpha2));
                    }
                    canvas.drawBitmap(drawingCache, 0.0f, 0.0f, this.mLayerPaint);
                    if (transitionAlpha < 1.0f) {
                        this.mLayerPaint.setAlpha(alpha2);
                    }
                }
            }
        } else if (z4) {
            this.mPrivateFlags = (-6291457) & this.mPrivateFlags;
            ((DisplayListCanvas) canvas).drawRenderNode(renderNode);
        } else {
            int i12 = this.mPrivateFlags;
            if ((i12 & 128) == 128) {
                this.mPrivateFlags = (-6291457) & i12;
                dispatchDraw(canvas);
            } else {
                draw(canvas);
            }
        }
        if (i7 >= 0) {
            canvas.restoreToCount(i7);
        }
        Animation animation3 = animation;
        if (animation3 != null && !z3) {
            if (!zIsHardwareAccelerated && !animation3.getFillAfter()) {
                onSetAlpha(255);
            }
            viewGroup.finishAnimatingView(this, animation3);
        }
        if (z3 && zIsHardwareAccelerated && animation3.hasAlpha() && (this.mPrivateFlags & 262144) == 262144) {
            invalidate(true);
        }
        this.mRecreateDisplayList = false;
        return z3;
    }

    public void drawableHotspotChanged(float f2, float f3) {
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
        Drawable drawable2 = this.mDefaultFocusHighlight;
        if (drawable2 != null) {
            drawable2.setHotspot(f2, f3);
        }
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo != null && foregroundInfo.mDrawable != null) {
            this.mForegroundInfo.mDrawable.setHotspot(f2, f3);
        }
        dispatchDrawableHotspotChanged(f2, f3);
    }

    public void drawableStateChanged() {
        ScrollBarDrawable scrollBarDrawable;
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mBackground;
        boolean z2 = false;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState) | false;
        Drawable drawable2 = this.mDefaultFocusHighlight;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        Drawable drawable3 = foregroundInfo != null ? foregroundInfo.mDrawable : null;
        if (drawable3 != null && drawable3.isStateful()) {
            state |= drawable3.setState(drawableState);
        }
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache != null && (scrollBarDrawable = scrollabilityCache.scrollBar) != null && scrollBarDrawable.isStateful()) {
            if (scrollBarDrawable.setState(drawableState) && this.mScrollCache.state != 0) {
                z2 = true;
            }
            state |= z2;
        }
        StateListAnimator stateListAnimator = this.mStateListAnimator;
        if (stateListAnimator != null) {
            stateListAnimator.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    public void encode(ViewHierarchyEncoder viewHierarchyEncoder) {
        viewHierarchyEncoder.beginObject(this);
        encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.endObject();
    }

    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        Object objResolveId = ViewDebug.resolveId(getContext(), this.mID);
        if (objResolveId instanceof String) {
            viewHierarchyEncoder.addProperty(Instrumentation.REPORT_KEY_IDENTIFIER, (String) objResolveId);
        } else {
            viewHierarchyEncoder.addProperty(Instrumentation.REPORT_KEY_IDENTIFIER, this.mID);
        }
        TransformationInfo transformationInfo = this.mTransformationInfo;
        viewHierarchyEncoder.addProperty("misc:transformation.alpha", transformationInfo != null ? transformationInfo.mAlpha : 0.0f);
        viewHierarchyEncoder.addProperty("misc:transitionName", getTransitionName());
        viewHierarchyEncoder.addProperty("layout:left", this.mLeft);
        viewHierarchyEncoder.addProperty("layout:right", this.mRight);
        viewHierarchyEncoder.addProperty("layout:top", this.mTop);
        viewHierarchyEncoder.addProperty("layout:bottom", this.mBottom);
        viewHierarchyEncoder.addProperty("layout:width", getWidth());
        viewHierarchyEncoder.addProperty("layout:height", getHeight());
        viewHierarchyEncoder.addProperty("layout:layoutDirection", getLayoutDirection());
        viewHierarchyEncoder.addProperty("layout:layoutRtl", isLayoutRtl());
        viewHierarchyEncoder.addProperty("layout:hasTransientState", hasTransientState());
        viewHierarchyEncoder.addProperty("layout:baseline", getBaseline());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewHierarchyEncoder.addPropertyKey("layoutParams");
            layoutParams.encode(viewHierarchyEncoder);
        }
        viewHierarchyEncoder.addProperty("scrolling:scrollX", this.mScrollX);
        viewHierarchyEncoder.addProperty("scrolling:scrollY", this.mScrollY);
        viewHierarchyEncoder.addProperty("padding:paddingLeft", this.mPaddingLeft);
        viewHierarchyEncoder.addProperty("padding:paddingRight", this.mPaddingRight);
        viewHierarchyEncoder.addProperty("padding:paddingTop", this.mPaddingTop);
        viewHierarchyEncoder.addProperty("padding:paddingBottom", this.mPaddingBottom);
        viewHierarchyEncoder.addProperty("padding:userPaddingRight", this.mUserPaddingRight);
        viewHierarchyEncoder.addProperty("padding:userPaddingLeft", this.mUserPaddingLeft);
        viewHierarchyEncoder.addProperty("padding:userPaddingBottom", this.mUserPaddingBottom);
        viewHierarchyEncoder.addProperty("padding:userPaddingStart", this.mUserPaddingStart);
        viewHierarchyEncoder.addProperty("padding:userPaddingEnd", this.mUserPaddingEnd);
        viewHierarchyEncoder.addProperty("measurement:minHeight", this.mMinHeight);
        viewHierarchyEncoder.addProperty("measurement:minWidth", this.mMinWidth);
        viewHierarchyEncoder.addProperty("measurement:measuredWidth", this.mMeasuredWidth);
        viewHierarchyEncoder.addProperty("measurement:measuredHeight", this.mMeasuredHeight);
        viewHierarchyEncoder.addProperty("drawing:elevation", getElevation());
        viewHierarchyEncoder.addProperty("drawing:translationX", getTranslationX());
        viewHierarchyEncoder.addProperty("drawing:translationY", getTranslationY());
        viewHierarchyEncoder.addProperty("drawing:translationZ", getTranslationZ());
        viewHierarchyEncoder.addProperty("drawing:rotation", getRotation());
        viewHierarchyEncoder.addProperty("drawing:rotationX", getRotationX());
        viewHierarchyEncoder.addProperty("drawing:rotationY", getRotationY());
        viewHierarchyEncoder.addProperty("drawing:scaleX", getScaleX());
        viewHierarchyEncoder.addProperty("drawing:scaleY", getScaleY());
        viewHierarchyEncoder.addProperty("drawing:pivotX", getPivotX());
        viewHierarchyEncoder.addProperty("drawing:pivotY", getPivotY());
        viewHierarchyEncoder.addProperty("drawing:opaque", isOpaque());
        viewHierarchyEncoder.addProperty("drawing:alpha", getAlpha());
        viewHierarchyEncoder.addProperty("drawing:transitionAlpha", getTransitionAlpha());
        viewHierarchyEncoder.addProperty("drawing:shadow", hasShadow());
        viewHierarchyEncoder.addProperty("drawing:solidColor", getSolidColor());
        viewHierarchyEncoder.addProperty("drawing:layerType", this.mLayerType);
        viewHierarchyEncoder.addProperty("drawing:willNotDraw", willNotDraw());
        viewHierarchyEncoder.addProperty("drawing:hardwareAccelerated", isHardwareAccelerated());
        viewHierarchyEncoder.addProperty("drawing:willNotCacheDrawing", willNotCacheDrawing());
        viewHierarchyEncoder.addProperty("drawing:drawingCacheEnabled", isDrawingCacheEnabled());
        viewHierarchyEncoder.addProperty("drawing:overlappingRendering", hasOverlappingRendering());
        viewHierarchyEncoder.addProperty("focus:hasFocus", hasFocus());
        viewHierarchyEncoder.addProperty("focus:isFocused", isFocused());
        viewHierarchyEncoder.addProperty("focus:focusable", getFocusable());
        viewHierarchyEncoder.addProperty("focus:isFocusable", isFocusable());
        viewHierarchyEncoder.addProperty("focus:isFocusableInTouchMode", isFocusableInTouchMode());
        viewHierarchyEncoder.addProperty("misc:clickable", isClickable());
        viewHierarchyEncoder.addProperty("misc:pressed", isPressed());
        viewHierarchyEncoder.addProperty("misc:selected", isSelected());
        viewHierarchyEncoder.addProperty("misc:touchMode", isInTouchMode());
        viewHierarchyEncoder.addProperty("misc:hovered", isHovered());
        viewHierarchyEncoder.addProperty("misc:activated", isActivated());
        viewHierarchyEncoder.addProperty("misc:visibility", getVisibility());
        viewHierarchyEncoder.addProperty("misc:fitsSystemWindows", getFitsSystemWindows());
        viewHierarchyEncoder.addProperty("misc:filterTouchesWhenObscured", getFilterTouchesWhenObscured());
        viewHierarchyEncoder.addProperty("misc:enabled", isEnabled());
        viewHierarchyEncoder.addProperty("misc:soundEffectsEnabled", isSoundEffectsEnabled());
        viewHierarchyEncoder.addProperty("misc:hapticFeedbackEnabled", isHapticFeedbackEnabled());
        Resources.Theme theme = getContext().getTheme();
        if (theme != null) {
            viewHierarchyEncoder.addPropertyKey("theme");
            theme.encode(viewHierarchyEncoder);
        }
        String[] strArr = this.mAttributes;
        int length = strArr != null ? strArr.length : 0;
        viewHierarchyEncoder.addProperty("meta:__attrCount__", length / 2);
        for (int i2 = 0; i2 < length; i2 += 2) {
            viewHierarchyEncoder.addProperty("meta:__attr__" + this.mAttributes[i2], this.mAttributes[i2 + 1]);
        }
        viewHierarchyEncoder.addProperty("misc:scrollBarStyle", getScrollBarStyle());
        viewHierarchyEncoder.addProperty("text:textDirection", getTextDirection());
        viewHierarchyEncoder.addProperty("text:textAlignment", getTextAlignment());
        CharSequence contentDescription = getContentDescription();
        viewHierarchyEncoder.addProperty("accessibility:contentDescription", contentDescription == null ? "" : contentDescription.toString());
        viewHierarchyEncoder.addProperty("accessibility:labelFor", getLabelFor());
        viewHierarchyEncoder.addProperty("accessibility:importantForAccessibility", getImportantForAccessibility());
    }

    public void ensureTransformationInfo() {
        if (this.mTransformationInfo == null) {
            this.mTransformationInfo = new TransformationInfo();
        }
    }

    public View findFocus() {
        if ((this.mPrivateFlags & 2) != 0) {
            return this;
        }
        return null;
    }

    public View findKeyboardNavigationCluster() {
        Object obj = this.mParent;
        if (!(obj instanceof View)) {
            return null;
        }
        View viewFindKeyboardNavigationCluster = ((View) obj).findKeyboardNavigationCluster();
        if (viewFindKeyboardNavigationCluster != null) {
            return viewFindKeyboardNavigationCluster;
        }
        if (isKeyboardNavigationCluster()) {
            return this;
        }
        return null;
    }

    public void findNamedViews(Map<String, View> map) {
        String transitionName;
        if ((getVisibility() == 0 || this.mGhostView != null) && (transitionName = getTransitionName()) != null) {
            map.put(transitionName, this);
        }
    }

    public View findUserSetNextFocus(View view, int i2) {
        int i3;
        if (i2 == 1) {
            final int i4 = this.mID;
            if (i4 == -1) {
                return null;
            }
            return view.findViewByPredicateInsideOut(this, new Predicate<View>() { // from class: android.view.View.1
                @Override // java.util.function.Predicate
                public boolean test(View view2) {
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

    public View findUserSetNextKeyboardNavigationCluster(View view, int i2) {
        int i3;
        if (i2 != 1) {
            if (i2 == 2 && (i3 = this.mNextClusterForwardId) != -1) {
                return findViewInsideOutShouldExist(view, i3);
            }
            return null;
        }
        final int i4 = this.mID;
        if (i4 == -1) {
            return null;
        }
        return view.findViewByPredicateInsideOut(this, new Predicate() { // from class: android.view.h
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return View.lambda$findUserSetNextKeyboardNavigationCluster$0(i4, (View) obj);
            }
        });
    }

    public final <T extends View> T findViewByAccessibilityId(int i2) {
        T t2;
        if (i2 >= 0 && (t2 = (T) findViewByAccessibilityIdTraversal(i2)) != null && t2.includeForAccessibility()) {
            return t2;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends View> T findViewByAccessibilityIdTraversal(int i2) {
        if (getAccessibilityViewId() == i2) {
            return this;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends View> T findViewByAutofillIdTraversal(int i2) {
        if (getAutofillViewId() == i2) {
            return this;
        }
        return null;
    }

    public final <T extends View> T findViewById(int i2) {
        if (i2 == -1) {
            return null;
        }
        return (T) findViewTraversal(i2);
    }

    public final <T extends View> T findViewByPredicate(Predicate<View> predicate) {
        return (T) findViewByPredicateTraversal(predicate, null);
    }

    public final <T extends View> T findViewByPredicateInsideOut(View view, Predicate<View> predicate) {
        T t2;
        View view2 = null;
        while (true) {
            t2 = (T) view.findViewByPredicateTraversal(predicate, view2);
            if (t2 != null || view == this) {
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
        return t2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends View> T findViewByPredicateTraversal(Predicate<View> predicate, View view) {
        if (predicate.test(this)) {
            return this;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends View> T findViewTraversal(int i2) {
        if (i2 == this.mID) {
            return this;
        }
        return null;
    }

    public final <T extends View> T findViewWithTag(Object obj) {
        if (obj == null) {
            return null;
        }
        return (T) findViewWithTagTraversal(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends View> T findViewWithTagTraversal(Object obj) {
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

    @Deprecated
    public boolean fitSystemWindows(Rect rect) {
        int i2 = this.mPrivateFlags3;
        if ((i2 & 32) != 0) {
            return fitSystemWindowsInt(rect);
        }
        if (rect == null) {
            return false;
        }
        try {
            this.mPrivateFlags3 = i2 | 64;
            return dispatchApplyWindowInsets(new WindowInsets(rect)).isConsumed();
        } finally {
            this.mPrivateFlags3 &= -65;
        }
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

    public void forceHasOverlappingRendering(boolean z2) {
        int i2 = this.mPrivateFlags3 | 16777216;
        this.mPrivateFlags3 = i2;
        if (z2) {
            this.mPrivateFlags3 = 8388608 | i2;
        } else {
            this.mPrivateFlags3 = (-8388609) & i2;
        }
    }

    public void forceLayout() {
        LongSparseLongArray longSparseLongArray = this.mMeasureCache;
        if (longSparseLongArray != null) {
            longSparseLongArray.clear();
        }
        this.mPrivateFlags = this.mPrivateFlags | 4096 | Integer.MIN_VALUE;
    }

    public boolean gatherTransparentRegion(Region region) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (region != null && attachInfo != null) {
            if ((this.mPrivateFlags & 128) == 0) {
                int[] iArr = attachInfo.mTransparentLocation;
                getLocationInWindow(iArr);
                int z2 = getZ() > 0.0f ? (int) getZ() : 0;
                int i2 = iArr[0];
                int i3 = iArr[1];
                region.op(i2 - z2, i3 - z2, ((i2 + this.mRight) - this.mLeft) + z2, (z2 * 3) + ((i3 + this.mBottom) - this.mTop), Region.Op.DIFFERENCE);
            } else {
                Drawable drawable = this.mBackground;
                if (drawable != null && drawable.getOpacity() != -2) {
                    applyDrawableToTransparentRegion(this.mBackground, region);
                }
                ForegroundInfo foregroundInfo = this.mForegroundInfo;
                if (foregroundInfo != null && foregroundInfo.mDrawable != null && this.mForegroundInfo.mDrawable.getOpacity() != -2) {
                    applyDrawableToTransparentRegion(this.mForegroundInfo.mDrawable, region);
                }
                Drawable drawable2 = this.mDefaultFocusHighlight;
                if (drawable2 != null && drawable2.getOpacity() != -2) {
                    applyDrawableToTransparentRegion(this.mDefaultFocusHighlight, region);
                }
            }
        }
        return true;
    }

    public CharSequence getAccessibilityClassName() {
        return View.class.getName();
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

    public int getAccessibilityTraversalAfter() {
        return this.mAccessibilityTraversalAfterId;
    }

    public int getAccessibilityTraversalBefore() {
        return this.mAccessibilityTraversalBeforeId;
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

    @ViewDebug.ExportedProperty
    public String[] getAutofillHints() {
        return this.mAutofillHints;
    }

    public final AutofillId getAutofillId() {
        if (this.mAutofillId == null) {
            this.mAutofillId = new AutofillId(getAutofillViewId());
        }
        return this.mAutofillId;
    }

    public int getAutofillType() {
        return 0;
    }

    public AutofillValue getAutofillValue() {
        return null;
    }

    public int getAutofillViewId() {
        if (this.mAutofillViewId == -1) {
            this.mAutofillViewId = this.mContext.getNextAutofillId();
        }
        return this.mAutofillViewId;
    }

    public Drawable getBackground() {
        return this.mBackground;
    }

    public ColorStateList getBackgroundTintList() {
        TintInfo tintInfo = this.mBackgroundTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        TintInfo tintInfo = this.mBackgroundTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    public int getBaseline() {
        return -1;
    }

    @ViewDebug.CapturedViewProperty
    public final int getBottom() {
        return this.mBottom;
    }

    public float getBottomFadingEdgeStrength() {
        return computeVerticalScrollExtent() + computeVerticalScrollOffset() < computeVerticalScrollRange() ? 1.0f : 0.0f;
    }

    public int getBottomPaddingOffset() {
        return 0;
    }

    public void getBoundsOnScreen(Rect rect) {
        getBoundsOnScreen(rect, false);
    }

    public float getCameraDistance() {
        return -(this.mRenderNode.getCameraDistance() * this.mResources.getDisplayMetrics().densityDpi);
    }

    public Rect getClipBounds() {
        if (this.mClipBounds != null) {
            return new Rect(this.mClipBounds);
        }
        return null;
    }

    public final boolean getClipToOutline() {
        return this.mRenderNode.getClipToOutline();
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

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean getDefaultFocusHighlightEnabled() {
        return this.mDefaultFocusHighlightEnabled;
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
        rect.right = (this.mRight - this.mLeft) + i2;
        rect.bottom = (this.mBottom - this.mTop) + i3;
    }

    public long getDrawingTime() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mDrawingTime;
        }
        return 0L;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getElevation() {
        return this.mRenderNode.getElevation();
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

    @ViewDebug.ExportedProperty
    public boolean getFitsSystemWindows() {
        return (this.mViewFlags & 2) == 2;
    }

    @ViewDebug.ExportedProperty(category = "focus", mapping = {@ViewDebug.IntToString(from = 0, to = "NOT_FOCUSABLE"), @ViewDebug.IntToString(from = 1, to = "FOCUSABLE"), @ViewDebug.IntToString(from = 16, to = "FOCUSABLE_AUTO")})
    public int getFocusable() {
        int i2 = this.mViewFlags;
        if ((i2 & 16) > 0) {
            return 16;
        }
        return i2 & 1;
    }

    public ArrayList<View> getFocusables(int i2) {
        ArrayList<View> arrayList = new ArrayList<>(24);
        addFocusables(arrayList, i2);
        return arrayList;
    }

    public void getFocusedRect(Rect rect) {
        getDrawingRect(rect);
    }

    public Drawable getForeground() {
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo != null) {
            return foregroundInfo.mDrawable;
        }
        return null;
    }

    public int getForegroundGravity() {
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        return foregroundInfo != null ? foregroundInfo.mGravity : BadgeDrawable.TOP_START;
    }

    public ColorStateList getForegroundTintList() {
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo == null || foregroundInfo.mTintInfo == null) {
            return null;
        }
        return this.mForegroundInfo.mTintInfo.mTintList;
    }

    public PorterDuff.Mode getForegroundTintMode() {
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo == null || foregroundInfo.mTintInfo == null) {
            return null;
        }
        return this.mForegroundInfo.mTintInfo.mTintMode;
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

    public final boolean getHasOverlappingRendering() {
        int i2 = this.mPrivateFlags3;
        if ((16777216 & i2) != 0) {
            return (i2 & 8388608) != 0;
        }
        return hasOverlappingRendering();
    }

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    public final int getHeight() {
        return this.mBottom - this.mTop;
    }

    public void getHitRect(Rect rect) {
        AttachInfo attachInfo;
        if (hasIdentityMatrix() || (attachInfo = this.mAttachInfo) == null) {
            rect.set(this.mLeft, this.mTop, this.mRight, this.mBottom);
            return;
        }
        RectF rectF = attachInfo.mTmpTransformRect;
        rectF.set(0.0f, 0.0f, getWidth(), getHeight());
        getMatrix().mapRect(rectF);
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

    public void getHotspotBounds(Rect rect) {
        Drawable background = getBackground();
        if (background != null) {
            background.getHotspotBounds(rect);
        } else {
            getBoundsOnScreen(rect);
        }
    }

    @ViewDebug.CapturedViewProperty
    public int getId() {
        return this.mID;
    }

    @ViewDebug.ExportedProperty(category = Context.ACCESSIBILITY_SERVICE, mapping = {@ViewDebug.IntToString(from = 0, to = "auto"), @ViewDebug.IntToString(from = 1, to = "yes"), @ViewDebug.IntToString(from = 2, to = "no"), @ViewDebug.IntToString(from = 4, to = "noHideDescendants")})
    public int getImportantForAccessibility() {
        return (this.mPrivateFlags2 & PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK) >> 20;
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "auto"), @ViewDebug.IntToString(from = 1, to = "yes"), @ViewDebug.IntToString(from = 2, to = "no"), @ViewDebug.IntToString(from = 4, to = "yesExcludeDescendants"), @ViewDebug.IntToString(from = 8, to = "noExcludeDescendants")})
    public int getImportantForAutofill() {
        return (this.mPrivateFlags3 & PFLAG3_IMPORTANT_FOR_AUTOFILL_MASK) >> 19;
    }

    public final Matrix getInverseMatrix() {
        ensureTransformationInfo();
        if (this.mTransformationInfo.mInverseMatrix == null) {
            this.mTransformationInfo.mInverseMatrix = new Matrix();
        }
        Matrix matrix = this.mTransformationInfo.mInverseMatrix;
        this.mRenderNode.getInverseMatrix(matrix);
        return matrix;
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

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, mapping = {@ViewDebug.IntToString(from = 0, to = "RESOLVED_DIRECTION_LTR"), @ViewDebug.IntToString(from = 1, to = "RESOLVED_DIRECTION_RTL")})
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
        rect.offset(-point.f71x, -point.f72y);
        return true;
    }

    public void getLocationInSurface(int[] iArr) {
        ViewRootImpl viewRootImpl;
        getLocationInWindow(iArr);
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || (viewRootImpl = attachInfo.mViewRootImpl) == null) {
            return;
        }
        int i2 = iArr[0];
        Rect rect = viewRootImpl.mWindowAttributes.surfaceInsets;
        iArr[0] = i2 + rect.left;
        iArr[1] = iArr[1] + rect.top;
    }

    public void getLocationInWindow(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            throw new IllegalArgumentException("outLocation must be an array of two integers");
        }
        iArr[0] = 0;
        iArr[1] = 0;
        transformFromViewToWindowSpace(iArr);
    }

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, indexMapping = {@ViewDebug.IntToString(from = 0, to = "x"), @ViewDebug.IntToString(from = 1, to = "y")})
    public int[] getLocationOnScreen() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        return iArr;
    }

    public Matrix getMatrix() {
        ensureTransformationInfo();
        Matrix matrix = this.mTransformationInfo.mMatrix;
        this.mRenderNode.getMatrix(matrix);
        return matrix;
    }

    public final int getMeasuredHeight() {
        return this.mMeasuredHeight & 16777215;
    }

    @ViewDebug.ExportedProperty(category = "measurement", flagMapping = {@ViewDebug.FlagToString(equals = 16777216, mask = -16777216, name = "MEASURED_STATE_TOO_SMALL")})
    public final int getMeasuredHeightAndState() {
        return this.mMeasuredHeight;
    }

    public final int getMeasuredState() {
        return (this.mMeasuredWidth & (-16777216)) | ((this.mMeasuredHeight >> 16) & (-256));
    }

    public final int getMeasuredWidth() {
        return this.mMeasuredWidth & 16777215;
    }

    @ViewDebug.ExportedProperty(category = "measurement", flagMapping = {@ViewDebug.FlagToString(equals = 16777216, mask = -16777216, name = "MEASURED_STATE_TOO_SMALL")})
    public final int getMeasuredWidthAndState() {
        return this.mMeasuredWidth;
    }

    public int getMinimumHeight() {
        return this.mMinHeight;
    }

    public int getMinimumWidth() {
        return this.mMinWidth;
    }

    public int getNextClusterForwardId() {
        return this.mNextClusterForwardId;
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

    public ViewOutlineProvider getOutlineProvider() {
        return this.mOutlineProvider;
    }

    public void getOutsets(Rect rect) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            rect.set(attachInfo.mOutsets);
        } else {
            rect.setEmpty();
        }
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
        return this.mRenderNode.getPivotX();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getPivotY() {
        return this.mRenderNode.getPivotY();
    }

    public PointerIcon getPointerIcon() {
        return this.mPointerIcon;
    }

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT, mapping = {@ViewDebug.IntToString(from = 0, to = "LTR"), @ViewDebug.IntToString(from = 1, to = "RTL"), @ViewDebug.IntToString(from = 2, to = "INHERIT"), @ViewDebug.IntToString(from = 3, to = "LOCALE")})
    public int getRawLayoutDirection() {
        return (this.mPrivateFlags2 & 12) >> 2;
    }

    @ViewDebug.ExportedProperty(category = "text", mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "GRAVITY"), @ViewDebug.IntToString(from = 2, to = "TEXT_START"), @ViewDebug.IntToString(from = 3, to = "TEXT_END"), @ViewDebug.IntToString(from = 4, to = "CENTER"), @ViewDebug.IntToString(from = 5, to = "VIEW_START"), @ViewDebug.IntToString(from = 6, to = "VIEW_END")})
    public int getRawTextAlignment() {
        return (this.mPrivateFlags2 & PFLAG2_TEXT_ALIGNMENT_MASK) >> 13;
    }

    @ViewDebug.ExportedProperty(category = "text", mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "FIRST_STRONG"), @ViewDebug.IntToString(from = 2, to = "ANY_RTL"), @ViewDebug.IntToString(from = 3, to = "LTR"), @ViewDebug.IntToString(from = 4, to = "RTL"), @ViewDebug.IntToString(from = 5, to = "LOCALE"), @ViewDebug.IntToString(from = 6, to = "FIRST_STRONG_LTR"), @ViewDebug.IntToString(from = 7, to = "FIRST_STRONG_RTL")})
    public int getRawTextDirection() {
        return (this.mPrivateFlags2 & 448) >> 6;
    }

    public Resources getResources() {
        return this.mResources;
    }

    public final boolean getRevealOnFocusHint() {
        return (this.mPrivateFlags3 & 67108864) == 0;
    }

    @ViewDebug.CapturedViewProperty
    public final int getRight() {
        return this.mRight;
    }

    public float getRightFadingEdgeStrength() {
        return computeHorizontalScrollExtent() + computeHorizontalScrollOffset() < computeHorizontalScrollRange() ? 1.0f : 0.0f;
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

    public WindowInsets getRootWindowInsets() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mViewRootImpl.getWindowInsets(false);
        }
        return null;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotation() {
        return this.mRenderNode.getRotation();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotationX() {
        return this.mRenderNode.getRotationX();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotationY() {
        return this.mRenderNode.getRotationY();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getScaleX() {
        return this.mRenderNode.getScaleX();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getScaleY() {
        return this.mRenderNode.getScaleY();
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

    public void getScrollIndicatorBounds(Rect rect) {
        int i2 = this.mScrollX;
        rect.left = i2;
        rect.right = (i2 + this.mRight) - this.mLeft;
        int i3 = this.mScrollY;
        rect.top = i3;
        rect.bottom = (i3 + this.mBottom) - this.mTop;
    }

    public int getScrollIndicators() {
        return (this.mPrivateFlags3 & SCROLL_INDICATORS_PFLAG3_MASK) >>> 8;
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

    public StateListAnimator getStateListAnimator() {
        return this.mStateListAnimator;
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

    @ViewDebug.ExportedProperty(category = "text", mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "GRAVITY"), @ViewDebug.IntToString(from = 2, to = "TEXT_START"), @ViewDebug.IntToString(from = 3, to = "TEXT_END"), @ViewDebug.IntToString(from = 4, to = "CENTER"), @ViewDebug.IntToString(from = 5, to = "VIEW_START"), @ViewDebug.IntToString(from = 6, to = "VIEW_END")})
    public int getTextAlignment() {
        return (this.mPrivateFlags2 & PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK) >> 17;
    }

    @ViewDebug.ExportedProperty(category = "text", mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "FIRST_STRONG"), @ViewDebug.IntToString(from = 2, to = "ANY_RTL"), @ViewDebug.IntToString(from = 3, to = "LTR"), @ViewDebug.IntToString(from = 4, to = "RTL"), @ViewDebug.IntToString(from = 5, to = "LOCALE"), @ViewDebug.IntToString(from = 6, to = "FIRST_STRONG_LTR"), @ViewDebug.IntToString(from = 7, to = "FIRST_STRONG_RTL")})
    public int getTextDirection() {
        return (this.mPrivateFlags2 & PFLAG2_TEXT_DIRECTION_RESOLVED_MASK) >> 10;
    }

    public ThreadedRenderer getThreadedRenderer() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mThreadedRenderer;
        }
        return null;
    }

    public CharSequence getTooltip() {
        return getTooltipText();
    }

    public CharSequence getTooltipText() {
        TooltipInfo tooltipInfo = this.mTooltipInfo;
        if (tooltipInfo != null) {
            return tooltipInfo.mTooltipText;
        }
        return null;
    }

    public View getTooltipView() {
        TooltipPopup tooltipPopup;
        TooltipInfo tooltipInfo = this.mTooltipInfo;
        if (tooltipInfo == null || (tooltipPopup = tooltipInfo.mTooltipPopup) == null) {
            return null;
        }
        return tooltipPopup.getContentView();
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

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTransitionAlpha() {
        TransformationInfo transformationInfo = this.mTransformationInfo;
        if (transformationInfo != null) {
            return transformationInfo.mTransitionAlpha;
        }
        return 1.0f;
    }

    @ViewDebug.ExportedProperty
    public String getTransitionName() {
        return this.mTransitionName;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationX() {
        return this.mRenderNode.getTranslationX();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationY() {
        return this.mRenderNode.getTranslationY();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationZ() {
        return this.mRenderNode.getTranslationZ();
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
            if (!this.mContext.getTheme().resolveAttribute(16842829, typedValue, true)) {
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
            this.mFloatingTreeObserver = new ViewTreeObserver(this.mContext);
        }
        return this.mFloatingTreeObserver;
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "VISIBLE"), @ViewDebug.IntToString(from = 4, to = "INVISIBLE"), @ViewDebug.IntToString(from = 8, to = "GONE")})
    public int getVisibility() {
        return this.mViewFlags & 12;
    }

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    public final int getWidth() {
        return this.mRight - this.mLeft;
    }

    public int getWindowAttachCount() {
        return this.mWindowAttachCount;
    }

    public void getWindowDisplayFrame(Rect rect) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            DisplayManagerGlobal.getInstance().getRealDisplay(0).getRectSize(rect);
        } else {
            try {
                attachInfo.mSession.getDisplayFrame(attachInfo.mWindow, rect);
            } catch (RemoteException unused) {
            }
        }
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
        return getTranslationX() + this.mLeft;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getY() {
        return getTranslationY() + this.mTop;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getZ() {
        return getTranslationZ() + getElevation();
    }

    public void handleFocusGainInternal(int i2, Rect rect) {
        int i3 = this.mPrivateFlags;
        if ((i3 & 2) == 0) {
            this.mPrivateFlags = i3 | 2;
            View viewFindFocus = this.mAttachInfo != null ? getRootView().findFocus() : null;
            ViewParent viewParent = this.mParent;
            if (viewParent != null) {
                viewParent.requestChildFocus(this, this);
                updateFocusedInCluster(viewFindFocus, i2);
            }
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null) {
                attachInfo.mTreeObserver.dispatchOnGlobalFocusChange(viewFindFocus, this);
            }
            onFocusChanged(true, i2, rect);
            refreshDrawableState();
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0113 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x0114  */
    /* JADX WARN: Code duplicated, block: B:48:0x011a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0121  */
    /* JADX WARN: Code duplicated, block: B:52:0x0127  */
    public boolean handleScrollBarDragging(MotionEvent motionEvent) {
        if (this.mScrollCache == null) {
            return false;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        int action = motionEvent.getAction();
        if ((this.mScrollCache.mScrollBarDraggingState == 0 && action != 0) || !motionEvent.isFromSource(8194) || !motionEvent.isButtonPressed(1)) {
            this.mScrollCache.mScrollBarDraggingState = 0;
            return false;
        }
        if (action == 0) {
            if (this.mScrollCache.state == 0) {
                return false;
            }
            if (isOnVerticalScrollbarThumb(x2, y2)) {
                ScrollabilityCache scrollabilityCache = this.mScrollCache;
                scrollabilityCache.mScrollBarDraggingState = 1;
                scrollabilityCache.mScrollBarDraggingPos = y2;
                return true;
            }
            if (isOnHorizontalScrollbarThumb(x2, y2)) {
                ScrollabilityCache scrollabilityCache2 = this.mScrollCache;
                scrollabilityCache2.mScrollBarDraggingState = 2;
                scrollabilityCache2.mScrollBarDraggingPos = x2;
                return true;
            }
        } else if (action == 2) {
            ScrollabilityCache scrollabilityCache3 = this.mScrollCache;
            int i2 = scrollabilityCache3.mScrollBarDraggingState;
            if (i2 == 0) {
                return false;
            }
            if (i2 == 1) {
                Rect rect = scrollabilityCache3.mScrollBarBounds;
                getVerticalScrollBarBounds(rect, null);
                int iComputeVerticalScrollRange = computeVerticalScrollRange();
                int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
                int iComputeVerticalScrollExtent = computeVerticalScrollExtent();
                int thumbLength = ScrollBarUtils.getThumbLength(rect.height(), rect.width(), iComputeVerticalScrollExtent, iComputeVerticalScrollRange);
                int thumbOffset = ScrollBarUtils.getThumbOffset(rect.height(), thumbLength, iComputeVerticalScrollExtent, iComputeVerticalScrollRange, iComputeVerticalScrollOffset);
                float f2 = y2 - this.mScrollCache.mScrollBarDraggingPos;
                float fHeight = rect.height() - thumbLength;
                float fMin = Math.min(Math.max(thumbOffset + f2, 0.0f), fHeight);
                int height = getHeight();
                if (Math.round(fMin) != thumbOffset && fHeight > 0.0f && height > 0 && iComputeVerticalScrollExtent > 0) {
                    int iRound = Math.round((fMin / fHeight) * ((iComputeVerticalScrollRange - iComputeVerticalScrollExtent) / (iComputeVerticalScrollExtent / height)));
                    if (iRound != getScrollY()) {
                        this.mScrollCache.mScrollBarDraggingPos = y2;
                        setScrollY(iRound);
                    }
                }
                return true;
            }
            if (i2 == 2) {
                Rect rect2 = scrollabilityCache3.mScrollBarBounds;
                getHorizontalScrollBarBounds(rect2, null);
                int iComputeHorizontalScrollRange = computeHorizontalScrollRange();
                int iComputeHorizontalScrollOffset = computeHorizontalScrollOffset();
                int iComputeHorizontalScrollExtent = computeHorizontalScrollExtent();
                int thumbLength2 = ScrollBarUtils.getThumbLength(rect2.width(), rect2.height(), iComputeHorizontalScrollExtent, iComputeHorizontalScrollRange);
                int thumbOffset2 = ScrollBarUtils.getThumbOffset(rect2.width(), thumbLength2, iComputeHorizontalScrollExtent, iComputeHorizontalScrollRange, iComputeHorizontalScrollOffset);
                float f3 = x2 - this.mScrollCache.mScrollBarDraggingPos;
                float fWidth = rect2.width() - thumbLength2;
                float fMin2 = Math.min(Math.max(thumbOffset2 + f3, 0.0f), fWidth);
                int width = getWidth();
                if (Math.round(fMin2) != thumbOffset2 && fWidth > 0.0f && width > 0 && iComputeHorizontalScrollExtent > 0) {
                    int iRound2 = Math.round((fMin2 / fWidth) * ((iComputeHorizontalScrollRange - iComputeHorizontalScrollExtent) / (iComputeHorizontalScrollExtent / width)));
                    if (iRound2 != getScrollX()) {
                        this.mScrollCache.mScrollBarDraggingPos = x2;
                        setScrollX(iRound2);
                    }
                }
                return true;
            }
            if (this.mScrollCache.state == 0) {
                return false;
            }
            if (isOnVerticalScrollbarThumb(x2, y2)) {
                ScrollabilityCache scrollabilityCache4 = this.mScrollCache;
                scrollabilityCache4.mScrollBarDraggingState = 1;
                scrollabilityCache4.mScrollBarDraggingPos = y2;
                return true;
            }
            if (isOnHorizontalScrollbarThumb(x2, y2)) {
                ScrollabilityCache scrollabilityCache5 = this.mScrollCache;
                scrollabilityCache5.mScrollBarDraggingState = 2;
                scrollabilityCache5.mScrollBarDraggingPos = x2;
                return true;
            }
        }
        this.mScrollCache.mScrollBarDraggingState = 0;
        return false;
    }

    public void handleTooltipKey(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                return;
            }
            handleTooltipUp();
        } else if (keyEvent.getRepeatCount() == 0) {
            hideTooltip();
        }
    }

    public boolean hasDefaultFocus() {
        return isFocusedByDefault();
    }

    public boolean hasExplicitFocusable() {
        return hasFocusable(false, true);
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean hasFocus() {
        return (this.mPrivateFlags & 2) != 0;
    }

    public boolean hasFocusable() {
        return hasFocusable(!sHasFocusableExcludeAutoFocusable, false);
    }

    public boolean hasHoveredChild() {
        return false;
    }

    public final boolean hasIdentityMatrix() {
        return this.mRenderNode.hasIdentityMatrix();
    }

    public boolean hasNestedScrollingParent() {
        return this.mNestedScrollingParent != null;
    }

    public boolean hasOnClickListeners() {
        ListenerInfo listenerInfo = this.mListenerInfo;
        return (listenerInfo == null || listenerInfo.mOnClickListener == null) ? false : true;
    }

    public boolean hasOpaqueScrollbars() {
        return (this.mPrivateFlags & 16777216) == 16777216;
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean hasOverlappingRendering() {
        return true;
    }

    public boolean hasPointerCapture() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl == null) {
            return false;
        }
        return viewRootImpl.hasPointerCapture();
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean hasShadow() {
        return this.mRenderNode.hasShadow();
    }

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    public boolean hasTransientState() {
        return (this.mPrivateFlags2 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
    }

    public boolean hasWindowFocus() {
        AttachInfo attachInfo = this.mAttachInfo;
        return attachInfo != null && attachInfo.mHasWindowFocus;
    }

    public void hideTooltip() {
        TooltipInfo tooltipInfo = this.mTooltipInfo;
        if (tooltipInfo == null) {
            return;
        }
        removeCallbacks(tooltipInfo.mShowTooltipRunnable);
        TooltipPopup tooltipPopup = this.mTooltipInfo.mTooltipPopup;
        if (tooltipPopup == null) {
            return;
        }
        tooltipPopup.hide();
        TooltipInfo tooltipInfo2 = this.mTooltipInfo;
        tooltipInfo2.mTooltipPopup = null;
        tooltipInfo2.mTooltipFromLongClick = false;
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mTooltipHost = null;
        }
    }

    public boolean includeForAccessibility() {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return (attachInfo.mAccessibilityFetchFlags & 8) != 0 || isImportantForAccessibility();
        }
        return false;
    }

    public void initializeFadingEdge(TypedArray typedArray) {
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(R.styleable.View);
        initializeFadingEdgeInternal(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void initializeFadingEdgeInternal(TypedArray typedArray) {
        initScrollCache();
        this.mScrollCache.fadingEdgeLength = typedArray.getDimensionPixelSize(25, ViewConfiguration.get(this.mContext).getScaledFadingEdgeLength());
    }

    public void initializeScrollbars(TypedArray typedArray) {
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(R.styleable.View);
        initializeScrollbarsInternal(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void initializeScrollbarsInternal(TypedArray typedArray) {
        initScrollCache();
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache.scrollBar == null) {
            ScrollBarDrawable scrollBarDrawable = new ScrollBarDrawable();
            scrollabilityCache.scrollBar = scrollBarDrawable;
            scrollBarDrawable.setState(getDrawableState());
            scrollabilityCache.scrollBar.setCallback(this);
        }
        boolean z2 = typedArray.getBoolean(47, true);
        if (!z2) {
            scrollabilityCache.state = 1;
        }
        scrollabilityCache.fadeScrollBars = z2;
        scrollabilityCache.scrollBarFadeDuration = typedArray.getInt(45, ViewConfiguration.getScrollBarFadeDuration());
        scrollabilityCache.scrollBarDefaultDelayBeforeFade = typedArray.getInt(46, ViewConfiguration.getScrollDefaultDelay());
        scrollabilityCache.scrollBarSize = typedArray.getDimensionPixelSize(1, ViewConfiguration.get(this.mContext).getScaledScrollBarSize());
        scrollabilityCache.scrollBar.setHorizontalTrackDrawable(typedArray.getDrawable(4));
        Drawable drawable = typedArray.getDrawable(2);
        if (drawable != null) {
            scrollabilityCache.scrollBar.setHorizontalThumbDrawable(drawable);
        }
        if (typedArray.getBoolean(6, false)) {
            scrollabilityCache.scrollBar.setAlwaysDrawHorizontalTrack(true);
        }
        Drawable drawable2 = typedArray.getDrawable(5);
        scrollabilityCache.scrollBar.setVerticalTrackDrawable(drawable2);
        Drawable drawable3 = typedArray.getDrawable(3);
        if (drawable3 != null) {
            scrollabilityCache.scrollBar.setVerticalThumbDrawable(drawable3);
        }
        if (typedArray.getBoolean(7, false)) {
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
        boolean z2 = true;
        boolean z3 = false;
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
            z3 = true;
        }
        if (this.mPaddingTop != i3) {
            this.mPaddingTop = i3;
            z3 = true;
        }
        if (this.mPaddingRight != i4) {
            this.mPaddingRight = i4;
            z3 = true;
        }
        if (this.mPaddingBottom != i5) {
            this.mPaddingBottom = i5;
        } else {
            z2 = z3;
        }
        if (z2) {
            requestLayout();
            invalidateOutline();
        }
    }

    public void invalidate(Rect rect) {
        int i2 = this.mScrollX;
        int i3 = this.mScrollY;
        invalidateInternal(rect.left - i2, rect.top - i3, rect.right - i2, rect.bottom - i3, true, false);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (verifyDrawable(drawable)) {
            Rect dirtyBounds = drawable.getDirtyBounds();
            int i2 = this.mScrollX;
            int i3 = this.mScrollY;
            invalidate(dirtyBounds.left + i2, dirtyBounds.top + i3, dirtyBounds.right + i2, dirtyBounds.bottom + i3);
            rebuildOutline();
        }
    }

    public void invalidateInheritedLayoutMode(int i2) {
    }

    public void invalidateInternal(int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
        View projectionReceiver;
        GhostView ghostView = this.mGhostView;
        if (ghostView != null) {
            ghostView.invalidate(true);
            return;
        }
        if (skipInvalidate()) {
            return;
        }
        int i6 = this.mPrivateFlags;
        if ((i6 & 48) == 48 || ((z2 && (i6 & 32768) == 32768) || (i6 & Integer.MIN_VALUE) != Integer.MIN_VALUE || (z3 && isOpaque() != this.mLastIsOpaque))) {
            if (z3) {
                this.mLastIsOpaque = isOpaque();
                this.mPrivateFlags &= -33;
            }
            int i7 = this.mPrivateFlags | 2097152;
            this.mPrivateFlags = i7;
            if (z2) {
                this.mPrivateFlags = (i7 | Integer.MIN_VALUE) & (-32769);
            }
            AttachInfo attachInfo = this.mAttachInfo;
            ViewParent viewParent = this.mParent;
            if (viewParent != null && attachInfo != null && i2 < i4 && i3 < i5) {
                Rect rect = attachInfo.mTmpInvalRect;
                rect.set(i2, i3, i4, i5);
                viewParent.invalidateChild(this, rect);
            }
            Drawable drawable = this.mBackground;
            if (drawable == null || !drawable.isProjected() || (projectionReceiver = getProjectionReceiver()) == null) {
                return;
            }
            projectionReceiver.damageInParent();
        }
    }

    public void invalidateOutline() {
        rebuildOutline();
        notifySubtreeAccessibilityStateChangedIfNeeded();
        invalidateViewProperty(false, false);
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

    public void invalidateParentIfNeededAndWasQuickRejected() {
        if ((this.mPrivateFlags2 & 268435456) != 0) {
            invalidateParentIfNeeded();
        }
    }

    public void invalidateViewProperty(boolean z2, boolean z3) {
        if (isHardwareAccelerated() && this.mRenderNode.isValid() && (this.mPrivateFlags & 64) == 0) {
            damageInParent();
            return;
        }
        if (z2) {
            invalidateParentCaches();
        }
        if (z3) {
            this.mPrivateFlags |= 32;
        }
        invalidate(false);
    }

    public boolean isAccessibilityFocused() {
        return (this.mPrivateFlags2 & 67108864) != 0;
    }

    public boolean isAccessibilityFocusedViewOrHost() {
        return isAccessibilityFocused() || (getViewRootImpl() != null && getViewRootImpl().getAccessibilityFocusedHost() == this);
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

    public boolean isAssistBlocked() {
        return (this.mPrivateFlags3 & 16384) != 0;
    }

    public boolean isAttachedToWindow() {
        return this.mAttachInfo != null;
    }

    public boolean isAutofilled() {
        return (this.mPrivateFlags3 & 65536) != 0;
    }

    @ViewDebug.ExportedProperty
    public boolean isClickable() {
        return (this.mViewFlags & 16384) == 16384;
    }

    public boolean isContextClickable() {
        return (this.mViewFlags & 8388608) == 8388608;
    }

    public boolean isDefaultFocusHighlightNeeded(Drawable drawable, Drawable drawable2) {
        return !isInTouchMode() && getDefaultFocusHighlightEnabled() && ((drawable == null || !drawable.isStateful() || !drawable.hasFocusStateSpecified()) && (drawable2 == null || !drawable2.isStateful() || !drawable2.hasFocusStateSpecified())) && isAttachedToWindow() && sUseDefaultFocusHighlight;
    }

    public boolean isDirty() {
        return (this.mPrivateFlags & 6291456) != 0;
    }

    public boolean isDraggingScrollBar() {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        return (scrollabilityCache == null || scrollabilityCache.mScrollBarDraggingState == 0) ? false : true;
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

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isFocusableInTouchMode() {
        return 262144 == (this.mViewFlags & 262144);
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean isFocused() {
        return (this.mPrivateFlags & 2) != 0;
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isFocusedByDefault() {
        return (this.mPrivateFlags3 & 262144) != 0;
    }

    public boolean isForegroundInsidePadding() {
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo != null) {
            return foregroundInfo.mInsidePadding;
        }
        return true;
    }

    @ViewDebug.ExportedProperty
    public boolean isHapticFeedbackEnabled() {
        return 268435456 == (this.mViewFlags & 268435456);
    }

    @ViewDebug.ExportedProperty(category = "drawing")
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

    public final boolean isImportantForAutofill() {
        int i2;
        String resourceEntryName;
        for (ViewParent parent = this.mParent; parent instanceof View; parent = parent.getParent()) {
            int importantForAutofill = ((View) parent).getImportantForAutofill();
            if (importantForAutofill == 8 || importantForAutofill == 4) {
                return false;
            }
        }
        int importantForAutofill2 = getImportantForAutofill();
        if (importantForAutofill2 == 4 || importantForAutofill2 == 1) {
            return true;
        }
        if (importantForAutofill2 != 8 && importantForAutofill2 != 2 && (i2 = this.mID) != -1 && !isViewIdGenerated(i2)) {
            Resources resources = getResources();
            String resourcePackageName = null;
            try {
                resourceEntryName = resources.getResourceEntryName(i2);
                try {
                    resourcePackageName = resources.getResourcePackageName(i2);
                } catch (Resources.NotFoundException unused) {
                }
            } catch (Resources.NotFoundException unused2) {
                resourceEntryName = null;
            }
            if (resourceEntryName != null && resourcePackageName != null && resourcePackageName.equals(this.mContext.getPackageName())) {
                return true;
            }
        }
        return false;
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

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isKeyboardNavigationCluster() {
        return (this.mPrivateFlags3 & 32768) != 0;
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

    @ViewDebug.ExportedProperty(category = TtmlUtils.TAG_LAYOUT)
    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    public boolean isLongClickable() {
        return (this.mViewFlags & 2097152) == 2097152;
    }

    public boolean isNestedScrollingEnabled() {
        return (this.mPrivateFlags3 & 128) == 128;
    }

    public boolean isOnScrollbar(float f2, float f3) {
        if (this.mScrollCache == null) {
            return false;
        }
        float scrollX = f2 + getScrollX();
        float scrollY = f3 + getScrollY();
        if (isVerticalScrollBarEnabled() && !isVerticalScrollBarHidden()) {
            Rect rect = this.mScrollCache.mScrollBarTouchBounds;
            getVerticalScrollBarBounds(null, rect);
            if (rect.contains((int) scrollX, (int) scrollY)) {
                return true;
            }
        }
        if (isHorizontalScrollBarEnabled()) {
            Rect rect2 = this.mScrollCache.mScrollBarTouchBounds;
            getHorizontalScrollBarBounds(null, rect2);
            if (rect2.contains((int) scrollX, (int) scrollY)) {
                return true;
            }
        }
        return false;
    }

    public boolean isOnScrollbarThumb(float f2, float f3) {
        return isOnVerticalScrollbarThumb(f2, f3) || isOnHorizontalScrollbarThumb(f2, f3);
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

    @ViewDebug.ExportedProperty
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

    public final boolean isTemporarilyDetached() {
        return (this.mPrivateFlags3 & 33554432) != 0;
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
        StateListAnimator stateListAnimator = this.mStateListAnimator;
        if (stateListAnimator != null) {
            stateListAnimator.jumpToCurrentState();
        }
        Drawable drawable2 = this.mDefaultFocusHighlight;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo == null || foregroundInfo.mDrawable == null) {
            return;
        }
        this.mForegroundInfo.mDrawable.jumpToCurrentState();
    }

    public View keyboardNavigationClusterSearch(View view, int i2) {
        if (isKeyboardNavigationCluster()) {
            view = this;
        }
        if (isRootNamespace()) {
            return FocusFinder.getInstance().findNextKeyboardNavigationCluster(this, view, i2);
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            return viewParent.keyboardNavigationClusterSearch(view, i2);
        }
        return null;
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
            if (!shouldDrawRoundScrollbar()) {
                this.mRoundScrollbarRenderer = null;
            } else if (this.mRoundScrollbarRenderer == null) {
                this.mRoundScrollbarRenderer = new RoundScrollbarRenderer(this);
            }
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
        int i11 = this.mPrivateFlags3 | 4;
        this.mPrivateFlags3 = i11;
        if ((134217728 & i11) != 0) {
            this.mPrivateFlags3 = i11 & (-134217729);
            notifyEnterOrExitForAutoFillIfNeeded(true);
        }
    }

    public void makeOptionalFitsSystemWindows() {
        setFlags(2048, 2048);
    }

    public void mapRectFromViewToScreenCoords(RectF rectF, boolean z2) {
        if (!hasIdentityMatrix()) {
            getMatrix().mapRect(rectF);
        }
        rectF.offset(this.mLeft, this.mTop);
        Object obj = this.mParent;
        while (obj instanceof View) {
            View view = (View) obj;
            rectF.offset(-view.mScrollX, -view.mScrollY);
            if (z2) {
                rectF.left = Math.max(rectF.left, 0.0f);
                rectF.top = Math.max(rectF.top, 0.0f);
                rectF.right = Math.min(rectF.right, view.getWidth());
                rectF.bottom = Math.min(rectF.bottom, view.getHeight());
            }
            if (!view.hasIdentityMatrix()) {
                view.getMatrix().mapRect(rectF);
            }
            rectF.offset(view.mLeft, view.mTop);
            obj = view.mParent;
        }
        if (obj instanceof ViewRootImpl) {
            rectF.offset(0.0f, -((ViewRootImpl) obj).mCurScrollY);
        }
        AttachInfo attachInfo = this.mAttachInfo;
        rectF.offset(attachInfo.mWindowLeft, attachInfo.mWindowTop);
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
        long j2 = (((long) i2) << 32) | (((long) i3) & 4294967295L);
        if (this.mMeasureCache == null) {
            this.mMeasureCache = new LongSparseLongArray(2);
        }
        boolean z2 = true;
        boolean z3 = (this.mPrivateFlags & 4096) == 4096;
        boolean z4 = (i2 == this.mOldWidthMeasureSpec && i3 == this.mOldHeightMeasureSpec) ? false : true;
        boolean z5 = MeasureSpec.getMode(i2) == 1073741824 && MeasureSpec.getMode(i3) == 1073741824;
        boolean z6 = getMeasuredWidth() == MeasureSpec.getSize(i2) && getMeasuredHeight() == MeasureSpec.getSize(i3);
        if (!z4 || (!sAlwaysRemeasureExactly && z5 && z6)) {
            z2 = false;
        }
        if (z3 || z2) {
            this.mPrivateFlags &= -2049;
            resolveRtlPropertiesIfNeeded();
            int iIndexOfKey = z3 ? -1 : this.mMeasureCache.indexOfKey(j2);
            if (iIndexOfKey < 0 || sIgnoreMeasureCache) {
                onMeasure(i2, i3);
                this.mPrivateFlags3 &= -9;
            } else {
                long jValueAt = this.mMeasureCache.valueAt(iIndexOfKey);
                setMeasuredDimensionRaw((int) (jValueAt >> 32), (int) jValueAt);
                this.mPrivateFlags3 |= 8;
            }
            int i6 = this.mPrivateFlags;
            if ((i6 & 2048) != 2048) {
                throw new IllegalStateException("View with id " + getId() + ": " + getClass().getName() + "#onMeasure() did not set the measured dimension by calling setMeasuredDimension()");
            }
            this.mPrivateFlags = i6 | 8192;
        }
        this.mOldWidthMeasureSpec = i2;
        this.mOldHeightMeasureSpec = i3;
        this.mMeasureCache.put(j2, (((long) this.mMeasuredWidth) << 32) | (((long) this.mMeasuredHeight) & 4294967295L));
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
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled() || this.mAttachInfo == null) {
            return;
        }
        int i2 = this.mPrivateFlags2;
        if ((i2 & 134217728) == 0) {
            this.mPrivateFlags2 = i2 | 134217728;
            ViewParent viewParent = this.mParent;
            if (viewParent != null) {
                try {
                    viewParent.notifySubtreeAccessibilityStateChanged(this, this, 1);
                } catch (AbstractMethodError e2) {
                    Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                }
            }
        }
    }

    public void notifyViewAccessibilityStateChangedIfNeeded(int i2) {
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled() || this.mAttachInfo == null) {
            return;
        }
        if (getAccessibilityLiveRegion() != 0) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
            accessibilityEventObtain.setEventType(2048);
            accessibilityEventObtain.setContentChangeTypes(i2);
            sendAccessibilityEventUnchecked(accessibilityEventObtain);
            return;
        }
        ViewParent viewParent = this.mParent;
        if (viewParent != null) {
            try {
                viewParent.notifySubtreeAccessibilityStateChanged(this, this, i2);
            } catch (AbstractMethodError e2) {
                Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
            }
        }
    }

    public void offsetLeftAndRight(int i2) {
        AttachInfo attachInfo;
        int i3;
        int i4;
        if (i2 != 0) {
            boolean zHasIdentityMatrix = hasIdentityMatrix();
            if (!zHasIdentityMatrix || isHardwareAccelerated()) {
                invalidateViewProperty(false, false);
            } else {
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
            }
            this.mLeft += i2;
            this.mRight += i2;
            this.mRenderNode.offsetLeftAndRight(i2);
            if (isHardwareAccelerated()) {
                invalidateViewProperty(false, false);
                invalidateParentIfNeededAndWasQuickRejected();
            } else {
                if (!zHasIdentityMatrix) {
                    invalidateViewProperty(false, true);
                }
                invalidateParentIfNeeded();
            }
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void offsetTopAndBottom(int i2) {
        AttachInfo attachInfo;
        int i3;
        int i4;
        int i5;
        if (i2 != 0) {
            boolean zHasIdentityMatrix = hasIdentityMatrix();
            if (!zHasIdentityMatrix || isHardwareAccelerated()) {
                invalidateViewProperty(false, false);
            } else {
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
            }
            this.mTop += i2;
            this.mBottom += i2;
            this.mRenderNode.offsetTopAndBottom(i2);
            if (isHardwareAccelerated()) {
                invalidateViewProperty(false, false);
                invalidateParentIfNeededAndWasQuickRejected();
            } else {
                if (!zHasIdentityMatrix) {
                    invalidateViewProperty(false, true);
                }
                invalidateParentIfNeeded();
            }
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
    }

    public void onAnimationEnd() {
        this.mPrivateFlags &= -65537;
    }

    public void onAnimationStart() {
        this.mPrivateFlags |= 65536;
    }

    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if ((this.mPrivateFlags3 & 64) == 0) {
            return fitSystemWindows(windowInsets.getSystemWindowInsets()) ? windowInsets.consumeSystemWindowInsets() : windowInsets;
        }
        return fitSystemWindowsInt(windowInsets.getSystemWindowInsets()) ? windowInsets.consumeSystemWindowInsets() : windowInsets;
    }

    public void onAttachedToWindow() {
        InputMethodManager inputMethodManagerPeekInstance;
        if ((this.mPrivateFlags & 512) != 0) {
            this.mParent.requestTransparentRegion(this);
        }
        this.mPrivateFlags3 &= -5;
        jumpDrawablesToCurrentState();
        resetSubtreeAccessibilityStateChanged();
        rebuildOutline();
        if (!isFocused() || (inputMethodManagerPeekInstance = InputMethodManager.peekInstance()) == null) {
            return;
        }
        inputMethodManagerPeekInstance.focusIn(this);
    }

    public void onCancelPendingInputEvents() {
        removePerformClickCallback();
        cancelLongPress();
        this.mPrivateFlags3 |= 16;
    }

    public boolean onCapturedPointerEvent(MotionEvent motionEvent) {
        return false;
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
        if (attachInfo != null && attachInfo.mHardwareAccelerationRequested && ThreadedRenderer.isAvailable()) {
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
        int[] iArr = StateSet.get(i5);
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
    }

    public void onDetachedFromWindowInternal() {
        this.mPrivateFlags &= -67108865;
        this.mPrivateFlags3 = this.mPrivateFlags3 & (-5) & (-33554433);
        removeUnsetPressCallback();
        removeLongPressCallback();
        removePerformClickCallback();
        removeSendViewScrolledAccessibilityEventCallback();
        stopNestedScroll();
        jumpDrawablesToCurrentState();
        destroyDrawingCache();
        cleanupDraw();
        this.mCurrentAnimation = null;
        if ((this.mViewFlags & 1073741824) == 1073741824) {
            hideTooltip();
        }
    }

    public void onDisplayHint(int i2) {
    }

    public boolean onDragEvent(DragEvent dragEvent) {
        return false;
    }

    public void onDraw(Canvas canvas) {
    }

    public void onDrawForeground(Canvas canvas) {
        onDrawScrollIndicators(canvas);
        onDrawScrollBars(canvas);
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        Drawable drawable = foregroundInfo != null ? foregroundInfo.mDrawable : null;
        if (drawable != null) {
            if (this.mForegroundInfo.mBoundsChanged) {
                this.mForegroundInfo.mBoundsChanged = false;
                Rect rect = this.mForegroundInfo.mSelfBounds;
                Rect rect2 = this.mForegroundInfo.mOverlayBounds;
                if (this.mForegroundInfo.mInsidePadding) {
                    rect.set(0, 0, getWidth(), getHeight());
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
                }
                Gravity.apply(this.mForegroundInfo.mGravity, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2, getLayoutDirection());
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    public void onDrawHorizontalScrollBar(Canvas canvas, Drawable drawable, int i2, int i3, int i4, int i5) {
        drawable.setBounds(i2, i3, i4, i5);
        drawable.draw(canvas);
    }

    public final void onDrawScrollBars(Canvas canvas) {
        int i2;
        boolean z2;
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
                scrollabilityCache.scrollBar.mutate().setAlpha(Math.round(fArr[0]));
            }
            z2 = true;
        } else {
            scrollabilityCache.scrollBar.mutate().setAlpha(255);
            z2 = false;
        }
        boolean zIsHorizontalScrollBarEnabled = isHorizontalScrollBarEnabled();
        boolean z3 = isVerticalScrollBarEnabled() && !isVerticalScrollBarHidden();
        if (this.mRoundScrollbarRenderer != null) {
            if (z3) {
                Rect rect = scrollabilityCache.mScrollBarBounds;
                getVerticalScrollBarBounds(rect, null);
                this.mRoundScrollbarRenderer.drawRoundScrollbars(canvas, scrollabilityCache.scrollBar.getAlpha() / 255.0f, rect);
                if (z2) {
                    invalidate();
                    return;
                }
                return;
            }
            return;
        }
        if (z3 || zIsHorizontalScrollBarEnabled) {
            ScrollBarDrawable scrollBarDrawable = scrollabilityCache.scrollBar;
            if (zIsHorizontalScrollBarEnabled) {
                scrollBarDrawable.setParameters(computeHorizontalScrollRange(), computeHorizontalScrollOffset(), computeHorizontalScrollExtent(), false);
                Rect rect2 = scrollabilityCache.mScrollBarBounds;
                getHorizontalScrollBarBounds(rect2, null);
                onDrawHorizontalScrollBar(canvas, scrollBarDrawable, rect2.left, rect2.top, rect2.right, rect2.bottom);
                if (z2) {
                    invalidate(rect2);
                }
            }
            if (z3) {
                scrollBarDrawable.setParameters(computeVerticalScrollRange(), computeVerticalScrollOffset(), computeVerticalScrollExtent(), true);
                Rect rect3 = scrollabilityCache.mScrollBarBounds;
                getVerticalScrollBarBounds(rect3, null);
                onDrawVerticalScrollBar(canvas, scrollBarDrawable, rect3.left, rect3.top, rect3.right, rect3.bottom);
                if (z2) {
                    invalidate(rect3);
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
        switchDefaultFocusHighlight();
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
        notifyEnterOrExitForAutoFillIfNeeded(z2);
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
            }
        } else if ((actionMasked == 9 || actionMasked == 7) && !hasHoveredChild() && pointInView(motionEvent.getX(), motionEvent.getY())) {
            sendAccessibilityHoverEvent(128);
            this.mSendingHoverAccessibilityEvents = true;
        }
        if ((actionMasked == 9 || actionMasked == 7) && motionEvent.isFromSource(8194) && isOnScrollbar(motionEvent.getX(), motionEvent.getY())) {
            awakenScrollBars();
        }
        if (!isHoverable() && !isHovered()) {
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
        accessibilityEvent.setClassName(getAccessibilityClassName());
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
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return;
        }
        Rect rect = attachInfo.mTmpInvalRect;
        getDrawingRect(rect);
        accessibilityNodeInfo.setBoundsInParent(rect);
        getBoundsOnScreen(rect, true);
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
        if (this.mAccessibilityTraversalBeforeId != -1) {
            View rootView3 = getRootView();
            if (rootView3 == null) {
                rootView3 = this;
            }
            View viewFindViewInsideOutShouldExist2 = rootView3.findViewInsideOutShouldExist(this, this.mAccessibilityTraversalBeforeId);
            if (viewFindViewInsideOutShouldExist2 != null && viewFindViewInsideOutShouldExist2.includeForAccessibility()) {
                accessibilityNodeInfo.setTraversalBefore(viewFindViewInsideOutShouldExist2);
            }
        }
        if (this.mAccessibilityTraversalAfterId != -1) {
            View rootView4 = getRootView();
            if (rootView4 == null) {
                rootView4 = this;
            }
            View viewFindViewInsideOutShouldExist3 = rootView4.findViewInsideOutShouldExist(this, this.mAccessibilityTraversalAfterId);
            if (viewFindViewInsideOutShouldExist3 != null && viewFindViewInsideOutShouldExist3.includeForAccessibility()) {
                accessibilityNodeInfo.setTraversalAfter(viewFindViewInsideOutShouldExist3);
            }
        }
        accessibilityNodeInfo.setVisibleToUser(isVisibleToUser());
        accessibilityNodeInfo.setImportantForAccessibility(isImportantForAccessibility());
        accessibilityNodeInfo.setPackageName(this.mContext.getPackageName());
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setContentDescription(getContentDescription());
        accessibilityNodeInfo.setEnabled(isEnabled());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setFocusable(isFocusable());
        accessibilityNodeInfo.setFocused(isFocused());
        accessibilityNodeInfo.setAccessibilityFocused(isAccessibilityFocused());
        accessibilityNodeInfo.setSelected(isSelected());
        accessibilityNodeInfo.setLongClickable(isLongClickable());
        accessibilityNodeInfo.setContextClickable(isContextClickable());
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
        if (isContextClickable() && isEnabled()) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK);
        }
        CharSequence iterableTextForAccessibility = getIterableTextForAccessibility();
        if (iterableTextForAccessibility != null && iterableTextForAccessibility.length() > 0) {
            accessibilityNodeInfo.setTextSelection(getAccessibilitySelectionStart(), getAccessibilitySelectionEnd());
            accessibilityNodeInfo.addAction(131072);
            accessibilityNodeInfo.addAction(256);
            accessibilityNodeInfo.addAction(512);
            accessibilityNodeInfo.setMovementGranularities(11);
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN);
        populateAccessibilityNodeInfoDrawingOrderInParent(accessibilityNodeInfo);
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (KeyEvent.isConfirmKey(i2)) {
            if ((this.mViewFlags & 32) == 32) {
                return true;
            }
            if (keyEvent.getRepeatCount() == 0) {
                int i3 = this.mViewFlags;
                boolean z2 = (i3 & 16384) == 16384 || (i3 & 2097152) == 2097152;
                if (z2 || (i3 & 1073741824) == 1073741824) {
                    float width = getWidth() / 2.0f;
                    float height = getHeight() / 2.0f;
                    if (z2) {
                        setPressed(true, width, height);
                    }
                    checkForLongClick(0, width, height);
                    return true;
                }
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
                    if (!keyEvent.isCanceled()) {
                        return performClick();
                    }
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

    public void onMovedToDisplay(int i2, Configuration configuration) {
    }

    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
    }

    public void onPointerCaptureChange(boolean z2) {
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

    public void onProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        onProvideStructureForAssistOrAutofill(viewStructure, true, i2);
    }

    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i2) {
    }

    public void onProvideStructure(ViewStructure viewStructure) {
        onProvideStructureForAssistOrAutofill(viewStructure, false, 0);
    }

    public void onProvideVirtualStructure(ViewStructure viewStructure) {
        AccessibilityNodeProvider accessibilityNodeProvider = getAccessibilityNodeProvider();
        if (accessibilityNodeProvider != null) {
            AccessibilityNodeInfo accessibilityNodeInfoCreateAccessibilityNodeInfo = createAccessibilityNodeInfo();
            viewStructure.setChildCount(1);
            populateVirtualStructure(viewStructure.newChild(0), accessibilityNodeProvider, accessibilityNodeInfoCreateAccessibilityNodeInfo);
            accessibilityNodeInfoCreateAccessibilityNodeInfo.recycle();
        }
    }

    public void onResolveDrawables(int i2) {
    }

    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        return (isDraggingScrollBar() || isOnScrollbarThumb(motionEvent.getX(i2), motionEvent.getY(i2))) ? PointerIcon.getSystemIcon(this.mContext, 1000) : this.mPointerIcon;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mPrivateFlags |= 131072;
        if (parcelable != null && !(parcelable instanceof AbsSavedState)) {
            throw new IllegalArgumentException("Wrong state class, expecting View State but received " + parcelable.getClass().toString() + " instead. This usually happens when two views of different type have the same id in the same hierarchy. This view's id is " + ViewDebug.resolveId(this.mContext, getId()) + ". Make sure other views do not use the same id.");
        }
        if (parcelable == null || !(parcelable instanceof BaseSavedState)) {
            return;
        }
        BaseSavedState baseSavedState = (BaseSavedState) parcelable;
        int i2 = baseSavedState.mSavedData;
        if ((i2 & 1) != 0) {
            this.mStartActivityRequestWho = baseSavedState.mStartActivityRequestWhoSaved;
        }
        if ((i2 & 2) != 0) {
            setAutofilled(baseSavedState.mIsAutofilled);
        }
        int i3 = baseSavedState.mSavedData;
        if ((i3 & 4) != 0) {
            baseSavedState.mSavedData = i3 & (-5);
            this.mAutofillViewId = baseSavedState.mAutofillViewId;
        }
    }

    public void onRtlPropertiesChanged(int i2) {
    }

    public Parcelable onSaveInstanceState() {
        this.mPrivateFlags |= 131072;
        if (this.mStartActivityRequestWho == null && !isAutofilled() && this.mAutofillViewId <= 1073741823) {
            return AbsSavedState.EMPTY_STATE;
        }
        BaseSavedState baseSavedState = new BaseSavedState(AbsSavedState.EMPTY_STATE);
        if (this.mStartActivityRequestWho != null) {
            baseSavedState.mSavedData |= 1;
        }
        if (isAutofilled()) {
            baseSavedState.mSavedData |= 2;
        }
        if (this.mAutofillViewId > 1073741823) {
            baseSavedState.mSavedData |= 4;
        }
        baseSavedState.mStartActivityRequestWhoSaved = this.mStartActivityRequestWho;
        baseSavedState.mIsAutofilled = isAutofilled();
        baseSavedState.mAutofillViewId = this.mAutofillViewId;
        return baseSavedState;
    }

    public void onScreenStateChanged(int i2) {
    }

    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        OnScrollChangeListener onScrollChangeListener;
        notifySubtreeAccessibilityStateChangedIfNeeded();
        if (AccessibilityManager.getInstance(this.mContext).isEnabled()) {
            postSendViewScrolledAccessibilityEventCallback();
        }
        this.mBackgroundSizeChanged = true;
        this.mDefaultFocusHighlightSizeChanged = true;
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo != null) {
            foregroundInfo.mBoundsChanged = true;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewScrollChanged = true;
        }
        ListenerInfo listenerInfo = this.mListenerInfo;
        if (listenerInfo == null || (onScrollChangeListener = listenerInfo.mOnScrollChangeListener) == null) {
            return;
        }
        onScrollChangeListener.onScrollChange(this, i2, i3, i4, i5);
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
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        int i2 = this.mViewFlags;
        int action = motionEvent.getAction();
        boolean z2 = (i2 & 16384) == 16384 || (i2 & 2097152) == 2097152 || (i2 & 8388608) == 8388608;
        if ((i2 & 32) == 32) {
            if (action == 1 && (this.mPrivateFlags & 16384) != 0) {
                setPressed(false);
            }
            this.mPrivateFlags3 &= -131073;
            return z2;
        }
        TouchDelegate touchDelegate = this.mTouchDelegate;
        if (touchDelegate != null && touchDelegate.onTouchEvent(motionEvent)) {
            return true;
        }
        if (!z2 && (i2 & 1073741824) != 1073741824) {
            return false;
        }
        if (action == 0) {
            if (motionEvent.getSource() == 4098) {
                this.mPrivateFlags3 |= 131072;
            }
            this.mHasPerformedLongPress = false;
            if (!z2) {
                checkForLongClick(0, x2, y2);
            } else if (!performButtonActionOnTouchDown(motionEvent)) {
                if (isInScrollingContainer()) {
                    this.mPrivateFlags |= 33554432;
                    if (this.mPendingCheckForTap == null) {
                        this.mPendingCheckForTap = new CheckForTap();
                    }
                    this.mPendingCheckForTap.f209x = motionEvent.getX();
                    this.mPendingCheckForTap.f210y = motionEvent.getY();
                    postDelayed(this.mPendingCheckForTap, ViewConfiguration.getTapTimeout());
                } else {
                    setPressed(true, x2, y2);
                    checkForLongClick(0, x2, y2);
                }
            }
        } else if (action == 1) {
            this.mPrivateFlags3 &= -131073;
            if ((i2 & 1073741824) == 1073741824) {
                handleTooltipUp();
            }
            if (z2) {
                int i3 = this.mPrivateFlags;
                boolean z3 = (i3 & 33554432) != 0;
                if ((i3 & 16384) != 0 || z3) {
                    boolean zRequestFocus = (isFocusable() && isFocusableInTouchMode() && !isFocused()) ? requestFocus() : false;
                    if (z3) {
                        setPressed(true, x2, y2);
                    }
                    if (!this.mHasPerformedLongPress && !this.mIgnoreNextUpEvent) {
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
                    if (z3) {
                        postDelayed(this.mUnsetPressedState, ViewConfiguration.getPressedStateDuration());
                    } else if (!post(this.mUnsetPressedState)) {
                        this.mUnsetPressedState.run();
                    }
                    removeTapCallback();
                }
                this.mIgnoreNextUpEvent = false;
            } else {
                removeTapCallback();
                removeLongPressCallback();
                this.mInContextButtonPress = false;
                this.mHasPerformedLongPress = false;
                this.mIgnoreNextUpEvent = false;
            }
        } else if (action == 2) {
            if (z2) {
                drawableHotspotChanged(x2, y2);
            }
            if (!pointInView(x2, y2, this.mTouchSlop)) {
                removeTapCallback();
                removeLongPressCallback();
                if ((this.mPrivateFlags & 16384) != 0) {
                    setPressed(false);
                }
                this.mPrivateFlags3 &= -131073;
            }
        } else if (action == 3) {
            if (z2) {
                setPressed(false);
            }
            removeTapCallback();
            removeLongPressCallback();
            this.mInContextButtonPress = false;
            this.mHasPerformedLongPress = false;
            this.mIgnoreNextUpEvent = false;
            this.mPrivateFlags3 &= -131073;
        }
        return true;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onVisibilityAggregated(boolean z2) {
        AutofillManager autofillManager;
        if (z2 && this.mAttachInfo != null) {
            initialAwakenScrollBars();
        }
        Drawable drawable = this.mBackground;
        if (drawable != null && z2 != drawable.isVisible()) {
            drawable.setVisible(z2, false);
        }
        Drawable drawable2 = this.mDefaultFocusHighlight;
        if (drawable2 != null && z2 != drawable2.isVisible()) {
            drawable2.setVisible(z2, false);
        }
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        Drawable drawable3 = foregroundInfo != null ? foregroundInfo.mDrawable : null;
        if (drawable3 != null && z2 != drawable3.isVisible()) {
            drawable3.setVisible(z2, false);
        }
        if (!isAutofillable() || (autofillManager = getAutofillManager()) == null || getAutofillViewId() <= 1073741823) {
            return;
        }
        Handler handler = this.mVisibilityChangeForAutofillHandler;
        if (handler != null) {
            handler.removeMessages(0);
        }
        if (z2) {
            autofillManager.notifyViewVisibilityChanged(this, true);
            return;
        }
        if (this.mVisibilityChangeForAutofillHandler == null) {
            this.mVisibilityChangeForAutofillHandler = new VisibilityChangeForAutofillHandler(autofillManager, this);
        }
        this.mVisibilityChangeForAutofillHandler.obtainMessage(0, this).sendToTarget();
    }

    public void onVisibilityChanged(View view, int i2) {
    }

    public void onWindowFocusChanged(boolean z2) {
        InputMethodManager inputMethodManagerPeekInstance = InputMethodManager.peekInstance();
        if (!z2) {
            if (isPressed()) {
                setPressed(false);
            }
            this.mPrivateFlags3 &= -131073;
            if (inputMethodManagerPeekInstance != null && (this.mPrivateFlags & 2) != 0) {
                inputMethodManagerPeekInstance.focusOut(this);
            }
            removeLongPressCallback();
            removeTapCallback();
            onFocusLost();
        } else if (inputMethodManagerPeekInstance != null && (this.mPrivateFlags & 2) != 0) {
            inputMethodManagerPeekInstance.focusIn(this);
        }
        notifyEnterOrExitForAutoFillIfNeeded(z2);
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean performAccessibilityActionInternal(int i2, Bundle bundle) {
        if (isNestedScrollingEnabled() && ((i2 == 8192 || i2 == 4096 || i2 == 16908344 || i2 == 16908345 || i2 == 16908346 || i2 == 16908347) && dispatchNestedPrePerformAccessibilityAction(i2, bundle))) {
            return true;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                switch (i2) {
                    case 4:
                        if (!isSelected()) {
                            setSelected(true);
                            return isSelected();
                        }
                        break;
                    case 8:
                        if (isSelected()) {
                            setSelected(false);
                            return !isSelected();
                        }
                        break;
                    case 16:
                        if (isClickable()) {
                            performClick();
                            return true;
                        }
                        break;
                    case 32:
                        if (isLongClickable()) {
                            performLongClick();
                            return true;
                        }
                        break;
                    case 64:
                        if (!isAccessibilityFocused()) {
                            return requestAccessibilityFocus();
                        }
                        break;
                    case 128:
                        if (isAccessibilityFocused()) {
                            clearAccessibilityFocus();
                            return true;
                        }
                        break;
                    case 256:
                        if (bundle != null) {
                            return traverseAtGranularity(bundle.getInt("ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"), true, bundle.getBoolean("ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"));
                        }
                        break;
                    case 512:
                        if (bundle != null) {
                            return traverseAtGranularity(bundle.getInt("ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"), false, bundle.getBoolean("ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"));
                        }
                        break;
                    case 131072:
                        if (getIterableTextForAccessibility() == null) {
                            return false;
                        }
                        int i3 = bundle != null ? bundle.getInt("ACTION_ARGUMENT_SELECTION_START_INT", -1) : -1;
                        int i4 = bundle != null ? bundle.getInt("ACTION_ARGUMENT_SELECTION_END_INT", -1) : -1;
                        if ((getAccessibilitySelectionStart() != i3 || getAccessibilitySelectionEnd() != i4) && i3 == i4) {
                            setAccessibilitySelection(i3, i4);
                            notifyViewAccessibilityStateChangedIfNeeded(0);
                            return true;
                        }
                        break;
                    case 16908342:
                        AttachInfo attachInfo = this.mAttachInfo;
                        if (attachInfo != null) {
                            Rect rect = attachInfo.mTmpInvalRect;
                            getDrawingRect(rect);
                            return requestRectangleOnScreen(rect, true);
                        }
                        break;
                    case 16908348:
                        if (isContextClickable()) {
                            performContextClick();
                            return true;
                        }
                        break;
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
        if (!motionEvent.isFromSource(8194) || (motionEvent.getButtonState() & 2) == 0) {
            return false;
        }
        showContextMenu(motionEvent.getX(), motionEvent.getY());
        this.mPrivateFlags |= 67108864;
        return true;
    }

    public boolean performClick() {
        ListenerInfo listenerInfo = this.mListenerInfo;
        boolean z2 = false;
        if (listenerInfo != null && listenerInfo.mOnClickListener != null) {
            playSoundEffect(0);
            listenerInfo.mOnClickListener.onClick(this);
            z2 = true;
        }
        if (sDebugDispatchInput) {
            Log.d(VIEW_LOG_TAG, "performClick result is: " + z2 + ", app's view is: " + this);
        }
        sendAccessibilityEvent(1);
        notifyEnterOrExitForAutoFillIfNeeded(true);
        return z2;
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

    public boolean performContextClick(float f2, float f3) {
        return performContextClick();
    }

    public boolean performHapticFeedback(int i2) {
        return performHapticFeedback(i2, 0);
    }

    public boolean performLongClick() {
        return performLongClickInternal(this.mLongClickX, this.mLongClickY);
    }

    public void playSoundEffect(int i2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mRootCallbacks == null || !isSoundEffectsEnabled()) {
            return;
        }
        this.mAttachInfo.mRootCallbacks.playSoundEffect(i2);
    }

    public final boolean pointInView(float f2, float f3) {
        return pointInView(f2, f3, 0.0f);
    }

    public boolean post(Runnable runnable) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mHandler.post(runnable);
        }
        getRunQueue().post(runnable);
        return true;
    }

    public boolean postDelayed(Runnable runnable, long j2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            return attachInfo.mHandler.postDelayed(runnable, j2);
        }
        getRunQueue().postDelayed(runnable, j2);
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
            getRunQueue().post(runnable);
        }
    }

    public void postOnAnimationDelayed(Runnable runnable, long j2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.mChoreographer.postCallbackDelayed(1, runnable, null, j2);
        } else {
            getRunQueue().postDelayed(runnable, j2);
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

    public void releasePointerCapture() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.requestPointerCapture(false);
        }
    }

    public boolean removeCallbacks(Runnable runnable) {
        if (runnable != null) {
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null) {
                attachInfo.mHandler.removeCallbacks(runnable);
                attachInfo.mViewRootImpl.mChoreographer.removeCallbacks(1, runnable, null);
            }
            getRunQueue().removeCallbacks(runnable);
        }
        return true;
    }

    public void removeFrameMetricsListener(Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener) {
        ThreadedRenderer threadedRenderer = getThreadedRenderer();
        FrameMetricsObserver frameMetricsObserverFindFrameMetricsObserver = findFrameMetricsObserver(onFrameMetricsAvailableListener);
        if (frameMetricsObserverFindFrameMetricsObserver == null) {
            throw new IllegalArgumentException("attempt to remove OnFrameMetricsAvailableListener that was never added");
        }
        ArrayList<FrameMetricsObserver> arrayList = this.mFrameMetricsObservers;
        if (arrayList != null) {
            arrayList.remove(frameMetricsObserverFindFrameMetricsObserver);
            if (threadedRenderer != null) {
                threadedRenderer.removeFrameMetricsObserver(frameMetricsObserverFindFrameMetricsObserver);
            }
        }
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

    public void requestApplyInsets() {
        requestFitSystemWindows();
    }

    @Deprecated
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

    public void requestKeyboardShortcuts(List<KeyboardShortcutGroup> list, int i2) {
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
        this.mPrivateFlags = this.mPrivateFlags | 4096 | Integer.MIN_VALUE;
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

    public void requestPointerCapture() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.requestPointerCapture(true);
        }
    }

    public boolean requestRectangleOnScreen(Rect rect) {
        return requestRectangleOnScreen(rect, false);
    }

    public final void requestUnbufferedDispatch(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.mAttachInfo != null) {
            if ((action == 0 || action == 2) && motionEvent.isTouchEvent()) {
                this.mAttachInfo.mUnbufferedDispatchRequested = true;
            }
        }
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
        resetResolvedDrawablesInternal();
    }

    public void resetResolvedDrawablesInternal() {
        this.mPrivateFlags2 &= -1073741825;
    }

    public void resetResolvedLayoutDirection() {
        this.mPrivateFlags2 &= -49;
    }

    public void resetResolvedPadding() {
        resetResolvedPaddingInternal();
    }

    public void resetResolvedPaddingInternal() {
        this.mPrivateFlags2 &= -536870913;
    }

    public void resetResolvedTextAlignment() {
        this.mPrivateFlags2 = (this.mPrivateFlags2 & (-983041)) | 131072;
    }

    public void resetResolvedTextDirection() {
        this.mPrivateFlags2 = (this.mPrivateFlags2 & (-7681)) | 1024;
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
            ForegroundInfo foregroundInfo = this.mForegroundInfo;
            if (foregroundInfo != null && foregroundInfo.mDrawable != null) {
                this.mForegroundInfo.mDrawable.setLayoutDirection(layoutDirection);
            }
            Drawable drawable2 = this.mDefaultFocusHighlight;
            if (drawable2 != null) {
                drawable2.setLayoutDirection(layoutDirection);
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
                    Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
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
        if (!areDrawablesResolved()) {
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
                            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
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
                        Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e3);
                        this.mPrivateFlags2 |= 196608;
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
            switch (rawTextDirection) {
                case 0:
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
                            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                            textDirection = 3;
                        }
                        switch (textDirection) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                this.mPrivateFlags2 = (textDirection << 10) | this.mPrivateFlags2;
                                break;
                            default:
                                this.mPrivateFlags2 |= 1024;
                                break;
                        }
                    } catch (AbstractMethodError e3) {
                        Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e3);
                        this.mPrivateFlags2 |= 1536;
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
                case 7:
                    this.mPrivateFlags2 |= rawTextDirection << 10;
                    break;
                default:
                    this.mPrivateFlags2 |= 1024;
                    break;
            }
        } else {
            this.mPrivateFlags2 |= 1024;
        }
        this.mPrivateFlags2 |= 512;
        return true;
    }

    public boolean restoreDefaultFocus() {
        return requestFocus(130);
    }

    public boolean restoreFocusInCluster(int i2) {
        if (restoreDefaultFocus()) {
            return true;
        }
        return requestFocus(i2);
    }

    public boolean restoreFocusNotInCluster() {
        return requestFocus(130);
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
            getRunQueue().postDelayed(runnable, jUptimeMillis);
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
        AccessibilityDelegate accessibilityDelegate = this.mAccessibilityDelegate;
        if (accessibilityDelegate != null) {
            accessibilityDelegate.sendAccessibilityEvent(this, i2);
        } else {
            sendAccessibilityEventInternal(i2);
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
            if (getParent() != null) {
                getParent().requestSendAccessibilityEvent(this, accessibilityEvent);
            }
        }
    }

    public void setAccessibilityDelegate(AccessibilityDelegate accessibilityDelegate) {
        this.mAccessibilityDelegate = accessibilityDelegate;
    }

    public void setAccessibilityLiveRegion(int i2) {
        if (i2 != getAccessibilityLiveRegion()) {
            this.mPrivateFlags2 = ((i2 << 23) & 25165824) | (this.mPrivateFlags2 & (-25165825));
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

    @RemotableViewMethod
    public void setAccessibilityTraversalAfter(int i2) {
        if (this.mAccessibilityTraversalAfterId == i2) {
            return;
        }
        this.mAccessibilityTraversalAfterId = i2;
        notifyViewAccessibilityStateChangedIfNeeded(0);
    }

    @RemotableViewMethod
    public void setAccessibilityTraversalBefore(int i2) {
        if (this.mAccessibilityTraversalBeforeId == i2) {
            return;
        }
        this.mAccessibilityTraversalBeforeId = i2;
        notifyViewAccessibilityStateChangedIfNeeded(0);
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
        float f3 = this.mTransformationInfo.mAlpha;
        if (f3 != f2) {
            if ((f3 == 0.0f) ^ (f2 == 0.0f)) {
                notifySubtreeAccessibilityStateChangedIfNeeded();
            }
            this.mTransformationInfo.mAlpha = f2;
            if (onSetAlpha((int) (f2 * 255.0f))) {
                this.mPrivateFlags |= 262144;
                invalidateParentCaches();
                invalidate(true);
            } else {
                this.mPrivateFlags &= -262145;
                invalidateViewProperty(true, false);
                this.mRenderNode.setAlpha(getFinalAlpha());
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
        this.mRenderNode.setAlpha(getFinalAlpha());
        return false;
    }

    public void setAnimation(Animation animation) {
        this.mCurrentAnimation = animation;
        if (animation != null) {
            AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null && attachInfo.mDisplayState == 1 && animation.getStartTime() == -1) {
                animation.setStartTime(AnimationUtils.currentAnimationTimeMillis());
            }
            animation.reset();
        }
    }

    public void setAnimationMatrix(Matrix matrix) {
        invalidateViewProperty(true, false);
        this.mRenderNode.setAnimationMatrix(matrix);
        invalidateViewProperty(false, true);
        invalidateParentIfNeededAndWasQuickRejected();
    }

    public void setAssistBlocked(boolean z2) {
        if (z2) {
            this.mPrivateFlags3 |= 16384;
        } else {
            this.mPrivateFlags3 &= -16385;
        }
    }

    public void setAutofillHints(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            this.mAutofillHints = null;
        } else {
            this.mAutofillHints = strArr;
        }
    }

    public void setAutofilled(boolean z2) {
        if (z2 != isAutofilled()) {
            if (z2) {
                this.mPrivateFlags3 |= 65536;
            } else {
                this.mPrivateFlags3 &= -65537;
            }
            invalidate();
        }
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundBounds() {
        Drawable drawable;
        if (!this.mBackgroundSizeChanged || (drawable = this.mBackground) == null) {
            return;
        }
        drawable.setBounds(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
        this.mBackgroundSizeChanged = false;
        rebuildOutline();
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

    /* JADX WARN: Code duplicated, block: B:59:0x00ec  */
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        ForegroundInfo foregroundInfo;
        boolean z2;
        computeOpaqueFlags();
        Drawable drawable2 = this.mBackground;
        if (drawable == drawable2) {
            return;
        }
        this.mBackgroundResource = 0;
        if (drawable2 != null) {
            if (isAttachedToWindow()) {
                this.mBackground.setVisible(false, false);
            }
            this.mBackground.setCallback(null);
            unscheduleDrawable(this.mBackground);
        }
        if (drawable != null) {
            ThreadLocal<Rect> threadLocal = sThreadLocal;
            Rect rect = threadLocal.get();
            if (rect == null) {
                rect = new Rect();
                threadLocal.set(rect);
            }
            resetResolvedDrawablesInternal();
            drawable.setLayoutDirection(getLayoutDirection());
            if (drawable.getPadding(rect)) {
                resetResolvedPaddingInternal();
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
            this.mBackground = drawable;
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            if (isAttachedToWindow()) {
                drawable.setVisible(getWindowVisibility() == 0 && isShown(), false);
            }
            applyBackgroundTint();
            drawable.setCallback(this);
            int i6 = this.mPrivateFlags;
            if ((i6 & 128) != 0) {
                this.mPrivateFlags = i6 & (-129);
            }
            computeOpaqueFlags();
            if (z2) {
                requestLayout();
            }
            this.mBackgroundSizeChanged = true;
            invalidate(true);
            invalidateOutline();
        }
        this.mBackground = null;
        if ((this.mViewFlags & 128) != 0 && this.mDefaultFocusHighlight == null && ((foregroundInfo = this.mForegroundInfo) == null || foregroundInfo.mDrawable == null)) {
            this.mPrivateFlags |= 128;
        }
        z2 = true;
        computeOpaqueFlags();
        if (z2) {
            requestLayout();
        }
        this.mBackgroundSizeChanged = true;
        invalidate(true);
        invalidateOutline();
    }

    @RemotableViewMethod
    public void setBackgroundResource(int i2) {
        if (i2 == 0 || i2 != this.mBackgroundResource) {
            setBackground(i2 != 0 ? this.mContext.getDrawable(i2) : null);
            this.mBackgroundResource = i2;
        }
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        applyBackgroundTint();
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        applyBackgroundTint();
    }

    public final void setBottom(int i2) {
        if (i2 != this.mBottom) {
            boolean zHasIdentityMatrix = hasIdentityMatrix();
            if (!zHasIdentityMatrix) {
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
            this.mRenderNode.setBottom(i2);
            sizeChange(i4, this.mBottom - this.mTop, i4, i5);
            if (!zHasIdentityMatrix) {
                this.mPrivateFlags |= 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            this.mDefaultFocusHighlightSizeChanged = true;
            ForegroundInfo foregroundInfo = this.mForegroundInfo;
            if (foregroundInfo != null) {
                foregroundInfo.mBoundsChanged = true;
            }
            invalidateParentIfNeeded();
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setCameraDistance(float f2) {
        float f3 = this.mResources.getDisplayMetrics().densityDpi;
        invalidateViewProperty(true, false);
        this.mRenderNode.setCameraDistance((-Math.abs(f2)) / f3);
        invalidateViewProperty(false, false);
        invalidateParentIfNeededAndWasQuickRejected();
    }

    public void setClickable(boolean z2) {
        setFlags(z2 ? 16384 : 0, 16384);
    }

    public void setClipBounds(Rect rect) {
        Rect rect2 = this.mClipBounds;
        if (rect != rect2) {
            if (rect == null || !rect.equals(rect2)) {
                if (rect != null) {
                    Rect rect3 = this.mClipBounds;
                    if (rect3 == null) {
                        this.mClipBounds = new Rect(rect);
                    } else {
                        rect3.set(rect);
                    }
                } else {
                    this.mClipBounds = null;
                }
                this.mRenderNode.setClipBounds(this.mClipBounds);
                invalidateViewProperty(false, false);
            }
        }
    }

    public void setClipToOutline(boolean z2) {
        damageInParent();
        if (getClipToOutline() != z2) {
            this.mRenderNode.setClipToOutline(z2);
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

    public void setContextClickable(boolean z2) {
        setFlags(z2 ? 8388608 : 0, 8388608);
    }

    public void setDefaultFocusHighlightEnabled(boolean z2) {
        this.mDefaultFocusHighlightEnabled = z2;
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

    /* JADX WARN: Code duplicated, block: B:24:0x0056  */
    public void setDisplayListProperties(RenderNode renderNode) {
        float alpha;
        int transformationType;
        if (renderNode != null) {
            renderNode.setHasOverlappingRendering(getHasOverlappingRendering());
            ViewParent viewParent = this.mParent;
            renderNode.setClipToBounds((viewParent instanceof ViewGroup) && ((ViewGroup) viewParent).getClipChildren());
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
                        renderNode.setStaticMatrix(childTransformation.getMatrix());
                    }
                }
            }
            if (this.mTransformationInfo != null) {
                float finalAlpha = alpha * getFinalAlpha();
                renderNode.setAlpha((finalAlpha >= 1.0f || !onSetAlpha((int) (255.0f * finalAlpha))) ? finalAlpha : 1.0f);
            } else if (alpha < 1.0f) {
                renderNode.setAlpha(alpha);
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

    public void setElevation(float f2) {
        if (f2 != getElevation()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setElevation(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
        }
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
        int i4;
        ViewParent viewParent;
        AttachInfo attachInfo;
        ForegroundInfo foregroundInfo;
        boolean zIsEnabled = AccessibilityManager.getInstance(this.mContext).isEnabled();
        boolean z2 = zIsEnabled && includeForAccessibility();
        int i5 = this.mViewFlags;
        int i6 = (i3 & i2) | ((~i3) & i5);
        this.mViewFlags = i6;
        int i7 = i6 ^ i5;
        if (i7 == 0) {
            return;
        }
        int i8 = this.mPrivateFlags;
        if ((i6 & 16) == 0 || (i7 & BatteryStats.HistoryItem.EVENT_TEMP_WHITELIST_FINISH) == 0) {
            i4 = 0;
        } else {
            int i9 = (i6 & 16384) != 0 ? 1 : 0;
            this.mViewFlags = (i6 & (-2)) | i9;
            i4 = (i5 & 1) ^ (i9 & 1);
            i7 = (i7 & (-2)) | i4;
        }
        int i10 = i7 & 1;
        if (i10 != 0 && (i8 & 16) != 0) {
            int i11 = i5 & 1;
            if (i11 == 1 && (i8 & 2) != 0) {
                clearFocus();
                ViewParent viewParent2 = this.mParent;
                if (viewParent2 instanceof ViewGroup) {
                    ((ViewGroup) viewParent2).clearFocusedInCluster();
                }
            } else if (i11 == 0 && (i8 & 2) == 0 && this.mParent != null) {
                ViewRootImpl viewRootImpl = getViewRootImpl();
                if (!sAutoFocusableOffUIThreadWontNotifyParents || i4 == 0 || viewRootImpl == null || viewRootImpl.mThread == Thread.currentThread()) {
                    this.mParent.focusableViewAvailable(this);
                }
            }
        }
        int i12 = i2 & 12;
        if (i12 == 0 && (i7 & 12) != 0) {
            this.mPrivateFlags |= 32;
            invalidate(true);
            needGlobalAttributesUpdate(true);
            ViewParent viewParent3 = this.mParent;
            if (viewParent3 != null && this.mBottom > this.mTop && this.mRight > this.mLeft) {
                viewParent3.focusableViewAvailable(this);
            }
        }
        if ((i7 & 8) != 0) {
            needGlobalAttributesUpdate(false);
            requestLayout();
            if ((this.mViewFlags & 12) == 8) {
                if (hasFocus()) {
                    clearFocus();
                    ViewParent viewParent4 = this.mParent;
                    if (viewParent4 instanceof ViewGroup) {
                        ((ViewGroup) viewParent4).clearFocusedInCluster();
                    }
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
        if ((i7 & 4) != 0) {
            needGlobalAttributesUpdate(false);
            this.mPrivateFlags |= 32;
            if ((this.mViewFlags & 12) == 4 && getRootView() != this) {
                if (hasFocus()) {
                    clearFocus();
                    ViewParent viewParent5 = this.mParent;
                    if (viewParent5 instanceof ViewGroup) {
                        ((ViewGroup) viewParent5).clearFocusedInCluster();
                    }
                }
                clearAccessibilityFocus();
            }
            AttachInfo attachInfo3 = this.mAttachInfo;
            if (attachInfo3 != null) {
                attachInfo3.mViewVisibilityChanged = true;
            }
        }
        int i13 = i7 & 12;
        if (i13 != 0) {
            if (i12 != 0 && this.mAttachInfo != null) {
                cleanupDraw();
            }
            ViewParent viewParent6 = this.mParent;
            if (viewParent6 instanceof ViewGroup) {
                ((ViewGroup) viewParent6).onChildVisibilityChanged(this, i13, i12);
                ((View) this.mParent).invalidate(true);
            } else if (viewParent6 != null) {
                viewParent6.invalidateChild(this, null);
            }
            if (this.mAttachInfo != null) {
                dispatchVisibilityChanged(this, i12);
                if (this.mParent != null && getWindowVisibility() == 0) {
                    ViewParent viewParent7 = this.mParent;
                    if (!(viewParent7 instanceof ViewGroup) || ((ViewGroup) viewParent7).isShown()) {
                        dispatchVisibilityAggregated(i12 == 0);
                    }
                }
                notifySubtreeAccessibilityStateChangedIfNeeded();
            }
        }
        if ((131072 & i7) != 0) {
            destroyDrawingCache();
        }
        if ((32768 & i7) != 0) {
            destroyDrawingCache();
            this.mPrivateFlags &= -32769;
            invalidateParentCaches();
        }
        if ((DRAWING_CACHE_QUALITY_MASK & i7) != 0) {
            destroyDrawingCache();
            this.mPrivateFlags &= -32769;
        }
        if ((i7 & 128) != 0) {
            if ((this.mViewFlags & 128) != 0 && this.mBackground == null && this.mDefaultFocusHighlight == null && ((foregroundInfo = this.mForegroundInfo) == null || foregroundInfo.mDrawable == null)) {
                this.mPrivateFlags |= 128;
            } else {
                this.mPrivateFlags &= -129;
            }
            requestLayout();
            invalidate(true);
        }
        if ((67108864 & i7) != 0 && (viewParent = this.mParent) != null && (attachInfo = this.mAttachInfo) != null && !attachInfo.mRecomputeGlobalAttributes) {
            viewParent.recomputeViewAttributes(this);
        }
        if (zIsEnabled) {
            if (i10 == 0 && i13 == 0 && (i7 & 16384) == 0 && (2097152 & i7) == 0 && (8388608 & i7) == 0) {
                if ((i7 & 32) != 0) {
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
        setFocusable(z2 ? 1 : 0);
    }

    public void setFocusableInTouchMode(boolean z2) {
        setFlags(z2 ? 262144 : 0, 262144);
        if (z2) {
            setFlags(1, 17);
        }
    }

    public void setFocusedByDefault(boolean z2) {
        int i2 = this.mPrivateFlags3;
        if (z2 == ((i2 & 262144) != 0)) {
            return;
        }
        if (z2) {
            this.mPrivateFlags3 = i2 | 262144;
        } else {
            this.mPrivateFlags3 = i2 & (-262145);
        }
        ViewParent viewParent = this.mParent;
        if (viewParent instanceof ViewGroup) {
            if (z2) {
                ((ViewGroup) viewParent).setDefaultFocus(this);
            } else {
                ((ViewGroup) viewParent).clearDefaultFocus(this);
            }
        }
    }

    public final void setFocusedInCluster() {
        setFocusedInCluster(findKeyboardNavigationCluster());
    }

    public void setForeground(Drawable drawable) {
        if (this.mForegroundInfo == null) {
            if (drawable == null) {
                return;
            } else {
                this.mForegroundInfo = new ForegroundInfo();
            }
        }
        if (drawable == this.mForegroundInfo.mDrawable) {
            return;
        }
        if (this.mForegroundInfo.mDrawable != null) {
            if (isAttachedToWindow()) {
                this.mForegroundInfo.mDrawable.setVisible(false, false);
            }
            this.mForegroundInfo.mDrawable.setCallback(null);
            unscheduleDrawable(this.mForegroundInfo.mDrawable);
        }
        this.mForegroundInfo.mDrawable = drawable;
        this.mForegroundInfo.mBoundsChanged = true;
        if (drawable != null) {
            int i2 = this.mPrivateFlags;
            if ((i2 & 128) != 0) {
                this.mPrivateFlags = i2 & (-129);
            }
            drawable.setLayoutDirection(getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            applyForegroundTint();
            if (isAttachedToWindow()) {
                drawable.setVisible(getWindowVisibility() == 0 && isShown(), false);
            }
            drawable.setCallback(this);
        } else if ((this.mViewFlags & 128) != 0 && this.mBackground == null && this.mDefaultFocusHighlight == null) {
            this.mPrivateFlags |= 128;
        }
        requestLayout();
        invalidate();
    }

    public void setForegroundGravity(int i2) {
        if (this.mForegroundInfo == null) {
            this.mForegroundInfo = new ForegroundInfo();
        }
        if (this.mForegroundInfo.mGravity != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mForegroundInfo.mGravity = i2;
            requestLayout();
        }
    }

    public void setForegroundTintList(ColorStateList colorStateList) {
        if (this.mForegroundInfo == null) {
            this.mForegroundInfo = new ForegroundInfo();
        }
        if (this.mForegroundInfo.mTintInfo == null) {
            this.mForegroundInfo.mTintInfo = new TintInfo();
        }
        this.mForegroundInfo.mTintInfo.mTintList = colorStateList;
        this.mForegroundInfo.mTintInfo.mHasTintList = true;
        applyForegroundTint();
    }

    public void setForegroundTintMode(PorterDuff.Mode mode) {
        if (this.mForegroundInfo == null) {
            this.mForegroundInfo = new ForegroundInfo();
        }
        if (this.mForegroundInfo.mTintInfo == null) {
            this.mForegroundInfo.mTintInfo = new TintInfo();
        }
        this.mForegroundInfo.mTintInfo.mTintMode = mode;
        this.mForegroundInfo.mTintInfo.mHasTintMode = true;
        applyForegroundTint();
    }

    public boolean setFrame(int i2, int i3, int i4, int i5) {
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
        this.mRenderNode.setLeftTopRightBottom(i2, i3, i4, i5);
        this.mPrivateFlags |= 16;
        if (z2) {
            sizeChange(i10, i11, i8, i9);
        }
        if ((this.mViewFlags & 12) == 0 || this.mGhostView != null) {
            this.mPrivateFlags |= 32;
            invalidate(z2);
            invalidateParentCaches();
        }
        this.mPrivateFlags |= i7;
        this.mBackgroundSizeChanged = true;
        this.mDefaultFocusHighlightSizeChanged = true;
        ForegroundInfo foregroundInfo = this.mForegroundInfo;
        if (foregroundInfo != null) {
            foregroundInfo.mBoundsChanged = true;
        }
        notifySubtreeAccessibilityStateChangedIfNeeded();
        return true;
    }

    public void setHapticFeedbackEnabled(boolean z2) {
        setFlags(z2 ? 268435456 : 0, 268435456);
    }

    public void setHasTransientState(boolean z2) {
        boolean zHasTransientState = hasTransientState();
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
        boolean zHasTransientState2 = hasTransientState();
        ViewParent viewParent = this.mParent;
        if (viewParent == null || zHasTransientState2 == zHasTransientState) {
            return;
        }
        try {
            viewParent.childHasTransientStateChanged(this, zHasTransientState2);
        } catch (AbstractMethodError e2) {
            Log.e(VIEW_LOG_TAG, this.mParent.getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
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
        View viewFindAccessibilityFocusHost;
        int importantForAccessibility = getImportantForAccessibility();
        if (i2 != importantForAccessibility) {
            boolean z2 = i2 == 4;
            if ((i2 == 2 || z2) && (viewFindAccessibilityFocusHost = findAccessibilityFocusHost(z2)) != null) {
                viewFindAccessibilityFocusHost.clearAccessibilityFocus();
            }
            boolean z3 = importantForAccessibility == 0 || i2 == 0;
            boolean z4 = z3 && includeForAccessibility();
            this.mPrivateFlags2 = ((i2 << 20) & PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK) | (this.mPrivateFlags2 & (-7340033));
            if (z3 && z4 == includeForAccessibility()) {
                notifyViewAccessibilityStateChangedIfNeeded(0);
            } else {
                notifySubtreeAccessibilityStateChangedIfNeeded();
            }
        }
    }

    public void setImportantForAutofill(int i2) {
        this.mPrivateFlags3 = ((i2 << 19) & PFLAG3_IMPORTANT_FOR_AUTOFILL_MASK) | (this.mPrivateFlags3 & (-7864321));
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

    public void setKeyboardNavigationCluster(boolean z2) {
        if (z2) {
            this.mPrivateFlags3 |= 32768;
        } else {
            this.mPrivateFlags3 &= -32769;
        }
    }

    @RemotableViewMethod
    public void setLabelFor(int i2) {
        if (this.mLabelForId == i2) {
            return;
        }
        this.mLabelForId = i2;
        if (i2 != -1 && this.mID == -1) {
            this.mID = generateViewId();
        }
        notifyViewAccessibilityStateChangedIfNeeded(0);
    }

    public void setLayerPaint(Paint paint) {
        int layerType = getLayerType();
        if (layerType != 0) {
            this.mLayerPaint = paint;
            if (layerType != 2) {
                invalidate();
            } else if (this.mRenderNode.setLayerPaint(paint)) {
                invalidateViewProperty(false, false);
            }
        }
    }

    public void setLayerType(int i2, Paint paint) {
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException("Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE");
        }
        if (!this.mRenderNode.setLayerType(i2)) {
            setLayerPaint(paint);
            return;
        }
        if (i2 != 1) {
            destroyDrawingCache();
        }
        this.mLayerType = i2;
        if (i2 == 0) {
            paint = null;
        }
        this.mLayerPaint = paint;
        this.mRenderNode.setLayerPaint(paint);
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
        if (layoutParams == null) {
            throw new NullPointerException("Layout parameters cannot be null");
        }
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
            boolean zHasIdentityMatrix = hasIdentityMatrix();
            if (!zHasIdentityMatrix) {
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
            this.mRenderNode.setLeft(i2);
            sizeChange(this.mRight - this.mLeft, i7, i6, i7);
            if (!zHasIdentityMatrix) {
                this.mPrivateFlags |= 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            this.mDefaultFocusHighlightSizeChanged = true;
            ForegroundInfo foregroundInfo = this.mForegroundInfo;
            if (foregroundInfo != null) {
                foregroundInfo.mBoundsChanged = true;
            }
            invalidateParentIfNeeded();
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setLeftTopRightBottom(int i2, int i3, int i4, int i5) {
        setFrame(i2, i3, i4, i5);
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
        setMeasuredDimensionRaw(i2, i3);
    }

    @RemotableViewMethod
    public void setMinimumHeight(int i2) {
        this.mMinHeight = i2;
        requestLayout();
    }

    public void setMinimumWidth(int i2) {
        this.mMinWidth = i2;
        requestLayout();
    }

    public void setNestedScrollingEnabled(boolean z2) {
        if (z2) {
            this.mPrivateFlags3 |= 128;
        } else {
            stopNestedScroll();
            this.mPrivateFlags3 &= -129;
        }
    }

    public void setNextClusterForwardId(int i2) {
        this.mNextClusterForwardId = i2;
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

    public void setOnApplyWindowInsetsListener(OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        getListenerInfo().mOnApplyWindowInsetsListener = onApplyWindowInsetsListener;
    }

    public void setOnCapturedPointerListener(OnCapturedPointerListener onCapturedPointerListener) {
        getListenerInfo().mOnCapturedPointerListener = onCapturedPointerListener;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        if (!isClickable()) {
            setClickable(true);
        }
        getListenerInfo().mOnClickListener = onClickListener;
    }

    public void setOnContextClickListener(OnContextClickListener onContextClickListener) {
        if (!isContextClickable()) {
            setContextClickable(true);
        }
        getListenerInfo().mOnContextClickListener = onContextClickListener;
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

    public void setOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
        getListenerInfo().mOnScrollChangeListener = onScrollChangeListener;
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

    public void setOpticalInsets(Insets insets) {
        this.mLayoutInsets = insets;
    }

    public void setOutlineProvider(ViewOutlineProvider viewOutlineProvider) {
        this.mOutlineProvider = viewOutlineProvider;
        invalidateOutline();
    }

    public void setOverScrollMode(int i2) {
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("Invalid overscroll mode ", i2));
        }
        this.mOverScrollMode = i2;
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        resetResolvedPaddingInternal();
        this.mUserPaddingStart = Integer.MIN_VALUE;
        this.mUserPaddingEnd = Integer.MIN_VALUE;
        this.mUserPaddingLeftInitial = i2;
        this.mUserPaddingRightInitial = i4;
        this.mLeftPaddingDefined = true;
        this.mRightPaddingDefined = true;
        internalSetPadding(i2, i3, i4, i5);
    }

    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        resetResolvedPaddingInternal();
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
        if (this.mRenderNode.isPivotExplicitlySet() && f2 == getPivotX()) {
            return;
        }
        invalidateViewProperty(true, false);
        this.mRenderNode.setPivotX(f2);
        invalidateViewProperty(false, true);
        invalidateParentIfNeededAndWasQuickRejected();
    }

    public void setPivotY(float f2) {
        if (this.mRenderNode.isPivotExplicitlySet() && f2 == getPivotY()) {
            return;
        }
        invalidateViewProperty(true, false);
        this.mRenderNode.setPivotY(f2);
        invalidateViewProperty(false, true);
        invalidateParentIfNeededAndWasQuickRejected();
    }

    public void setPointerIcon(PointerIcon pointerIcon) {
        this.mPointerIcon = pointerIcon;
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null || attachInfo.mHandlingPointerEvent) {
            return;
        }
        try {
            attachInfo.mSession.updatePointerIcon(attachInfo.mWindow);
        } catch (RemoteException unused) {
        }
    }

    public void setRevealClip(boolean z2, float f2, float f3, float f4) {
        this.mRenderNode.setRevealClip(z2, f2, f3, f4);
        invalidateViewProperty(false, false);
    }

    public final void setRevealOnFocusHint(boolean z2) {
        if (z2) {
            this.mPrivateFlags3 &= -67108865;
        } else {
            this.mPrivateFlags3 |= 67108864;
        }
    }

    public final void setRight(int i2) {
        if (i2 != this.mRight) {
            boolean zHasIdentityMatrix = hasIdentityMatrix();
            if (!zHasIdentityMatrix) {
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
            this.mRenderNode.setRight(i2);
            sizeChange(this.mRight - this.mLeft, i5, i4, i5);
            if (!zHasIdentityMatrix) {
                this.mPrivateFlags |= 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            this.mDefaultFocusHighlightSizeChanged = true;
            ForegroundInfo foregroundInfo = this.mForegroundInfo;
            if (foregroundInfo != null) {
                foregroundInfo.mBoundsChanged = true;
            }
            invalidateParentIfNeeded();
            if ((this.mPrivateFlags2 & 268435456) == 268435456) {
                invalidateParentIfNeeded();
            }
        }
    }

    public void setRotation(float f2) {
        if (f2 != getRotation()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setRotation(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void setRotationX(float f2) {
        if (f2 != getRotationX()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setRotationX(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void setRotationY(float f2) {
        if (f2 != getRotationY()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setRotationY(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void setSaveEnabled(boolean z2) {
        setFlags(z2 ? 0 : 65536, 65536);
    }

    public void setSaveFromParentEnabled(boolean z2) {
        setFlags(z2 ? 0 : 536870912, 536870912);
    }

    public void setScaleX(float f2) {
        if (f2 != getScaleX()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setScaleX(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void setScaleY(float f2) {
        if (f2 != getScaleY()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setScaleY(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
            notifySubtreeAccessibilityStateChangedIfNeeded();
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

    public void setScrollIndicators(int i2) {
        setScrollIndicators(i2, 63);
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
            if (z2) {
                sendAccessibilityEvent(4);
            } else {
                notifyViewAccessibilityStateChangedIfNeeded(0);
            }
        }
    }

    public void setSoundEffectsEnabled(boolean z2) {
        setFlags(z2 ? 134217728 : 0, 134217728);
    }

    public void setStateListAnimator(StateListAnimator stateListAnimator) {
        StateListAnimator stateListAnimator2 = this.mStateListAnimator;
        if (stateListAnimator2 == stateListAnimator) {
            return;
        }
        if (stateListAnimator2 != null) {
            stateListAnimator2.setTarget(null);
        }
        this.mStateListAnimator = stateListAnimator;
        if (stateListAnimator != null) {
            stateListAnimator.setTarget(this);
            if (isAttachedToWindow()) {
                stateListAnimator.setState(getDrawableState());
            }
        }
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

    public void setTooltip(CharSequence charSequence) {
        setTooltipText(charSequence);
    }

    public void setTooltipText(CharSequence charSequence) {
        final int i2 = 0;
        if (TextUtils.isEmpty(charSequence)) {
            setFlags(0, 1073741824);
            hideTooltip();
            this.mTooltipInfo = null;
            return;
        }
        setFlags(1073741824, 1073741824);
        if (this.mTooltipInfo == null) {
            TooltipInfo tooltipInfo = new TooltipInfo();
            this.mTooltipInfo = tooltipInfo;
            tooltipInfo.mShowTooltipRunnable = new Runnable(this) { // from class: android.view.g
                public final /* synthetic */ View c;

                {
                    this.c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    View view = this.c;
                    switch (i3) {
                        case 0:
                            view.showHoverTooltip();
                            break;
                        default:
                            view.hideTooltip();
                            break;
                    }
                }
            };
            final int i3 = 1;
            tooltipInfo.mHideTooltipRunnable = new Runnable(this) { // from class: android.view.g
                public final /* synthetic */ View c;

                {
                    this.c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = i3;
                    View view = this.c;
                    switch (i4) {
                        case 0:
                            view.showHoverTooltip();
                            break;
                        default:
                            view.hideTooltip();
                            break;
                    }
                }
            };
        }
        this.mTooltipInfo.mTooltipText = charSequence;
    }

    public final void setTop(int i2) {
        int i3;
        int i4;
        if (i2 != this.mTop) {
            boolean zHasIdentityMatrix = hasIdentityMatrix();
            if (!zHasIdentityMatrix) {
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
            this.mRenderNode.setTop(i2);
            sizeChange(i6, this.mBottom - this.mTop, i6, i7);
            if (!zHasIdentityMatrix) {
                this.mPrivateFlags |= 32;
                invalidate(true);
            }
            this.mBackgroundSizeChanged = true;
            this.mDefaultFocusHighlightSizeChanged = true;
            ForegroundInfo foregroundInfo = this.mForegroundInfo;
            if (foregroundInfo != null) {
                foregroundInfo.mBoundsChanged = true;
            }
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
            this.mRenderNode.setAlpha(getFinalAlpha());
        }
    }

    public final void setTransitionName(String str) {
        this.mTransitionName = str;
    }

    public void setTransitionVisibility(int i2) {
        this.mViewFlags = i2 | (this.mViewFlags & (-13));
    }

    public void setTranslationX(float f2) {
        if (f2 != getTranslationX()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setTranslationX(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void setTranslationY(float f2) {
        if (f2 != getTranslationY()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setTranslationY(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
    }

    public void setTranslationZ(float f2) {
        if (f2 != getTranslationZ()) {
            invalidateViewProperty(true, false);
            this.mRenderNode.setTranslationZ(f2);
            invalidateViewProperty(false, true);
            invalidateParentIfNeededAndWasQuickRejected();
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

    public void setZ(float f2) {
        setTranslationZ(f2 - getElevation());
    }

    public boolean shouldDrawRoundScrollbar() {
        if (!this.mResources.getConfiguration().isScreenRound() || this.mAttachInfo == null) {
            return false;
        }
        View rootView = getRootView();
        WindowInsets rootWindowInsets = getRootWindowInsets();
        int height = getHeight();
        int width = getWidth();
        int height2 = rootView.getHeight();
        int width2 = rootView.getWidth();
        if (height != height2 || width != width2) {
            return false;
        }
        getLocationInWindow(this.mAttachInfo.mTmpLocation);
        return this.mAttachInfo.mTmpLocation[0] == rootWindowInsets.getStableInsetLeft() && this.mAttachInfo.mTmpLocation[1] == rootWindowInsets.getStableInsetTop();
    }

    public boolean showContextMenu() {
        return getParent().showContextMenuForChild(this);
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        return startActionMode(callback, 0);
    }

    public void startActivityForResult(Intent intent, int i2) {
        this.mStartActivityRequestWho = "@android:view:" + System.identityHashCode(this);
        getContext().startActivityForResult(this.mStartActivityRequestWho, intent, i2, null);
    }

    public void startAnimation(Animation animation) {
        animation.setStartTime(-1L);
        setAnimation(animation);
        invalidateParentCaches();
        invalidate(true);
    }

    @Deprecated
    public final boolean startDrag(ClipData clipData, DragShadowBuilder dragShadowBuilder, Object obj, int i2) {
        return startDragAndDrop(clipData, dragShadowBuilder, obj, i2);
    }

    public final boolean startDragAndDrop(ClipData clipData, DragShadowBuilder dragShadowBuilder, Object obj, int i2) {
        if (this.mAttachInfo == null) {
            Log.w(VIEW_LOG_TAG, "startDragAndDrop called on a detached view.");
            return false;
        }
        if (clipData != null) {
            clipData.prepareToLeaveProcess((i2 & 256) != 0);
        }
        Point point = new Point();
        Point point2 = new Point();
        dragShadowBuilder.onProvideShadowMetrics(point, point2);
        if (point.f71x < 0 || point.f72y < 0 || point2.f71x < 0 || point2.f72y < 0) {
            throw new IllegalStateException("Drag shadow dimensions must not be negative");
        }
        Surface surface = this.mAttachInfo.mDragSurface;
        if (surface != null) {
            surface.release();
        }
        this.mAttachInfo.mDragSurface = new Surface();
        try {
            AttachInfo attachInfo = this.mAttachInfo;
            attachInfo.mDragToken = attachInfo.mSession.prepareDrag(attachInfo.mWindow, i2, point.f71x, point.f72y, attachInfo.mDragSurface);
            AttachInfo attachInfo2 = this.mAttachInfo;
            if (attachInfo2.mDragToken == null) {
                return false;
            }
            Canvas canvasLockCanvas = attachInfo2.mDragSurface.lockCanvas(null);
            try {
                canvasLockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                dragShadowBuilder.onDrawShadow(canvasLockCanvas);
                this.mAttachInfo.mDragSurface.unlockCanvasAndPost(canvasLockCanvas);
                ViewRootImpl viewRootImpl = getViewRootImpl();
                viewRootImpl.setLocalDragState(obj);
                viewRootImpl.getLastTouchPoint(point);
                AttachInfo attachInfo3 = this.mAttachInfo;
                return attachInfo3.mSession.performDrag(attachInfo3.mWindow, attachInfo3.mDragToken, viewRootImpl.getLastTouchSource(), point.f71x, point.f72y, point2.f71x, point2.f72y, clipData);
            } catch (Throwable th) {
                this.mAttachInfo.mDragSurface.unlockCanvasAndPost(canvasLockCanvas);
                throw th;
            }
        } catch (Exception e2) {
            Log.e(VIEW_LOG_TAG, "Unable to initiate drag", e2);
            this.mAttachInfo.mDragSurface.destroy();
            this.mAttachInfo.mDragSurface = null;
            return false;
        }
    }

    public final boolean startMovingTask(float f2, float f3) {
        try {
            AttachInfo attachInfo = this.mAttachInfo;
            return attachInfo.mSession.startMovingTask(attachInfo.mWindow, f2, f3);
        } catch (RemoteException e2) {
            Log.e(VIEW_LOG_TAG, "Unable to start moving", e2);
            return false;
        }
    }

    public boolean startNestedScroll(int i2) {
        if (hasNestedScrollingParent()) {
            return true;
        }
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        View view = this;
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            try {
                if (parent.onStartNestedScroll(view, this, i2)) {
                    this.mNestedScrollingParent = parent;
                    parent.onNestedScrollAccepted(view, this, i2);
                    return true;
                }
            } catch (AbstractMethodError e2) {
                Log.e(VIEW_LOG_TAG, "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e2);
            }
            if (parent instanceof View) {
                view = parent;
            }
        }
        return false;
    }

    public void stopNestedScroll() {
        ViewParent viewParent = this.mNestedScrollingParent;
        if (viewParent != null) {
            viewParent.onStopNestedScroll(this);
            this.mNestedScrollingParent = null;
        }
    }

    public boolean toGlobalMotionEvent(MotionEvent motionEvent) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return false;
        }
        Matrix matrix = attachInfo.mTmpMatrix;
        matrix.set(Matrix.IDENTITY_MATRIX);
        transformMatrixToGlobal(matrix);
        motionEvent.transform(matrix);
        return true;
    }

    public boolean toLocalMotionEvent(MotionEvent motionEvent) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return false;
        }
        Matrix matrix = attachInfo.mTmpMatrix;
        matrix.set(Matrix.IDENTITY_MATRIX);
        transformMatrixToLocal(matrix);
        motionEvent.transform(matrix);
        return true;
    }

    public String toString() {
        String resourcePackageName;
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(' ');
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
        sb.append((this.mViewFlags & 8388608) != 0 ? 'X' : '.');
        sb.append(' ');
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
        sb.append(' ');
        sb.append(this.mLeft);
        sb.append(',');
        sb.append(this.mTop);
        sb.append('-');
        sb.append(this.mRight);
        sb.append(',');
        sb.append(this.mBottom);
        int id = getId();
        if (id != -1) {
            sb.append(" #");
            sb.append(Integer.toHexString(id));
            Resources resources = this.mResources;
            if (id > 0 && Resources.resourceHasPackage(id) && resources != null) {
                int i4 = (-16777216) & id;
                if (i4 == 16777216) {
                    resourcePackageName = ZenModeConfig.SYSTEM_AUTHORITY;
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
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sb.append(resourcePackageName);
                sb.append(SettingsStringUtil.DELIMITER);
                sb.append(resourceTypeName);
                sb.append("/");
                sb.append(resourceEntryName);
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public void transformFromViewToWindowSpace(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            throw new IllegalArgumentException("inOutLocation must be an array of two integers");
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            iArr[1] = 0;
            iArr[0] = 0;
            return;
        }
        float[] fArr = attachInfo.mTmpTransformLocation;
        fArr[0] = iArr[0];
        fArr[1] = iArr[1];
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
        iArr[0] = Math.round(fArr[0]);
        iArr[1] = Math.round(fArr[1]);
    }

    public void transformMatrixToGlobal(Matrix matrix) {
        Object obj = this.mParent;
        if (obj instanceof View) {
            View view = (View) obj;
            view.transformMatrixToGlobal(matrix);
            matrix.preTranslate(-view.mScrollX, -view.mScrollY);
        } else if (obj instanceof ViewRootImpl) {
            ViewRootImpl viewRootImpl = (ViewRootImpl) obj;
            viewRootImpl.transformMatrixToGlobal(matrix);
            matrix.preTranslate(0.0f, -viewRootImpl.mCurScrollY);
        }
        matrix.preTranslate(this.mLeft, this.mTop);
        if (hasIdentityMatrix()) {
            return;
        }
        matrix.preConcat(getMatrix());
    }

    public void transformMatrixToLocal(Matrix matrix) {
        Object obj = this.mParent;
        if (obj instanceof View) {
            View view = (View) obj;
            view.transformMatrixToLocal(matrix);
            matrix.postTranslate(view.mScrollX, view.mScrollY);
        } else if (obj instanceof ViewRootImpl) {
            ViewRootImpl viewRootImpl = (ViewRootImpl) obj;
            viewRootImpl.transformMatrixToLocal(matrix);
            matrix.postTranslate(0.0f, viewRootImpl.mCurScrollY);
        }
        matrix.postTranslate(-this.mLeft, -this.mTop);
        if (hasIdentityMatrix()) {
            return;
        }
        matrix.postConcat(getInverseMatrix());
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

    public void unFocus(View view) {
        clearFocusInternal(view, false, false);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (!verifyDrawable(drawable) || runnable == null) {
            return;
        }
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            attachInfo.mViewRootImpl.mChoreographer.removeCallbacks(1, runnable, drawable);
        }
        getRunQueue().removeCallbacks(runnable);
    }

    public RenderNode updateDisplayListIfDirty() {
        RenderNode renderNode = this.mRenderNode;
        if (!canHaveDisplayList()) {
            return renderNode;
        }
        if ((this.mPrivateFlags & 32768) != 0 && renderNode.isValid() && !this.mRecreateDisplayList) {
            this.mPrivateFlags = (this.mPrivateFlags | 32800) & (-6291457);
        } else {
            if (renderNode.isValid() && !this.mRecreateDisplayList) {
                this.mPrivateFlags = (this.mPrivateFlags | 32800) & (-6291457);
                dispatchGetDisplayList();
                return renderNode;
            }
            this.mRecreateDisplayList = true;
            int i2 = this.mRight - this.mLeft;
            int i3 = this.mBottom - this.mTop;
            int layerType = getLayerType();
            DisplayListCanvas displayListCanvasStart = renderNode.start(i2, i3);
            displayListCanvasStart.setHighContrastText(this.mAttachInfo.mHighContrastText);
            try {
                if (layerType == 1) {
                    buildDrawingCache(true);
                    Bitmap drawingCache = getDrawingCache(true);
                    if (drawingCache != null) {
                        displayListCanvasStart.drawBitmap(drawingCache, 0.0f, 0.0f, this.mLayerPaint);
                    }
                } else {
                    computeScroll();
                    displayListCanvasStart.translate(-this.mScrollX, -this.mScrollY);
                    int i4 = (this.mPrivateFlags | 32800) & (-6291457);
                    this.mPrivateFlags = i4;
                    if ((i4 & 128) == 128) {
                        dispatchDraw(displayListCanvasStart);
                        drawAutofilledHighlight(displayListCanvasStart);
                        ViewOverlay viewOverlay = this.mOverlay;
                        if (viewOverlay != null && !viewOverlay.isEmpty()) {
                            this.mOverlay.getOverlayView().draw(displayListCanvasStart);
                        }
                        if (debugDraw()) {
                            debugDrawFocus(displayListCanvasStart);
                        }
                    } else {
                        draw(displayListCanvasStart);
                    }
                }
                renderNode.end(displayListCanvasStart);
                setDisplayListProperties(renderNode);
            } catch (Throwable th) {
                renderNode.end(displayListCanvasStart);
                setDisplayListProperties(renderNode);
                throw th;
            }
        }
        return renderNode;
    }

    public final void updateDragShadow(DragShadowBuilder dragShadowBuilder) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            Log.w(VIEW_LOG_TAG, "updateDragShadow called on a detached view.");
            return;
        }
        if (attachInfo.mDragToken == null) {
            Log.e(VIEW_LOG_TAG, "No active drag");
            return;
        }
        try {
            Canvas canvasLockCanvas = attachInfo.mDragSurface.lockCanvas(null);
            try {
                canvasLockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                dragShadowBuilder.onDrawShadow(canvasLockCanvas);
            } finally {
                this.mAttachInfo.mDragSurface.unlockCanvasAndPost(canvasLockCanvas);
            }
        } catch (Exception e2) {
            Log.e(VIEW_LOG_TAG, "Unable to update drag shadow", e2);
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
        ForegroundInfo foregroundInfo;
        return drawable == this.mBackground || ((foregroundInfo = this.mForegroundInfo) != null && foregroundInfo.mDrawable == drawable) || this.mDefaultFocusHighlight == drawable;
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
                point2.set(point.f71x / 2, point.f72y / 2);
            }
        }

        public DragShadowBuilder() {
            this.mView = new WeakReference<>(null);
        }
    }

    private void setFocusedInCluster(View view) {
        if (this instanceof ViewGroup) {
            ((ViewGroup) this).mFocusedInCluster = null;
        }
        if (view == this) {
            return;
        }
        View view2 = this;
        for (ViewParent parent = this.mParent; parent instanceof ViewGroup; parent = parent.getParent()) {
            ((ViewGroup) parent).mFocusedInCluster = view2;
            if (parent == view) {
                return;
            }
            view2 = (View) parent;
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (arrayList != null && isFocusable()) {
            if ((i3 & 1) != 1 || isFocusableInTouchMode()) {
                arrayList.add(this);
            }
        }
    }

    public void autofill(AutofillValue autofillValue) {
    }

    public void buildDrawingCache(boolean z2) {
        if ((this.mPrivateFlags & 32768) != 0) {
            if (z2) {
                if (this.mDrawingCache != null) {
                    return;
                }
            } else if (this.mUnscaledDrawingCache != null) {
                return;
            }
        }
        if (Trace.isTagEnabled(8L)) {
            Trace.traceBegin(8L, "buildDrawingCache/SW Layer for ".concat(getClass().getSimpleName()));
        }
        try {
            buildDrawingCacheImpl(z2);
        } finally {
            Trace.traceEnd(8L);
        }
    }

    public void debug(int i2) {
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
        StringBuilder sbU = android.accessibilityservice.c.u(debugIndent(i2), "frame={");
        sbU.append(this.mLeft);
        sbU.append(", ");
        sbU.append(this.mTop);
        sbU.append(", ");
        sbU.append(this.mRight);
        sbU.append(", ");
        sbU.append(this.mBottom);
        sbU.append("} scroll={");
        sbU.append(this.mScrollX);
        sbU.append(", ");
        sbU.append(this.mScrollY);
        sbU.append("} ");
        Log.d(VIEW_LOG_TAG, sbU.toString());
        if (this.mPaddingLeft != 0 || this.mPaddingTop != 0 || this.mPaddingRight != 0 || this.mPaddingBottom != 0) {
            StringBuilder sbU2 = android.accessibilityservice.c.u(debugIndent(i2), "padding={");
            sbU2.append(this.mPaddingLeft);
            sbU2.append(", ");
            sbU2.append(this.mPaddingTop);
            sbU2.append(", ");
            sbU2.append(this.mPaddingRight);
            sbU2.append(", ");
            sbU2.append(this.mPaddingBottom);
            sbU2.append("}");
            Log.d(VIEW_LOG_TAG, sbU2.toString());
        }
        StringBuilder sbU3 = android.accessibilityservice.c.u(debugIndent(i2), "mMeasureWidth=");
        sbU3.append(this.mMeasuredWidth);
        sbU3.append(" mMeasureHeight=");
        sbU3.append(this.mMeasuredHeight);
        Log.d(VIEW_LOG_TAG, sbU3.toString());
        String strDebugIndent = debugIndent(i2);
        ViewGroup.LayoutParams layoutParams = this.mLayoutParams;
        Log.d(VIEW_LOG_TAG, layoutParams == null ? android.accessibilityservice.c.D(strDebugIndent, "BAD! no layout params") : layoutParams.debug(strDebugIndent));
        StringBuilder sbR = android.accessibilityservice.c.r(android.accessibilityservice.c.D(debugIndent(i2), "flags={"));
        sbR.append(printFlags(this.mViewFlags));
        Log.d(VIEW_LOG_TAG, sbR.toString() + "}");
        StringBuilder sbR2 = android.accessibilityservice.c.r(android.accessibilityservice.c.D(debugIndent(i2), "privateFlags={"));
        sbR2.append(printPrivateFlags(this.mPrivateFlags));
        Log.d(VIEW_LOG_TAG, sbR2.toString() + "}");
    }

    public void getBoundsOnScreen(Rect rect, boolean z2) {
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo == null) {
            return;
        }
        RectF rectF = attachInfo.mTmpTransformRect;
        rectF.set(0.0f, 0.0f, this.mRight - this.mLeft, this.mBottom - this.mTop);
        mapRectFromViewToScreenCoords(rectF, z2);
        rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
    }

    public boolean getClipBounds(Rect rect) {
        Rect rect2 = this.mClipBounds;
        if (rect2 == null) {
            return false;
        }
        rect.set(rect2);
        return true;
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

    public void getLocationOnScreen(int[] iArr) {
        getLocationInWindow(iArr);
        AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null) {
            iArr[0] = iArr[0] + attachInfo.mWindowLeft;
            iArr[1] = iArr[1] + attachInfo.mWindowTop;
        }
    }

    public Object getTag(int i2) {
        SparseArray<Object> sparseArray = this.mKeyedTags;
        if (sparseArray != null) {
            return sparseArray.get(i2);
        }
        return null;
    }

    public boolean hasFocusable(boolean z2, boolean z3) {
        if (!isFocusableInTouchMode()) {
            for (ViewParent parent = this.mParent; parent instanceof ViewGroup; parent = parent.getParent()) {
                if (((ViewGroup) parent).shouldBlockFocusForTouchscreen()) {
                    return false;
                }
            }
        }
        if ((this.mViewFlags & 12) != 0) {
            return false;
        }
        return (z2 || getFocusable() != 16) && isFocusable();
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
        rect2.offset(-point.f71x, -point.f72y);
        return rect.intersect(rect2);
    }

    public boolean performContextClick() {
        OnContextClickListener onContextClickListener;
        sendAccessibilityEvent(8388608);
        ListenerInfo listenerInfo = this.mListenerInfo;
        boolean zOnContextClick = (listenerInfo == null || (onContextClickListener = listenerInfo.mOnContextClickListener) == null) ? false : onContextClickListener.onContextClick(this);
        if (zOnContextClick) {
            performHapticFeedback(6);
        }
        return zOnContextClick;
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

    public boolean performLongClick(float f2, float f3) {
        this.mLongClickX = f2;
        this.mLongClickY = f3;
        boolean zPerformLongClick = performLongClick();
        this.mLongClickX = Float.NaN;
        this.mLongClickY = Float.NaN;
        return zPerformLongClick;
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
            if (!(parent instanceof View)) {
                break;
            }
            rectF.offset(view.mLeft - view.getScrollX(), view.mTop - view.getScrollY());
            view = (View) parent;
            parent = view.getParent();
        }
        return zRequestChildRectangleOnScreen;
    }

    public void setFocusable(int i2) {
        if ((i2 & 17) == 0) {
            setFlags(0, 262144);
        }
        setFlags(i2, 17);
    }

    public void setScrollIndicators(int i2, int i3) {
        int i4 = (i3 << 8) & SCROLL_INDICATORS_PFLAG3_MASK;
        int i5 = (i2 << 8) & i4;
        int i6 = this.mPrivateFlags3;
        int i7 = ((~i4) & i6) | i5;
        if (i6 != i7) {
            this.mPrivateFlags3 = i7;
            if (i5 != 0) {
                initializeScrollIndicatorsInternal();
            }
            invalidate();
        }
    }

    public void setTag(int i2, Object obj) {
        if ((i2 >>> 24) < 2) {
            throw new IllegalArgumentException("The key must be an application-specific resource id.");
        }
        setKeyedTag(i2, obj);
    }

    public boolean showContextMenu(float f2, float f3) {
        return getParent().showContextMenuForChild(this, f2, f3);
    }

    public ActionMode startActionMode(ActionMode.Callback callback, int i2) {
        ViewParent parent = getParent();
        if (parent == null) {
            return null;
        }
        try {
            return parent.startActionModeForChild(this, callback, i2);
        } catch (AbstractMethodError unused) {
            return parent.startActionModeForChild(this, callback);
        }
    }

    public boolean awakenScrollBars(int i2) {
        return awakenScrollBars(i2, true);
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

    public boolean awakenScrollBars(int i2, boolean z2) {
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        if (scrollabilityCache == null || !scrollabilityCache.fadeScrollBars) {
            return false;
        }
        if (scrollabilityCache.scrollBar == null) {
            ScrollBarDrawable scrollBarDrawable = new ScrollBarDrawable();
            scrollabilityCache.scrollBar = scrollBarDrawable;
            scrollBarDrawable.setState(getDrawableState());
            scrollabilityCache.scrollBar.setCallback(this);
        }
        if (!isHorizontalScrollBarEnabled() && !isVerticalScrollBarEnabled()) {
            return false;
        }
        if (z2) {
            postInvalidateOnAnimation();
        }
        if (scrollabilityCache.state == 0) {
            i2 = Math.max(MetricsProto.MetricsEvent.SETTINGS_LANGUAGE_CATEGORY, i2);
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

    public void invalidate(int i2, int i3, int i4, int i5) {
        int i6 = this.mScrollX;
        int i7 = this.mScrollY;
        invalidateInternal(i2 - i6, i3 - i7, i4 - i6, i5 - i7, true, false);
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

    public void invalidate() {
        invalidate(true);
    }

    public void invalidate(boolean z2) {
        invalidateInternal(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop, z2, true);
    }

    public View(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public View(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:201:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:250:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:254:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:257:0x0600  */
    /* JADX WARN: Code duplicated, block: B:262:0x060d  */
    /* JADX WARN: Code duplicated, block: B:264:0x0611  */
    /* JADX WARN: Code duplicated, block: B:265:0x0614  */
    /* JADX WARN: Code duplicated, block: B:267:0x0619  */
    /* JADX WARN: Code duplicated, block: B:271:0x0620  */
    /* JADX WARN: Code duplicated, block: B:282:0x0635  */
    /* JADX WARN: Code duplicated, block: B:283:0x0638  */
    /* JADX WARN: Code duplicated, block: B:286:0x063e  */
    /* JADX WARN: Code duplicated, block: B:287:0x0641  */
    /* JADX WARN: Code duplicated, block: B:290:0x0648  */
    /* JADX WARN: Code duplicated, block: B:292:0x064d  */
    /* JADX WARN: Code duplicated, block: B:294:0x0652  */
    /* JADX WARN: Code duplicated, block: B:297:0x065a  */
    /* JADX WARN: Code duplicated, block: B:301:0x0665  */
    /* JADX WARN: Code duplicated, block: B:303:0x066a  */
    /* JADX WARN: Code duplicated, block: B:313:0x00e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:332:0x05a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00de  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f4 A[LOOP:1: B:41:0x00f2->B:42:0x00f4, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r46v39, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r7v108 */
    /* JADX WARN: Type inference failed for: r7v109 */
    /* JADX WARN: Type inference failed for: r7v110 */
    /* JADX WARN: Type inference failed for: r7v112, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v124 */
    /* JADX WARN: Type inference failed for: r8v33, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v40 */
    public View(Context context, AttributeSet attributeSet, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        AnonymousClass1 anonymousClass1;
        int i14;
        int i15;
        char c;
        int i16;
        int i17;
        AnonymousClass1 anonymousClass2;
        int i18;
        String string;
        ?? Split;
        ?? r8;
        String[] strArr;
        int length;
        int i19;
        this(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.View, i2, i3);
        if (mDebugViewAttributes) {
            saveAttributeData(attributeSet, typedArrayObtainStyledAttributes);
        }
        int i20 = this.mOverScrollMode;
        int i21 = context.getApplicationInfo().targetSdkVersion;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        int focusableAttribute = 16;
        AnonymousClass1 anonymousClass3 = null;
        int i22 = 16;
        Drawable drawable = null;
        int i23 = -1;
        int i24 = -1;
        int dimensionPixelSize = -1;
        int i25 = -1;
        int i26 = -1;
        int dimensionPixelSize2 = -1;
        int dimensionPixelSize3 = -1;
        int i27 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        int i28 = 0;
        int dimensionPixelOffset = 0;
        int dimensionPixelOffset2 = 0;
        boolean z9 = false;
        boolean z10 = false;
        int dimensionPixelSize4 = Integer.MIN_VALUE;
        int i29 = Integer.MIN_VALUE;
        float dimension = 0.0f;
        float dimension2 = 0.0f;
        float dimension3 = 0.0f;
        float dimension4 = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 1.0f;
        float f6 = 1.0f;
        while (i27 < indexCount) {
            int index = typedArrayObtainStyledAttributes.getIndex(i27);
            switch (index) {
                case 8:
                    anonymousClass1 = anonymousClass3;
                    i28 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i28 != 0) {
                        i14 = 50331648;
                        focusableAttribute |= i28 & 50331648;
                        i15 = i14 | i22;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 9:
                    anonymousClass1 = anonymousClass3;
                    this.mID = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 10:
                    anonymousClass1 = anonymousClass3;
                    this.mTag = typedArrayObtainStyledAttributes.getText(index);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 11:
                    anonymousClass1 = anonymousClass3;
                    dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 12:
                    anonymousClass1 = anonymousClass3;
                    dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, 0);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 13:
                    anonymousClass1 = anonymousClass3;
                    drawable = typedArrayObtainStyledAttributes.getDrawable(index);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 14:
                    anonymousClass1 = anonymousClass3;
                    int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    this.mUserPaddingLeftInitial = dimensionPixelSize5;
                    this.mUserPaddingRightInitial = dimensionPixelSize5;
                    z3 = true;
                    z4 = true;
                    i23 = dimensionPixelSize5;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 15:
                    anonymousClass1 = anonymousClass3;
                    int dimensionPixelSize6 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    this.mUserPaddingLeftInitial = dimensionPixelSize6;
                    z3 = true;
                    i25 = dimensionPixelSize6;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 16:
                    anonymousClass1 = anonymousClass3;
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 17:
                    anonymousClass1 = anonymousClass3;
                    int dimensionPixelSize7 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    this.mUserPaddingRightInitial = dimensionPixelSize7;
                    z4 = true;
                    i26 = dimensionPixelSize7;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 18:
                    anonymousClass1 = anonymousClass3;
                    dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 19:
                    anonymousClass1 = anonymousClass3;
                    focusableAttribute = (focusableAttribute & (-18)) | getFocusableAttribute(typedArrayObtainStyledAttributes);
                    if ((focusableAttribute & 16) == 0) {
                        i15 = i22 | 17;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 20:
                    anonymousClass1 = anonymousClass3;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        focusableAttribute = (focusableAttribute & (-17)) | 262145;
                        i14 = 262161;
                        i15 = i14 | i22;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 21:
                    anonymousClass1 = anonymousClass3;
                    int i30 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i30 != 0) {
                        focusableAttribute |= VISIBILITY_FLAGS[i30];
                        i15 = i22 | 12;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 22:
                    anonymousClass1 = anonymousClass3;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        focusableAttribute |= 2;
                        i15 = i22 | 2;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 23:
                    anonymousClass1 = anonymousClass3;
                    int i31 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i31 != 0) {
                        focusableAttribute |= i31;
                        z7 = true;
                        i22 |= 768;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 24:
                    anonymousClass1 = anonymousClass3;
                    if (i21 < 14) {
                        i18 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        if (i18 != 0) {
                            focusableAttribute |= i18;
                            i15 = i22 | 12288;
                            initializeFadingEdgeInternal(typedArrayObtainStyledAttributes);
                            i22 = i15;
                        }
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 25:
                case 45:
                case 46:
                case 47:
                case 97:
                case 98:
                case 99:
                default:
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 26:
                    anonymousClass1 = anonymousClass3;
                    this.mNextFocusLeftId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 27:
                    anonymousClass1 = anonymousClass3;
                    this.mNextFocusRightId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 28:
                    anonymousClass1 = anonymousClass3;
                    this.mNextFocusUpId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 29:
                    anonymousClass1 = anonymousClass3;
                    this.mNextFocusDownId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 30:
                    anonymousClass1 = anonymousClass3;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        focusableAttribute |= 16384;
                        i15 = i22 | 16384;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 31:
                    anonymousClass1 = anonymousClass3;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i14 = 2097152;
                        focusableAttribute |= i14;
                        i15 = i14 | i22;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 32:
                    anonymousClass1 = anonymousClass3;
                    if (!typedArrayObtainStyledAttributes.getBoolean(index, true)) {
                        i14 = 65536;
                        focusableAttribute |= i14;
                        i15 = i14 | i22;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 33:
                    anonymousClass1 = anonymousClass3;
                    int i32 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i32 != 0) {
                        focusableAttribute |= DRAWING_CACHE_QUALITY_FLAGS[i32];
                        i14 = DRAWING_CACHE_QUALITY_MASK;
                        i15 = i14 | i22;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 34:
                    anonymousClass1 = anonymousClass3;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i14 = 4194304;
                        focusableAttribute |= i14;
                        i15 = i14 | i22;
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 35:
                    anonymousClass1 = anonymousClass3;
                    if (i21 >= 23 || (this instanceof FrameLayout)) {
                        setForeground(typedArrayObtainStyledAttributes.getDrawable(index));
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 36:
                    anonymousClass1 = anonymousClass3;
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 37:
                    anonymousClass1 = anonymousClass3;
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 38:
                    anonymousClass1 = anonymousClass3;
                    if (i21 >= 23 || (this instanceof FrameLayout)) {
                        setForegroundGravity(typedArrayObtainStyledAttributes.getInt(index, 0));
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 39:
                    c = Ascii.MIN;
                    if (!typedArrayObtainStyledAttributes.getBoolean(index, true)) {
                        focusableAttribute &= -134217729;
                        i16 = 134217728;
                        i17 = i16 | i22;
                        i22 = i17;
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 40:
                    c = Ascii.MIN;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        i16 = 67108864;
                        focusableAttribute |= 67108864;
                        i17 = i16 | i22;
                        i22 = i17;
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 41:
                    c = Ascii.MIN;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        setScrollContainer(true);
                    }
                    z10 = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 42:
                    c = Ascii.MIN;
                    if (!typedArrayObtainStyledAttributes.getBoolean(index, true)) {
                        focusableAttribute &= -268435457;
                        i16 = 268435456;
                        i17 = i16 | i22;
                        i22 = i17;
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 43:
                    c = Ascii.MIN;
                    if (!context.isRestricted()) {
                        String string2 = typedArrayObtainStyledAttributes.getString(index);
                        if (string2 != null) {
                            setOnClickListener(new DeclaredOnClickListener(this, string2));
                        }
                        anonymousClass1 = null;
                        i27++;
                        anonymousClass3 = anonymousClass1;
                    } else {
                        throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                    }
                    break;
                case 44:
                    c = Ascii.MIN;
                    setContentDescription(typedArrayObtainStyledAttributes.getString(index));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 48:
                    c = Ascii.MIN;
                    i20 = typedArrayObtainStyledAttributes.getInt(index, 1);
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 49:
                    c = Ascii.MIN;
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        focusableAttribute |= 1024;
                        i17 = i22 | 1024;
                        i22 = i17;
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 50:
                    c = Ascii.MIN;
                    setAlpha(typedArrayObtainStyledAttributes.getFloat(index, 1.0f));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 51:
                    setPivotX(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 52:
                    setPivotY(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 53:
                    dimension = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                    z9 = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 54:
                    dimension2 = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                    z9 = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 55:
                    c = Ascii.MIN;
                    f5 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    z9 = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 56:
                    c = Ascii.MIN;
                    f6 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    z9 = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 57:
                    f2 = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    z9 = true;
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 58:
                    f3 = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    z9 = true;
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 59:
                    f4 = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    z9 = true;
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 60:
                    anonymousClass2 = anonymousClass3;
                    this.mVerticalScrollbarPosition = typedArrayObtainStyledAttributes.getInt(index, 0);
                    anonymousClass1 = anonymousClass2;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 61:
                    anonymousClass2 = anonymousClass3;
                    this.mNextFocusForwardId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    anonymousClass1 = anonymousClass2;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 62:
                    anonymousClass2 = null;
                    setLayerType(typedArrayObtainStyledAttributes.getInt(index, 0), null);
                    anonymousClass1 = anonymousClass2;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 63:
                    anonymousClass1 = null;
                    i18 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    if (i18 != 0) {
                        focusableAttribute |= i18;
                        i15 = i22 | 12288;
                        initializeFadingEdgeInternal(typedArrayObtainStyledAttributes);
                        i22 = i15;
                    }
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 64:
                    setImportantForAccessibility(typedArrayObtainStyledAttributes.getInt(index, 0));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 65:
                    this.mPrivateFlags2 &= -449;
                    int i33 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    if (i33 != -1) {
                        this.mPrivateFlags2 = PFLAG2_TEXT_DIRECTION_FLAGS[i33] | this.mPrivateFlags2;
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 66:
                    this.mPrivateFlags2 &= -57345;
                    this.mPrivateFlags2 = PFLAG2_TEXT_ALIGNMENT_FLAGS[typedArrayObtainStyledAttributes.getInt(index, 1)] | this.mPrivateFlags2;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 67:
                    this.mPrivateFlags2 &= -61;
                    int i34 = typedArrayObtainStyledAttributes.getInt(index, -1);
                    this.mPrivateFlags2 = ((i34 != -1 ? LAYOUT_DIRECTION_FLAGS[i34] : 2) << 2) | this.mPrivateFlags2;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 68:
                    dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, Integer.MIN_VALUE);
                    z5 = dimensionPixelSize4 != Integer.MIN_VALUE;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 69:
                    int dimensionPixelSize8 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, Integer.MIN_VALUE);
                    z6 = dimensionPixelSize8 != Integer.MIN_VALUE;
                    i29 = dimensionPixelSize8;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 70:
                    setLabelFor(typedArrayObtainStyledAttributes.getResourceId(index, -1));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 71:
                    setAccessibilityLiveRegion(typedArrayObtainStyledAttributes.getInt(index, 0));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 72:
                    dimension3 = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                    z9 = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 73:
                    setTransitionName(typedArrayObtainStyledAttributes.getString(index));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 74:
                    setNestedScrollingEnabled(typedArrayObtainStyledAttributes.getBoolean(index, false));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 75:
                    dimension4 = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                    z9 = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 76:
                    setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, typedArrayObtainStyledAttributes.getResourceId(index, 0)));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 77:
                    if (this.mBackgroundTint == null) {
                        this.mBackgroundTint = new TintInfo();
                    }
                    this.mBackgroundTint.mTintList = typedArrayObtainStyledAttributes.getColorStateList(77);
                    this.mBackgroundTint.mHasTintList = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 78:
                    if (this.mBackgroundTint == null) {
                        this.mBackgroundTint = new TintInfo();
                    }
                    this.mBackgroundTint.mTintMode = Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(78, -1), null);
                    this.mBackgroundTint.mHasTintMode = true;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 79:
                    if (i21 >= 23 || (this instanceof FrameLayout)) {
                        setForegroundTintList(typedArrayObtainStyledAttributes.getColorStateList(index));
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 80:
                    if (i21 >= 23 || (this instanceof FrameLayout)) {
                        setForegroundTintMode(Drawable.parseTintMode(typedArrayObtainStyledAttributes.getInt(index, -1), null));
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 81:
                    setOutlineProviderFromAttribute(typedArrayObtainStyledAttributes.getInt(81, 0));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 82:
                    setAccessibilityTraversalBefore(typedArrayObtainStyledAttributes.getResourceId(index, -1));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 83:
                    setAccessibilityTraversalAfter(typedArrayObtainStyledAttributes.getResourceId(index, -1));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 84:
                    int i35 = (typedArrayObtainStyledAttributes.getInt(index, 0) << 8) & SCROLL_INDICATORS_PFLAG3_MASK;
                    if (i35 != 0) {
                        this.mPrivateFlags3 = i35 | this.mPrivateFlags3;
                        z8 = true;
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 85:
                    if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                        focusableAttribute |= 8388608;
                        i22 = 8388608 | i22;
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 86:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        setPointerIcon(PointerIcon.load(context.getResources(), resourceId));
                    } else {
                        int i36 = typedArrayObtainStyledAttributes.getInt(index, 1);
                        if (i36 != 1) {
                            setPointerIcon(PointerIcon.getSystemIcon(context, i36));
                        }
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 87:
                    if (typedArrayObtainStyledAttributes.peekValue(index) != null) {
                        forceHasOverlappingRendering(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 88:
                    setTooltipText(typedArrayObtainStyledAttributes.getText(index));
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 89:
                    int dimensionPixelSize9 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    this.mUserPaddingLeftInitial = dimensionPixelSize9;
                    this.mUserPaddingRightInitial = dimensionPixelSize9;
                    z3 = true;
                    z4 = true;
                    i24 = dimensionPixelSize9;
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 90:
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, -1);
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 91:
                    if (typedArrayObtainStyledAttributes.peekValue(index) != null) {
                        setKeyboardNavigationCluster(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 92:
                    this.mNextClusterForwardId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 93:
                    if (typedArrayObtainStyledAttributes.peekValue(index) != null) {
                        setFocusedByDefault(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    }
                    anonymousClass1 = null;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 94:
                    if (typedArrayObtainStyledAttributes.peekValue(index) != null) {
                        if (typedArrayObtainStyledAttributes.getType(index) == 1) {
                            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                            try {
                                CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(index);
                                r8 = anonymousClass3;
                                Split = textArray;
                            } catch (Resources.NotFoundException unused) {
                                string = getResources().getString(resourceId2);
                                Split = anonymousClass3;
                                r8 = string;
                            }
                            if (Split == 0) {
                                if (r8 != 0) {
                                    Split = r8.split(",");
                                } else {
                                    throw new IllegalArgumentException("Could not resolve autofillHints");
                                }
                            }
                            strArr = new String[Split.length];
                            length = Split.length;
                            for (i19 = 0; i19 < length; i19++) {
                                strArr[i19] = Split[i19].toString().trim();
                            }
                            setAutofillHints(strArr);
                            anonymousClass1 = null;
                            i27++;
                            anonymousClass3 = anonymousClass1;
                        } else {
                            string = typedArrayObtainStyledAttributes.getString(index);
                        }
                        Split = anonymousClass3;
                        r8 = string;
                        if (Split == 0) {
                            if (r8 != 0) {
                                Split = r8.split(",");
                            } else {
                                throw new IllegalArgumentException("Could not resolve autofillHints");
                            }
                        }
                        strArr = new String[Split.length];
                        length = Split.length;
                        while (i19 < length) {
                            strArr[i19] = Split[i19].toString().trim();
                        }
                        setAutofillHints(strArr);
                        anonymousClass1 = null;
                        i27++;
                        anonymousClass3 = anonymousClass1;
                    }
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 95:
                    if (typedArrayObtainStyledAttributes.peekValue(index) != null) {
                        setImportantForAutofill(typedArrayObtainStyledAttributes.getInt(index, 0));
                    }
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 96:
                    if (typedArrayObtainStyledAttributes.peekValue(index) != null) {
                        setDefaultFocusHighlightEnabled(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    }
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
                case 100:
                    if (i21 >= 23 || (this instanceof FrameLayout)) {
                        if (this.mForegroundInfo == null) {
                            this.mForegroundInfo = new ForegroundInfo();
                        }
                        ForegroundInfo foregroundInfo = this.mForegroundInfo;
                        foregroundInfo.mInsidePadding = typedArrayObtainStyledAttributes.getBoolean(index, foregroundInfo.mInsidePadding);
                    }
                    anonymousClass1 = anonymousClass3;
                    i27++;
                    anonymousClass3 = anonymousClass1;
                    break;
            }
        }
        setOverScrollMode(i20);
        this.mUserPaddingStart = dimensionPixelSize4;
        int i37 = i29;
        this.mUserPaddingEnd = i37;
        Drawable drawable2 = drawable;
        if (drawable2 != null) {
            setBackground(drawable2);
        }
        this.mLeftPaddingDefined = z3;
        this.mRightPaddingDefined = z4;
        int i38 = i23;
        if (i38 >= 0) {
            this.mUserPaddingLeftInitial = i38;
            this.mUserPaddingRightInitial = i38;
            i6 = i38;
            i7 = i6;
        } else {
            int i39 = i24;
            if (i39 >= 0) {
                this.mUserPaddingLeftInitial = i39;
                this.mUserPaddingRightInitial = i39;
                i4 = i39;
                i5 = i4;
            } else {
                i4 = i25;
                i5 = i26;
            }
            i6 = i4;
            i38 = i5;
            if (dimensionPixelSize >= 0) {
                i7 = dimensionPixelSize;
            } else {
                i7 = dimensionPixelSize2;
            }
            if (isRtlCompatibilityMode()) {
                dimensionPixelSize4 = (this.mLeftPaddingDefined && z5) ? dimensionPixelSize4 : i6;
                this.mUserPaddingLeftInitial = dimensionPixelSize4 < 0 ? this.mUserPaddingLeftInitial : dimensionPixelSize4;
                if (this.mRightPaddingDefined && z6) {
                    i12 = i37;
                } else {
                    i12 = i38;
                }
                if (i12 >= 0) {
                    i13 = i12;
                } else {
                    i13 = this.mUserPaddingRightInitial;
                }
                this.mUserPaddingRightInitial = i13;
            } else {
                if (!z5 || z6) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.mLeftPaddingDefined && !z2) {
                    this.mUserPaddingLeftInitial = i6;
                }
                if (this.mRightPaddingDefined && !z2) {
                    this.mUserPaddingRightInitial = i38;
                }
            }
            int i40 = this.mUserPaddingLeftInitial;
            if (i7 >= 0) {
                i8 = i7;
            } else {
                i8 = this.mPaddingTop;
            }
            int i41 = this.mUserPaddingRightInitial;
            if (dimensionPixelSize3 >= 0) {
                i9 = dimensionPixelSize3;
            } else {
                i9 = this.mPaddingBottom;
            }
            internalSetPadding(i40, i8, i41, i9);
            if (i22 != 0) {
                setFlags(focusableAttribute, i22);
            }
            if (z7) {
                initializeScrollbarsInternal(typedArrayObtainStyledAttributes);
            }
            if (z8) {
                initializeScrollIndicatorsInternal();
            }
            typedArrayObtainStyledAttributes.recycle();
            if (i28 != 0) {
                recomputePadding();
            }
            i10 = dimensionPixelOffset;
            i11 = dimensionPixelOffset2;
            if (i10 == 0 || i11 != 0) {
                scrollTo(i10, i11);
            }
            if (z9) {
                setTranslationX(dimension);
                setTranslationY(dimension2);
                setTranslationZ(dimension3);
                setElevation(dimension4);
                setRotation(f2);
                setRotationX(f3);
                setRotationY(f4);
                setScaleX(f5);
                setScaleY(f6);
            }
            if (!z10 && (focusableAttribute & 512) != 0) {
                setScrollContainer(true);
            }
            computeOpaqueFlags();
            sDebugDispatchInput = SystemProperties.getBoolean(PROPERTY_PROFILE_DISPATCHINPUT, false);
        }
        dimensionPixelSize3 = i7;
        if (isRtlCompatibilityMode()) {
            if (this.mLeftPaddingDefined) {
            }
            this.mUserPaddingLeftInitial = dimensionPixelSize4 < 0 ? this.mUserPaddingLeftInitial : dimensionPixelSize4;
            if (this.mRightPaddingDefined) {
                i12 = i38;
            } else {
                i12 = i38;
            }
            if (i12 >= 0) {
                i13 = i12;
            } else {
                i13 = this.mUserPaddingRightInitial;
            }
            this.mUserPaddingRightInitial = i13;
        } else {
            if (z5) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (this.mLeftPaddingDefined) {
                this.mUserPaddingLeftInitial = i6;
            }
            if (this.mRightPaddingDefined) {
                this.mUserPaddingRightInitial = i38;
            }
        }
        int i42 = this.mUserPaddingLeftInitial;
        if (i7 >= 0) {
            i8 = i7;
        } else {
            i8 = this.mPaddingTop;
        }
        int i43 = this.mUserPaddingRightInitial;
        if (dimensionPixelSize3 >= 0) {
            i9 = dimensionPixelSize3;
        } else {
            i9 = this.mPaddingBottom;
        }
        internalSetPadding(i42, i8, i43, i9);
        if (i22 != 0) {
            setFlags(focusableAttribute, i22);
        }
        if (z7) {
            initializeScrollbarsInternal(typedArrayObtainStyledAttributes);
        }
        if (z8) {
            initializeScrollIndicatorsInternal();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i28 != 0) {
            recomputePadding();
        }
        i10 = dimensionPixelOffset;
        i11 = dimensionPixelOffset2;
        if (i10 == 0) {
            scrollTo(i10, i11);
        } else {
            scrollTo(i10, i11);
        }
        if (z9) {
            setTranslationX(dimension);
            setTranslationY(dimension2);
            setTranslationZ(dimension3);
            setElevation(dimension4);
            setRotation(f2);
            setRotationX(f3);
            setRotationY(f4);
            setScaleX(f5);
            setScaleY(f6);
        }
        if (!z10) {
            setScrollContainer(true);
        }
        computeOpaqueFlags();
        sDebugDispatchInput = SystemProperties.getBoolean(PROPERTY_PROFILE_DISPATCHINPUT, false);
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
        AttachInfo attachInfo;
        int i3 = this.mPrivateFlags;
        boolean z6 = (6291456 & i3) == 4194304 && ((attachInfo = this.mAttachInfo) == null || !attachInfo.mIgnoreDirtyState);
        this.mPrivateFlags = (i3 & (-6291457)) | 32;
        if (!z6) {
            drawBackground(canvas);
        }
        int i4 = this.mViewFlags;
        boolean z7 = (i4 & 4096) != 0;
        boolean z8 = (i4 & 8192) != 0;
        if (!z8 && !z7) {
            if (!z6) {
                onDraw(canvas);
            }
            dispatchDraw(canvas);
            drawAutofilledHighlight(canvas);
            ViewOverlay viewOverlay = this.mOverlay;
            if (viewOverlay != null && !viewOverlay.isEmpty()) {
                this.mOverlay.getOverlayView().dispatchDraw(canvas);
            }
            onDrawForeground(canvas);
            drawDefaultFocusHighlight(canvas);
            if (debugDraw()) {
                debugDrawFocus(canvas);
                return;
            }
            return;
        }
        int leftPaddingOffset = this.mPaddingLeft;
        boolean zIsPaddingOffsetRequired = isPaddingOffsetRequired();
        if (zIsPaddingOffsetRequired) {
            leftPaddingOffset += getLeftPaddingOffset();
        }
        int i5 = this.mScrollX + leftPaddingOffset;
        int rightPaddingOffset = (((this.mRight + i5) - this.mLeft) - this.mPaddingRight) - leftPaddingOffset;
        int fadeTop = getFadeTop(zIsPaddingOffsetRequired) + this.mScrollY;
        int fadeHeight = getFadeHeight(zIsPaddingOffsetRequired) + fadeTop;
        if (zIsPaddingOffsetRequired) {
            rightPaddingOffset += getRightPaddingOffset();
            fadeHeight += getBottomPaddingOffset();
        }
        int i6 = fadeHeight;
        int i7 = rightPaddingOffset;
        ScrollabilityCache scrollabilityCache = this.mScrollCache;
        float f6 = scrollabilityCache.fadingEdgeLength;
        int i8 = (int) f6;
        if (z8 && fadeTop + i8 > i6 - i8) {
            i8 = (i6 - fadeTop) / 2;
        }
        if (z7 && i5 + i8 > i7 - i8) {
            i8 = (i7 - i5) / 2;
        }
        int i9 = i8;
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
                canvas.saveLayer(i5, fadeTop, i7, fadeTop + i9, null, 4);
            } else {
                i2 = saveCount;
            }
            if (z3) {
                canvas.saveLayer(i5, i6 - i9, i7, i6, null, 4);
            }
            if (z4) {
                canvas.saveLayer(i5, fadeTop, i5 + i9, i6, null, 4);
            }
            if (z5) {
                canvas.saveLayer(i7 - i9, fadeTop, i7, i6, null, 4);
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
            float f8 = i5;
            float f9 = fadeTop;
            matrix.postTranslate(f8, f9);
            shader.setLocalMatrix(matrix);
            paint.setShader(shader);
            canvas.drawRect(f8, f9, i7, fadeTop + i9, paint);
        }
        if (z3) {
            matrix.setScale(f7, f6 * f3);
            matrix.postRotate(180.0f);
            float f10 = i5;
            float f11 = i6;
            matrix.postTranslate(f10, f11);
            shader.setLocalMatrix(matrix);
            paint.setShader(shader);
            canvas.drawRect(f10, i6 - i9, i7, f11, paint);
        }
        if (z4) {
            matrix.setScale(f7, f6 * f4);
            matrix.postRotate(-90.0f);
            float f12 = i5;
            float f13 = fadeTop;
            matrix.postTranslate(f12, f13);
            shader.setLocalMatrix(matrix);
            paint.setShader(shader);
            canvas.drawRect(f12, f13, i5 + i9, i6, paint);
        }
        if (z5) {
            matrix.setScale(f7, f6 * f5);
            matrix.postRotate(90.0f);
            float f14 = i7;
            float f15 = fadeTop;
            matrix.postTranslate(f14, f15);
            shader.setLocalMatrix(matrix);
            paint.setShader(shader);
            canvas.drawRect(i7 - i9, f15, f14, i6, paint);
        }
        canvas.restoreToCount(i2);
        drawAutofilledHighlight(canvas);
        ViewOverlay viewOverlay2 = this.mOverlay;
        if (viewOverlay2 != null && !viewOverlay2.isEmpty()) {
            this.mOverlay.getOverlayView().dispatchDraw(canvas);
        }
        onDrawForeground(canvas);
        if (debugDraw()) {
            debugDrawFocus(canvas);
        }
    }

    public View() {
        this.mCurrentAnimation = null;
        this.mRecreateDisplayList = false;
        this.mID = -1;
        this.mAutofillViewId = -1;
        this.mAccessibilityViewId = -1;
        this.mAccessibilityCursorPosition = -1;
        this.mTag = null;
        this.mTransientStateCount = 0;
        this.mClipBounds = null;
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mLabelForId = -1;
        this.mAccessibilityTraversalBeforeId = -1;
        this.mAccessibilityTraversalAfterId = -1;
        this.mLeftPaddingDefined = false;
        this.mRightPaddingDefined = false;
        this.mOldWidthMeasureSpec = Integer.MIN_VALUE;
        this.mOldHeightMeasureSpec = Integer.MIN_VALUE;
        this.mLongClickX = Float.NaN;
        this.mLongClickY = Float.NaN;
        this.mDrawableState = null;
        this.mOutlineProvider = ViewOutlineProvider.BACKGROUND;
        this.mNextFocusLeftId = -1;
        this.mNextFocusRightId = -1;
        this.mNextFocusUpId = -1;
        this.mNextFocusDownId = -1;
        this.mNextFocusForwardId = -1;
        this.mNextClusterForwardId = -1;
        this.mDefaultFocusHighlightEnabled = true;
        this.mPendingCheckForTap = null;
        this.mTouchDelegate = null;
        this.mDrawingCacheBackgroundColor = 0;
        this.mAnimator = null;
        this.mLayerType = 0;
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mResources = null;
        this.mRenderNode = RenderNode.create(getClass().getName(), this);
    }
}
