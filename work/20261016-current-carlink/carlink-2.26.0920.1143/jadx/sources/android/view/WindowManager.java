package android.view;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.transition.EpicenterTranslateClipReveal;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface WindowManager extends ViewManager {
    public static final int DOCKED_BOTTOM = 4;
    public static final int DOCKED_INVALID = -1;
    public static final int DOCKED_LEFT = 1;
    public static final int DOCKED_RIGHT = 3;
    public static final int DOCKED_TOP = 2;
    public static final String INPUT_CONSUMER_NAVIGATION = "nav_input_consumer";
    public static final String INPUT_CONSUMER_PIP = "pip_input_consumer";
    public static final String INPUT_CONSUMER_WALLPAPER = "wallpaper_input_consumer";
    public static final String PARCEL_KEY_SHORTCUTS_ARRAY = "shortcuts_array";
    public static final int TAKE_SCREENSHOT_FULLSCREEN = 1;
    public static final int TAKE_SCREENSHOT_SELECTED_REGION = 2;

    public static class BadTokenException extends RuntimeException {
        public BadTokenException() {
        }

        public BadTokenException(String str) {
            super(str);
        }
    }

    public static class InvalidDisplayException extends RuntimeException {
        public InvalidDisplayException() {
        }

        public InvalidDisplayException(String str) {
            super(str);
        }
    }

    public interface KeyboardShortcutsReceiver {
        void onKeyboardShortcutsReceived(List<KeyboardShortcutGroup> list);
    }

    Region getCurrentImeTouchRegion();

    Display getDefaultDisplay();

    void removeViewImmediate(View view);

    void requestAppKeyboardShortcuts(KeyboardShortcutsReceiver keyboardShortcutsReceiver, int i2);

    public static class LayoutParams extends ViewGroup.LayoutParams implements Parcelable {
        public static final int ACCESSIBILITY_ANCHOR_CHANGED = 16777216;
        public static final int ACCESSIBILITY_TITLE_CHANGED = 33554432;
        public static final int ALPHA_CHANGED = 128;
        public static final int ANIMATION_CHANGED = 16;
        public static final float BRIGHTNESS_OVERRIDE_FULL = 1.0f;
        public static final float BRIGHTNESS_OVERRIDE_NONE = -1.0f;
        public static final float BRIGHTNESS_OVERRIDE_OFF = 0.0f;
        public static final int BUTTON_BRIGHTNESS_CHANGED = 8192;
        public static final int COLOR_MODE_CHANGED = 67108864;
        public static final Parcelable.Creator<LayoutParams> CREATOR = new Parcelable.Creator<LayoutParams>() { // from class: android.view.WindowManager.LayoutParams.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i2) {
                return new LayoutParams[i2];
            }
        };
        public static final int DIM_AMOUNT_CHANGED = 32;
        public static final int EVERYTHING_CHANGED = -1;
        public static final int FIRST_APPLICATION_WINDOW = 1;
        public static final int FIRST_SUB_WINDOW = 1000;
        public static final int FIRST_SYSTEM_WINDOW = 2000;
        public static final int FLAGS_CHANGED = 4;
        public static final int FLAG_ALLOW_LOCK_WHILE_SCREEN_ON = 1;
        public static final int FLAG_ALT_FOCUSABLE_IM = 131072;

        @Deprecated
        public static final int FLAG_BLUR_BEHIND = 4;
        public static final int FLAG_DIM_BEHIND = 2;

        @Deprecated
        public static final int FLAG_DISMISS_KEYGUARD = 4194304;

        @Deprecated
        public static final int FLAG_DITHER = 4096;
        public static final int FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS = Integer.MIN_VALUE;
        public static final int FLAG_FORCE_NOT_FULLSCREEN = 2048;
        public static final int FLAG_FULLSCREEN = 1024;
        public static final int FLAG_HARDWARE_ACCELERATED = 16777216;
        public static final int FLAG_IGNORE_CHEEK_PRESSES = 32768;
        public static final int FLAG_KEEP_SCREEN_ON = 128;
        public static final int FLAG_LAYOUT_ATTACHED_IN_DECOR = 1073741824;
        public static final int FLAG_LAYOUT_INSET_DECOR = 65536;
        public static final int FLAG_LAYOUT_IN_OVERSCAN = 33554432;
        public static final int FLAG_LAYOUT_IN_SCREEN = 256;
        public static final int FLAG_LAYOUT_NO_LIMITS = 512;
        public static final int FLAG_LOCAL_FOCUS_MODE = 268435456;
        public static final int FLAG_NOT_FOCUSABLE = 8;
        public static final int FLAG_NOT_TOUCHABLE = 16;
        public static final int FLAG_NOT_TOUCH_MODAL = 32;
        public static final int FLAG_SCALED = 16384;
        public static final int FLAG_SECURE = 8192;
        public static final int FLAG_SHOW_WALLPAPER = 1048576;

        @Deprecated
        public static final int FLAG_SHOW_WHEN_LOCKED = 524288;
        public static final int FLAG_SLIPPERY = 536870912;
        public static final int FLAG_SPLIT_TOUCH = 8388608;

        @Deprecated
        public static final int FLAG_TOUCHABLE_WHEN_WAKING = 64;
        public static final int FLAG_TRANSLUCENT_NAVIGATION = 134217728;
        public static final int FLAG_TRANSLUCENT_STATUS = 67108864;

        @Deprecated
        public static final int FLAG_TURN_SCREEN_ON = 2097152;
        public static final int FLAG_WATCH_OUTSIDE_TOUCH = 262144;
        public static final int FORMAT_CHANGED = 8;
        public static final int INPUT_FEATURES_CHANGED = 65536;
        public static final int INPUT_FEATURE_DISABLE_POINTER_GESTURES = 1;
        public static final int INPUT_FEATURE_DISABLE_USER_ACTIVITY = 4;
        public static final int INPUT_FEATURE_NO_INPUT_CHANNEL = 2;
        public static final int INVALID_WINDOW_TYPE = -1;
        public static final int LAST_APPLICATION_WINDOW = 99;
        public static final int LAST_SUB_WINDOW = 1999;
        public static final int LAST_SYSTEM_WINDOW = 2999;
        public static final int LAYOUT_CHANGED = 1;
        public static final int MEMORY_TYPE_CHANGED = 256;

        @Deprecated
        public static final int MEMORY_TYPE_GPU = 2;

        @Deprecated
        public static final int MEMORY_TYPE_HARDWARE = 1;

        @Deprecated
        public static final int MEMORY_TYPE_NORMAL = 0;

        @Deprecated
        public static final int MEMORY_TYPE_PUSH_BUFFERS = 3;
        public static final int NEEDS_MENU_KEY_CHANGED = 4194304;
        public static final int NEEDS_MENU_SET_FALSE = 2;
        public static final int NEEDS_MENU_SET_TRUE = 1;
        public static final int NEEDS_MENU_UNSET = 0;
        public static final int PREFERRED_DISPLAY_MODE_ID = 8388608;
        public static final int PREFERRED_REFRESH_RATE_CHANGED = 2097152;
        public static final int PRIVATE_FLAGS_CHANGED = 131072;
        public static final int PRIVATE_FLAG_ACQUIRES_SLEEP_TOKEN = 2097152;
        public static final int PRIVATE_FLAG_COMPATIBLE_WINDOW = 128;
        public static final int PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS = 2048;
        public static final int PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED = 1;
        public static final int PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY = 16384;
        public static final int PRIVATE_FLAG_FORCE_DRAW_STATUS_BAR_BACKGROUND = 131072;
        public static final int PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED = 2;
        public static final int PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT = 4096;
        public static final int PRIVATE_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS = 524288;
        public static final int PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR = 512;
        public static final int PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY = 1048576;
        public static final int PRIVATE_FLAG_KEYGUARD = 1024;
        public static final int PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME = 65536;
        public static final int PRIVATE_FLAG_NO_MOVE_ANIMATION = 64;
        public static final int PRIVATE_FLAG_PRESERVE_GEOMETRY = 8192;
        public static final int PRIVATE_FLAG_SHOW_FOR_ALL_USERS = 16;
        public static final int PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE = 262144;
        public static final int PRIVATE_FLAG_SYSTEM_ERROR = 256;
        public static final int PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS = 4;
        public static final int PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH = 32768;
        public static final int ROTATION_ANIMATION_CHANGED = 4096;
        public static final int ROTATION_ANIMATION_CROSSFADE = 1;
        public static final int ROTATION_ANIMATION_JUMPCUT = 2;
        public static final int ROTATION_ANIMATION_ROTATE = 0;
        public static final int ROTATION_ANIMATION_SEAMLESS = 3;
        public static final int ROTATION_ANIMATION_UNSPECIFIED = -1;
        public static final int SCREEN_BRIGHTNESS_CHANGED = 2048;
        public static final int SCREEN_ORIENTATION_CHANGED = 1024;
        public static final int SOFT_INPUT_ADJUST_NOTHING = 48;
        public static final int SOFT_INPUT_ADJUST_PAN = 32;
        public static final int SOFT_INPUT_ADJUST_RESIZE = 16;
        public static final int SOFT_INPUT_ADJUST_UNSPECIFIED = 0;
        public static final int SOFT_INPUT_IS_FORWARD_NAVIGATION = 256;
        public static final int SOFT_INPUT_MASK_ADJUST = 240;
        public static final int SOFT_INPUT_MASK_STATE = 15;
        public static final int SOFT_INPUT_MODE_CHANGED = 512;
        public static final int SOFT_INPUT_STATE_ALWAYS_HIDDEN = 3;
        public static final int SOFT_INPUT_STATE_ALWAYS_VISIBLE = 5;
        public static final int SOFT_INPUT_STATE_HIDDEN = 2;
        public static final int SOFT_INPUT_STATE_UNCHANGED = 1;
        public static final int SOFT_INPUT_STATE_UNSPECIFIED = 0;
        public static final int SOFT_INPUT_STATE_VISIBLE = 4;
        public static final int SURFACE_INSETS_CHANGED = 1048576;
        public static final int SYSTEM_UI_LISTENER_CHANGED = 32768;
        public static final int SYSTEM_UI_VISIBILITY_CHANGED = 16384;
        public static final int TITLE_CHANGED = 64;
        public static final int TRANSLUCENT_FLAGS_CHANGED = 524288;
        public static final int TYPE_ACCESSIBILITY_OVERLAY = 2032;
        public static final int TYPE_APPLICATION = 2;
        public static final int TYPE_APPLICATION_ABOVE_SUB_PANEL = 1005;
        public static final int TYPE_APPLICATION_ATTACHED_DIALOG = 1003;
        public static final int TYPE_APPLICATION_MEDIA = 1001;
        public static final int TYPE_APPLICATION_MEDIA_OVERLAY = 1004;
        public static final int TYPE_APPLICATION_OVERLAY = 2038;
        public static final int TYPE_APPLICATION_PANEL = 1000;
        public static final int TYPE_APPLICATION_STARTING = 3;
        public static final int TYPE_APPLICATION_SUB_PANEL = 1002;
        public static final int TYPE_BASE_APPLICATION = 1;
        public static final int TYPE_BOOT_PROGRESS = 2021;
        public static final int TYPE_CHANGED = 2;
        public static final int TYPE_DISPLAY_OVERLAY = 2026;
        public static final int TYPE_DOCK_DIVIDER = 2034;
        public static final int TYPE_DRAG = 2016;
        public static final int TYPE_DRAWN_APPLICATION = 4;
        public static final int TYPE_DREAM = 2023;
        public static final int TYPE_INPUT_CONSUMER = 2022;
        public static final int TYPE_INPUT_METHOD = 2011;
        public static final int TYPE_INPUT_METHOD_DIALOG = 2012;
        public static final int TYPE_KEYGUARD = 2004;
        public static final int TYPE_KEYGUARD_DIALOG = 2009;
        public static final int TYPE_MAGNIFICATION_OVERLAY = 2027;
        public static final int TYPE_NAVIGATION_BAR = 2019;
        public static final int TYPE_NAVIGATION_BAR_PANEL = 2024;

        @Deprecated
        public static final int TYPE_PHONE = 2002;
        public static final int TYPE_POINTER = 2018;
        public static final int TYPE_PRESENTATION = 2037;

        @Deprecated
        public static final int TYPE_PRIORITY_PHONE = 2007;
        public static final int TYPE_PRIVATE_PRESENTATION = 2030;
        public static final int TYPE_QS_DIALOG = 2035;
        public static final int TYPE_SCREENSHOT = 2036;
        public static final int TYPE_SEARCH_BAR = 2001;
        public static final int TYPE_SECURE_SYSTEM_OVERLAY = 2015;
        public static final int TYPE_STATUS_BAR = 2000;
        public static final int TYPE_STATUS_BAR_PANEL = 2014;
        public static final int TYPE_STATUS_BAR_SUB_PANEL = 2017;

        @Deprecated
        public static final int TYPE_SYSTEM_ALERT = 2003;
        public static final int TYPE_SYSTEM_DIALOG = 2008;

        @Deprecated
        public static final int TYPE_SYSTEM_ERROR = 2010;

        @Deprecated
        public static final int TYPE_SYSTEM_OVERLAY = 2006;

        @Deprecated
        public static final int TYPE_TOAST = 2005;
        public static final int TYPE_VOICE_INTERACTION = 2031;
        public static final int TYPE_VOICE_INTERACTION_STARTING = 2033;
        public static final int TYPE_VOLUME_OVERLAY = 2020;
        public static final int TYPE_WALLPAPER = 2013;
        public static final int USER_ACTIVITY_TIMEOUT_CHANGED = 262144;
        public int accessibilityIdOfAnchor;
        public CharSequence accessibilityTitle;
        public float alpha;
        public float buttonBrightness;
        public float dimAmount;

        @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 1, mask = 1, name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"), @ViewDebug.FlagToString(equals = 2, mask = 2, name = "FLAG_DIM_BEHIND"), @ViewDebug.FlagToString(equals = 4, mask = 4, name = "FLAG_BLUR_BEHIND"), @ViewDebug.FlagToString(equals = 8, mask = 8, name = "FLAG_NOT_FOCUSABLE"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "FLAG_NOT_TOUCHABLE"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "FLAG_NOT_TOUCH_MODAL"), @ViewDebug.FlagToString(equals = 64, mask = 64, name = "FLAG_TOUCHABLE_WHEN_WAKING"), @ViewDebug.FlagToString(equals = 128, mask = 128, name = "FLAG_KEEP_SCREEN_ON"), @ViewDebug.FlagToString(equals = 256, mask = 256, name = "FLAG_LAYOUT_IN_SCREEN"), @ViewDebug.FlagToString(equals = 512, mask = 512, name = "FLAG_LAYOUT_NO_LIMITS"), @ViewDebug.FlagToString(equals = 1024, mask = 1024, name = "FLAG_FULLSCREEN"), @ViewDebug.FlagToString(equals = 2048, mask = 2048, name = "FLAG_FORCE_NOT_FULLSCREEN"), @ViewDebug.FlagToString(equals = 4096, mask = 4096, name = "FLAG_DITHER"), @ViewDebug.FlagToString(equals = 8192, mask = 8192, name = "FLAG_SECURE"), @ViewDebug.FlagToString(equals = 16384, mask = 16384, name = "FLAG_SCALED"), @ViewDebug.FlagToString(equals = 32768, mask = 32768, name = "FLAG_IGNORE_CHEEK_PRESSES"), @ViewDebug.FlagToString(equals = 65536, mask = 65536, name = "FLAG_LAYOUT_INSET_DECOR"), @ViewDebug.FlagToString(equals = 131072, mask = 131072, name = "FLAG_ALT_FOCUSABLE_IM"), @ViewDebug.FlagToString(equals = 262144, mask = 262144, name = "FLAG_WATCH_OUTSIDE_TOUCH"), @ViewDebug.FlagToString(equals = 524288, mask = 524288, name = "FLAG_SHOW_WHEN_LOCKED"), @ViewDebug.FlagToString(equals = 1048576, mask = 1048576, name = "FLAG_SHOW_WALLPAPER"), @ViewDebug.FlagToString(equals = 2097152, mask = 2097152, name = "FLAG_TURN_SCREEN_ON"), @ViewDebug.FlagToString(equals = 4194304, mask = 4194304, name = "FLAG_DISMISS_KEYGUARD"), @ViewDebug.FlagToString(equals = 8388608, mask = 8388608, name = "FLAG_SPLIT_TOUCH"), @ViewDebug.FlagToString(equals = 16777216, mask = 16777216, name = "FLAG_HARDWARE_ACCELERATED"), @ViewDebug.FlagToString(equals = 268435456, mask = 268435456, name = "FLAG_LOCAL_FOCUS_MODE"), @ViewDebug.FlagToString(equals = 67108864, mask = 67108864, name = "FLAG_TRANSLUCENT_STATUS"), @ViewDebug.FlagToString(equals = 134217728, mask = 134217728, name = "FLAG_TRANSLUCENT_NAVIGATION"), @ViewDebug.FlagToString(equals = Integer.MIN_VALUE, mask = Integer.MIN_VALUE, name = "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS")}, formatToHexString = true)
        public int flags;
        public int format;
        public int gravity;
        public boolean hasManualSurfaceInsets;
        public boolean hasSystemUiListeners;
        public long hideTimeoutMilliseconds;
        public float horizontalMargin;

        @ViewDebug.ExportedProperty
        public float horizontalWeight;
        public int inputFeatures;
        private int mColorMode;
        private int[] mCompatibilityParamsBackup;
        private CharSequence mTitle;

        @Deprecated
        public int memoryType;
        public int needsMenuKey;
        public String packageName;
        public int preferredDisplayModeId;

        @Deprecated
        public float preferredRefreshRate;
        public boolean preservePreviousSurfaceInsets;
        public int privateFlags;
        public int rotationAnimation;
        public float screenBrightness;
        public int screenOrientation;
        public int softInputMode;
        public int subtreeSystemUiVisibility;
        public final Rect surfaceInsets;
        public int systemUiVisibility;
        public IBinder token;

        @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 1, to = "TYPE_BASE_APPLICATION"), @ViewDebug.IntToString(from = 2, to = "TYPE_APPLICATION"), @ViewDebug.IntToString(from = 3, to = "TYPE_APPLICATION_STARTING"), @ViewDebug.IntToString(from = 4, to = "TYPE_DRAWN_APPLICATION"), @ViewDebug.IntToString(from = 1000, to = "TYPE_APPLICATION_PANEL"), @ViewDebug.IntToString(from = 1001, to = "TYPE_APPLICATION_MEDIA"), @ViewDebug.IntToString(from = 1002, to = "TYPE_APPLICATION_SUB_PANEL"), @ViewDebug.IntToString(from = 1005, to = "TYPE_APPLICATION_ABOVE_SUB_PANEL"), @ViewDebug.IntToString(from = 1003, to = "TYPE_APPLICATION_ATTACHED_DIALOG"), @ViewDebug.IntToString(from = 1004, to = "TYPE_APPLICATION_MEDIA_OVERLAY"), @ViewDebug.IntToString(from = 2000, to = "TYPE_STATUS_BAR"), @ViewDebug.IntToString(from = 2001, to = "TYPE_SEARCH_BAR"), @ViewDebug.IntToString(from = 2002, to = "TYPE_PHONE"), @ViewDebug.IntToString(from = 2003, to = "TYPE_SYSTEM_ALERT"), @ViewDebug.IntToString(from = 2005, to = "TYPE_TOAST"), @ViewDebug.IntToString(from = 2006, to = "TYPE_SYSTEM_OVERLAY"), @ViewDebug.IntToString(from = 2007, to = "TYPE_PRIORITY_PHONE"), @ViewDebug.IntToString(from = 2008, to = "TYPE_SYSTEM_DIALOG"), @ViewDebug.IntToString(from = TYPE_KEYGUARD_DIALOG, to = "TYPE_KEYGUARD_DIALOG"), @ViewDebug.IntToString(from = TYPE_SYSTEM_ERROR, to = "TYPE_SYSTEM_ERROR"), @ViewDebug.IntToString(from = TYPE_INPUT_METHOD, to = "TYPE_INPUT_METHOD"), @ViewDebug.IntToString(from = TYPE_INPUT_METHOD_DIALOG, to = "TYPE_INPUT_METHOD_DIALOG"), @ViewDebug.IntToString(from = TYPE_WALLPAPER, to = "TYPE_WALLPAPER"), @ViewDebug.IntToString(from = TYPE_STATUS_BAR_PANEL, to = "TYPE_STATUS_BAR_PANEL"), @ViewDebug.IntToString(from = TYPE_SECURE_SYSTEM_OVERLAY, to = "TYPE_SECURE_SYSTEM_OVERLAY"), @ViewDebug.IntToString(from = TYPE_DRAG, to = "TYPE_DRAG"), @ViewDebug.IntToString(from = TYPE_STATUS_BAR_SUB_PANEL, to = "TYPE_STATUS_BAR_SUB_PANEL"), @ViewDebug.IntToString(from = TYPE_POINTER, to = "TYPE_POINTER"), @ViewDebug.IntToString(from = TYPE_NAVIGATION_BAR, to = "TYPE_NAVIGATION_BAR"), @ViewDebug.IntToString(from = TYPE_VOLUME_OVERLAY, to = "TYPE_VOLUME_OVERLAY"), @ViewDebug.IntToString(from = TYPE_BOOT_PROGRESS, to = "TYPE_BOOT_PROGRESS"), @ViewDebug.IntToString(from = TYPE_INPUT_CONSUMER, to = "TYPE_INPUT_CONSUMER"), @ViewDebug.IntToString(from = TYPE_DREAM, to = "TYPE_DREAM"), @ViewDebug.IntToString(from = TYPE_NAVIGATION_BAR_PANEL, to = "TYPE_NAVIGATION_BAR_PANEL"), @ViewDebug.IntToString(from = TYPE_DISPLAY_OVERLAY, to = "TYPE_DISPLAY_OVERLAY"), @ViewDebug.IntToString(from = TYPE_MAGNIFICATION_OVERLAY, to = "TYPE_MAGNIFICATION_OVERLAY"), @ViewDebug.IntToString(from = TYPE_PRESENTATION, to = "TYPE_PRESENTATION"), @ViewDebug.IntToString(from = TYPE_PRIVATE_PRESENTATION, to = "TYPE_PRIVATE_PRESENTATION"), @ViewDebug.IntToString(from = TYPE_VOICE_INTERACTION, to = "TYPE_VOICE_INTERACTION"), @ViewDebug.IntToString(from = TYPE_VOICE_INTERACTION_STARTING, to = "TYPE_VOICE_INTERACTION_STARTING"), @ViewDebug.IntToString(from = TYPE_DOCK_DIVIDER, to = "TYPE_DOCK_DIVIDER"), @ViewDebug.IntToString(from = TYPE_QS_DIALOG, to = "TYPE_QS_DIALOG"), @ViewDebug.IntToString(from = TYPE_SCREENSHOT, to = "TYPE_SCREENSHOT"), @ViewDebug.IntToString(from = TYPE_APPLICATION_OVERLAY, to = "TYPE_APPLICATION_OVERLAY")})
        public int type;
        public long userActivityTimeout;
        public float verticalMargin;

        @ViewDebug.ExportedProperty
        public float verticalWeight;
        public int windowAnimations;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f211x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f212y;

        @Retention(RetentionPolicy.SOURCE)
        public @interface SoftInputModeFlags {
        }

        public LayoutParams() {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1L;
            this.mColorMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = 2;
            this.format = -1;
        }

        public static boolean isSystemAlertWindowType(int i2) {
            return i2 == 2002 || i2 == 2003 || i2 == 2006 || i2 == 2007 || i2 == 2010 || i2 == 2038;
        }

        public static boolean mayUseInputMethod(int i2) {
            int i3 = i2 & 131080;
            return i3 == 0 || i3 == 131080;
        }

        public void backup() {
            int[] iArr = this.mCompatibilityParamsBackup;
            if (iArr == null) {
                iArr = new int[4];
                this.mCompatibilityParamsBackup = iArr;
            }
            iArr[0] = this.f211x;
            iArr[1] = this.f212y;
            iArr[2] = this.width;
            iArr[3] = this.height;
        }

        public final int copyFrom(LayoutParams layoutParams) {
            int i2;
            CharSequence charSequence;
            CharSequence charSequence2;
            int i3 = this.width;
            int i4 = layoutParams.width;
            if (i3 != i4) {
                this.width = i4;
                i2 = 1;
            } else {
                i2 = 0;
            }
            int i5 = this.height;
            int i6 = layoutParams.height;
            if (i5 != i6) {
                this.height = i6;
                i2 |= 1;
            }
            int i7 = this.f211x;
            int i8 = layoutParams.f211x;
            if (i7 != i8) {
                this.f211x = i8;
                i2 |= 1;
            }
            int i9 = this.f212y;
            int i10 = layoutParams.f212y;
            if (i9 != i10) {
                this.f212y = i10;
                i2 |= 1;
            }
            float f2 = this.horizontalWeight;
            float f3 = layoutParams.horizontalWeight;
            if (f2 != f3) {
                this.horizontalWeight = f3;
                i2 |= 1;
            }
            float f4 = this.verticalWeight;
            float f5 = layoutParams.verticalWeight;
            if (f4 != f5) {
                this.verticalWeight = f5;
                i2 |= 1;
            }
            float f6 = this.horizontalMargin;
            float f7 = layoutParams.horizontalMargin;
            if (f6 != f7) {
                this.horizontalMargin = f7;
                i2 |= 1;
            }
            float f8 = this.verticalMargin;
            float f9 = layoutParams.verticalMargin;
            if (f8 != f9) {
                this.verticalMargin = f9;
                i2 |= 1;
            }
            int i11 = this.type;
            int i12 = layoutParams.type;
            if (i11 != i12) {
                this.type = i12;
                i2 |= 2;
            }
            int i13 = this.flags;
            int i14 = layoutParams.flags;
            if (i13 != i14) {
                if (((i13 ^ i14) & 201326592) != 0) {
                    i2 |= 524288;
                }
                this.flags = i14;
                i2 |= 4;
            }
            int i15 = this.privateFlags;
            int i16 = layoutParams.privateFlags;
            if (i15 != i16) {
                this.privateFlags = i16;
                i2 |= 131072;
            }
            int i17 = this.softInputMode;
            int i18 = layoutParams.softInputMode;
            if (i17 != i18) {
                this.softInputMode = i18;
                i2 |= 512;
            }
            int i19 = this.gravity;
            int i20 = layoutParams.gravity;
            if (i19 != i20) {
                this.gravity = i20;
                i2 |= 1;
            }
            int i21 = this.format;
            int i22 = layoutParams.format;
            if (i21 != i22) {
                this.format = i22;
                i2 |= 8;
            }
            int i23 = this.windowAnimations;
            int i24 = layoutParams.windowAnimations;
            if (i23 != i24) {
                this.windowAnimations = i24;
                i2 |= 16;
            }
            if (this.token == null) {
                this.token = layoutParams.token;
            }
            if (this.packageName == null) {
                this.packageName = layoutParams.packageName;
            }
            if (!Objects.equals(this.mTitle, layoutParams.mTitle) && (charSequence2 = layoutParams.mTitle) != null) {
                this.mTitle = charSequence2;
                i2 |= 64;
            }
            float f10 = this.alpha;
            float f11 = layoutParams.alpha;
            if (f10 != f11) {
                this.alpha = f11;
                i2 |= 128;
            }
            float f12 = this.dimAmount;
            float f13 = layoutParams.dimAmount;
            if (f12 != f13) {
                this.dimAmount = f13;
                i2 |= 32;
            }
            float f14 = this.screenBrightness;
            float f15 = layoutParams.screenBrightness;
            if (f14 != f15) {
                this.screenBrightness = f15;
                i2 |= 2048;
            }
            float f16 = this.buttonBrightness;
            float f17 = layoutParams.buttonBrightness;
            if (f16 != f17) {
                this.buttonBrightness = f17;
                i2 |= 8192;
            }
            int i25 = this.rotationAnimation;
            int i26 = layoutParams.rotationAnimation;
            if (i25 != i26) {
                this.rotationAnimation = i26;
                i2 |= 4096;
            }
            int i27 = this.screenOrientation;
            int i28 = layoutParams.screenOrientation;
            if (i27 != i28) {
                this.screenOrientation = i28;
                i2 |= 1024;
            }
            float f18 = this.preferredRefreshRate;
            float f19 = layoutParams.preferredRefreshRate;
            if (f18 != f19) {
                this.preferredRefreshRate = f19;
                i2 |= 2097152;
            }
            int i29 = this.preferredDisplayModeId;
            int i30 = layoutParams.preferredDisplayModeId;
            if (i29 != i30) {
                this.preferredDisplayModeId = i30;
                i2 |= 8388608;
            }
            int i31 = this.systemUiVisibility;
            int i32 = layoutParams.systemUiVisibility;
            if (i31 != i32 || this.subtreeSystemUiVisibility != layoutParams.subtreeSystemUiVisibility) {
                this.systemUiVisibility = i32;
                this.subtreeSystemUiVisibility = layoutParams.subtreeSystemUiVisibility;
                i2 |= 16384;
            }
            boolean z2 = this.hasSystemUiListeners;
            boolean z3 = layoutParams.hasSystemUiListeners;
            if (z2 != z3) {
                this.hasSystemUiListeners = z3;
                i2 |= 32768;
            }
            int i33 = this.inputFeatures;
            int i34 = layoutParams.inputFeatures;
            if (i33 != i34) {
                this.inputFeatures = i34;
                i2 |= 65536;
            }
            long j2 = this.userActivityTimeout;
            long j3 = layoutParams.userActivityTimeout;
            if (j2 != j3) {
                this.userActivityTimeout = j3;
                i2 |= 262144;
            }
            if (!this.surfaceInsets.equals(layoutParams.surfaceInsets)) {
                this.surfaceInsets.set(layoutParams.surfaceInsets);
                i2 |= 1048576;
            }
            boolean z4 = this.hasManualSurfaceInsets;
            boolean z5 = layoutParams.hasManualSurfaceInsets;
            if (z4 != z5) {
                this.hasManualSurfaceInsets = z5;
                i2 |= 1048576;
            }
            boolean z6 = this.preservePreviousSurfaceInsets;
            boolean z7 = layoutParams.preservePreviousSurfaceInsets;
            if (z6 != z7) {
                this.preservePreviousSurfaceInsets = z7;
                i2 |= 1048576;
            }
            int i35 = this.needsMenuKey;
            int i36 = layoutParams.needsMenuKey;
            if (i35 != i36) {
                this.needsMenuKey = i36;
                i2 |= 4194304;
            }
            int i37 = this.accessibilityIdOfAnchor;
            int i38 = layoutParams.accessibilityIdOfAnchor;
            if (i37 != i38) {
                this.accessibilityIdOfAnchor = i38;
                i2 |= 16777216;
            }
            if (!Objects.equals(this.accessibilityTitle, layoutParams.accessibilityTitle) && (charSequence = layoutParams.accessibilityTitle) != null) {
                this.accessibilityTitle = charSequence;
                i2 |= 33554432;
            }
            int i39 = this.mColorMode;
            int i40 = layoutParams.mColorMode;
            if (i39 != i40) {
                this.mColorMode = i40;
                i2 |= 67108864;
            }
            this.hideTimeoutMilliseconds = layoutParams.hideTimeoutMilliseconds;
            return i2;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            Log.d("Debug", str + "Contents of " + this + SettingsStringUtil.DELIMITER);
            Log.d("Debug", super.debug(""));
            Log.d("Debug", "");
            Log.d("Debug", "WindowManager.LayoutParams={title=" + ((Object) this.mTitle) + "}");
            return "";
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("x", this.f211x);
            viewHierarchyEncoder.addProperty("y", this.f212y);
            viewHierarchyEncoder.addProperty("horizontalWeight", this.horizontalWeight);
            viewHierarchyEncoder.addProperty("verticalWeight", this.verticalWeight);
            viewHierarchyEncoder.addProperty("type", this.type);
            viewHierarchyEncoder.addProperty("flags", this.flags);
        }

        public int getColorMode() {
            return this.mColorMode;
        }

        public final CharSequence getTitle() {
            CharSequence charSequence = this.mTitle;
            return charSequence != null ? charSequence : "";
        }

        public final long getUserActivityTimeout() {
            return this.userActivityTimeout;
        }

        public boolean isFullscreen() {
            return this.f211x == 0 && this.f212y == 0 && this.width == -1 && this.height == -1;
        }

        public void restore() {
            int[] iArr = this.mCompatibilityParamsBackup;
            if (iArr != null) {
                this.f211x = iArr[0];
                this.f212y = iArr[1];
                this.width = iArr[2];
                this.height = iArr[3];
            }
        }

        public void scale(float f2) {
            this.f211x = (int) ((this.f211x * f2) + 0.5f);
            this.f212y = (int) ((this.f212y * f2) + 0.5f);
            int i2 = this.width;
            if (i2 > 0) {
                this.width = (int) ((i2 * f2) + 0.5f);
            }
            int i3 = this.height;
            if (i3 > 0) {
                this.height = (int) ((i3 * f2) + 0.5f);
            }
        }

        public void setColorMode(int i2) {
            this.mColorMode = i2;
        }

        public final void setSurfaceInsets(View view, boolean z2, boolean z3) {
            int iCeil = (int) Math.ceil(view.getZ() * 2.0f);
            if (iCeil == 0) {
                this.surfaceInsets.set(0, 0, 0, 0);
            } else {
                Rect rect = this.surfaceInsets;
                rect.set(Math.max(iCeil, rect.left), Math.max(iCeil, this.surfaceInsets.top), Math.max(iCeil, this.surfaceInsets.right), Math.max(iCeil, this.surfaceInsets.bottom));
            }
            this.hasManualSurfaceInsets = z2;
            this.preservePreviousSurfaceInsets = z3;
        }

        public final void setTitle(CharSequence charSequence) {
            if (charSequence == null) {
                charSequence = "";
            }
            this.mTitle = TextUtils.stringOrSpannedString(charSequence);
        }

        public final void setUserActivityTimeout(long j2) {
            this.userActivityTimeout = j2;
        }

        public String toString() {
            String strValueOf;
            StringBuilder sbQ = android.accessibilityservice.c.q(256, "WM.LayoutParams{(");
            sbQ.append(this.f211x);
            sbQ.append(',');
            sbQ.append(this.f212y);
            sbQ.append(")(");
            int i2 = this.width;
            String strValueOf2 = "wrap";
            if (i2 == -1) {
                strValueOf = "fill";
            } else {
                strValueOf = i2 == -2 ? "wrap" : String.valueOf(i2);
            }
            sbQ.append(strValueOf);
            sbQ.append(EpicenterTranslateClipReveal.StateProperty.TARGET_X);
            int i3 = this.height;
            if (i3 == -1) {
                strValueOf2 = "fill";
            } else if (i3 != -2) {
                strValueOf2 = String.valueOf(i3);
            }
            sbQ.append(strValueOf2);
            sbQ.append(")");
            if (this.horizontalMargin != 0.0f) {
                sbQ.append(" hm=");
                sbQ.append(this.horizontalMargin);
            }
            if (this.verticalMargin != 0.0f) {
                sbQ.append(" vm=");
                sbQ.append(this.verticalMargin);
            }
            if (this.gravity != 0) {
                sbQ.append(" gr=#");
                sbQ.append(Integer.toHexString(this.gravity));
            }
            if (this.softInputMode != 0) {
                sbQ.append(" sim=#");
                sbQ.append(Integer.toHexString(this.softInputMode));
            }
            sbQ.append(" ty=");
            sbQ.append(this.type);
            sbQ.append(" fl=#");
            sbQ.append(Integer.toHexString(this.flags));
            int i4 = this.privateFlags;
            if (i4 != 0) {
                if ((i4 & 128) != 0) {
                    sbQ.append(" compatible=true");
                }
                sbQ.append(" pfl=0x");
                sbQ.append(Integer.toHexString(this.privateFlags));
            }
            if (this.format != -1) {
                sbQ.append(" fmt=");
                sbQ.append(this.format);
            }
            if (this.windowAnimations != 0) {
                sbQ.append(" wanim=0x");
                sbQ.append(Integer.toHexString(this.windowAnimations));
            }
            if (this.screenOrientation != -1) {
                sbQ.append(" or=");
                sbQ.append(this.screenOrientation);
            }
            if (this.alpha != 1.0f) {
                sbQ.append(" alpha=");
                sbQ.append(this.alpha);
            }
            if (this.screenBrightness != -1.0f) {
                sbQ.append(" sbrt=");
                sbQ.append(this.screenBrightness);
            }
            if (this.buttonBrightness != -1.0f) {
                sbQ.append(" bbrt=");
                sbQ.append(this.buttonBrightness);
            }
            if (this.rotationAnimation != 0) {
                sbQ.append(" rotAnim=");
                sbQ.append(this.rotationAnimation);
            }
            if (this.preferredRefreshRate != 0.0f) {
                sbQ.append(" preferredRefreshRate=");
                sbQ.append(this.preferredRefreshRate);
            }
            if (this.preferredDisplayModeId != 0) {
                sbQ.append(" preferredDisplayMode=");
                sbQ.append(this.preferredDisplayModeId);
            }
            if (this.systemUiVisibility != 0) {
                sbQ.append(" sysui=0x");
                sbQ.append(Integer.toHexString(this.systemUiVisibility));
            }
            if (this.subtreeSystemUiVisibility != 0) {
                sbQ.append(" vsysui=0x");
                sbQ.append(Integer.toHexString(this.subtreeSystemUiVisibility));
            }
            if (this.hasSystemUiListeners) {
                sbQ.append(" sysuil=");
                sbQ.append(this.hasSystemUiListeners);
            }
            if (this.inputFeatures != 0) {
                sbQ.append(" if=0x");
                sbQ.append(Integer.toHexString(this.inputFeatures));
            }
            if (this.userActivityTimeout >= 0) {
                sbQ.append(" userActivityTimeout=");
                sbQ.append(this.userActivityTimeout);
            }
            Rect rect = this.surfaceInsets;
            if (rect.left != 0 || rect.top != 0 || rect.right != 0 || rect.bottom != 0 || this.hasManualSurfaceInsets || !this.preservePreviousSurfaceInsets) {
                sbQ.append(" surfaceInsets=");
                sbQ.append(this.surfaceInsets);
                if (this.hasManualSurfaceInsets) {
                    sbQ.append(" (manual)");
                }
                if (!this.preservePreviousSurfaceInsets) {
                    sbQ.append(" (!preservePreviousSurfaceInsets)");
                }
            }
            if (this.needsMenuKey != 0) {
                sbQ.append(" needsMenuKey=");
                sbQ.append(this.needsMenuKey);
            }
            sbQ.append(" colorMode=");
            return android.app.m.j(sbQ, this.mColorMode, '}');
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
            parcel.writeInt(this.f211x);
            parcel.writeInt(this.f212y);
            parcel.writeInt(this.type);
            parcel.writeInt(this.flags);
            parcel.writeInt(this.privateFlags);
            parcel.writeInt(this.softInputMode);
            parcel.writeInt(this.gravity);
            parcel.writeFloat(this.horizontalMargin);
            parcel.writeFloat(this.verticalMargin);
            parcel.writeInt(this.format);
            parcel.writeInt(this.windowAnimations);
            parcel.writeFloat(this.alpha);
            parcel.writeFloat(this.dimAmount);
            parcel.writeFloat(this.screenBrightness);
            parcel.writeFloat(this.buttonBrightness);
            parcel.writeInt(this.rotationAnimation);
            parcel.writeStrongBinder(this.token);
            parcel.writeString(this.packageName);
            TextUtils.writeToParcel(this.mTitle, parcel, i2);
            parcel.writeInt(this.screenOrientation);
            parcel.writeFloat(this.preferredRefreshRate);
            parcel.writeInt(this.preferredDisplayModeId);
            parcel.writeInt(this.systemUiVisibility);
            parcel.writeInt(this.subtreeSystemUiVisibility);
            parcel.writeInt(this.hasSystemUiListeners ? 1 : 0);
            parcel.writeInt(this.inputFeatures);
            parcel.writeLong(this.userActivityTimeout);
            parcel.writeInt(this.surfaceInsets.left);
            parcel.writeInt(this.surfaceInsets.top);
            parcel.writeInt(this.surfaceInsets.right);
            parcel.writeInt(this.surfaceInsets.bottom);
            parcel.writeInt(this.hasManualSurfaceInsets ? 1 : 0);
            parcel.writeInt(this.preservePreviousSurfaceInsets ? 1 : 0);
            parcel.writeInt(this.needsMenuKey);
            parcel.writeInt(this.accessibilityIdOfAnchor);
            TextUtils.writeToParcel(this.accessibilityTitle, parcel, i2);
            parcel.writeInt(this.mColorMode);
            parcel.writeLong(this.hideTimeoutMilliseconds);
        }

        public LayoutParams(int i2) {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1L;
            this.mColorMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i2;
            this.format = -1;
        }

        public LayoutParams(int i2, int i3) {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1L;
            this.mColorMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i2;
            this.flags = i3;
            this.format = -1;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1L;
            this.mColorMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i2;
            this.flags = i3;
            this.format = i4;
        }

        public LayoutParams(int i2, int i3, int i4, int i5, int i6) {
            super(i2, i3);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1L;
            this.mColorMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i4;
            this.flags = i5;
            this.format = i6;
        }

        public LayoutParams(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(i2, i3);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1L;
            this.mColorMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.f211x = i4;
            this.f212y = i5;
            this.type = i6;
            this.flags = i7;
            this.format = i8;
        }

        public LayoutParams(Parcel parcel) {
            this.needsMenuKey = 0;
            Rect rect = new Rect();
            this.surfaceInsets = rect;
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1L;
            this.mColorMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.width = parcel.readInt();
            this.height = parcel.readInt();
            this.f211x = parcel.readInt();
            this.f212y = parcel.readInt();
            this.type = parcel.readInt();
            this.flags = parcel.readInt();
            this.privateFlags = parcel.readInt();
            this.softInputMode = parcel.readInt();
            this.gravity = parcel.readInt();
            this.horizontalMargin = parcel.readFloat();
            this.verticalMargin = parcel.readFloat();
            this.format = parcel.readInt();
            this.windowAnimations = parcel.readInt();
            this.alpha = parcel.readFloat();
            this.dimAmount = parcel.readFloat();
            this.screenBrightness = parcel.readFloat();
            this.buttonBrightness = parcel.readFloat();
            this.rotationAnimation = parcel.readInt();
            this.token = parcel.readStrongBinder();
            this.packageName = parcel.readString();
            Parcelable.Creator<CharSequence> creator = TextUtils.CHAR_SEQUENCE_CREATOR;
            this.mTitle = creator.createFromParcel(parcel);
            this.screenOrientation = parcel.readInt();
            this.preferredRefreshRate = parcel.readFloat();
            this.preferredDisplayModeId = parcel.readInt();
            this.systemUiVisibility = parcel.readInt();
            this.subtreeSystemUiVisibility = parcel.readInt();
            this.hasSystemUiListeners = parcel.readInt() != 0;
            this.inputFeatures = parcel.readInt();
            this.userActivityTimeout = parcel.readLong();
            rect.left = parcel.readInt();
            rect.top = parcel.readInt();
            rect.right = parcel.readInt();
            rect.bottom = parcel.readInt();
            this.hasManualSurfaceInsets = parcel.readInt() != 0;
            this.preservePreviousSurfaceInsets = parcel.readInt() != 0;
            this.needsMenuKey = parcel.readInt();
            this.accessibilityIdOfAnchor = parcel.readInt();
            this.accessibilityTitle = creator.createFromParcel(parcel);
            this.mColorMode = parcel.readInt();
            this.hideTimeoutMilliseconds = parcel.readLong();
        }
    }
}
