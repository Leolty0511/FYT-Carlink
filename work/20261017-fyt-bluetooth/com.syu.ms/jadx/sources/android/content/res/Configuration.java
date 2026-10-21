package android.content.res;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class Configuration implements Parcelable, Comparable<Configuration> {
    public static final int DENSITY_DPI_UNDEFINED = 0;
    public static final int HARDKEYBOARDHIDDEN_NO = 1;
    public static final int HARDKEYBOARDHIDDEN_UNDEFINED = 0;
    public static final int HARDKEYBOARDHIDDEN_YES = 2;
    public static final int KEYBOARDHIDDEN_NO = 1;
    public static final int KEYBOARDHIDDEN_SOFT = 3;
    public static final int KEYBOARDHIDDEN_UNDEFINED = 0;
    public static final int KEYBOARDHIDDEN_YES = 2;
    public static final int KEYBOARD_12KEY = 3;
    public static final int KEYBOARD_NOKEYS = 1;
    public static final int KEYBOARD_QWERTY = 2;
    public static final int KEYBOARD_UNDEFINED = 0;
    public static final int MNC_ZERO = 65535;
    public static final int NATIVE_CONFIG_DENSITY = 256;
    public static final int NATIVE_CONFIG_KEYBOARD = 16;
    public static final int NATIVE_CONFIG_KEYBOARD_HIDDEN = 32;
    public static final int NATIVE_CONFIG_LAYOUTDIR = 16384;
    public static final int NATIVE_CONFIG_LOCALE = 4;
    public static final int NATIVE_CONFIG_MCC = 1;
    public static final int NATIVE_CONFIG_MNC = 2;
    public static final int NATIVE_CONFIG_NAVIGATION = 64;
    public static final int NATIVE_CONFIG_ORIENTATION = 128;
    public static final int NATIVE_CONFIG_SCREEN_LAYOUT = 2048;
    public static final int NATIVE_CONFIG_SCREEN_SIZE = 512;
    public static final int NATIVE_CONFIG_SMALLEST_SCREEN_SIZE = 8192;
    public static final int NATIVE_CONFIG_TOUCHSCREEN = 8;
    public static final int NATIVE_CONFIG_UI_MODE = 4096;
    public static final int NATIVE_CONFIG_VERSION = 1024;
    public static final int NAVIGATIONHIDDEN_NO = 1;
    public static final int NAVIGATIONHIDDEN_UNDEFINED = 0;
    public static final int NAVIGATIONHIDDEN_YES = 2;
    public static final int NAVIGATION_DPAD = 2;
    public static final int NAVIGATION_NONAV = 1;
    public static final int NAVIGATION_TRACKBALL = 3;
    public static final int NAVIGATION_UNDEFINED = 0;
    public static final int NAVIGATION_WHEEL = 4;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_PORTRAIT = 1;

    @Deprecated
    public static final int ORIENTATION_SQUARE = 3;
    public static final int ORIENTATION_UNDEFINED = 0;
    public static final int ROTATION_UNDEFINED = -1;
    public static final int SCREENLAYOUT_COMPAT_NEEDED = 268435456;
    public static final int SCREENLAYOUT_LAYOUTDIR_LTR = 64;
    public static final int SCREENLAYOUT_LAYOUTDIR_MASK = 192;
    public static final int SCREENLAYOUT_LAYOUTDIR_RTL = 128;
    public static final int SCREENLAYOUT_LAYOUTDIR_SHIFT = 6;
    public static final int SCREENLAYOUT_LAYOUTDIR_UNDEFINED = 0;
    public static final int SCREENLAYOUT_LONG_MASK = 48;
    public static final int SCREENLAYOUT_LONG_NO = 16;
    public static final int SCREENLAYOUT_LONG_UNDEFINED = 0;
    public static final int SCREENLAYOUT_LONG_YES = 32;
    public static final int SCREENLAYOUT_SIZE_LARGE = 3;
    public static final int SCREENLAYOUT_SIZE_MASK = 15;
    public static final int SCREENLAYOUT_SIZE_NORMAL = 2;
    public static final int SCREENLAYOUT_SIZE_SMALL = 1;
    public static final int SCREENLAYOUT_SIZE_UNDEFINED = 0;
    public static final int SCREENLAYOUT_SIZE_XLARGE = 4;
    public static final int SCREENLAYOUT_UNDEFINED = 0;
    public static final int SCREEN_HEIGHT_DP_UNDEFINED = 0;
    public static final int SCREEN_WIDTH_DP_UNDEFINED = 0;
    public static final int SMALLEST_SCREEN_WIDTH_DP_UNDEFINED = 0;
    public static final int TOUCHSCREEN_FINGER = 3;
    public static final int TOUCHSCREEN_NOTOUCH = 1;

    @Deprecated
    public static final int TOUCHSCREEN_STYLUS = 2;
    public static final int TOUCHSCREEN_UNDEFINED = 0;
    public static final int UI_MODE_NIGHT_MASK = 48;
    public static final int UI_MODE_NIGHT_NO = 16;
    public static final int UI_MODE_NIGHT_UNDEFINED = 0;
    public static final int UI_MODE_NIGHT_YES = 32;
    public static final int UI_MODE_TYPE_APPLIANCE = 5;
    public static final int UI_MODE_TYPE_CAR = 3;
    public static final int UI_MODE_TYPE_DESK = 2;
    public static final int UI_MODE_TYPE_MASK = 15;
    public static final int UI_MODE_TYPE_NORMAL = 1;
    public static final int UI_MODE_TYPE_TELEVISION = 4;
    public static final int UI_MODE_TYPE_UNDEFINED = 0;
    public int compatScreenHeightDp;
    public int compatScreenWidthDp;
    public int compatSmallestScreenWidthDp;
    public int densityDpi;
    public float fontScale;
    public int hardKeyboardHidden;
    public int keyboard;
    public int keyboardHidden;
    public Locale locale;
    public int mcc;
    public int mnc;
    public int navigation;
    public int navigationHidden;
    public int orientation;
    public int rotation;
    public int screenHeightDp;
    public int screenLayout;
    public int screenWidthDp;
    public int seq;
    public int smallestScreenWidthDp;
    public int touchscreen;
    public int uiMode;
    public boolean userSetLocale;
    public static final Configuration EMPTY = new Configuration();
    public static final Parcelable.Creator<Configuration> CREATOR = new Parcelable.Creator<Configuration>() { // from class: android.content.res.Configuration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Configuration createFromParcel(Parcel parcel) {
            return new Configuration(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Configuration[] newArray(int i2) {
            return new Configuration[i2];
        }
    };

    private static int getScreenLayoutNoDirection(int i2) {
        return i2 & (-193);
    }

    public static boolean needNewResources(int i2, int i3) {
        return (i2 & (i3 | 1073741824)) != 0;
    }

    public static int reduceScreenLayout(int i2, int i3, int i4) {
        int i5;
        boolean z2;
        boolean z3 = false;
        int i6 = 1;
        if (i3 < 470) {
            z2 = false;
        } else {
            if (i3 < 960 || i4 < 720) {
                i5 = (i3 < 640 || i4 < 480) ? 2 : 3;
            } else {
                i5 = 4;
            }
            z2 = i4 > 321 || i3 > 570;
            z3 = (i3 * 3) / 5 >= i4 - 1;
            i6 = i5;
        }
        if (!z3) {
            i2 = (i2 & (-49)) | 16;
        }
        if (z2) {
            i2 |= 268435456;
        }
        return i6 < (i2 & 15) ? (i2 & (-16)) | i6 : i2;
    }

    public static int resetScreenLayout(int i2) {
        return (i2 & (-268435520)) | 36;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int diff(Configuration configuration) {
        Locale locale;
        float f2 = configuration.fontScale;
        int i2 = (f2 <= 0.0f || this.fontScale == f2) ? 0 : 1073741824;
        int i3 = configuration.mcc;
        if (i3 != 0 && this.mcc != i3) {
            i2 |= 1;
        }
        int i4 = configuration.mnc;
        if (i4 != 0 && this.mnc != i4) {
            i2 |= 2;
        }
        Locale locale2 = configuration.locale;
        if (locale2 != null && ((locale = this.locale) == null || !locale.equals(locale2))) {
            i2 = i2 | 4 | 8192;
        }
        int i5 = configuration.screenLayout & 192;
        if (i5 != 0 && i5 != (this.screenLayout & 192)) {
            i2 |= 8192;
        }
        int i6 = configuration.touchscreen;
        if (i6 != 0 && this.touchscreen != i6) {
            i2 |= 8;
        }
        int i7 = configuration.keyboard;
        if (i7 != 0 && this.keyboard != i7) {
            i2 |= 16;
        }
        int i8 = configuration.keyboardHidden;
        if (i8 != 0 && this.keyboardHidden != i8) {
            i2 |= 32;
        }
        int i9 = configuration.hardKeyboardHidden;
        if (i9 != 0 && this.hardKeyboardHidden != i9) {
            i2 |= 32;
        }
        int i10 = configuration.navigation;
        if (i10 != 0 && this.navigation != i10) {
            i2 |= 64;
        }
        int i11 = configuration.navigationHidden;
        if (i11 != 0 && this.navigationHidden != i11) {
            i2 |= 32;
        }
        int i12 = configuration.orientation;
        if (i12 != 0 && this.orientation != i12) {
            i2 |= 128;
        }
        int i13 = configuration.rotation;
        if (i13 != -1 && this.rotation != i13 && ((SystemProperties.get("ro.rk.soc", "unknown").equals("rk3288") || Build.USE_LCDC_COMPOSER) && Math.abs(configuration.rotation - this.rotation) == 2)) {
            i2 |= 128;
        }
        if (getScreenLayoutNoDirection(configuration.screenLayout) != 0 && getScreenLayoutNoDirection(this.screenLayout) != getScreenLayoutNoDirection(configuration.screenLayout)) {
            i2 |= 256;
        }
        int i14 = configuration.uiMode;
        if (i14 != 0 && this.uiMode != i14) {
            i2 |= 512;
        }
        int i15 = configuration.screenWidthDp;
        if (i15 != 0 && this.screenWidthDp != i15) {
            i2 |= 1024;
        }
        int i16 = configuration.screenHeightDp;
        if (i16 != 0 && this.screenHeightDp != i16) {
            i2 |= 1024;
        }
        int i17 = configuration.smallestScreenWidthDp;
        if (i17 != 0 && this.smallestScreenWidthDp != i17) {
            i2 |= 2048;
        }
        int i18 = configuration.densityDpi;
        return (i18 == 0 || this.densityDpi == i18) ? i2 : i2 | 4096;
    }

    public boolean equals(Configuration configuration) {
        if (configuration == null) {
            return false;
        }
        return configuration == this || compareTo(configuration) == 0;
    }

    public int getLayoutDirection() {
        return (this.screenLayout & 192) == 128 ? 1 : 0;
    }

    public int hashCode() {
        int iFloatToIntBits = (((((527 + Float.floatToIntBits(this.fontScale)) * 31) + this.mcc) * 31) + this.mnc) * 31;
        Locale locale = this.locale;
        return ((((((((((((((((((((((((((((iFloatToIntBits + (locale != null ? locale.hashCode() : 0)) * 31) + this.touchscreen) * 31) + this.keyboard) * 31) + this.keyboardHidden) * 31) + this.hardKeyboardHidden) * 31) + this.navigation) * 31) + this.navigationHidden) * 31) + this.orientation) * 31) + this.rotation) * 31) + this.screenLayout) * 31) + this.uiMode) * 31) + this.screenWidthDp) * 31) + this.screenHeightDp) * 31) + this.smallestScreenWidthDp) * 31) + this.densityDpi;
    }

    public boolean isLayoutSizeAtLeast(int i2) {
        int i3 = this.screenLayout & 15;
        return i3 != 0 && i3 >= i2;
    }

    public boolean isOtherSeqNewer(Configuration configuration) {
        int i2;
        if (configuration == null) {
            return false;
        }
        int i3 = configuration.seq;
        if (i3 == 0 || (i2 = this.seq) == 0) {
            return true;
        }
        int i4 = i3 - i2;
        return i4 <= 65536 && i4 > 0;
    }

    @Deprecated
    public void makeDefault() {
        setToDefaults();
    }

    public void readFromParcel(Parcel parcel) {
        this.fontScale = parcel.readFloat();
        this.mcc = parcel.readInt();
        this.mnc = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.locale = new Locale(parcel.readString(), parcel.readString(), parcel.readString());
        }
        this.userSetLocale = parcel.readInt() == 1;
        this.touchscreen = parcel.readInt();
        this.keyboard = parcel.readInt();
        this.keyboardHidden = parcel.readInt();
        this.hardKeyboardHidden = parcel.readInt();
        this.navigation = parcel.readInt();
        this.navigationHidden = parcel.readInt();
        this.orientation = parcel.readInt();
        this.rotation = parcel.readInt();
        this.screenLayout = parcel.readInt();
        this.uiMode = parcel.readInt();
        this.screenWidthDp = parcel.readInt();
        this.screenHeightDp = parcel.readInt();
        this.smallestScreenWidthDp = parcel.readInt();
        this.densityDpi = parcel.readInt();
        this.compatScreenWidthDp = parcel.readInt();
        this.compatScreenHeightDp = parcel.readInt();
        this.compatSmallestScreenWidthDp = parcel.readInt();
        this.seq = parcel.readInt();
    }

    public void setLayoutDirection(Locale locale) {
        this.screenLayout = ((TextUtils.getLayoutDirectionFromLocale(locale) + 1) << 6) | (this.screenLayout & (-193));
    }

    public void setLocale(Locale locale) {
        this.locale = locale;
        this.userSetLocale = true;
        setLayoutDirection(locale);
    }

    public void setTo(Configuration configuration) {
        this.fontScale = configuration.fontScale;
        this.mcc = configuration.mcc;
        this.mnc = configuration.mnc;
        Locale locale = configuration.locale;
        if (locale != null) {
            this.locale = (Locale) locale.clone();
        }
        this.userSetLocale = configuration.userSetLocale;
        this.touchscreen = configuration.touchscreen;
        this.keyboard = configuration.keyboard;
        this.keyboardHidden = configuration.keyboardHidden;
        this.hardKeyboardHidden = configuration.hardKeyboardHidden;
        this.navigation = configuration.navigation;
        this.navigationHidden = configuration.navigationHidden;
        this.orientation = configuration.orientation;
        this.rotation = configuration.rotation;
        this.screenLayout = configuration.screenLayout;
        this.uiMode = configuration.uiMode;
        this.screenWidthDp = configuration.screenWidthDp;
        this.screenHeightDp = configuration.screenHeightDp;
        this.smallestScreenWidthDp = configuration.smallestScreenWidthDp;
        this.densityDpi = configuration.densityDpi;
        this.compatScreenWidthDp = configuration.compatScreenWidthDp;
        this.compatScreenHeightDp = configuration.compatScreenHeightDp;
        this.compatSmallestScreenWidthDp = configuration.compatSmallestScreenWidthDp;
        this.seq = configuration.seq;
    }

    public void setToDefaults() {
        this.fontScale = 1.0f;
        this.mnc = 0;
        this.mcc = 0;
        this.locale = null;
        this.userSetLocale = false;
        this.touchscreen = 0;
        this.keyboard = 0;
        this.keyboardHidden = 0;
        this.hardKeyboardHidden = 0;
        this.navigation = 0;
        this.navigationHidden = 0;
        this.orientation = 0;
        this.rotation = -1;
        this.screenLayout = 0;
        this.uiMode = 0;
        this.compatScreenWidthDp = 0;
        this.screenWidthDp = 0;
        this.compatScreenHeightDp = 0;
        this.screenHeightDp = 0;
        this.compatSmallestScreenWidthDp = 0;
        this.smallestScreenWidthDp = 0;
        this.densityDpi = 0;
        this.seq = 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("{");
        sb.append(this.fontScale);
        sb.append(" ");
        int i2 = this.mcc;
        if (i2 != 0) {
            sb.append(i2);
            sb.append("mcc");
        } else {
            sb.append("?mcc");
        }
        int i3 = this.mnc;
        if (i3 != 0) {
            sb.append(i3);
            sb.append("mnc");
        } else {
            sb.append("?mnc");
        }
        if (this.locale != null) {
            sb.append(" ");
            sb.append(this.locale);
        } else {
            sb.append(" ?locale");
        }
        int i4 = this.screenLayout & 192;
        if (i4 == 0) {
            sb.append(" ?layoutDir");
        } else if (i4 == 64) {
            sb.append(" ldltr");
        } else if (i4 != 128) {
            sb.append(" layoutDir=");
            sb.append(i4 >> 6);
        } else {
            sb.append(" ldrtl");
        }
        if (this.smallestScreenWidthDp != 0) {
            sb.append(" sw");
            sb.append(this.smallestScreenWidthDp);
            sb.append("dp");
        } else {
            sb.append(" ?swdp");
        }
        if (this.screenWidthDp != 0) {
            sb.append(" w");
            sb.append(this.screenWidthDp);
            sb.append("dp");
        } else {
            sb.append(" ?wdp");
        }
        if (this.screenHeightDp != 0) {
            sb.append(" h");
            sb.append(this.screenHeightDp);
            sb.append("dp");
        } else {
            sb.append(" ?hdp");
        }
        if (this.densityDpi != 0) {
            sb.append(" ");
            sb.append(this.densityDpi);
            sb.append("dpi");
        } else {
            sb.append(" ?density");
        }
        int i5 = this.screenLayout & 15;
        if (i5 == 0) {
            sb.append(" ?lsize");
        } else if (i5 == 1) {
            sb.append(" smll");
        } else if (i5 == 2) {
            sb.append(" nrml");
        } else if (i5 == 3) {
            sb.append(" lrg");
        } else if (i5 != 4) {
            sb.append(" layoutSize=");
            sb.append(this.screenLayout & 15);
        } else {
            sb.append(" xlrg");
        }
        int i6 = this.screenLayout & 48;
        if (i6 == 0) {
            sb.append(" ?long");
        } else if (i6 != 16) {
            if (i6 != 32) {
                sb.append(" layoutLong=");
                sb.append(this.screenLayout & 48);
            } else {
                sb.append(" long");
            }
        }
        int i7 = this.orientation;
        if (i7 == 0) {
            sb.append(" ?orien");
        } else if (i7 == 1) {
            sb.append(" port");
        } else if (i7 != 2) {
            sb.append(" orien=");
            sb.append(this.orientation);
        } else {
            sb.append(" land");
        }
        int i8 = this.uiMode & 15;
        if (i8 == 0) {
            sb.append(" ?uimode");
        } else if (i8 != 1) {
            if (i8 == 2) {
                sb.append(" desk");
            } else if (i8 == 3) {
                sb.append(" car");
            } else if (i8 == 4) {
                sb.append(" television");
            } else if (i8 != 5) {
                sb.append(" uimode=");
                sb.append(this.uiMode & 15);
            } else {
                sb.append(" appliance");
            }
        }
        int i9 = this.uiMode & 48;
        if (i9 == 0) {
            sb.append(" ?night");
        } else if (i9 != 16) {
            if (i9 != 32) {
                sb.append(" night=");
                sb.append(this.uiMode & 48);
            } else {
                sb.append(" night");
            }
        }
        int i10 = this.touchscreen;
        if (i10 == 0) {
            sb.append(" ?touch");
        } else if (i10 == 1) {
            sb.append(" -touch");
        } else if (i10 == 2) {
            sb.append(" stylus");
        } else if (i10 != 3) {
            sb.append(" touch=");
            sb.append(this.touchscreen);
        } else {
            sb.append(" finger");
        }
        int i11 = this.keyboard;
        if (i11 == 0) {
            sb.append(" ?keyb");
        } else if (i11 == 1) {
            sb.append(" -keyb");
        } else if (i11 == 2) {
            sb.append(" qwerty");
        } else if (i11 != 3) {
            sb.append(" keys=");
            sb.append(this.keyboard);
        } else {
            sb.append(" 12key");
        }
        int i12 = this.keyboardHidden;
        if (i12 == 0) {
            sb.append("/?");
        } else if (i12 == 1) {
            sb.append("/v");
        } else if (i12 == 2) {
            sb.append("/h");
        } else if (i12 != 3) {
            sb.append("/");
            sb.append(this.keyboardHidden);
        } else {
            sb.append("/s");
        }
        int i13 = this.hardKeyboardHidden;
        if (i13 == 0) {
            sb.append("/?");
        } else if (i13 == 1) {
            sb.append("/v");
        } else if (i13 != 2) {
            sb.append("/");
            sb.append(this.hardKeyboardHidden);
        } else {
            sb.append("/h");
        }
        int i14 = this.navigation;
        if (i14 == 0) {
            sb.append(" ?nav");
        } else if (i14 == 1) {
            sb.append(" -nav");
        } else if (i14 == 2) {
            sb.append(" dpad");
        } else if (i14 == 3) {
            sb.append(" tball");
        } else if (i14 != 4) {
            sb.append(" nav=");
            sb.append(this.navigation);
        } else {
            sb.append(" wheel");
        }
        int i15 = this.navigationHidden;
        if (i15 == 0) {
            sb.append("/?");
        } else if (i15 == 1) {
            sb.append("/v");
        } else if (i15 != 2) {
            sb.append("/");
            sb.append(this.navigationHidden);
        } else {
            sb.append("/h");
        }
        if (this.seq != 0) {
            sb.append(" s.");
            sb.append(this.seq);
        }
        sb.append('}');
        return sb.toString();
    }

    public int updateFrom(Configuration configuration) {
        int i2;
        int i3;
        Locale locale;
        float f2 = configuration.fontScale;
        if (f2 <= 0.0f || this.fontScale == f2) {
            i2 = 0;
        } else {
            i2 = 1073741824;
            this.fontScale = f2;
        }
        int i4 = configuration.mcc;
        if (i4 != 0 && this.mcc != i4) {
            i2 |= 1;
            this.mcc = i4;
        }
        int i5 = configuration.mnc;
        if (i5 != 0 && this.mnc != i5) {
            i2 |= 2;
            this.mnc = i5;
        }
        Locale locale2 = configuration.locale;
        if (locale2 != null && ((locale = this.locale) == null || !locale.equals(locale2))) {
            int i6 = i2 | 4;
            Locale locale3 = configuration.locale;
            Locale locale4 = locale3 != null ? (Locale) locale3.clone() : null;
            this.locale = locale4;
            setLayoutDirection(locale4);
            i2 = i6 | 8192;
        }
        int i7 = configuration.screenLayout & 192;
        if (i7 != 0) {
            int i8 = this.screenLayout;
            if (i7 != (i8 & 192)) {
                this.screenLayout = i7 | (i8 & (-193));
                i2 |= 8192;
            }
        }
        if (configuration.userSetLocale && (!this.userSetLocale || (i2 & 4) != 0)) {
            i2 |= 4;
            this.userSetLocale = true;
        }
        int i9 = configuration.touchscreen;
        if (i9 != 0 && this.touchscreen != i9) {
            i2 |= 8;
            this.touchscreen = i9;
        }
        int i10 = configuration.keyboard;
        if (i10 != 0 && this.keyboard != i10) {
            i2 |= 16;
            this.keyboard = i10;
        }
        int i11 = configuration.keyboardHidden;
        if (i11 != 0 && this.keyboardHidden != i11) {
            i2 |= 32;
            this.keyboardHidden = i11;
        }
        int i12 = configuration.hardKeyboardHidden;
        if (i12 != 0 && this.hardKeyboardHidden != i12) {
            i2 |= 32;
            this.hardKeyboardHidden = i12;
        }
        int i13 = configuration.navigation;
        if (i13 != 0 && this.navigation != i13) {
            i2 |= 64;
            this.navigation = i13;
        }
        int i14 = configuration.navigationHidden;
        if (i14 != 0 && this.navigationHidden != i14) {
            i2 |= 32;
            this.navigationHidden = i14;
        }
        int i15 = configuration.orientation;
        if (i15 != 0 && this.orientation != i15) {
            i2 |= 128;
            this.orientation = i15;
        }
        int i16 = configuration.rotation;
        if (i16 != -1 && this.rotation != i16) {
            if ((SystemProperties.get("ro.rk.soc", "unknown").equals("rk3288") || Build.USE_LCDC_COMPOSER) && Math.abs(configuration.rotation - this.rotation) == 2) {
                i2 |= 128;
            }
            this.rotation = configuration.rotation;
        }
        if (getScreenLayoutNoDirection(configuration.screenLayout) != 0 && getScreenLayoutNoDirection(this.screenLayout) != getScreenLayoutNoDirection(configuration.screenLayout)) {
            i2 |= 256;
            int i17 = configuration.screenLayout;
            if ((i17 & 192) == 0) {
                this.screenLayout = i17 | (this.screenLayout & 192);
            } else {
                this.screenLayout = i17;
            }
        }
        int i18 = configuration.uiMode;
        if (i18 != 0 && (i3 = this.uiMode) != i18) {
            i2 |= 512;
            if ((i18 & 15) != 0) {
                this.uiMode = (i18 & 15) | (i3 & (-16));
            }
            int i19 = configuration.uiMode;
            if ((i19 & 48) != 0) {
                this.uiMode = (i19 & 48) | (this.uiMode & (-49));
            }
        }
        int i20 = configuration.screenWidthDp;
        if (i20 != 0 && this.screenWidthDp != i20) {
            i2 |= 1024;
            this.screenWidthDp = i20;
        }
        int i21 = configuration.screenHeightDp;
        if (i21 != 0 && this.screenHeightDp != i21) {
            i2 |= 1024;
            this.screenHeightDp = i21;
        }
        int i22 = configuration.smallestScreenWidthDp;
        if (i22 != 0 && this.smallestScreenWidthDp != i22) {
            i2 |= 2048;
            this.smallestScreenWidthDp = i22;
        }
        int i23 = configuration.densityDpi;
        if (i23 != 0 && this.densityDpi != i23) {
            i2 |= 4096;
            this.densityDpi = i23;
        }
        int i24 = configuration.compatScreenWidthDp;
        if (i24 != 0) {
            this.compatScreenWidthDp = i24;
        }
        int i25 = configuration.compatScreenHeightDp;
        if (i25 != 0) {
            this.compatScreenHeightDp = i25;
        }
        int i26 = configuration.compatSmallestScreenWidthDp;
        if (i26 != 0) {
            this.compatSmallestScreenWidthDp = i26;
        }
        int i27 = configuration.seq;
        if (i27 != 0) {
            this.seq = i27;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.fontScale);
        parcel.writeInt(this.mcc);
        parcel.writeInt(this.mnc);
        if (this.locale == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(this.locale.getLanguage());
            parcel.writeString(this.locale.getCountry());
            parcel.writeString(this.locale.getVariant());
        }
        if (this.userSetLocale) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.touchscreen);
        parcel.writeInt(this.keyboard);
        parcel.writeInt(this.keyboardHidden);
        parcel.writeInt(this.hardKeyboardHidden);
        parcel.writeInt(this.navigation);
        parcel.writeInt(this.navigationHidden);
        parcel.writeInt(this.orientation);
        parcel.writeInt(this.rotation);
        parcel.writeInt(this.screenLayout);
        parcel.writeInt(this.uiMode);
        parcel.writeInt(this.screenWidthDp);
        parcel.writeInt(this.screenHeightDp);
        parcel.writeInt(this.smallestScreenWidthDp);
        parcel.writeInt(this.densityDpi);
        parcel.writeInt(this.compatScreenWidthDp);
        parcel.writeInt(this.compatScreenHeightDp);
        parcel.writeInt(this.compatSmallestScreenWidthDp);
        parcel.writeInt(this.seq);
    }

    public Configuration() {
        setToDefaults();
    }

    @Override // java.lang.Comparable
    public int compareTo(Configuration configuration) {
        float f2 = this.fontScale;
        float f3 = configuration.fontScale;
        if (f2 < f3) {
            return -1;
        }
        if (f2 > f3) {
            return 1;
        }
        int i2 = this.mcc - configuration.mcc;
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.mnc - configuration.mnc;
        if (i3 != 0) {
            return i3;
        }
        Locale locale = this.locale;
        if (locale == null) {
            if (configuration.locale != null) {
                return 1;
            }
        } else {
            if (configuration.locale == null) {
                return -1;
            }
            int iCompareTo = locale.getLanguage().compareTo(configuration.locale.getLanguage());
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = this.locale.getCountry().compareTo(configuration.locale.getCountry());
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
            int iCompareTo3 = this.locale.getVariant().compareTo(configuration.locale.getVariant());
            if (iCompareTo3 != 0) {
                return iCompareTo3;
            }
        }
        int i4 = this.touchscreen - configuration.touchscreen;
        if (i4 != 0) {
            return i4;
        }
        int i5 = this.keyboard - configuration.keyboard;
        if (i5 != 0) {
            return i5;
        }
        int i6 = this.keyboardHidden - configuration.keyboardHidden;
        if (i6 != 0) {
            return i6;
        }
        int i7 = this.hardKeyboardHidden - configuration.hardKeyboardHidden;
        if (i7 != 0) {
            return i7;
        }
        int i8 = this.navigation - configuration.navigation;
        if (i8 != 0) {
            return i8;
        }
        int i9 = this.navigationHidden - configuration.navigationHidden;
        if (i9 != 0) {
            return i9;
        }
        int i10 = this.orientation - configuration.orientation;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.rotation - configuration.rotation;
        if (i11 != 0) {
            return i11;
        }
        int i12 = this.screenLayout - configuration.screenLayout;
        if (i12 != 0) {
            return i12;
        }
        int i13 = this.uiMode - configuration.uiMode;
        if (i13 != 0) {
            return i13;
        }
        int i14 = this.screenWidthDp - configuration.screenWidthDp;
        if (i14 != 0) {
            return i14;
        }
        int i15 = this.screenHeightDp - configuration.screenHeightDp;
        if (i15 != 0) {
            return i15;
        }
        int i16 = this.smallestScreenWidthDp - configuration.smallestScreenWidthDp;
        return i16 != 0 ? i16 : this.densityDpi - configuration.densityDpi;
    }

    public boolean equals(Object obj) {
        try {
            return equals((Configuration) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public Configuration(Configuration configuration) {
        setTo(configuration);
    }

    private Configuration(Parcel parcel) {
        readFromParcel(parcel);
    }
}
