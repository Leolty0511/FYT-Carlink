.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams$SoftInputModeFlags;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_ANCHOR_CHANGED:I = 0x1000000

.field public static final ACCESSIBILITY_TITLE_CHANGED:I = 0x2000000

.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x2000

.field public static final COLOR_MODE_CHANGED:I = 0x4000000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final EVERYTHING_CHANGED:I = -0x1

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DITHER:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x1000000

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_LAYOUT_ATTACHED_IN_DECOR:I = 0x40000000

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_OVERSCAN:I = 0x2000000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_LOCAL_FOCUS_MODE:I = 0x10000000

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_SLIPPERY:I = 0x20000000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_TRANSLUCENT_NAVIGATION:I = 0x8000000

.field public static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final INPUT_FEATURES_CHANGED:I = 0x10000

.field public static final INPUT_FEATURE_DISABLE_POINTER_GESTURES:I = 0x1

.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final INPUT_FEATURE_NO_INPUT_CHANNEL:I = 0x2

.field public static final INVALID_WINDOW_TYPE:I = -0x1

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEEDS_MENU_KEY_CHANGED:I = 0x400000

.field public static final NEEDS_MENU_SET_FALSE:I = 0x2

.field public static final NEEDS_MENU_SET_TRUE:I = 0x1

.field public static final NEEDS_MENU_UNSET:I = 0x0

.field public static final PREFERRED_DISPLAY_MODE_ID:I = 0x800000

.field public static final PREFERRED_REFRESH_RATE_CHANGED:I = 0x200000

.field public static final PRIVATE_FLAGS_CHANGED:I = 0x20000

.field public static final PRIVATE_FLAG_ACQUIRES_SLEEP_TOKEN:I = 0x200000

.field public static final PRIVATE_FLAG_COMPATIBLE_WINDOW:I = 0x80

.field public static final PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS:I = 0x800

.field public static final PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED:I = 0x1

.field public static final PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY:I = 0x4000

.field public static final PRIVATE_FLAG_FORCE_DRAW_STATUS_BAR_BACKGROUND:I = 0x20000

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT:I = 0x1000

.field public static final PRIVATE_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS:I = 0x80000

.field public static final PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR:I = 0x200

.field public static final PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY:I = 0x100000

.field public static final PRIVATE_FLAG_KEYGUARD:I = 0x400

.field public static final PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME:I = 0x10000

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field public static final PRIVATE_FLAG_PRESERVE_GEOMETRY:I = 0x2000

.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE:I = 0x40000

.field public static final PRIVATE_FLAG_SYSTEM_ERROR:I = 0x100

.field public static final PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS:I = 0x4

.field public static final PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH:I = 0x8000

.field public static final ROTATION_ANIMATION_CHANGED:I = 0x1000

.field public static final ROTATION_ANIMATION_CROSSFADE:I = 0x1

.field public static final ROTATION_ANIMATION_JUMPCUT:I = 0x2

.field public static final ROTATION_ANIMATION_ROTATE:I = 0x0

.field public static final ROTATION_ANIMATION_SEAMLESS:I = 0x3

.field public static final ROTATION_ANIMATION_UNSPECIFIED:I = -0x1

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_NOTHING:I = 0x30

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SURFACE_INSETS_CHANGED:I = 0x100000

.field public static final SYSTEM_UI_LISTENER_CHANGED:I = 0x8000

.field public static final SYSTEM_UI_VISIBILITY_CHANGED:I = 0x4000

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TRANSLUCENT_FLAGS_CHANGED:I = 0x80000

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x7f0

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ABOVE_SUB_PANEL:I = 0x3ed

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_OVERLAY:I = 0x7f6

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_DISPLAY_OVERLAY:I = 0x7ea

.field public static final TYPE_DOCK_DIVIDER:I = 0x7f2

.field public static final TYPE_DRAG:I = 0x7e0

.field public static final TYPE_DRAWN_APPLICATION:I = 0x4

.field public static final TYPE_DREAM:I = 0x7e7

.field public static final TYPE_INPUT_CONSUMER:I = 0x7e6

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x7eb

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_PHONE:I = 0x7d2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_POINTER:I = 0x7e2

.field public static final TYPE_PRESENTATION:I = 0x7f5

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRIVATE_PRESENTATION:I = 0x7ee

.field public static final TYPE_QS_DIALOG:I = 0x7f3

.field public static final TYPE_SCREENSHOT:I = 0x7f4

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_STATUS_BAR_SUB_PANEL:I = 0x7e1

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOAST:I = 0x7d5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VOICE_INTERACTION:I = 0x7ef

.field public static final TYPE_VOICE_INTERACTION_STARTING:I = 0x7f1

.field public static final TYPE_VOLUME_OVERLAY:I = 0x7e4

.field public static final TYPE_WALLPAPER:I = 0x7dd

.field public static final USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x40000


# instance fields
.field public accessibilityIdOfAnchor:I

.field public accessibilityTitle:Ljava/lang/CharSequence;

.field public alpha:F

.field public buttonBrightness:F

.field public dimAmount:F

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FLAG_DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "FLAG_BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "FLAG_NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "FLAG_NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "FLAG_NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40
                mask = 0x40
                name = "FLAG_TOUCHABLE_WHEN_WAKING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "FLAG_KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "FLAG_LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200
                mask = 0x200
                name = "FLAG_LAYOUT_NO_LIMITS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FLAG_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FLAG_FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FLAG_DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "FLAG_SECURE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000
                mask = 0x4000
                name = "FLAG_SCALED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FLAG_IGNORE_CHEEK_PRESSES"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000
                mask = 0x10000
                name = "FLAG_LAYOUT_INSET_DECOR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20000
                mask = 0x20000
                name = "FLAG_ALT_FOCUSABLE_IM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x40000
                mask = 0x40000
                name = "FLAG_WATCH_OUTSIDE_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "FLAG_SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100000
                mask = 0x100000
                name = "FLAG_SHOW_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "FLAG_TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "FLAG_DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "FLAG_SPLIT_TOUCH"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = 0x1000000
                name = "FLAG_HARDWARE_ACCELERATED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10000000
                mask = 0x10000000
                name = "FLAG_LOCAL_FOCUS_MODE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4000000
                mask = 0x4000000
                name = "FLAG_TRANSLUCENT_STATUS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000000
                mask = 0x8000000
                name = "FLAG_TRANSLUCENT_NAVIGATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x80000000
                mask = -0x80000000
                name = "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public hasManualSurfaceInsets:Z

.field public hasSystemUiListeners:Z

.field public hideTimeoutMilliseconds:J

.field public horizontalMargin:F

.field public horizontalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public inputFeatures:I

.field private mColorMode:I

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public needsMenuKey:I

.field public packageName:Ljava/lang/String;

.field public preferredDisplayModeId:I

.field public preferredRefreshRate:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public preservePreviousSurfaceInsets:Z

.field public privateFlags:I

.field public rotationAnimation:I

.field public screenBrightness:F

.field public screenOrientation:I

.field public softInputMode:I

.field public subtreeSystemUiVisibility:I

.field public final surfaceInsets:Landroid/graphics/Rect;

.field public systemUiVisibility:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "TYPE_BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TYPE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TYPE_APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "TYPE_DRAWN_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "TYPE_APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "TYPE_APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "TYPE_APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ed
                to = "TYPE_APPLICATION_ABOVE_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "TYPE_APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ec
                to = "TYPE_APPLICATION_MEDIA_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "TYPE_STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "TYPE_SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "TYPE_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "TYPE_SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TYPE_TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "TYPE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "TYPE_PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "TYPE_SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "TYPE_KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "TYPE_SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "TYPE_INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "TYPE_INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dd
                to = "TYPE_WALLPAPER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "TYPE_STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "TYPE_SECURE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e0
                to = "TYPE_DRAG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e1
                to = "TYPE_STATUS_BAR_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e2
                to = "TYPE_POINTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e3
                to = "TYPE_NAVIGATION_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e4
                to = "TYPE_VOLUME_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e5
                to = "TYPE_BOOT_PROGRESS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e6
                to = "TYPE_INPUT_CONSUMER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e7
                to = "TYPE_DREAM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7e8
                to = "TYPE_NAVIGATION_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ea
                to = "TYPE_DISPLAY_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7eb
                to = "TYPE_MAGNIFICATION_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f5
                to = "TYPE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ee
                to = "TYPE_PRIVATE_PRESENTATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7ef
                to = "TYPE_VOICE_INTERACTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f1
                to = "TYPE_VOICE_INTERACTION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f2
                to = "TYPE_DOCK_DIVIDER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f3
                to = "TYPE_QS_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f4
                to = "TYPE_SCREENSHOT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7f6
                to = "TYPE_APPLICATION_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public userActivityTimeout:J

.field public verticalMargin:F

.field public verticalWeight:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public windowAnimations:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 6
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 7
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 8
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 9
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 11
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 12
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v3, -0x1

    .line 13
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 14
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 15
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 16
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 17
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 18
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    .line 19
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 20
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 23
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 26
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 27
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 28
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 29
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 31
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 32
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v3, -0x1

    .line 33
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 34
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 35
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 36
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 37
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 38
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 39
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 40
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 46
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 47
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 48
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 49
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 50
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 51
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 52
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v3, -0x1

    .line 53
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 54
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 55
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 56
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 57
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 58
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 59
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 60
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 5

    const/4 v0, -0x1

    .line 62
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 64
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 65
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 67
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 68
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 69
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 70
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 72
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 73
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v3, -0x1

    .line 74
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 75
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 76
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 77
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 78
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 79
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 81
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 82
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 85
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 p2, 0x1

    .line 86
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 87
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 88
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 p2, -0x40800000    # -1.0f

    .line 89
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 90
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 91
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p2, 0x0

    .line 92
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 93
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v1, -0x1

    .line 95
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 96
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 97
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 98
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 99
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 100
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 101
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 102
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 3

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 106
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 p2, 0x1

    .line 107
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 108
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 109
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 p2, -0x40800000    # -1.0f

    .line 110
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 111
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 112
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p2, 0x0

    .line 113
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 114
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v1, -0x1

    .line 116
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 117
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 118
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 119
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 120
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 121
    iput-object p2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 124
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 125
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 127
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 130
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 131
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 132
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v3, -0x40800000    # -1.0f

    .line 133
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 134
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 135
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v3, 0x0

    .line 136
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 137
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v4, -0x1

    .line 138
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-wide/16 v5, -0x1

    .line 139
    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 140
    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 141
    iput-wide v5, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 142
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 143
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 144
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 165
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 182
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    return-void
.end method

.method public static isSystemAlertWindowType(I)Z
    .locals 1

    const/16 v0, 0x7d2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7da

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static mayUseInputMethod(I)Z
    .locals 1

    const v0, 0x20008

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public backup()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    .line 13
    aput v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 17
    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    .line 23
    aput v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    .line 28
    aput v2, v0, v1

    .line 29
    .line 30
    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 5

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2
    .line 3
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    .line 14
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    .line 20
    or-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 23
    .line 24
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 25
    .line 26
    if-eq v1, v2, :cond_2

    .line 27
    .line 28
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 29
    .line 30
    or-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 33
    .line 34
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 35
    .line 36
    if-eq v1, v2, :cond_3

    .line 37
    .line 38
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 39
    .line 40
    or-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 43
    .line 44
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 45
    .line 46
    cmpl-float v1, v1, v2

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 51
    .line 52
    or-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    :cond_4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 55
    .line 56
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 57
    .line 58
    cmpl-float v1, v1, v2

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 63
    .line 64
    or-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 67
    .line 68
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 69
    .line 70
    cmpl-float v1, v1, v2

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 75
    .line 76
    or-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 79
    .line 80
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 81
    .line 82
    cmpl-float v1, v1, v2

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 87
    .line 88
    or-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 91
    .line 92
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 93
    .line 94
    if-eq v1, v2, :cond_8

    .line 95
    .line 96
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 97
    .line 98
    or-int/lit8 v0, v0, 0x2

    .line 99
    .line 100
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    .line 102
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    .line 104
    if-eq v1, v2, :cond_a

    .line 105
    .line 106
    xor-int/2addr v1, v2

    .line 107
    const/high16 v3, 0xc000000

    .line 108
    .line 109
    and-int/2addr v1, v3

    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    const/high16 v1, 0x80000

    .line 113
    .line 114
    or-int/2addr v0, v1

    .line 115
    :cond_9
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 116
    .line 117
    or-int/lit8 v0, v0, 0x4

    .line 118
    .line 119
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 120
    .line 121
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 122
    .line 123
    if-eq v1, v2, :cond_b

    .line 124
    .line 125
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 126
    .line 127
    const/high16 v1, 0x20000

    .line 128
    .line 129
    or-int/2addr v0, v1

    .line 130
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 131
    .line 132
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 133
    .line 134
    if-eq v1, v2, :cond_c

    .line 135
    .line 136
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 137
    .line 138
    or-int/lit16 v0, v0, 0x200

    .line 139
    .line 140
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 141
    .line 142
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    .line 144
    if-eq v1, v2, :cond_d

    .line 145
    .line 146
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 147
    .line 148
    or-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 151
    .line 152
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 153
    .line 154
    if-eq v1, v2, :cond_e

    .line 155
    .line 156
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 157
    .line 158
    or-int/lit8 v0, v0, 0x8

    .line 159
    .line 160
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 161
    .line 162
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 163
    .line 164
    if-eq v1, v2, :cond_f

    .line 165
    .line 166
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 167
    .line 168
    or-int/lit8 v0, v0, 0x10

    .line 169
    .line 170
    :cond_f
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 171
    .line 172
    if-nez v1, :cond_10

    .line 173
    .line 174
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 175
    .line 176
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 177
    .line 178
    :cond_10
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 179
    .line 180
    if-nez v1, :cond_11

    .line 181
    .line 182
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 183
    .line 184
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 185
    .line 186
    :cond_11
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 187
    .line 188
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 189
    .line 190
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_12

    .line 195
    .line 196
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 197
    .line 198
    if-eqz v1, :cond_12

    .line 199
    .line 200
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 201
    .line 202
    or-int/lit8 v0, v0, 0x40

    .line 203
    .line 204
    :cond_12
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 205
    .line 206
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 207
    .line 208
    cmpl-float v1, v1, v2

    .line 209
    .line 210
    if-eqz v1, :cond_13

    .line 211
    .line 212
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 213
    .line 214
    or-int/lit16 v0, v0, 0x80

    .line 215
    .line 216
    :cond_13
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 217
    .line 218
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 219
    .line 220
    cmpl-float v1, v1, v2

    .line 221
    .line 222
    if-eqz v1, :cond_14

    .line 223
    .line 224
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 225
    .line 226
    or-int/lit8 v0, v0, 0x20

    .line 227
    .line 228
    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 229
    .line 230
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 231
    .line 232
    cmpl-float v1, v1, v2

    .line 233
    .line 234
    if-eqz v1, :cond_15

    .line 235
    .line 236
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 237
    .line 238
    or-int/lit16 v0, v0, 0x800

    .line 239
    .line 240
    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 241
    .line 242
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 243
    .line 244
    cmpl-float v1, v1, v2

    .line 245
    .line 246
    if-eqz v1, :cond_16

    .line 247
    .line 248
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 249
    .line 250
    or-int/lit16 v0, v0, 0x2000

    .line 251
    .line 252
    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 253
    .line 254
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 255
    .line 256
    if-eq v1, v2, :cond_17

    .line 257
    .line 258
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 259
    .line 260
    or-int/lit16 v0, v0, 0x1000

    .line 261
    .line 262
    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 263
    .line 264
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 265
    .line 266
    if-eq v1, v2, :cond_18

    .line 267
    .line 268
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 269
    .line 270
    or-int/lit16 v0, v0, 0x400

    .line 271
    .line 272
    :cond_18
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 273
    .line 274
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 275
    .line 276
    cmpl-float v1, v1, v2

    .line 277
    .line 278
    if-eqz v1, :cond_19

    .line 279
    .line 280
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 281
    .line 282
    const/high16 v1, 0x200000

    .line 283
    .line 284
    or-int/2addr v0, v1

    .line 285
    :cond_19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 286
    .line 287
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 288
    .line 289
    if-eq v1, v2, :cond_1a

    .line 290
    .line 291
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 292
    .line 293
    const/high16 v1, 0x800000

    .line 294
    .line 295
    or-int/2addr v0, v1

    .line 296
    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 297
    .line 298
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 299
    .line 300
    if-ne v1, v2, :cond_1b

    .line 301
    .line 302
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 303
    .line 304
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 305
    .line 306
    if-eq v1, v3, :cond_1c

    .line 307
    .line 308
    :cond_1b
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 309
    .line 310
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 311
    .line 312
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 313
    .line 314
    or-int/lit16 v0, v0, 0x4000

    .line 315
    .line 316
    :cond_1c
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 317
    .line 318
    iget-boolean v2, p1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 319
    .line 320
    if-eq v1, v2, :cond_1d

    .line 321
    .line 322
    iput-boolean v2, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 323
    .line 324
    const v1, 0x8000

    .line 325
    .line 326
    .line 327
    or-int/2addr v0, v1

    .line 328
    :cond_1d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 329
    .line 330
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 331
    .line 332
    if-eq v1, v2, :cond_1e

    .line 333
    .line 334
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 335
    .line 336
    const/high16 v1, 0x10000

    .line 337
    .line 338
    or-int/2addr v0, v1

    .line 339
    :cond_1e
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 340
    .line 341
    iget-wide v3, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 342
    .line 343
    cmp-long v1, v1, v3

    .line 344
    .line 345
    if-eqz v1, :cond_1f

    .line 346
    .line 347
    iput-wide v3, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 348
    .line 349
    const/high16 v1, 0x40000

    .line 350
    .line 351
    or-int/2addr v0, v1

    .line 352
    :cond_1f
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 353
    .line 354
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    const/high16 v2, 0x100000

    .line 361
    .line 362
    if-nez v1, :cond_20

    .line 363
    .line 364
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 365
    .line 366
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 367
    .line 368
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 369
    .line 370
    .line 371
    or-int/2addr v0, v2

    .line 372
    :cond_20
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 373
    .line 374
    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 375
    .line 376
    if-eq v1, v3, :cond_21

    .line 377
    .line 378
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 379
    .line 380
    or-int/2addr v0, v2

    .line 381
    :cond_21
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 382
    .line 383
    iget-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 384
    .line 385
    if-eq v1, v3, :cond_22

    .line 386
    .line 387
    iput-boolean v3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 388
    .line 389
    or-int/2addr v0, v2

    .line 390
    :cond_22
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 391
    .line 392
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 393
    .line 394
    if-eq v1, v2, :cond_23

    .line 395
    .line 396
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 397
    .line 398
    const/high16 v1, 0x400000

    .line 399
    .line 400
    or-int/2addr v0, v1

    .line 401
    :cond_23
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 402
    .line 403
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 404
    .line 405
    if-eq v1, v2, :cond_24

    .line 406
    .line 407
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 408
    .line 409
    const/high16 v1, 0x1000000

    .line 410
    .line 411
    or-int/2addr v0, v1

    .line 412
    :cond_24
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 413
    .line 414
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 415
    .line 416
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-nez v1, :cond_25

    .line 421
    .line 422
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 423
    .line 424
    if-eqz v1, :cond_25

    .line 425
    .line 426
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 427
    .line 428
    const/high16 v1, 0x2000000

    .line 429
    .line 430
    or-int/2addr v0, v1

    .line 431
    :cond_25
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 432
    .line 433
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 434
    .line 435
    if-eq v1, v2, :cond_26

    .line 436
    .line 437
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 438
    .line 439
    const/high16 v1, 0x4000000

    .line 440
    .line 441
    or-int/2addr v0, v1

    .line 442
    :cond_26
    iget-wide v1, p1, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 443
    .line 444
    iput-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 445
    .line 446
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "Contents of "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ":"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "Debug"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "WindowManager.LayoutParams={title="

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string/jumbo v2, "}"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "x"

    .line 5
    .line 6
    .line 7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "y"

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "horizontalWeight"

    .line 21
    .line 22
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "verticalWeight"

    .line 28
    .line 29
    .line 30
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "type"

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "flags"

    .line 44
    .line 45
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public getColorMode()I
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getUserActivityTimeout()J
    .locals 2

    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-wide v0
.end method

.method public isFullscreen()Z
    .locals 2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restore()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget v1, v0, v1

    .line 7
    .line 8
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aget v1, v0, v1

    .line 12
    .line 13
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    aget v1, v0, v1

    .line 17
    .line 18
    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    aget v0, v0, v1

    .line 22
    .line 23
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public scale(F)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    mul-float/2addr v0, p1

    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    add-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 10
    .line 11
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    mul-float/2addr v0, p1

    .line 15
    add-float/2addr v0, v1

    .line 16
    float-to-int v0, v0

    .line 17
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 18
    .line 19
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    mul-float/2addr v0, p1

    .line 25
    add-float/2addr v0, v1

    .line 26
    float-to-int v0, v0

    .line 27
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    mul-float/2addr v0, p1

    .line 35
    add-float/2addr v0, v1

    .line 36
    float-to-int p1, v0

    .line 37
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public setColorMode(I)V
    .locals 0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    return-void
.end method

.method public final setSurfaceInsets(Landroid/view/View;ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-double v0, p1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    double-to-int p1, v0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iput-boolean p2, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 59
    .line 60
    iput-boolean p3, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 61
    .line 62
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-void
.end method

.method public final setUserActivityTimeout(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const-string v1, "WM.LayoutParams{("

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x2c

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ")("

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    .line 31
    const-string/jumbo v2, "wrap"

    .line 32
    .line 33
    .line 34
    const-string v3, "fill"

    .line 35
    .line 36
    const/4 v4, -0x2

    .line 37
    const/4 v5, -0x1

    .line 38
    if-ne v1, v5, :cond_0

    .line 39
    .line 40
    move-object v1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    if-ne v1, v4, :cond_1

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x78

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    if-ne v1, v5, :cond_2

    .line 61
    .line 62
    move-object v2, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    if-ne v1, v4, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ")"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    cmpl-float v1, v1, v2

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    const-string v1, " hm="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 97
    .line 98
    cmpl-float v1, v1, v2

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    const-string v1, " vm="

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 113
    .line 114
    if-eqz v1, :cond_6

    .line 115
    .line 116
    const-string v1, " gr=#"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    const-string v1, " sim=#"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :cond_7
    const-string v1, " ty="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, " fl=#"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 173
    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    and-int/lit16 v1, v1, 0x80

    .line 177
    .line 178
    if-eqz v1, :cond_8

    .line 179
    .line 180
    const-string v1, " compatible=true"

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    :cond_8
    const-string v1, " pfl=0x"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 191
    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 200
    .line 201
    if-eq v1, v5, :cond_a

    .line 202
    .line 203
    const-string v1, " fmt="

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 214
    .line 215
    if-eqz v1, :cond_b

    .line 216
    .line 217
    const-string v1, " wanim=0x"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 223
    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 232
    .line 233
    if-eq v1, v5, :cond_c

    .line 234
    .line 235
    const-string v1, " or="

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 246
    .line 247
    const/high16 v3, 0x3f800000    # 1.0f

    .line 248
    .line 249
    cmpl-float v1, v1, v3

    .line 250
    .line 251
    if-eqz v1, :cond_d

    .line 252
    .line 253
    const-string v1, " alpha="

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 264
    .line 265
    const/high16 v3, -0x40800000    # -1.0f

    .line 266
    .line 267
    cmpl-float v1, v1, v3

    .line 268
    .line 269
    if-eqz v1, :cond_e

    .line 270
    .line 271
    const-string v1, " sbrt="

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 282
    .line 283
    cmpl-float v1, v1, v3

    .line 284
    .line 285
    if-eqz v1, :cond_f

    .line 286
    .line 287
    const-string v1, " bbrt="

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 298
    .line 299
    if-eqz v1, :cond_10

    .line 300
    .line 301
    const-string v1, " rotAnim="

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    :cond_10
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 312
    .line 313
    cmpl-float v1, v1, v2

    .line 314
    .line 315
    if-eqz v1, :cond_11

    .line 316
    .line 317
    const-string v1, " preferredRefreshRate="

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    :cond_11
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 328
    .line 329
    if-eqz v1, :cond_12

    .line 330
    .line 331
    const-string v1, " preferredDisplayMode="

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    :cond_12
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 342
    .line 343
    if-eqz v1, :cond_13

    .line 344
    .line 345
    const-string v1, " sysui=0x"

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 351
    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    :cond_13
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 360
    .line 361
    if-eqz v1, :cond_14

    .line 362
    .line 363
    const-string v1, " vsysui=0x"

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 369
    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    :cond_14
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 378
    .line 379
    if-eqz v1, :cond_15

    .line 380
    .line 381
    const-string v1, " sysuil="

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 392
    .line 393
    if-eqz v1, :cond_16

    .line 394
    .line 395
    const-string v1, " if=0x"

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 401
    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    :cond_16
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 410
    .line 411
    const-wide/16 v3, 0x0

    .line 412
    .line 413
    cmp-long v1, v1, v3

    .line 414
    .line 415
    if-ltz v1, :cond_17

    .line 416
    .line 417
    const-string v1, " userActivityTimeout="

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    iget-wide v1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 423
    .line 424
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    :cond_17
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 428
    .line 429
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 430
    .line 431
    if-nez v2, :cond_18

    .line 432
    .line 433
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 434
    .line 435
    if-nez v2, :cond_18

    .line 436
    .line 437
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 438
    .line 439
    if-nez v2, :cond_18

    .line 440
    .line 441
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 442
    .line 443
    if-nez v1, :cond_18

    .line 444
    .line 445
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 446
    .line 447
    if-nez v1, :cond_18

    .line 448
    .line 449
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 450
    .line 451
    if-nez v1, :cond_1a

    .line 452
    .line 453
    :cond_18
    const-string v1, " surfaceInsets="

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 459
    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 464
    .line 465
    if-eqz v1, :cond_19

    .line 466
    .line 467
    const-string v1, " (manual)"

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    :cond_19
    iget-boolean v1, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 473
    .line 474
    if-nez v1, :cond_1a

    .line 475
    .line 476
    const-string v1, " (!preservePreviousSurfaceInsets)"

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    :cond_1a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 482
    .line 483
    if-eqz v1, :cond_1b

    .line 484
    .line 485
    const-string v1, " needsMenuKey="

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    :cond_1b
    const-string v1, " colorMode="

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 501
    .line 502
    const/16 v2, 0x7d

    .line 503
    .line 504
    invoke-static {v0, v1, v2}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    .line 80
    .line 81
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 102
    .line 103
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 114
    .line 115
    .line 116
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    .line 125
    .line 126
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    .line 130
    .line 131
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    .line 135
    .line 136
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 147
    .line 148
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 154
    .line 155
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 161
    .line 162
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 168
    .line 169
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    .line 178
    .line 179
    iget-boolean v0, p0, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    .line 183
    .line 184
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    .line 188
    .line 189
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 195
    .line 196
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 197
    .line 198
    .line 199
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->mColorMode:I

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    .line 203
    .line 204
    iget-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 205
    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    .line 208
    .line 209
    return-void
.end method
