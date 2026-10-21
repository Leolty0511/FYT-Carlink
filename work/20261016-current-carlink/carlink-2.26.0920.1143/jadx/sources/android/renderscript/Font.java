package android.renderscript;

import android.accessibilityservice.c;
import android.app.m;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Environment;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Font extends BaseObj {
    private static Map<String, FontFamily> sFontFamilyMap;
    private static final String[] sSansNames = {"sans-serif", "arial", "helvetica", "tahoma", "verdana"};
    private static final String[] sSerifNames = {"serif", "times", "times new roman", "palatino", "georgia", "baskerville", "goudy", "fantasy", "cursive", "ITC Stone Serif"};
    private static final String[] sMonoNames = {"monospace", "courier", "courier new", "monaco"};

    /* JADX INFO: renamed from: android.renderscript.Font$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$renderscript$Font$Style;

        static {
            int[] iArr = new int[Style.values().length];
            $SwitchMap$android$renderscript$Font$Style = iArr;
            try {
                iArr[Style.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$renderscript$Font$Style[Style.BOLD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$renderscript$Font$Style[Style.ITALIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$renderscript$Font$Style[Style.BOLD_ITALIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class FontFamily {
        String mBoldFileName;
        String mBoldItalicFileName;
        String mItalicFileName;
        String[] mNames;
        String mNormalFileName;

        private FontFamily() {
        }

        public /* synthetic */ FontFamily(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public enum Style {
        NORMAL,
        BOLD,
        ITALIC,
        BOLD_ITALIC
    }

    static {
        initFontFamilyMap();
    }

    public Font(long j2, RenderScript renderScript) {
        super(j2, renderScript);
        this.guard.open("destroy");
    }

    private static void addFamilyToMap(FontFamily fontFamily) {
        int i2 = 0;
        while (true) {
            String[] strArr = fontFamily.mNames;
            if (i2 >= strArr.length) {
                return;
            }
            sFontFamilyMap.put(strArr[i2], fontFamily);
            i2++;
        }
    }

    public static Font create(RenderScript renderScript, Resources resources, String str, Style style, float f2) {
        return createFromFile(renderScript, resources, m.h(Environment.getRootDirectory().getAbsolutePath(), "/fonts/", getFontFileName(str, style)), f2);
    }

    public static Font createFromAsset(RenderScript renderScript, Resources resources, String str, float f2) {
        renderScript.validate();
        long jNFontCreateFromAsset = renderScript.nFontCreateFromAsset(resources.getAssets(), str, f2, resources.getDisplayMetrics().densityDpi);
        if (jNFontCreateFromAsset != 0) {
            return new Font(jNFontCreateFromAsset, renderScript);
        }
        throw new RSRuntimeException(c.j("Unable to create font from asset ", str));
    }

    public static Font createFromFile(RenderScript renderScript, Resources resources, String str, float f2) {
        renderScript.validate();
        long jNFontCreateFromFile = renderScript.nFontCreateFromFile(str, f2, resources.getDisplayMetrics().densityDpi);
        if (jNFontCreateFromFile != 0) {
            return new Font(jNFontCreateFromFile, renderScript);
        }
        throw new RSRuntimeException(c.j("Unable to create font from file ", str));
    }

    public static Font createFromResource(RenderScript renderScript, Resources resources, int i2, float f2) {
        String str = "R." + Integer.toString(i2);
        renderScript.validate();
        try {
            InputStream inputStreamOpenRawResource = resources.openRawResource(i2);
            int i3 = resources.getDisplayMetrics().densityDpi;
            if (!(inputStreamOpenRawResource instanceof AssetManager.AssetInputStream)) {
                throw new RSRuntimeException("Unsupported asset stream created");
            }
            long jNFontCreateFromAssetStream = renderScript.nFontCreateFromAssetStream(str, f2, i3, ((AssetManager.AssetInputStream) inputStreamOpenRawResource).getNativeAsset());
            if (jNFontCreateFromAssetStream != 0) {
                return new Font(jNFontCreateFromAssetStream, renderScript);
            }
            throw new RSRuntimeException(c.d("Unable to create font from resource ", i2));
        } catch (Exception unused) {
            throw new RSRuntimeException(c.d("Unable to open resource ", i2));
        }
    }

    public static String getFontFileName(String str, Style style) {
        FontFamily fontFamily = sFontFamilyMap.get(str);
        if (fontFamily == null) {
            return "DroidSans.ttf";
        }
        int i2 = AnonymousClass1.$SwitchMap$android$renderscript$Font$Style[style.ordinal()];
        if (i2 == 1) {
            return fontFamily.mNormalFileName;
        }
        if (i2 == 2) {
            return fontFamily.mBoldFileName;
        }
        if (i2 != 3) {
            return i2 != 4 ? "DroidSans.ttf" : fontFamily.mBoldItalicFileName;
        }
        return fontFamily.mItalicFileName;
    }

    private static void initFontFamilyMap() {
        sFontFamilyMap = new HashMap();
        AnonymousClass1 anonymousClass1 = null;
        FontFamily fontFamily = new FontFamily(anonymousClass1);
        fontFamily.mNames = sSansNames;
        fontFamily.mNormalFileName = "Roboto-Regular.ttf";
        fontFamily.mBoldFileName = "Roboto-Bold.ttf";
        fontFamily.mItalicFileName = "Roboto-Italic.ttf";
        fontFamily.mBoldItalicFileName = "Roboto-BoldItalic.ttf";
        addFamilyToMap(fontFamily);
        FontFamily fontFamily2 = new FontFamily(anonymousClass1);
        fontFamily2.mNames = sSerifNames;
        fontFamily2.mNormalFileName = "NotoSerif-Regular.ttf";
        fontFamily2.mBoldFileName = "NotoSerif-Bold.ttf";
        fontFamily2.mItalicFileName = "NotoSerif-Italic.ttf";
        fontFamily2.mBoldItalicFileName = "NotoSerif-BoldItalic.ttf";
        addFamilyToMap(fontFamily2);
        FontFamily fontFamily3 = new FontFamily(anonymousClass1);
        fontFamily3.mNames = sMonoNames;
        fontFamily3.mNormalFileName = "DroidSansMono.ttf";
        fontFamily3.mBoldFileName = "DroidSansMono.ttf";
        fontFamily3.mItalicFileName = "DroidSansMono.ttf";
        fontFamily3.mBoldItalicFileName = "DroidSansMono.ttf";
        addFamilyToMap(fontFamily3);
    }

    public static Font createFromFile(RenderScript renderScript, Resources resources, File file, float f2) {
        return createFromFile(renderScript, resources, file.getAbsolutePath(), f2);
    }
}
