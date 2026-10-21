package android.content.res;

import android.accessibilityservice.c;
import android.graphics.Rect;
import android.hardware.Camera;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.text.TextUtils;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.util.XmlUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class Configuration implements Parcelable, Comparable<Configuration> {
    public static final int ASSETS_SEQ_UNDEFINED = 0;
    public static final int COLOR_MODE_HDR_MASK = 12;
    public static final int COLOR_MODE_HDR_NO = 4;
    public static final int COLOR_MODE_HDR_SHIFT = 2;
    public static final int COLOR_MODE_HDR_UNDEFINED = 0;
    public static final int COLOR_MODE_HDR_YES = 8;
    public static final int COLOR_MODE_UNDEFINED = 0;
    public static final int COLOR_MODE_WIDE_COLOR_GAMUT_MASK = 3;
    public static final int COLOR_MODE_WIDE_COLOR_GAMUT_NO = 1;
    public static final int COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED = 0;
    public static final int COLOR_MODE_WIDE_COLOR_GAMUT_YES = 2;
    public static final int DENSITY_DPI_ANY = 65534;
    public static final int DENSITY_DPI_NONE = 65535;
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
    public static final int NATIVE_CONFIG_COLOR_MODE = 65536;
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
    public static final int SCREENLAYOUT_ROUND_MASK = 768;
    public static final int SCREENLAYOUT_ROUND_NO = 256;
    public static final int SCREENLAYOUT_ROUND_SHIFT = 8;
    public static final int SCREENLAYOUT_ROUND_UNDEFINED = 0;
    public static final int SCREENLAYOUT_ROUND_YES = 512;
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
    public static final int UI_MODE_TYPE_VR_HEADSET = 7;
    public static final int UI_MODE_TYPE_WATCH = 6;
    private static final String XML_ATTR_APP_BOUNDS = "app_bounds";
    private static final String XML_ATTR_COLOR_MODE = "clrMod";
    private static final String XML_ATTR_DENSITY = "density";
    private static final String XML_ATTR_FONT_SCALE = "fs";
    private static final String XML_ATTR_HARD_KEYBOARD_HIDDEN = "hardKeyHid";
    private static final String XML_ATTR_KEYBOARD = "key";
    private static final String XML_ATTR_KEYBOARD_HIDDEN = "keyHid";
    private static final String XML_ATTR_LOCALES = "locales";
    private static final String XML_ATTR_MCC = "mcc";
    private static final String XML_ATTR_MNC = "mnc";
    private static final String XML_ATTR_NAVIGATION = "nav";
    private static final String XML_ATTR_NAVIGATION_HIDDEN = "navHid";
    private static final String XML_ATTR_ORIENTATION = "ori";
    private static final String XML_ATTR_ROTATION = "rot";
    private static final String XML_ATTR_SCREEN_HEIGHT = "height";
    private static final String XML_ATTR_SCREEN_LAYOUT = "scrLay";
    private static final String XML_ATTR_SCREEN_WIDTH = "width";
    private static final String XML_ATTR_SMALLEST_WIDTH = "sw";
    private static final String XML_ATTR_TOUCHSCREEN = "touch";
    private static final String XML_ATTR_UI_MODE = "ui";
    public Rect appBounds;
    public int assetsSeq;
    public int colorMode;
    public int compatScreenHeightDp;
    public int compatScreenWidthDp;
    public int compatSmallestScreenWidthDp;
    public int densityDpi;
    public float fontScale;
    public int hardKeyboardHidden;
    public int keyboard;
    public int keyboardHidden;

    @Deprecated
    public Locale locale;
    private LocaleList mLocaleList;
    public int mcc;
    public int mnc;
    public int navigation;
    public int navigationHidden;
    public int orientation;
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

    @Retention(RetentionPolicy.SOURCE)
    public @interface NativeConfig {
    }

    public static String configurationDiffToString(int i2) {
        ArrayList arrayList = new ArrayList();
        if ((i2 & 1) != 0) {
            arrayList.add("CONFIG_MCC");
        }
        if ((i2 & 2) != 0) {
            arrayList.add("CONFIG_MNC");
        }
        if ((i2 & 4) != 0) {
            arrayList.add("CONFIG_LOCALE");
        }
        if ((i2 & 8) != 0) {
            arrayList.add("CONFIG_TOUCHSCREEN");
        }
        if ((i2 & 16) != 0) {
            arrayList.add("CONFIG_KEYBOARD");
        }
        if ((i2 & 32) != 0) {
            arrayList.add("CONFIG_KEYBOARD_HIDDEN");
        }
        if ((i2 & 64) != 0) {
            arrayList.add("CONFIG_NAVIGATION");
        }
        if ((i2 & 128) != 0) {
            arrayList.add("CONFIG_ORIENTATION");
        }
        if ((i2 & 256) != 0) {
            arrayList.add("CONFIG_SCREEN_LAYOUT");
        }
        if ((i2 & 16384) != 0) {
            arrayList.add("CONFIG_COLOR_MODE");
        }
        if ((i2 & 512) != 0) {
            arrayList.add("CONFIG_UI_MODE");
        }
        if ((i2 & 1024) != 0) {
            arrayList.add("CONFIG_SCREEN_SIZE");
        }
        if ((i2 & 2048) != 0) {
            arrayList.add("CONFIG_SMALLEST_SCREEN_SIZE");
        }
        if ((i2 & 8192) != 0) {
            arrayList.add("CONFIG_LAYOUT_DIRECTION");
        }
        if ((1073741824 & i2) != 0) {
            arrayList.add("CONFIG_FONT_SCALE");
        }
        if ((i2 & Integer.MIN_VALUE) != 0) {
            arrayList.add("CONFIG_ASSETS_PATHS");
        }
        StringBuilder sb = new StringBuilder("{");
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            sb.append((String) arrayList.get(i3));
            if (i3 != size - 1) {
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    private void fixUpLocaleList() {
        Locale locale;
        if ((this.locale != null || this.mLocaleList.isEmpty()) && ((locale = this.locale) == null || locale.equals(this.mLocaleList.get(0)))) {
            return;
        }
        this.mLocaleList = this.locale == null ? LocaleList.getEmptyLocaleList() : new LocaleList(this.locale);
    }

    public static Configuration generateDelta(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        float f2 = configuration.fontScale;
        float f3 = configuration2.fontScale;
        if (f2 != f3) {
            configuration3.fontScale = f3;
        }
        int i2 = configuration.mcc;
        int i3 = configuration2.mcc;
        if (i2 != i3) {
            configuration3.mcc = i3;
        }
        int i4 = configuration.mnc;
        int i5 = configuration2.mnc;
        if (i4 != i5) {
            configuration3.mnc = i5;
        }
        configuration.fixUpLocaleList();
        configuration2.fixUpLocaleList();
        if (!configuration.mLocaleList.equals(configuration2.mLocaleList)) {
            configuration3.mLocaleList = configuration2.mLocaleList;
            configuration3.locale = configuration2.locale;
        }
        int i6 = configuration.touchscreen;
        int i7 = configuration2.touchscreen;
        if (i6 != i7) {
            configuration3.touchscreen = i7;
        }
        int i8 = configuration.keyboard;
        int i9 = configuration2.keyboard;
        if (i8 != i9) {
            configuration3.keyboard = i9;
        }
        int i10 = configuration.keyboardHidden;
        int i11 = configuration2.keyboardHidden;
        if (i10 != i11) {
            configuration3.keyboardHidden = i11;
        }
        int i12 = configuration.navigation;
        int i13 = configuration2.navigation;
        if (i12 != i13) {
            configuration3.navigation = i13;
        }
        int i14 = configuration.navigationHidden;
        int i15 = configuration2.navigationHidden;
        if (i14 != i15) {
            configuration3.navigationHidden = i15;
        }
        int i16 = configuration.orientation;
        int i17 = configuration2.orientation;
        if (i16 != i17) {
            configuration3.orientation = i17;
        }
        int i18 = configuration.screenLayout & 15;
        int i19 = configuration2.screenLayout;
        if (i18 != (i19 & 15)) {
            configuration3.screenLayout |= i19 & 15;
        }
        int i20 = configuration.screenLayout & 192;
        int i21 = configuration2.screenLayout;
        if (i20 != (i21 & 192)) {
            configuration3.screenLayout |= i21 & 192;
        }
        int i22 = configuration.screenLayout & 48;
        int i23 = configuration2.screenLayout;
        if (i22 != (i23 & 48)) {
            configuration3.screenLayout |= i23 & 48;
        }
        int i24 = configuration.screenLayout & 768;
        int i25 = configuration2.screenLayout;
        if (i24 != (i25 & 768)) {
            configuration3.screenLayout |= i25 & 768;
        }
        int i26 = configuration.colorMode & 3;
        int i27 = configuration2.colorMode;
        if (i26 != (i27 & 3)) {
            configuration3.colorMode |= i27 & 3;
        }
        int i28 = configuration.colorMode & 12;
        int i29 = configuration2.colorMode;
        if (i28 != (i29 & 12)) {
            configuration3.colorMode |= i29 & 12;
        }
        int i30 = configuration.uiMode & 15;
        int i31 = configuration2.uiMode;
        if (i30 != (i31 & 15)) {
            configuration3.uiMode |= i31 & 15;
        }
        int i32 = configuration.uiMode & 48;
        int i33 = configuration2.uiMode;
        if (i32 != (i33 & 48)) {
            configuration3.uiMode |= i33 & 48;
        }
        int i34 = configuration.screenWidthDp;
        int i35 = configuration2.screenWidthDp;
        if (i34 != i35) {
            configuration3.screenWidthDp = i35;
        }
        int i36 = configuration.screenHeightDp;
        int i37 = configuration2.screenHeightDp;
        if (i36 != i37) {
            configuration3.screenHeightDp = i37;
        }
        int i38 = configuration.smallestScreenWidthDp;
        int i39 = configuration2.smallestScreenWidthDp;
        if (i38 != i39) {
            configuration3.smallestScreenWidthDp = i39;
        }
        int i40 = configuration.densityDpi;
        int i41 = configuration2.densityDpi;
        if (i40 != i41) {
            configuration3.densityDpi = i41;
        }
        int i42 = configuration.assetsSeq;
        int i43 = configuration2.assetsSeq;
        if (i42 != i43) {
            configuration3.assetsSeq = i43;
        }
        return configuration3;
    }

    private static int getScreenLayoutNoDirection(int i2) {
        return i2 & (-193);
    }

    public static String localesToResourceQualifier(LocaleList localeList) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < localeList.size(); i2++) {
            Locale locale = localeList.get(i2);
            int length = locale.getLanguage().length();
            if (length != 0) {
                int length2 = locale.getScript().length();
                int length3 = locale.getCountry().length();
                int length4 = locale.getVariant().length();
                if (sb.length() != 0) {
                    sb.append(",");
                }
                if (length == 2 && length2 == 0 && ((length3 == 0 || length3 == 2) && length4 == 0)) {
                    sb.append(locale.getLanguage());
                    if (length3 == 2) {
                        sb.append("-r");
                        sb.append(locale.getCountry());
                    }
                } else {
                    sb.append("b+");
                    sb.append(locale.getLanguage());
                    if (length2 != 0) {
                        sb.append("+");
                        sb.append(locale.getScript());
                    }
                    if (length3 != 0) {
                        sb.append("+");
                        sb.append(locale.getCountry());
                    }
                    if (length4 != 0) {
                        sb.append("+");
                        sb.append(locale.getVariant());
                    }
                }
            }
        }
        return sb.toString();
    }

    public static boolean needNewResources(int i2, int i3) {
        return (i2 & ((i3 | Integer.MIN_VALUE) | 1073741824)) != 0;
    }

    public static void readXmlAttrs(XmlPullParser xmlPullParser, Configuration configuration) {
        configuration.fontScale = Float.intBitsToFloat(XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_FONT_SCALE, 0));
        configuration.mcc = XmlUtils.readIntAttribute(xmlPullParser, "mcc", 0);
        configuration.mnc = XmlUtils.readIntAttribute(xmlPullParser, "mnc", 0);
        LocaleList localeListForLanguageTags = LocaleList.forLanguageTags(XmlUtils.readStringAttribute(xmlPullParser, XML_ATTR_LOCALES));
        configuration.mLocaleList = localeListForLanguageTags;
        configuration.locale = localeListForLanguageTags.get(0);
        configuration.touchscreen = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_TOUCHSCREEN, 0);
        configuration.keyboard = XmlUtils.readIntAttribute(xmlPullParser, "key", 0);
        configuration.keyboardHidden = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_KEYBOARD_HIDDEN, 0);
        configuration.hardKeyboardHidden = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_HARD_KEYBOARD_HIDDEN, 0);
        configuration.navigation = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_NAVIGATION, 0);
        configuration.navigationHidden = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_NAVIGATION_HIDDEN, 0);
        configuration.orientation = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_ORIENTATION, 0);
        configuration.screenLayout = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_SCREEN_LAYOUT, 0);
        configuration.colorMode = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_COLOR_MODE, 0);
        configuration.uiMode = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_UI_MODE, 0);
        configuration.screenWidthDp = XmlUtils.readIntAttribute(xmlPullParser, "width", 0);
        configuration.screenHeightDp = XmlUtils.readIntAttribute(xmlPullParser, "height", 0);
        configuration.smallestScreenWidthDp = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_SMALLEST_WIDTH, 0);
        configuration.densityDpi = XmlUtils.readIntAttribute(xmlPullParser, XML_ATTR_DENSITY, 0);
        configuration.appBounds = Rect.unflattenFromString(XmlUtils.readStringAttribute(xmlPullParser, XML_ATTR_APP_BOUNDS));
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

    public static String resourceQualifierString(Configuration configuration) {
        ArrayList arrayList = new ArrayList();
        if (configuration.mcc != 0) {
            arrayList.add("mcc" + configuration.mcc);
            if (configuration.mnc != 0) {
                arrayList.add("mnc" + configuration.mnc);
            }
        }
        if (!configuration.mLocaleList.isEmpty()) {
            String strLocalesToResourceQualifier = localesToResourceQualifier(configuration.mLocaleList);
            if (!strLocalesToResourceQualifier.isEmpty()) {
                arrayList.add(strLocalesToResourceQualifier);
            }
        }
        int i2 = configuration.screenLayout & 192;
        if (i2 == 64) {
            arrayList.add("ldltr");
        } else if (i2 == 128) {
            arrayList.add("ldrtl");
        }
        if (configuration.smallestScreenWidthDp != 0) {
            arrayList.add(XML_ATTR_SMALLEST_WIDTH + configuration.smallestScreenWidthDp + "dp");
        }
        if (configuration.screenWidthDp != 0) {
            arrayList.add("w" + configuration.screenWidthDp + "dp");
        }
        if (configuration.screenHeightDp != 0) {
            arrayList.add("h" + configuration.screenHeightDp + "dp");
        }
        int i3 = configuration.screenLayout & 15;
        if (i3 == 1) {
            arrayList.add("small");
        } else if (i3 == 2) {
            arrayList.add("normal");
        } else if (i3 == 3) {
            arrayList.add("large");
        } else if (i3 == 4) {
            arrayList.add("xlarge");
        }
        int i4 = configuration.screenLayout & 48;
        if (i4 == 16) {
            arrayList.add("notlong");
        } else if (i4 == 32) {
            arrayList.add("long");
        }
        int i5 = configuration.screenLayout & 768;
        if (i5 == 256) {
            arrayList.add("notround");
        } else if (i5 == 512) {
            arrayList.add("round");
        }
        int i6 = configuration.colorMode & 12;
        if (i6 == 4) {
            arrayList.add("lowdr");
        } else if (i6 == 8) {
            arrayList.add("highdr");
        }
        int i7 = configuration.colorMode & 3;
        if (i7 == 1) {
            arrayList.add("nowidecg");
        } else if (i7 == 2) {
            arrayList.add("widecg");
        }
        int i8 = configuration.orientation;
        if (i8 == 1) {
            arrayList.add("port");
        } else if (i8 == 2) {
            arrayList.add("land");
        }
        switch (configuration.uiMode & 15) {
            case 2:
                arrayList.add("desk");
                break;
            case 3:
                arrayList.add("car");
                break;
            case 4:
                arrayList.add("television");
                break;
            case 5:
                arrayList.add("appliance");
                break;
            case 6:
                arrayList.add("watch");
                break;
            case 7:
                arrayList.add("vrheadset");
                break;
        }
        int i9 = configuration.uiMode & 48;
        if (i9 == 16) {
            arrayList.add("notnight");
        } else if (i9 == 32) {
            arrayList.add(Camera.Parameters.SCENE_MODE_NIGHT);
        }
        int i10 = configuration.densityDpi;
        if (i10 != 0) {
            if (i10 == 120) {
                arrayList.add("ldpi");
            } else if (i10 == 160) {
                arrayList.add("mdpi");
            } else if (i10 == 213) {
                arrayList.add("tvdpi");
            } else if (i10 == 240) {
                arrayList.add("hdpi");
            } else if (i10 == 320) {
                arrayList.add("xhdpi");
            } else if (i10 == 480) {
                arrayList.add("xxhdpi");
            } else if (i10 != 640) {
                switch (i10) {
                    case DENSITY_DPI_ANY /* 65534 */:
                        arrayList.add("anydpi");
                        break;
                    case 65535:
                        arrayList.add("nodpi");
                    default:
                        arrayList.add(configuration.densityDpi + "dpi");
                        break;
                }
            } else {
                arrayList.add("xxxhdpi");
            }
        }
        int i11 = configuration.touchscreen;
        if (i11 == 1) {
            arrayList.add("notouch");
        } else if (i11 == 3) {
            arrayList.add("finger");
        }
        int i12 = configuration.keyboardHidden;
        if (i12 == 1) {
            arrayList.add("keysexposed");
        } else if (i12 == 2) {
            arrayList.add("keyshidden");
        } else if (i12 == 3) {
            arrayList.add("keyssoft");
        }
        int i13 = configuration.keyboard;
        if (i13 == 1) {
            arrayList.add("nokeys");
        } else if (i13 == 2) {
            arrayList.add("qwerty");
        } else if (i13 == 3) {
            arrayList.add("12key");
        }
        int i14 = configuration.navigationHidden;
        if (i14 == 1) {
            arrayList.add("navexposed");
        } else if (i14 == 2) {
            arrayList.add("navhidden");
        }
        int i15 = configuration.navigation;
        if (i15 == 1) {
            arrayList.add("nonav");
        } else if (i15 == 2) {
            arrayList.add("dpad");
        } else if (i15 == 3) {
            arrayList.add("trackball");
        } else if (i15 == 4) {
            arrayList.add("wheel");
        }
        arrayList.add(Telephony.BaseMmsColumns.MMS_VERSION + Build.VERSION.RESOURCES_SDK_INT);
        return TextUtils.join(NativeLibraryHelper.CLEAR_ABI_OVERRIDE, arrayList);
    }

    public static void writeXmlAttrs(XmlSerializer xmlSerializer, Configuration configuration) {
        XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_FONT_SCALE, Float.floatToIntBits(configuration.fontScale));
        int i2 = configuration.mcc;
        if (i2 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, "mcc", i2);
        }
        int i3 = configuration.mnc;
        if (i3 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, "mnc", i3);
        }
        configuration.fixUpLocaleList();
        if (!configuration.mLocaleList.isEmpty()) {
            XmlUtils.writeStringAttribute(xmlSerializer, XML_ATTR_LOCALES, configuration.mLocaleList.toLanguageTags());
        }
        int i4 = configuration.touchscreen;
        if (i4 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_TOUCHSCREEN, i4);
        }
        int i5 = configuration.keyboard;
        if (i5 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, "key", i5);
        }
        int i6 = configuration.keyboardHidden;
        if (i6 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_KEYBOARD_HIDDEN, i6);
        }
        int i7 = configuration.hardKeyboardHidden;
        if (i7 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_HARD_KEYBOARD_HIDDEN, i7);
        }
        int i8 = configuration.navigation;
        if (i8 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_NAVIGATION, i8);
        }
        int i9 = configuration.navigationHidden;
        if (i9 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_NAVIGATION_HIDDEN, i9);
        }
        int i10 = configuration.orientation;
        if (i10 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_ORIENTATION, i10);
        }
        int i11 = configuration.screenLayout;
        if (i11 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_SCREEN_LAYOUT, i11);
        }
        int i12 = configuration.colorMode;
        if (i12 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_COLOR_MODE, i12);
        }
        int i13 = configuration.uiMode;
        if (i13 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_UI_MODE, i13);
        }
        int i14 = configuration.screenWidthDp;
        if (i14 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, "width", i14);
        }
        int i15 = configuration.screenHeightDp;
        if (i15 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, "height", i15);
        }
        int i16 = configuration.smallestScreenWidthDp;
        if (i16 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_SMALLEST_WIDTH, i16);
        }
        int i17 = configuration.densityDpi;
        if (i17 != 0) {
            XmlUtils.writeIntAttribute(xmlSerializer, XML_ATTR_DENSITY, i17);
        }
        Rect rect = configuration.appBounds;
        if (rect != null) {
            XmlUtils.writeStringAttribute(xmlSerializer, XML_ATTR_APP_BOUNDS, rect.flattenToString());
        }
    }

    public void clearLocales() {
        this.mLocaleList = LocaleList.getEmptyLocaleList();
        this.locale = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int diff(Configuration configuration) {
        return diff(configuration, false, false);
    }

    public int diffPublicOnly(Configuration configuration) {
        return diff(configuration, false, true);
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

    public LocaleList getLocales() {
        fixUpLocaleList();
        return this.mLocaleList;
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((this.mLocaleList.hashCode() + ((((((Float.floatToIntBits(this.fontScale) + MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE) * 31) + this.mcc) * 31) + this.mnc) * 31)) * 31) + this.touchscreen) * 31) + this.keyboard) * 31) + this.keyboardHidden) * 31) + this.hardKeyboardHidden) * 31) + this.navigation) * 31) + this.navigationHidden) * 31) + this.orientation) * 31) + this.screenLayout) * 31) + this.colorMode) * 31) + this.uiMode) * 31) + this.screenWidthDp) * 31) + this.screenHeightDp) * 31) + this.smallestScreenWidthDp) * 31) + this.densityDpi) * 31) + this.assetsSeq;
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

    public boolean isScreenHdr() {
        return (this.colorMode & 12) == 8;
    }

    public boolean isScreenRound() {
        return (this.screenLayout & 768) == 512;
    }

    public boolean isScreenWideColorGamut() {
        return (this.colorMode & 3) == 2;
    }

    @Deprecated
    public void makeDefault() {
        setToDefaults();
    }

    public void readFromParcel(Parcel parcel) {
        this.fontScale = parcel.readFloat();
        this.mcc = parcel.readInt();
        this.mnc = parcel.readInt();
        int i2 = parcel.readInt();
        Locale[] localeArr = new Locale[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            localeArr[i3] = Locale.forLanguageTag(parcel.readString());
        }
        LocaleList localeList = new LocaleList(localeArr);
        this.mLocaleList = localeList;
        this.locale = localeList.get(0);
        this.userSetLocale = parcel.readInt() == 1;
        this.touchscreen = parcel.readInt();
        this.keyboard = parcel.readInt();
        this.keyboardHidden = parcel.readInt();
        this.hardKeyboardHidden = parcel.readInt();
        this.navigation = parcel.readInt();
        this.navigationHidden = parcel.readInt();
        this.orientation = parcel.readInt();
        this.screenLayout = parcel.readInt();
        this.colorMode = parcel.readInt();
        this.uiMode = parcel.readInt();
        this.screenWidthDp = parcel.readInt();
        this.screenHeightDp = parcel.readInt();
        this.smallestScreenWidthDp = parcel.readInt();
        this.densityDpi = parcel.readInt();
        this.compatScreenWidthDp = parcel.readInt();
        this.compatScreenHeightDp = parcel.readInt();
        this.compatSmallestScreenWidthDp = parcel.readInt();
        this.appBounds = (Rect) parcel.readValue(null);
        this.assetsSeq = parcel.readInt();
        this.seq = parcel.readInt();
    }

    public void setAppBounds(Rect rect) {
        if (rect == null) {
            this.appBounds = null;
        } else {
            setAppBounds(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    public void setLayoutDirection(Locale locale) {
        this.screenLayout = ((TextUtils.getLayoutDirectionFromLocale(locale) + 1) << 6) | (this.screenLayout & (-193));
    }

    public void setLocale(Locale locale) {
        setLocales(locale == null ? LocaleList.getEmptyLocaleList() : new LocaleList(locale));
    }

    public void setLocales(LocaleList localeList) {
        if (localeList == null) {
            localeList = LocaleList.getEmptyLocaleList();
        }
        this.mLocaleList = localeList;
        Locale locale = localeList.get(0);
        this.locale = locale;
        setLayoutDirection(locale);
    }

    public void setTo(Configuration configuration) {
        this.fontScale = configuration.fontScale;
        this.mcc = configuration.mcc;
        this.mnc = configuration.mnc;
        Locale locale = configuration.locale;
        this.locale = locale == null ? null : (Locale) locale.clone();
        configuration.fixUpLocaleList();
        this.mLocaleList = configuration.mLocaleList;
        this.userSetLocale = configuration.userSetLocale;
        this.touchscreen = configuration.touchscreen;
        this.keyboard = configuration.keyboard;
        this.keyboardHidden = configuration.keyboardHidden;
        this.hardKeyboardHidden = configuration.hardKeyboardHidden;
        this.navigation = configuration.navigation;
        this.navigationHidden = configuration.navigationHidden;
        this.orientation = configuration.orientation;
        this.screenLayout = configuration.screenLayout;
        this.colorMode = configuration.colorMode;
        this.uiMode = configuration.uiMode;
        this.screenWidthDp = configuration.screenWidthDp;
        this.screenHeightDp = configuration.screenHeightDp;
        this.smallestScreenWidthDp = configuration.smallestScreenWidthDp;
        this.densityDpi = configuration.densityDpi;
        this.compatScreenWidthDp = configuration.compatScreenWidthDp;
        this.compatScreenHeightDp = configuration.compatScreenHeightDp;
        this.compatSmallestScreenWidthDp = configuration.compatSmallestScreenWidthDp;
        setAppBounds(configuration.appBounds);
        this.assetsSeq = configuration.assetsSeq;
        this.seq = configuration.seq;
    }

    public void setToDefaults() {
        this.fontScale = 1.0f;
        this.mnc = 0;
        this.mcc = 0;
        this.mLocaleList = LocaleList.getEmptyLocaleList();
        this.locale = null;
        this.userSetLocale = false;
        this.touchscreen = 0;
        this.keyboard = 0;
        this.keyboardHidden = 0;
        this.hardKeyboardHidden = 0;
        this.navigation = 0;
        this.navigationHidden = 0;
        this.orientation = 0;
        this.screenLayout = 0;
        this.colorMode = 0;
        this.uiMode = 0;
        this.compatScreenWidthDp = 0;
        this.screenWidthDp = 0;
        this.compatScreenHeightDp = 0;
        this.screenHeightDp = 0;
        this.compatSmallestScreenWidthDp = 0;
        this.smallestScreenWidthDp = 0;
        this.densityDpi = 0;
        this.assetsSeq = 0;
        this.appBounds = null;
        this.seq = 0;
    }

    public String toString() {
        StringBuilder sbQ = c.q(128, "{");
        sbQ.append(this.fontScale);
        sbQ.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        int i2 = this.mcc;
        if (i2 != 0) {
            sbQ.append(i2);
            sbQ.append("mcc");
        } else {
            sbQ.append("?mcc");
        }
        int i3 = this.mnc;
        if (i3 != 0) {
            sbQ.append(i3);
            sbQ.append("mnc");
        } else {
            sbQ.append("?mnc");
        }
        fixUpLocaleList();
        if (this.mLocaleList.isEmpty()) {
            sbQ.append(" ?localeList");
        } else {
            sbQ.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbQ.append(this.mLocaleList);
        }
        int i4 = this.screenLayout & 192;
        if (i4 == 0) {
            sbQ.append(" ?layoutDir");
        } else if (i4 == 64) {
            sbQ.append(" ldltr");
        } else if (i4 != 128) {
            sbQ.append(" layoutDir=");
            sbQ.append(i4 >> 6);
        } else {
            sbQ.append(" ldrtl");
        }
        if (this.smallestScreenWidthDp != 0) {
            sbQ.append(" sw");
            sbQ.append(this.smallestScreenWidthDp);
            sbQ.append("dp");
        } else {
            sbQ.append(" ?swdp");
        }
        if (this.screenWidthDp != 0) {
            sbQ.append(" w");
            sbQ.append(this.screenWidthDp);
            sbQ.append("dp");
        } else {
            sbQ.append(" ?wdp");
        }
        if (this.screenHeightDp != 0) {
            sbQ.append(" h");
            sbQ.append(this.screenHeightDp);
            sbQ.append("dp");
        } else {
            sbQ.append(" ?hdp");
        }
        if (this.densityDpi != 0) {
            sbQ.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbQ.append(this.densityDpi);
            sbQ.append("dpi");
        } else {
            sbQ.append(" ?density");
        }
        int i5 = this.screenLayout & 15;
        if (i5 == 0) {
            sbQ.append(" ?lsize");
        } else if (i5 == 1) {
            sbQ.append(" smll");
        } else if (i5 == 2) {
            sbQ.append(" nrml");
        } else if (i5 == 3) {
            sbQ.append(" lrg");
        } else if (i5 != 4) {
            sbQ.append(" layoutSize=");
            sbQ.append(this.screenLayout & 15);
        } else {
            sbQ.append(" xlrg");
        }
        int i6 = this.screenLayout & 48;
        if (i6 == 0) {
            sbQ.append(" ?long");
        } else if (i6 != 16) {
            if (i6 != 32) {
                sbQ.append(" layoutLong=");
                sbQ.append(this.screenLayout & 48);
            } else {
                sbQ.append(" long");
            }
        }
        int i7 = this.colorMode & 12;
        if (i7 == 0) {
            sbQ.append(" ?ldr");
        } else if (i7 != 4) {
            if (i7 != 8) {
                sbQ.append(" dynamicRange=");
                sbQ.append(this.colorMode & 12);
            } else {
                sbQ.append(" hdr");
            }
        }
        int i8 = this.colorMode & 3;
        if (i8 == 0) {
            sbQ.append(" ?wideColorGamut");
        } else if (i8 != 1) {
            if (i8 != 2) {
                sbQ.append(" wideColorGamut=");
                sbQ.append(this.colorMode & 3);
            } else {
                sbQ.append(" widecg");
            }
        }
        int i9 = this.orientation;
        if (i9 == 0) {
            sbQ.append(" ?orien");
        } else if (i9 == 1) {
            sbQ.append(" port");
        } else if (i9 != 2) {
            sbQ.append(" orien=");
            sbQ.append(this.orientation);
        } else {
            sbQ.append(" land");
        }
        switch (this.uiMode & 15) {
            case 0:
                sbQ.append(" ?uimode");
                break;
            case 1:
                break;
            case 2:
                sbQ.append(" desk");
                break;
            case 3:
                sbQ.append(" car");
                break;
            case 4:
                sbQ.append(" television");
                break;
            case 5:
                sbQ.append(" appliance");
                break;
            case 6:
                sbQ.append(" watch");
                break;
            case 7:
                sbQ.append(" vrheadset");
                break;
            default:
                sbQ.append(" uimode=");
                sbQ.append(this.uiMode & 15);
                break;
        }
        int i10 = this.uiMode & 48;
        if (i10 == 0) {
            sbQ.append(" ?night");
        } else if (i10 != 16) {
            if (i10 != 32) {
                sbQ.append(" night=");
                sbQ.append(this.uiMode & 48);
            } else {
                sbQ.append(" night");
            }
        }
        int i11 = this.touchscreen;
        if (i11 == 0) {
            sbQ.append(" ?touch");
        } else if (i11 == 1) {
            sbQ.append(" -touch");
        } else if (i11 == 2) {
            sbQ.append(" stylus");
        } else if (i11 != 3) {
            sbQ.append(" touch=");
            sbQ.append(this.touchscreen);
        } else {
            sbQ.append(" finger");
        }
        int i12 = this.keyboard;
        if (i12 == 0) {
            sbQ.append(" ?keyb");
        } else if (i12 == 1) {
            sbQ.append(" -keyb");
        } else if (i12 == 2) {
            sbQ.append(" qwerty");
        } else if (i12 != 3) {
            sbQ.append(" keys=");
            sbQ.append(this.keyboard);
        } else {
            sbQ.append(" 12key");
        }
        int i13 = this.keyboardHidden;
        if (i13 == 0) {
            sbQ.append("/?");
        } else if (i13 == 1) {
            sbQ.append("/v");
        } else if (i13 == 2) {
            sbQ.append("/h");
        } else if (i13 != 3) {
            sbQ.append("/");
            sbQ.append(this.keyboardHidden);
        } else {
            sbQ.append("/s");
        }
        int i14 = this.hardKeyboardHidden;
        if (i14 == 0) {
            sbQ.append("/?");
        } else if (i14 == 1) {
            sbQ.append("/v");
        } else if (i14 != 2) {
            sbQ.append("/");
            sbQ.append(this.hardKeyboardHidden);
        } else {
            sbQ.append("/h");
        }
        int i15 = this.navigation;
        if (i15 == 0) {
            sbQ.append(" ?nav");
        } else if (i15 == 1) {
            sbQ.append(" -nav");
        } else if (i15 == 2) {
            sbQ.append(" dpad");
        } else if (i15 == 3) {
            sbQ.append(" tball");
        } else if (i15 != 4) {
            sbQ.append(" nav=");
            sbQ.append(this.navigation);
        } else {
            sbQ.append(" wheel");
        }
        int i16 = this.navigationHidden;
        if (i16 == 0) {
            sbQ.append("/?");
        } else if (i16 == 1) {
            sbQ.append("/v");
        } else if (i16 != 2) {
            sbQ.append("/");
            sbQ.append(this.navigationHidden);
        } else {
            sbQ.append("/h");
        }
        if (this.appBounds != null) {
            sbQ.append(" appBounds=");
            sbQ.append(this.appBounds);
        }
        if (this.assetsSeq != 0) {
            sbQ.append(" as.");
            sbQ.append(this.assetsSeq);
        }
        if (this.seq != 0) {
            sbQ.append(" s.");
            sbQ.append(this.seq);
        }
        sbQ.append('}');
        return sbQ.toString();
    }

    public void unset() {
        setToDefaults();
        this.fontScale = 0.0f;
    }

    public int updateFrom(Configuration configuration) {
        int i2;
        int i3;
        float f2 = configuration.fontScale;
        if (f2 <= 0.0f || this.fontScale == f2) {
            i2 = 0;
        } else {
            this.fontScale = f2;
            i2 = 1073741824;
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
        fixUpLocaleList();
        configuration.fixUpLocaleList();
        if (!configuration.mLocaleList.isEmpty() && !this.mLocaleList.equals(configuration.mLocaleList)) {
            i2 |= 4;
            this.mLocaleList = configuration.mLocaleList;
            if (!configuration.locale.equals(this.locale)) {
                Locale locale = (Locale) configuration.locale.clone();
                this.locale = locale;
                i2 |= 8192;
                setLayoutDirection(locale);
            }
        }
        int i6 = configuration.screenLayout & 192;
        if (i6 != 0) {
            int i7 = this.screenLayout;
            if (i6 != (i7 & 192)) {
                this.screenLayout = i6 | (i7 & (-193));
                i2 |= 8192;
            }
        }
        if (configuration.userSetLocale && (!this.userSetLocale || (i2 & 4) != 0)) {
            i2 |= 4;
            this.userSetLocale = true;
        }
        int i8 = configuration.touchscreen;
        if (i8 != 0 && this.touchscreen != i8) {
            i2 |= 8;
            this.touchscreen = i8;
        }
        int i9 = configuration.keyboard;
        if (i9 != 0 && this.keyboard != i9) {
            i2 |= 16;
            this.keyboard = i9;
        }
        int i10 = configuration.keyboardHidden;
        if (i10 != 0 && this.keyboardHidden != i10) {
            i2 |= 32;
            this.keyboardHidden = i10;
        }
        int i11 = configuration.hardKeyboardHidden;
        if (i11 != 0 && this.hardKeyboardHidden != i11) {
            i2 |= 32;
            this.hardKeyboardHidden = i11;
        }
        int i12 = configuration.navigation;
        if (i12 != 0 && this.navigation != i12) {
            i2 |= 64;
            this.navigation = i12;
        }
        int i13 = configuration.navigationHidden;
        if (i13 != 0 && this.navigationHidden != i13) {
            i2 |= 32;
            this.navigationHidden = i13;
        }
        int i14 = configuration.orientation;
        if (i14 != 0 && this.orientation != i14) {
            i2 |= 128;
            this.orientation = i14;
        }
        int i15 = configuration.screenLayout;
        if ((i15 & 15) != 0) {
            int i16 = i15 & 15;
            int i17 = this.screenLayout;
            if (i16 != (i17 & 15)) {
                i2 |= 256;
                this.screenLayout = (i15 & 15) | (i17 & (-16));
            }
        }
        int i18 = configuration.screenLayout;
        if ((i18 & 48) != 0) {
            int i19 = i18 & 48;
            int i20 = this.screenLayout;
            if (i19 != (i20 & 48)) {
                i2 |= 256;
                this.screenLayout = (i18 & 48) | (i20 & (-49));
            }
        }
        int i21 = configuration.screenLayout;
        if ((i21 & 768) != 0) {
            int i22 = i21 & 768;
            int i23 = this.screenLayout;
            if (i22 != (i23 & 768)) {
                i2 |= 256;
                this.screenLayout = (i21 & 768) | (i23 & (-769));
            }
        }
        int i24 = configuration.screenLayout;
        int i25 = i24 & 268435456;
        int i26 = this.screenLayout;
        if (i25 != (i26 & 268435456) && i24 != 0) {
            i2 |= 256;
            this.screenLayout = (i24 & 268435456) | ((-268435457) & i26);
        }
        int i27 = configuration.colorMode;
        if ((i27 & 3) != 0) {
            int i28 = i27 & 3;
            int i29 = this.colorMode;
            if (i28 != (i29 & 3)) {
                i2 |= 16384;
                this.colorMode = (i27 & 3) | (i29 & (-4));
            }
        }
        int i30 = configuration.colorMode;
        if ((i30 & 12) != 0) {
            int i31 = i30 & 12;
            int i32 = this.colorMode;
            if (i31 != (i32 & 12)) {
                i2 |= 16384;
                this.colorMode = (i30 & 12) | (i32 & (-13));
            }
        }
        int i33 = configuration.uiMode;
        if (i33 != 0 && (i3 = this.uiMode) != i33) {
            i2 |= 512;
            if ((i33 & 15) != 0) {
                this.uiMode = (i33 & 15) | (i3 & (-16));
            }
            int i34 = configuration.uiMode;
            if ((i34 & 48) != 0) {
                this.uiMode = (i34 & 48) | (this.uiMode & (-49));
            }
        }
        int i35 = configuration.screenWidthDp;
        if (i35 != 0 && this.screenWidthDp != i35) {
            i2 |= 1024;
            this.screenWidthDp = i35;
        }
        int i36 = configuration.screenHeightDp;
        if (i36 != 0 && this.screenHeightDp != i36) {
            i2 |= 1024;
            this.screenHeightDp = i36;
        }
        int i37 = configuration.smallestScreenWidthDp;
        if (i37 != 0 && this.smallestScreenWidthDp != i37) {
            i2 |= 2048;
            this.smallestScreenWidthDp = i37;
        }
        int i38 = configuration.densityDpi;
        if (i38 != 0 && this.densityDpi != i38) {
            i2 |= 4096;
            this.densityDpi = i38;
        }
        int i39 = configuration.compatScreenWidthDp;
        if (i39 != 0) {
            this.compatScreenWidthDp = i39;
        }
        int i40 = configuration.compatScreenHeightDp;
        if (i40 != 0) {
            this.compatScreenHeightDp = i40;
        }
        int i41 = configuration.compatSmallestScreenWidthDp;
        if (i41 != 0) {
            this.compatSmallestScreenWidthDp = i41;
        }
        Rect rect = configuration.appBounds;
        if (rect != null && !rect.equals(this.appBounds)) {
            i2 |= 1024;
            setAppBounds(configuration.appBounds);
        }
        int i42 = configuration.assetsSeq;
        if (i42 != 0 && i42 != this.assetsSeq) {
            i2 |= Integer.MIN_VALUE;
            this.assetsSeq = i42;
        }
        int i43 = configuration.seq;
        if (i43 != 0) {
            this.seq = i43;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.fontScale);
        parcel.writeInt(this.mcc);
        parcel.writeInt(this.mnc);
        fixUpLocaleList();
        int size = this.mLocaleList.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeString(this.mLocaleList.get(i3).toLanguageTag());
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
        parcel.writeInt(this.screenLayout);
        parcel.writeInt(this.colorMode);
        parcel.writeInt(this.uiMode);
        parcel.writeInt(this.screenWidthDp);
        parcel.writeInt(this.screenHeightDp);
        parcel.writeInt(this.smallestScreenWidthDp);
        parcel.writeInt(this.densityDpi);
        parcel.writeInt(this.compatScreenWidthDp);
        parcel.writeInt(this.compatScreenHeightDp);
        parcel.writeInt(this.compatSmallestScreenWidthDp);
        parcel.writeValue(this.appBounds);
        parcel.writeInt(this.assetsSeq);
        parcel.writeInt(this.seq);
    }

    public Configuration() {
        unset();
    }

    @Override // java.lang.Comparable
    public int compareTo(Configuration configuration) {
        Rect rect;
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
        fixUpLocaleList();
        configuration.fixUpLocaleList();
        if (!this.mLocaleList.isEmpty()) {
            if (configuration.mLocaleList.isEmpty()) {
                return -1;
            }
            int iMin = Math.min(this.mLocaleList.size(), configuration.mLocaleList.size());
            for (int i4 = 0; i4 < iMin; i4++) {
                Locale locale = this.mLocaleList.get(i4);
                Locale locale2 = configuration.mLocaleList.get(i4);
                int iCompareTo = locale.getLanguage().compareTo(locale2.getLanguage());
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = locale.getCountry().compareTo(locale2.getCountry());
                if (iCompareTo2 != 0) {
                    return iCompareTo2;
                }
                int iCompareTo3 = locale.getVariant().compareTo(locale2.getVariant());
                if (iCompareTo3 != 0) {
                    return iCompareTo3;
                }
                int iCompareTo4 = locale.toLanguageTag().compareTo(locale2.toLanguageTag());
                if (iCompareTo4 != 0) {
                    return iCompareTo4;
                }
            }
            int size = this.mLocaleList.size() - configuration.mLocaleList.size();
            if (size != 0) {
                return size;
            }
        } else if (!configuration.mLocaleList.isEmpty()) {
            return 1;
        }
        int i5 = this.touchscreen - configuration.touchscreen;
        if (i5 != 0) {
            return i5;
        }
        int i6 = this.keyboard - configuration.keyboard;
        if (i6 != 0) {
            return i6;
        }
        int i7 = this.keyboardHidden - configuration.keyboardHidden;
        if (i7 != 0) {
            return i7;
        }
        int i8 = this.hardKeyboardHidden - configuration.hardKeyboardHidden;
        if (i8 != 0) {
            return i8;
        }
        int i9 = this.navigation - configuration.navigation;
        if (i9 != 0) {
            return i9;
        }
        int i10 = this.navigationHidden - configuration.navigationHidden;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.orientation - configuration.orientation;
        if (i11 != 0) {
            return i11;
        }
        int i12 = this.colorMode - configuration.colorMode;
        if (i12 != 0) {
            return i12;
        }
        int i13 = this.screenLayout - configuration.screenLayout;
        if (i13 != 0) {
            return i13;
        }
        int i14 = this.uiMode - configuration.uiMode;
        if (i14 != 0) {
            return i14;
        }
        int i15 = this.screenWidthDp - configuration.screenWidthDp;
        if (i15 != 0) {
            return i15;
        }
        int i16 = this.screenHeightDp - configuration.screenHeightDp;
        if (i16 != 0) {
            return i16;
        }
        int i17 = this.smallestScreenWidthDp - configuration.smallestScreenWidthDp;
        if (i17 != 0) {
            return i17;
        }
        int i18 = this.densityDpi - configuration.densityDpi;
        if (i18 != 0) {
            return i18;
        }
        int i19 = this.assetsSeq - configuration.assetsSeq;
        if (i19 != 0) {
            return i19;
        }
        Rect rect2 = this.appBounds;
        if (rect2 == null && configuration.appBounds != null) {
            return 1;
        }
        if (rect2 != null && configuration.appBounds == null) {
            return -1;
        }
        if (rect2 != null && (rect = configuration.appBounds) != null) {
            int i20 = rect2.left - rect.left;
            if (i20 != 0) {
                return i20;
            }
            int i21 = rect2.top - rect.top;
            if (i21 != 0) {
                return i21;
            }
            int i22 = rect2.right - rect.right;
            if (i22 != 0) {
                return i22;
            }
            i19 = rect2.bottom - rect.bottom;
            if (i19 != 0) {
            }
        }
        return i19;
    }

    public int diff(Configuration configuration, boolean z2, boolean z3) {
        Rect rect;
        Rect rect2;
        int i2 = ((z2 || configuration.fontScale > 0.0f) && this.fontScale != configuration.fontScale) ? 1073741824 : 0;
        if ((z2 || configuration.mcc != 0) && this.mcc != configuration.mcc) {
            i2 |= 1;
        }
        if ((z2 || configuration.mnc != 0) && this.mnc != configuration.mnc) {
            i2 |= 2;
        }
        fixUpLocaleList();
        configuration.fixUpLocaleList();
        if ((z2 || !configuration.mLocaleList.isEmpty()) && !this.mLocaleList.equals(configuration.mLocaleList)) {
            i2 = i2 | 4 | 8192;
        }
        int i3 = configuration.screenLayout;
        int i4 = i3 & 192;
        if ((z2 || i4 != 0) && i4 != (this.screenLayout & 192)) {
            i2 |= 8192;
        }
        if ((z2 || configuration.touchscreen != 0) && this.touchscreen != configuration.touchscreen) {
            i2 |= 8;
        }
        if ((z2 || configuration.keyboard != 0) && this.keyboard != configuration.keyboard) {
            i2 |= 16;
        }
        if ((z2 || configuration.keyboardHidden != 0) && this.keyboardHidden != configuration.keyboardHidden) {
            i2 |= 32;
        }
        if ((z2 || configuration.hardKeyboardHidden != 0) && this.hardKeyboardHidden != configuration.hardKeyboardHidden) {
            i2 |= 32;
        }
        if ((z2 || configuration.navigation != 0) && this.navigation != configuration.navigation) {
            i2 |= 64;
        }
        if ((z2 || configuration.navigationHidden != 0) && this.navigationHidden != configuration.navigationHidden) {
            i2 |= 32;
        }
        if ((z2 || configuration.orientation != 0) && this.orientation != configuration.orientation) {
            i2 |= 128;
        }
        if ((z2 || getScreenLayoutNoDirection(i3) != 0) && getScreenLayoutNoDirection(this.screenLayout) != getScreenLayoutNoDirection(configuration.screenLayout)) {
            i2 |= 256;
        }
        if ((z2 || (configuration.colorMode & 12) != 0) && (this.colorMode & 12) != (configuration.colorMode & 12)) {
            i2 |= 16384;
        }
        if ((z2 || (configuration.colorMode & 3) != 0) && (this.colorMode & 3) != (configuration.colorMode & 3)) {
            i2 |= 16384;
        }
        if ((z2 || configuration.uiMode != 0) && this.uiMode != configuration.uiMode) {
            i2 |= 512;
        }
        if ((z2 || configuration.screenWidthDp != 0) && this.screenWidthDp != configuration.screenWidthDp) {
            i2 |= 1024;
        }
        if ((z2 || configuration.screenHeightDp != 0) && this.screenHeightDp != configuration.screenHeightDp) {
            i2 |= 1024;
        }
        if ((z2 || configuration.smallestScreenWidthDp != 0) && this.smallestScreenWidthDp != configuration.smallestScreenWidthDp) {
            i2 |= 2048;
        }
        if ((z2 || configuration.densityDpi != 0) && this.densityDpi != configuration.densityDpi) {
            i2 |= 4096;
        }
        if ((z2 || configuration.assetsSeq != 0) && this.assetsSeq != configuration.assetsSeq) {
            i2 |= Integer.MIN_VALUE;
        }
        if ((!z2 && configuration.appBounds == null) || (rect = this.appBounds) == (rect2 = configuration.appBounds)) {
            return i2;
        }
        if (rect != null && (z3 || rect.equals(rect2))) {
            if (!z3) {
                return i2;
            }
            if (this.appBounds.width() == configuration.appBounds.width() && this.appBounds.height() == configuration.appBounds.height()) {
                return i2;
            }
        }
        return i2 | 1024;
    }

    public boolean equals(Object obj) {
        try {
            return equals((Configuration) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public void setAppBounds(int i2, int i3, int i4, int i5) {
        if (this.appBounds == null) {
            this.appBounds = new Rect();
        }
        this.appBounds.set(i2, i3, i4, i5);
    }

    public Configuration(Configuration configuration) {
        setTo(configuration);
    }

    private Configuration(Parcel parcel) {
        readFromParcel(parcel);
    }
}
