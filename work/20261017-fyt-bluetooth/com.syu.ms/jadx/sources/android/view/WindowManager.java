package android.view;

import android.net.ProxyProperties;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public interface WindowManager extends ViewManager {

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

    Display getDefaultDisplay();

    void removeViewImmediate(View view);

    public static class LayoutParams extends ViewGroup.LayoutParams implements Parcelable {
        public static final int ALPHA_CHANGED = 128;
        public static final int ANIMATION_CHANGED = 16;
        public static final float BRIGHTNESS_OVERRIDE_FULL = 1.0f;
        public static final float BRIGHTNESS_OVERRIDE_NONE = -1.0f;
        public static final float BRIGHTNESS_OVERRIDE_OFF = 0.0f;
        public static final int BUTTON_BRIGHTNESS_CHANGED = 8192;
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
        public static final int FLAG_DISMISS_KEYGUARD = 4194304;

        @Deprecated
        public static final int FLAG_DITHER = 4096;
        public static final int FLAG_FORCE_NOT_FULLSCREEN = 2048;
        public static final int FLAG_FULLSCREEN = 1024;
        public static final int FLAG_HARDWARE_ACCELERATED = 16777216;
        public static final int FLAG_IGNORE_CHEEK_PRESSES = 32768;
        public static final int FLAG_KEEP_SCREEN_ON = 128;
        public static final int FLAG_LAYOUT_INSET_DECOR = 65536;
        public static final int FLAG_LAYOUT_IN_OVERSCAN = 33554432;
        public static final int FLAG_LAYOUT_IN_SCREEN = 256;
        public static final int FLAG_LAYOUT_NO_LIMITS = 512;
        public static final int FLAG_LOCAL_FOCUS_MODE = 268435456;
        public static final int FLAG_NEEDS_MENU_KEY = 1073741824;
        public static final int FLAG_NOT_FOCUSABLE = 8;
        public static final int FLAG_NOT_TOUCHABLE = 16;
        public static final int FLAG_NOT_TOUCH_MODAL = 32;
        public static final int FLAG_SCALED = 16384;
        public static final int FLAG_SECURE = 8192;
        public static final int FLAG_SHOW_WALLPAPER = 1048576;
        public static final int FLAG_SHOW_WHEN_LOCKED = 524288;
        public static final int FLAG_SLIPPERY = 536870912;
        public static final int FLAG_SPLIT_TOUCH = 8388608;
        public static final int FLAG_TOUCHABLE_WHEN_WAKING = 64;
        public static final int FLAG_TRANSLUCENT_NAVIGATION = 134217728;
        public static final int FLAG_TRANSLUCENT_STATUS = 67108864;
        public static final int FLAG_TURN_SCREEN_ON = 2097152;
        public static final int FLAG_WATCH_OUTSIDE_TOUCH = 262144;
        public static final int FORMAT_CHANGED = 8;
        public static final int INPUT_FEATURES_CHANGED = 65536;
        public static final int INPUT_FEATURE_DISABLE_POINTER_GESTURES = 1;
        public static final int INPUT_FEATURE_DISABLE_USER_ACTIVITY = 4;
        public static final int INPUT_FEATURE_NO_INPUT_CHANNEL = 2;
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
        public static final int PRIVATE_FLAGS_CHANGED = 131072;
        public static final int PRIVATE_FLAG_COMPATIBLE_WINDOW = 128;
        public static final int PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED = 1;
        public static final int PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED = 2;
        public static final int PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR = 512;
        public static final int PRIVATE_FLAG_NO_MOVE_ANIMATION = 64;
        public static final int PRIVATE_FLAG_SET_NEEDS_MENU_KEY = 8;
        public static final int PRIVATE_FLAG_SHOW_FOR_ALL_USERS = 16;
        public static final int PRIVATE_FLAG_SYSTEM_ERROR = 256;
        public static final int PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS = 4;
        public static final int ROTATION_ANIMATION_CHANGED = 4096;
        public static final int ROTATION_ANIMATION_CROSSFADE = 1;
        public static final int ROTATION_ANIMATION_JUMPCUT = 2;
        public static final int ROTATION_ANIMATION_ROTATE = 0;
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
        public static final int SYSTEM_UI_LISTENER_CHANGED = 32768;
        public static final int SYSTEM_UI_VISIBILITY_CHANGED = 16384;
        public static final int TITLE_CHANGED = 64;
        public static final int TRANSLUCENT_FLAGS_CHANGED = 524288;
        public static final int TYPE_APPLICATION = 2;
        public static final int TYPE_APPLICATION_ATTACHED_DIALOG = 1003;
        public static final int TYPE_APPLICATION_MEDIA = 1001;
        public static final int TYPE_APPLICATION_MEDIA_OVERLAY = 1004;
        public static final int TYPE_APPLICATION_PANEL = 1000;
        public static final int TYPE_APPLICATION_STARTING = 3;
        public static final int TYPE_APPLICATION_SUB_PANEL = 1002;
        public static final int TYPE_BASE_APPLICATION = 1;
        public static final int TYPE_BOOT_PROGRESS = 2021;
        public static final int TYPE_CHANGED = 2;
        public static final int TYPE_DISPLAY_OVERLAY = 2026;
        public static final int TYPE_DRAG = 2016;
        public static final int TYPE_DREAM = 2023;
        public static final int TYPE_HIDDEN_NAV_CONSUMER = 2022;
        public static final int TYPE_INPUT_METHOD = 2011;
        public static final int TYPE_INPUT_METHOD_DIALOG = 2012;
        public static final int TYPE_KEYGUARD = 2004;
        public static final int TYPE_KEYGUARD_DIALOG = 2009;
        public static final int TYPE_KEYGUARD_SCRIM = 2029;
        public static final int TYPE_MAGNIFICATION_OVERLAY = 2027;
        public static final int TYPE_NAVIGATION_BAR = 2019;
        public static final int TYPE_NAVIGATION_BAR_PANEL = 2024;
        public static final int TYPE_PHONE = 2002;
        public static final int TYPE_POINTER = 2018;
        public static final int TYPE_PRIORITY_PHONE = 2007;
        public static final int TYPE_PRIVATE_PRESENTATION = 2030;
        public static final int TYPE_RECENTS_OVERLAY = 2028;
        public static final int TYPE_SEARCH_BAR = 2001;
        public static final int TYPE_SECURE_SYSTEM_OVERLAY = 2015;
        public static final int TYPE_STATUS_BAR = 2000;
        public static final int TYPE_STATUS_BAR_PANEL = 2014;
        public static final int TYPE_STATUS_BAR_SUB_PANEL = 2017;
        public static final int TYPE_SYSTEM_ALERT = 2003;
        public static final int TYPE_SYSTEM_DIALOG = 2008;
        public static final int TYPE_SYSTEM_ERROR = 2010;
        public static final int TYPE_SYSTEM_OVERLAY = 2006;
        public static final int TYPE_TOAST = 2005;
        public static final int TYPE_UNIVERSE_BACKGROUND = 2025;
        public static final int TYPE_VOLUME_OVERLAY = 2020;
        public static final int TYPE_WALLPAPER = 2013;
        public static final int USER_ACTIVITY_TIMEOUT_CHANGED = 262144;
        public float alpha;
        public float buttonBrightness;
        public float dimAmount;

        @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 1, mask = 1, name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"), @ViewDebug.FlagToString(equals = 2, mask = 2, name = "FLAG_DIM_BEHIND"), @ViewDebug.FlagToString(equals = 4, mask = 4, name = "FLAG_BLUR_BEHIND"), @ViewDebug.FlagToString(equals = 8, mask = 8, name = "FLAG_NOT_FOCUSABLE"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "FLAG_NOT_TOUCHABLE"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "FLAG_NOT_TOUCH_MODAL"), @ViewDebug.FlagToString(equals = 64, mask = 64, name = "FLAG_TOUCHABLE_WHEN_WAKING"), @ViewDebug.FlagToString(equals = 128, mask = 128, name = "FLAG_KEEP_SCREEN_ON"), @ViewDebug.FlagToString(equals = 256, mask = 256, name = "FLAG_LAYOUT_IN_SCREEN"), @ViewDebug.FlagToString(equals = 512, mask = 512, name = "FLAG_LAYOUT_NO_LIMITS"), @ViewDebug.FlagToString(equals = 1024, mask = 1024, name = "FLAG_FULLSCREEN"), @ViewDebug.FlagToString(equals = 2048, mask = 2048, name = "FLAG_FORCE_NOT_FULLSCREEN"), @ViewDebug.FlagToString(equals = 4096, mask = 4096, name = "FLAG_DITHER"), @ViewDebug.FlagToString(equals = 8192, mask = 8192, name = "FLAG_SECURE"), @ViewDebug.FlagToString(equals = 16384, mask = 16384, name = "FLAG_SCALED"), @ViewDebug.FlagToString(equals = 32768, mask = 32768, name = "FLAG_IGNORE_CHEEK_PRESSES"), @ViewDebug.FlagToString(equals = 65536, mask = 65536, name = "FLAG_LAYOUT_INSET_DECOR"), @ViewDebug.FlagToString(equals = 131072, mask = 131072, name = "FLAG_ALT_FOCUSABLE_IM"), @ViewDebug.FlagToString(equals = 262144, mask = 262144, name = "FLAG_WATCH_OUTSIDE_TOUCH"), @ViewDebug.FlagToString(equals = 524288, mask = 524288, name = "FLAG_SHOW_WHEN_LOCKED"), @ViewDebug.FlagToString(equals = 1048576, mask = 1048576, name = "FLAG_SHOW_WALLPAPER"), @ViewDebug.FlagToString(equals = 2097152, mask = 2097152, name = "FLAG_TURN_SCREEN_ON"), @ViewDebug.FlagToString(equals = 4194304, mask = 4194304, name = "FLAG_DISMISS_KEYGUARD"), @ViewDebug.FlagToString(equals = 8388608, mask = 8388608, name = "FLAG_SPLIT_TOUCH"), @ViewDebug.FlagToString(equals = 16777216, mask = 16777216, name = "FLAG_HARDWARE_ACCELERATED"), @ViewDebug.FlagToString(equals = 268435456, mask = 268435456, name = "FLAG_LOCAL_FOCUS_MODE"), @ViewDebug.FlagToString(equals = 67108864, mask = 67108864, name = "FLAG_TRANSLUCENT_STATUS"), @ViewDebug.FlagToString(equals = 134217728, mask = 134217728, name = "FLAG_TRANSLUCENT_NAVIGATION")})
        public int flags;
        public int format;
        public int gravity;
        public boolean hasSystemUiListeners;
        public float horizontalMargin;

        @ViewDebug.ExportedProperty
        public float horizontalWeight;
        public int inputFeatures;
        private int[] mCompatibilityParamsBackup;
        private CharSequence mTitle;

        @Deprecated
        public int memoryType;
        public String packageName;
        public int privateFlags;
        public int rotationAnimation;
        public float screenBrightness;
        public int screenOrientation;
        public int softInputMode;
        public int subtreeSystemUiVisibility;
        public int systemUiVisibility;
        public IBinder token;

        @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 1, to = "TYPE_BASE_APPLICATION"), @ViewDebug.IntToString(from = 2, to = "TYPE_APPLICATION"), @ViewDebug.IntToString(from = 3, to = "TYPE_APPLICATION_STARTING"), @ViewDebug.IntToString(from = 1000, to = "TYPE_APPLICATION_PANEL"), @ViewDebug.IntToString(from = 1001, to = "TYPE_APPLICATION_MEDIA"), @ViewDebug.IntToString(from = 1002, to = "TYPE_APPLICATION_SUB_PANEL"), @ViewDebug.IntToString(from = 1003, to = "TYPE_APPLICATION_ATTACHED_DIALOG"), @ViewDebug.IntToString(from = 1004, to = "TYPE_APPLICATION_MEDIA_OVERLAY"), @ViewDebug.IntToString(from = 2000, to = "TYPE_STATUS_BAR"), @ViewDebug.IntToString(from = 2001, to = "TYPE_SEARCH_BAR"), @ViewDebug.IntToString(from = 2002, to = "TYPE_PHONE"), @ViewDebug.IntToString(from = 2003, to = "TYPE_SYSTEM_ALERT"), @ViewDebug.IntToString(from = 2004, to = "TYPE_KEYGUARD"), @ViewDebug.IntToString(from = 2005, to = "TYPE_TOAST"), @ViewDebug.IntToString(from = 2006, to = "TYPE_SYSTEM_OVERLAY"), @ViewDebug.IntToString(from = 2007, to = "TYPE_PRIORITY_PHONE"), @ViewDebug.IntToString(from = 2008, to = "TYPE_SYSTEM_DIALOG"), @ViewDebug.IntToString(from = TYPE_KEYGUARD_DIALOG, to = "TYPE_KEYGUARD_DIALOG"), @ViewDebug.IntToString(from = TYPE_SYSTEM_ERROR, to = "TYPE_SYSTEM_ERROR"), @ViewDebug.IntToString(from = TYPE_INPUT_METHOD, to = "TYPE_INPUT_METHOD"), @ViewDebug.IntToString(from = TYPE_INPUT_METHOD_DIALOG, to = "TYPE_INPUT_METHOD_DIALOG"), @ViewDebug.IntToString(from = TYPE_WALLPAPER, to = "TYPE_WALLPAPER"), @ViewDebug.IntToString(from = TYPE_STATUS_BAR_PANEL, to = "TYPE_STATUS_BAR_PANEL"), @ViewDebug.IntToString(from = TYPE_SECURE_SYSTEM_OVERLAY, to = "TYPE_SECURE_SYSTEM_OVERLAY"), @ViewDebug.IntToString(from = TYPE_DRAG, to = "TYPE_DRAG"), @ViewDebug.IntToString(from = TYPE_STATUS_BAR_SUB_PANEL, to = "TYPE_STATUS_BAR_SUB_PANEL"), @ViewDebug.IntToString(from = TYPE_POINTER, to = "TYPE_POINTER"), @ViewDebug.IntToString(from = TYPE_NAVIGATION_BAR, to = "TYPE_NAVIGATION_BAR"), @ViewDebug.IntToString(from = TYPE_VOLUME_OVERLAY, to = "TYPE_VOLUME_OVERLAY"), @ViewDebug.IntToString(from = TYPE_BOOT_PROGRESS, to = "TYPE_BOOT_PROGRESS"), @ViewDebug.IntToString(from = TYPE_HIDDEN_NAV_CONSUMER, to = "TYPE_HIDDEN_NAV_CONSUMER"), @ViewDebug.IntToString(from = TYPE_DREAM, to = "TYPE_DREAM"), @ViewDebug.IntToString(from = TYPE_NAVIGATION_BAR_PANEL, to = "TYPE_NAVIGATION_BAR_PANEL"), @ViewDebug.IntToString(from = TYPE_DISPLAY_OVERLAY, to = "TYPE_DISPLAY_OVERLAY"), @ViewDebug.IntToString(from = TYPE_MAGNIFICATION_OVERLAY, to = "TYPE_MAGNIFICATION_OVERLAY"), @ViewDebug.IntToString(from = TYPE_PRIVATE_PRESENTATION, to = "TYPE_PRIVATE_PRESENTATION")})
        public int type;
        public long userActivityTimeout;
        public float verticalMargin;

        @ViewDebug.ExportedProperty
        public float verticalWeight;
        public int windowAnimations;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f206x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f207y;

        public LayoutParams() {
            super(-1, -1);
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = ProxyProperties.LOCAL_EXCL_LIST;
            this.type = 2;
            this.format = -1;
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
            iArr[0] = this.f206x;
            iArr[1] = this.f207y;
            iArr[2] = this.width;
            iArr[3] = this.height;
        }

        public final int copyFrom(LayoutParams layoutParams) {
            int i2;
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
            int i7 = this.f206x;
            int i8 = layoutParams.f206x;
            if (i7 != i8) {
                this.f206x = i8;
                i2 |= 1;
            }
            int i9 = this.f207y;
            int i10 = layoutParams.f207y;
            if (i9 != i10) {
                this.f207y = i10;
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
            if (!this.mTitle.equals(layoutParams.mTitle)) {
                this.mTitle = layoutParams.mTitle;
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
            int i29 = this.systemUiVisibility;
            int i30 = layoutParams.systemUiVisibility;
            if (i29 != i30 || this.subtreeSystemUiVisibility != layoutParams.subtreeSystemUiVisibility) {
                this.systemUiVisibility = i30;
                this.subtreeSystemUiVisibility = layoutParams.subtreeSystemUiVisibility;
                i2 |= 16384;
            }
            boolean z2 = this.hasSystemUiListeners;
            boolean z3 = layoutParams.hasSystemUiListeners;
            if (z2 != z3) {
                this.hasSystemUiListeners = z3;
                i2 |= 32768;
            }
            int i31 = this.inputFeatures;
            int i32 = layoutParams.inputFeatures;
            if (i31 != i32) {
                this.inputFeatures = i32;
                i2 |= 65536;
            }
            long j2 = this.userActivityTimeout;
            long j3 = layoutParams.userActivityTimeout;
            if (j2 == j3) {
                return i2;
            }
            this.userActivityTimeout = j3;
            return i2 | 262144;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            Log.d("Debug", str + "Contents of " + this + ":");
            Log.d("Debug", super.debug(ProxyProperties.LOCAL_EXCL_LIST));
            Log.d("Debug", ProxyProperties.LOCAL_EXCL_LIST);
            Log.d("Debug", "WindowManager.LayoutParams={title=" + ((Object) this.mTitle) + "}");
            return ProxyProperties.LOCAL_EXCL_LIST;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final CharSequence getTitle() {
            return this.mTitle;
        }

        public void restore() {
            int[] iArr = this.mCompatibilityParamsBackup;
            if (iArr != null) {
                this.f206x = iArr[0];
                this.f207y = iArr[1];
                this.width = iArr[2];
                this.height = iArr[3];
            }
        }

        public void scale(float f2) {
            this.f206x = (int) ((this.f206x * f2) + 0.5f);
            this.f207y = (int) ((this.f207y * f2) + 0.5f);
            int i2 = this.width;
            if (i2 > 0) {
                this.width = (int) ((i2 * f2) + 0.5f);
            }
            int i3 = this.height;
            if (i3 > 0) {
                this.height = (int) ((i3 * f2) + 0.5f);
            }
        }

        public final void setTitle(CharSequence charSequence) {
            if (charSequence == null) {
                charSequence = ProxyProperties.LOCAL_EXCL_LIST;
            }
            this.mTitle = TextUtils.stringOrSpannedString(charSequence);
        }

        public String toString() {
            Object objValueOf;
            StringBuilder sb = new StringBuilder(256);
            sb.append("WM.LayoutParams{");
            sb.append("(");
            sb.append(this.f206x);
            sb.append(PhoneNumberUtils.PAUSE);
            sb.append(this.f207y);
            sb.append(")(");
            int i2 = this.width;
            Object objValueOf2 = "wrap";
            if (i2 == -1) {
                objValueOf = "fill";
            } else {
                objValueOf = i2 == -2 ? "wrap" : Integer.valueOf(i2);
            }
            sb.append(objValueOf);
            sb.append('x');
            int i3 = this.height;
            if (i3 == -1) {
                objValueOf2 = "fill";
            } else if (i3 != -2) {
                objValueOf2 = Integer.valueOf(i3);
            }
            sb.append(objValueOf2);
            sb.append(")");
            if (this.horizontalMargin != 0.0f) {
                sb.append(" hm=");
                sb.append(this.horizontalMargin);
            }
            if (this.verticalMargin != 0.0f) {
                sb.append(" vm=");
                sb.append(this.verticalMargin);
            }
            if (this.gravity != 0) {
                sb.append(" gr=#");
                sb.append(Integer.toHexString(this.gravity));
            }
            if (this.softInputMode != 0) {
                sb.append(" sim=#");
                sb.append(Integer.toHexString(this.softInputMode));
            }
            sb.append(" ty=");
            sb.append(this.type);
            sb.append(" fl=#");
            sb.append(Integer.toHexString(this.flags));
            int i4 = this.privateFlags;
            if (i4 != 0) {
                if ((i4 & 128) != 0) {
                    sb.append(" compatible=true");
                }
                sb.append(" pfl=0x");
                sb.append(Integer.toHexString(this.privateFlags));
            }
            if (this.format != -1) {
                sb.append(" fmt=");
                sb.append(this.format);
            }
            if (this.windowAnimations != 0) {
                sb.append(" wanim=0x");
                sb.append(Integer.toHexString(this.windowAnimations));
            }
            if (this.screenOrientation != -1) {
                sb.append(" or=");
                sb.append(this.screenOrientation);
            }
            if (this.alpha != 1.0f) {
                sb.append(" alpha=");
                sb.append(this.alpha);
            }
            if (this.screenBrightness != -1.0f) {
                sb.append(" sbrt=");
                sb.append(this.screenBrightness);
            }
            if (this.buttonBrightness != -1.0f) {
                sb.append(" bbrt=");
                sb.append(this.buttonBrightness);
            }
            if (this.rotationAnimation != 0) {
                sb.append(" rotAnim=");
                sb.append(this.rotationAnimation);
            }
            if (this.systemUiVisibility != 0) {
                sb.append(" sysui=0x");
                sb.append(Integer.toHexString(this.systemUiVisibility));
            }
            if (this.subtreeSystemUiVisibility != 0) {
                sb.append(" vsysui=0x");
                sb.append(Integer.toHexString(this.subtreeSystemUiVisibility));
            }
            if (this.hasSystemUiListeners) {
                sb.append(" sysuil=");
                sb.append(this.hasSystemUiListeners);
            }
            if (this.inputFeatures != 0) {
                sb.append(" if=0x");
                sb.append(Integer.toHexString(this.inputFeatures));
            }
            if (this.userActivityTimeout >= 0) {
                sb.append(" userActivityTimeout=");
                sb.append(this.userActivityTimeout);
            }
            sb.append('}');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
            parcel.writeInt(this.f206x);
            parcel.writeInt(this.f207y);
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
            parcel.writeInt(this.systemUiVisibility);
            parcel.writeInt(this.subtreeSystemUiVisibility);
            parcel.writeInt(this.hasSystemUiListeners ? 1 : 0);
            parcel.writeInt(this.inputFeatures);
            parcel.writeLong(this.userActivityTimeout);
        }

        public LayoutParams(int i2) {
            super(-1, -1);
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = ProxyProperties.LOCAL_EXCL_LIST;
            this.type = i2;
            this.format = -1;
        }

        public LayoutParams(int i2, int i3) {
            super(-1, -1);
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = ProxyProperties.LOCAL_EXCL_LIST;
            this.type = i2;
            this.flags = i3;
            this.format = -1;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(-1, -1);
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = ProxyProperties.LOCAL_EXCL_LIST;
            this.type = i2;
            this.flags = i3;
            this.format = i4;
        }

        public LayoutParams(int i2, int i3, int i4, int i5, int i6) {
            super(i2, i3);
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = ProxyProperties.LOCAL_EXCL_LIST;
            this.type = i4;
            this.flags = i5;
            this.format = i6;
        }

        public LayoutParams(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(i2, i3);
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = ProxyProperties.LOCAL_EXCL_LIST;
            this.f206x = i4;
            this.f207y = i5;
            this.type = i6;
            this.flags = i7;
            this.format = i8;
        }

        public LayoutParams(Parcel parcel) {
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1L;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = ProxyProperties.LOCAL_EXCL_LIST;
            this.width = parcel.readInt();
            this.height = parcel.readInt();
            this.f206x = parcel.readInt();
            this.f207y = parcel.readInt();
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
            this.mTitle = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.screenOrientation = parcel.readInt();
            this.systemUiVisibility = parcel.readInt();
            this.subtreeSystemUiVisibility = parcel.readInt();
            this.hasSystemUiListeners = parcel.readInt() != 0;
            this.inputFeatures = parcel.readInt();
            this.userActivityTimeout = parcel.readLong();
        }
    }
}
